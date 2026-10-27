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

    .line 56
    return-void
.end method

.method private animateColor(IIZ)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "isNeedAnimate"    # Z

    .line 143
    if-eqz p3, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mContentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mContentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mContentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 153
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mContentAnimator:Landroid/animation/ValueAnimator;

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mContentAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mContentAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/drawable/-$$Lambda$XToggleDrawableV5$-G7fm9i54Ug1R4RCIm-Jxz-Nv7U;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/drawable/-$$Lambda$XToggleDrawableV5$-G7fm9i54Ug1R4RCIm-Jxz-Nv7U;-><init>(Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mContentAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mContentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 163
    return-void

    .line 144
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iput p2, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mCurrentColor:I

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->invalidateSelf()V

    .line 147
    return-void
.end method

.method private animateIndicatorColor(IIZ)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "isNeedAnimate"    # Z

    .line 167
    if-eqz p3, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 178
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/drawable/-$$Lambda$XToggleDrawableV5$segS5EP7ULRiGNxmNuy2DjxT7uY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/drawable/-$$Lambda$XToggleDrawableV5$segS5EP7ULRiGNxmNuy2DjxT7uY;-><init>(Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 189
    return-void

    .line 168
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    iput p2, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mCurrentColorIndicator:I

    .line 171
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->invalidateSelf()V

    .line 172
    return-void
.end method

.method public static synthetic lambda$animateColor$0(Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 156
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 157
    .local v0, "value":I
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    iput v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mCurrentColor:I

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->invalidateSelf()V

    .line 160
    return-void
.end method

.method public static synthetic lambda$animateIndicatorColor$1(Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 181
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 183
    .local v0, "value":I
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    iput v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mCurrentColorIndicator:I

    .line 185
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->invalidateSelf()V

    .line 186
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 97
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 111
    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 4
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

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/drawable/XDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 62
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 63
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawableV5:[I

    invoke-virtual {p4, p3, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "ta":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 65
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawableV5:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 67
    .restart local v1    # "ta":Landroid/content/res/TypedArray;
    :goto_0
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawableV5_android_radius:I

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mRadius:I

    .line 68
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawableV5_android_width:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mWidth:I

    .line 69
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawableV5_android_height:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mHeight:I

    .line 70
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawableV5_android_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->colorStateList:Landroid/content/res/ColorStateList;

    .line 71
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawableV5_android_colorSecondary:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->colorIndicatorStateList:Landroid/content/res/ColorStateList;

    .line 72
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawableV5_android_strokeColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->colorStrokeStateList:Landroid/content/res/ColorStateList;

    .line 73
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawableV5_android_duration:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->duration:I

    .line 74
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "r"    # Landroid/graphics/Rect;

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

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 89
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3
    .param p1, "state"    # [I

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

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->colorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mValueTo:I

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->colorIndicatorStateList:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->colorIndicatorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->mIndicatorValueTo:I

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->colorStrokeStateList:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->colorStrokeStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

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

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 102
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 107
    return-void
.end method
