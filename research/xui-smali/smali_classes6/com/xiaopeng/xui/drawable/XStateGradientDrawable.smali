.class public Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;
.super Lcom/xiaopeng/xui/drawable/XDrawable;
.source "XStateGradientDrawable.java"


# static fields
.field private static final DEFAULT_RADIUS:I = 0x8


# instance fields
.field private colorStateList:Landroid/content/res/ColorStateList;

.field private duration:I

.field private mCurrentColor:I

.field private mCurrentStrokeColor:I

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mHeightAnimator:Landroid/animation/ValueAnimator;

.field private mRadius:I

.field private final mRect:Landroid/graphics/RectF;

.field private mStrokeAnimator:Landroid/animation/ValueAnimator;

.field private final mStrokePaint:Landroid/graphics/Paint;

.field private mStrokeValueFrom:I

.field private mStrokeValueTo:I

.field private mValueFrom:I

.field private mValueTo:I

.field private mWidth:I

.field private strokeColorStateList:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XDrawable;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 46
    return-void
.end method

.method private animateColor(IIZ)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "isNeedAnimate"    # Z

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 140
    :cond_0
    if-eqz p3, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/drawable/-$$Lambda$XStateGradientDrawable$7A4kQriUQ34lFzDsQly7Hi2ijIQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/drawable/-$$Lambda$XStateGradientDrawable$7A4kQriUQ34lFzDsQly7Hi2ijIQ;-><init>(Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 156
    return-void

    .line 141
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    iput p2, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mCurrentColor:I

    .line 143
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->invalidateSelf()V

    .line 144
    return-void
.end method

.method private animateStrokeColor(IIZ)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "isNeedAnimate"    # Z

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 163
    :cond_0
    if-eqz p3, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokeAnimator:Landroid/animation/ValueAnimator;

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/drawable/-$$Lambda$XStateGradientDrawable$aUdE-wIQ_I7E79S4pbK7DTVUJuQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/drawable/-$$Lambda$XStateGradientDrawable$aUdE-wIQ_I7E79S4pbK7DTVUJuQ;-><init>(Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokeAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 179
    return-void

    .line 164
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    iput p2, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mCurrentStrokeColor:I

    .line 166
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->invalidateSelf()V

    .line 167
    return-void
.end method

.method public static synthetic lambda$animateColor$0(Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 149
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 150
    .local v0, "value":I
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mCurrentColor:I

    .line 152
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->invalidateSelf()V

    .line 153
    return-void
.end method

.method public static synthetic lambda$animateStrokeColor$1(Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 172
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 173
    .local v0, "value":I
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mCurrentStrokeColor:I

    .line 175
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->invalidateSelf()V

    .line 176
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->strokeColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 80
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v4, v0, v1

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v5, v0, v1

    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mRadius:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v6, v0

    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mRadius:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v7, v0

    iget-object v8, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 82
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 96
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

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/drawable/XDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 52
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 53
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XStateGradientDrawable:[I

    invoke-virtual {p4, p3, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "ta":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 55
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XStateGradientDrawable:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 57
    .restart local v1    # "ta":Landroid/content/res/TypedArray;
    :goto_0
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XStateGradientDrawable_android_radius:I

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mRadius:I

    .line 58
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XStateGradientDrawable_android_width:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mWidth:I

    .line 59
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XStateGradientDrawable_android_height:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mHeight:I

    .line 60
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XStateGradientDrawable_android_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->colorStateList:Landroid/content/res/ColorStateList;

    .line 61
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XStateGradientDrawable_android_strokeColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->strokeColorStateList:Landroid/content/res/ColorStateList;

    .line 62
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XStateGradientDrawable_android_duration:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->duration:I

    .line 63
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 72
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/drawable/XDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 74
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3
    .param p1, "state"    # [I

    .line 106
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mCurrentColor:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mValueFrom:I

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->colorStateList:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->colorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mValueTo:I

    .line 108
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 109
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->strokeColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 111
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mCurrentStrokeColor:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokeValueFrom:I

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->strokeColorStateList:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->strokeColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokeValueTo:I

    .line 113
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokeValueFrom:I

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokeValueTo:I

    iget-boolean v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->isNeedAnimate:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->animateStrokeColor(IIZ)V

    .line 115
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mValueFrom:I

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mValueTo:I

    iget-boolean v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->isNeedAnimate:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->animateColor(IIZ)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->strokeColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 118
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mCurrentStrokeColor:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokeValueFrom:I

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->strokeColorStateList:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->strokeColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokeValueTo:I

    .line 120
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokeValueFrom:I

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokeValueTo:I

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->animateStrokeColor(IIZ)V

    .line 122
    :cond_2
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mValueFrom:I

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mValueTo:I

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->animateColor(IIZ)V

    goto :goto_0

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->strokeColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_4

    .line 126
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mCurrentStrokeColor:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokeValueFrom:I

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->strokeColorStateList:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->strokeColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokeValueTo:I

    .line 128
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokeValueFrom:I

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mStrokeValueTo:I

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->animateStrokeColor(IIZ)V

    .line 130
    :cond_4
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mValueFrom:I

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->mValueTo:I

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->animateColor(IIZ)V

    .line 132
    :goto_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/drawable/XDrawable;->onStateChange([I)Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 87
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 92
    return-void
.end method
