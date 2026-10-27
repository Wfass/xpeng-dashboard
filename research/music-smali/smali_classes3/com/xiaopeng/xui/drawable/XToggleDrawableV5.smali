.class public Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;
.super Lcom/xiaopeng/xui/drawable/XDrawable;
.source "XToggleDrawableV5.java"


# static fields
.field private static final DEFAULT_RADIUS:I = 0x8


# instance fields
.field private colorIndicatorStateList:Landroid/content/res/ColorStateList;

.field private colorStateList:Landroid/content/res/ColorStateList;

.field private colorStrokeStateList:Landroid/content/res/ColorStateList;

.field private duration:I

.field private mContentAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentColor:I

.field private mCurrentColorIndicator:I

.field private mCurrentColorStroke:I

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private final mIndicatorPaint:Landroid/graphics/Paint;

.field private final mIndicatorPath:Landroid/graphics/Path;

.field private mIndicatorValueFrom:I

.field private mIndicatorValueTo:I

.field private mRadius:I

.field private final mRect:Landroid/graphics/RectF;

.field private final mStrokePaint:Landroid/graphics/Paint;

.field private mStrokeValueFrom:I

.field private mStrokeValueTo:I

.field private mValueFrom:I

.field private mValueTo:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XDrawable;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mFillPaint:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mStrokePaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mRect:Landroid/graphics/RectF;

    .line 35
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorPath:Landroid/graphics/Path;

    return-void
.end method

.method private animateColor(IIZ)V
    .locals 1

    if-eqz p3, :cond_2

    .line 143
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    iget-object p3, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mContentAnimator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_1

    .line 150
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 151
    iget-object p3, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mContentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_1
    const/4 p3, 0x2

    .line 153
    new-array p3, p3, [I

    const/4 v0, 0x0

    aput p1, p3, v0

    const/4 p1, 0x1

    aput p2, p3, p1

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mContentAnimator:Landroid/animation/ValueAnimator;

    .line 154
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mContentAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mContentAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/xiaopeng/xui/drawable/-$$Lambda$XToggleDrawableV5$-G7fm9i54Ug1R4RCIm-Jxz-Nv7U;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/drawable/-$$Lambda$XToggleDrawableV5$-G7fm9i54Ug1R4RCIm-Jxz-Nv7U;-><init>(Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 161
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mContentAnimator:Landroid/animation/ValueAnimator;

    iget p2, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->duration:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 162
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mContentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 144
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iput p2, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mCurrentColor:I

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->invalidateSelf()V

    return-void
.end method

.method private animateIndicatorColor(IIZ)V
    .locals 1

    if-eqz p3, :cond_2

    .line 167
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    iget-object p3, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_1

    .line 175
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 176
    iget-object p3, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_1
    const/4 p3, 0x2

    .line 178
    new-array p3, p3, [I

    const/4 v0, 0x0

    aput p1, p3, v0

    const/4 p1, 0x1

    aput p2, p3, p1

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 179
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 180
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/xiaopeng/xui/drawable/-$$Lambda$XToggleDrawableV5$segS5EP7ULRiGNxmNuy2DjxT7uY;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/drawable/-$$Lambda$XToggleDrawableV5$segS5EP7ULRiGNxmNuy2DjxT7uY;-><init>(Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 187
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    iget p2, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->duration:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 188
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 168
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    iput p2, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mCurrentColorIndicator:I

    .line 171
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/drawable/XDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    const/4 p2, 0x0

    if-eqz p4, :cond_0

    .line 63
    sget-object p1, Lbyg$n;->XToggleDrawableV5:[I

    invoke-virtual {p4, p3, p1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 65
    :cond_0
    sget-object p4, Lbyg$n;->XToggleDrawableV5:[I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 67
    :goto_0
    sget p3, Lbyg$n;->XToggleDrawableV5_android_radius:I

    const/16 p4, 0x8

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mRadius:I

    .line 68
    sget p3, Lbyg$n;->XToggleDrawableV5_android_width:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mWidth:I

    .line 69
    sget p3, Lbyg$n;->XToggleDrawableV5_android_height:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mHeight:I

    .line 70
    sget p3, Lbyg$n;->XToggleDrawableV5_android_color:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->colorStateList:Landroid/content/res/ColorStateList;

    .line 71
    sget p3, Lbyg$n;->XToggleDrawableV5_android_colorSecondary:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->colorIndicatorStateList:Landroid/content/res/ColorStateList;

    .line 72
    sget p3, Lbyg$n;->XToggleDrawableV5_android_strokeColor:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->colorStrokeStateList:Landroid/content/res/ColorStateList;

    .line 73
    sget p3, Lbyg$n;->XToggleDrawableV5_android_duration:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->duration:I

    .line 74
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$animateColor$0$XToggleDrawableV5(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 156
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    iput p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mCurrentColor:I

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->invalidateSelf()V

    return-void
.end method

.method public synthetic lambda$animateIndicatorColor$1$XToggleDrawableV5(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 181
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    iput p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mCurrentColorIndicator:I

    .line 185
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->invalidateSelf()V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    .line 80
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/drawable/XDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x1e

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x1b

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1b

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1e

    int-to-float v1, v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3

    .line 121
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mCurrentColor:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mValueFrom:I

    .line 122
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mCurrentColorIndicator:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorValueFrom:I

    .line 123
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mCurrentColorStroke:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mStrokeValueFrom:I

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->colorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mValueTo:I

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->colorIndicatorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorValueTo:I

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->colorStrokeStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mStrokeValueTo:I

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mValueFrom:I

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mValueTo:I

    iget-boolean v2, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->isNeedAnimate:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->animateColor(IIZ)V

    .line 130
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorValueFrom:I

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorValueTo:I

    iget-boolean v2, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->isNeedAnimate:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->animateIndicatorColor(IIZ)V

    goto :goto_0

    .line 132
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mValueFrom:I

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mValueTo:I

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->animateColor(IIZ)V

    .line 133
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorValueFrom:I

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorValueTo:I

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->animateIndicatorColor(IIZ)V

    goto :goto_0

    .line 136
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mValueFrom:I

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mValueTo:I

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->animateColor(IIZ)V

    .line 137
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorValueFrom:I

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorValueTo:I

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->animateIndicatorColor(IIZ)V

    .line 139
    :goto_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/drawable/XDrawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
