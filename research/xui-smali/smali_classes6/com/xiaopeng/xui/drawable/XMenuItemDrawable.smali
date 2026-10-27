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

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->stateSpecPress:[I

    .line 40
    const v0, 0x3f7851ec    # 0.97f

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->scaleTo:F

    .line 44
    return-void

    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method public static synthetic lambda$pressDown$0(Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 136
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 137
    .local v0, "value":F
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->setScaleRect(F)V

    .line 138
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->invalidateSelf()V

    .line 139
    return-void
.end method

.method private setScaleRect(F)V
    .locals 9
    .param p1, "scale"    # F

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mBoundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x41c00000    # 24.0f

    sub-float/2addr v0, v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    .line 145
    .local v0, "insideWidth":F
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mBoundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    sub-float/2addr v1, v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    .line 146
    .local v1, "insideHeight":F
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mBoundRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 147
    .local v2, "horizontal":F
    iget-object v4, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mBoundRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v1

    div-float/2addr v4, v3

    .line 148
    .local v4, "vertical":F
    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v2

    iget-object v6, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mBoundRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v4

    iget-object v7, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mBoundRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v2

    iget-object v8, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mBoundRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v8, v4

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 149
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 70
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 84
    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/drawable/XDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 50
    if-eqz p4, :cond_0

    .line 51
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XStateGradientDrawable:[I

    const/4 v1, 0x0

    invoke-virtual {p4, p3, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "ta":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 53
    .end local v0    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XStateGradientDrawable:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .restart local v0    # "ta":Landroid/content/res/TypedArray;
    :goto_0
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XStateGradientDrawable_android_radius:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mRadius:I

    .line 56
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XStateGradientDrawable_android_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->colorStateList:Landroid/content/res/ColorStateList;

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 62
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/drawable/XDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mBoundRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 64
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->setScaleRect(F)V

    .line 65
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3
    .param p1, "state"    # [I

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->colorStateList:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->colorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->invalidateSelf()V

    .line 97
    if-eqz p1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->stateSpecPress:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mIsTouchDown:Z

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mIsTouchDown:Z

    .line 100
    iget-boolean v1, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->isNeedAnimate:Z

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->pressDown(ZZ)V

    goto :goto_0

    .line 101
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mIsTouchDown:Z

    if-eqz v0, :cond_1

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mIsTouchDown:Z

    .line 103
    iget-boolean v1, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->isNeedAnimate:Z

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->pressDown(ZZ)V

    .line 106
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/drawable/XDrawable;->onStateChange([I)Z

    move-result v0

    return v0
.end method

.method public pressDown(ZZ)V
    .locals 6
    .param p1, "isDown"    # Z
    .param p2, "isNeedAnimate"    # Z

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 115
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 126
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_2

    .line 127
    new-array v4, v4, [F

    aput v0, v4, v3

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->scaleTo:F

    aput v3, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 128
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v3, v4, v1, v5, v0}, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 131
    :cond_2
    new-array v4, v4, [F

    iget v5, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->scaleTo:F

    aput v5, v4, v3

    aput v0, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 132
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;

    const v4, 0x3e570a3d    # 0.21f

    const v5, 0x3f170a3d    # 0.59f

    invoke-direct {v3, v4, v5, v1, v0}, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/drawable/-$$Lambda$XMenuItemDrawable$g-CL0FnKn4n0C82EpzovYpJ1ris;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/drawable/-$$Lambda$XMenuItemDrawable$g-CL0FnKn4n0C82EpzovYpJ1ris;-><init>(Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 141
    return-void

    .line 117
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 118
    const v0, 0x3f666666    # 0.9f

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->setScaleRect(F)V

    goto :goto_2

    .line 120
    :cond_4
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->setScaleRect(F)V

    .line 122
    :goto_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->invalidateSelf()V

    .line 123
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 75
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 80
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 153
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/drawable/XDrawable;->setVisible(ZZ)Z

    move-result v0

    .line 154
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 155
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->setScaleRect(F)V

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->invalidateSelf()V

    .line 157
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 159
    :cond_0
    return v0
.end method
