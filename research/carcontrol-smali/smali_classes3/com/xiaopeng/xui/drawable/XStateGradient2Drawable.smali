.class public Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;
.super Lcom/xiaopeng/xui/drawable/XDrawable;
.source "XStateGradient2Drawable.java"


# static fields
.field private static final DEFAULT_RADIUS:I = 0x8

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1


# instance fields
.field private duration:I

.field private mColorFrom:Landroid/content/res/ColorStateList;

.field private mColorFromAnimator:Landroid/animation/ValueAnimator;

.field private mColorFromFrom:I

.field private mColorFromTo:I

.field private mColorTo:Landroid/content/res/ColorStateList;

.field private mColorToAnimator:Landroid/animation/ValueAnimator;

.field private mColorToFrom:I

.field private mColorToTo:I

.field private mCurrentColorFrom:I

.field private mCurrentColorTo:I

.field private mCurrentStrokeColor:I

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mRadius:I

.field private final mRect:Landroid/graphics/RectF;

.field private mStrokeAnimator:Landroid/animation/ValueAnimator;

.field private final mStrokePaint:Landroid/graphics/Paint;

.field private mStrokeValueFrom:I

.field private mStrokeValueTo:I

.field private orientation:I

.field private strokeColorStateList:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XDrawable;-><init>()V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mFillPaint:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mRect:Landroid/graphics/RectF;

    return-void
.end method

.method private animateColorFrom(IIZ)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFromAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFromAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_0
    if-eqz p3, :cond_2

    .line 158
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    new-array p3, p3, [I

    const/4 v0, 0x0

    aput p1, p3, v0

    const/4 p1, 0x1

    aput p2, p3, p1

    .line 163
    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFromAnimator:Landroid/animation/ValueAnimator;

    .line 164
    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 165
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFromAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/xiaopeng/xui/drawable/-$$Lambda$XStateGradient2Drawable$BJliNL1EyeDI5-p58ou3tzN8MuE;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/drawable/-$$Lambda$XStateGradient2Drawable$BJliNL1EyeDI5-p58ou3tzN8MuE;-><init>(Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 170
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFromAnimator:Landroid/animation/ValueAnimator;

    iget p2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->duration:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 171
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFromAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 159
    :cond_2
    :goto_0
    iput p2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentColorFrom:I

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->invalidateSelf()V

    return-void
.end method

.method private animateColorTo(IIZ)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorToAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorToAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_0
    if-eqz p3, :cond_2

    .line 179
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    new-array p3, p3, [I

    const/4 v0, 0x0

    aput p1, p3, v0

    const/4 p1, 0x1

    aput p2, p3, p1

    .line 184
    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorToAnimator:Landroid/animation/ValueAnimator;

    .line 185
    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 186
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorToAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/xiaopeng/xui/drawable/-$$Lambda$XStateGradient2Drawable$52q1qJmaQS7ydcO7bD0ISPYRgvo;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/drawable/-$$Lambda$XStateGradient2Drawable$52q1qJmaQS7ydcO7bD0ISPYRgvo;-><init>(Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorToAnimator:Landroid/animation/ValueAnimator;

    iget p2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->duration:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorToAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 180
    :cond_2
    :goto_0
    iput p2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentColorTo:I

    .line 181
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->invalidateSelf()V

    return-void
.end method

.method private animateStrokeColor(IIZ)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_0
    if-eqz p3, :cond_2

    .line 200
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    new-array p3, p3, [I

    const/4 v0, 0x0

    aput p1, p3, v0

    const/4 p1, 0x1

    aput p2, p3, p1

    .line 206
    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeAnimator:Landroid/animation/ValueAnimator;

    .line 207
    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 208
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/xiaopeng/xui/drawable/-$$Lambda$XStateGradient2Drawable$UGWTtTg1bWPEpG2X27lhUraJjTE;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/drawable/-$$Lambda$XStateGradient2Drawable$UGWTtTg1bWPEpG2X27lhUraJjTE;-><init>(Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 214
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeAnimator:Landroid/animation/ValueAnimator;

    iget p2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->duration:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 215
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 201
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    iput p2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentStrokeColor:I

    .line 203
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    .line 83
    iget v1, v0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->orientation:I

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    iget-object v2, v0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mRect:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->right:F

    const/4 v6, 0x0

    iget v7, v0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentColorFrom:I

    iget v8, v0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentColorTo:I

    sget-object v9, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    goto :goto_0

    .line 86
    :cond_0
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v11, 0x0

    iget-object v2, v0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mRect:Landroid/graphics/RectF;

    iget v12, v2, Landroid/graphics/RectF;->bottom:F

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget v15, v0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentColorFrom:I

    iget v2, v0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentColorTo:I

    sget-object v17, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v10, v1

    move/from16 v16, v2

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 89
    :goto_0
    iget-object v2, v0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 90
    iget-object v1, v0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mRect:Landroid/graphics/RectF;

    iget v2, v0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mRadius:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual {v5, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 91
    iget-object v1, v0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->strokeColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 92
    iget-object v1, v0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v8, v1, v2

    iget-object v1, v0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v9, v1, v2

    iget v1, v0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mRadius:I

    int-to-float v10, v1

    int-to-float v11, v1

    iget-object v12, v0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_1
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

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/drawable/XDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    const/4 p2, 0x0

    if-eqz p4, :cond_0

    .line 58
    sget-object p1, Lcom/xiaopeng/xpui/R$styleable;->XStateGradient2Drawable:[I

    invoke-virtual {p4, p3, p1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 60
    :cond_0
    sget-object p4, Lcom/xiaopeng/xpui/R$styleable;->XStateGradient2Drawable:[I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 62
    :goto_0
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XStateGradient2Drawable_android_radius:I

    const/16 p4, 0x8

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mRadius:I

    .line 63
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XStateGradient2Drawable_android_orientation:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->orientation:I

    .line 64
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XStateGradient2Drawable_android_valueFrom:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFrom:Landroid/content/res/ColorStateList;

    .line 65
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XStateGradient2Drawable_android_valueTo:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorTo:Landroid/content/res/ColorStateList;

    .line 66
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XStateGradient2Drawable_android_strokeColor:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->strokeColorStateList:Landroid/content/res/ColorStateList;

    .line 67
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XStateGradient2Drawable_android_duration:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->duration:I

    .line 68
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 p3, 0x40000000    # 2.0f

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$animateColorFrom$0$XStateGradient2Drawable(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 166
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 167
    iput p1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentColorFrom:I

    .line 168
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->invalidateSelf()V

    return-void
.end method

.method public synthetic lambda$animateColorTo$1$XStateGradient2Drawable(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 187
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 188
    iput p1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentColorTo:I

    .line 189
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->invalidateSelf()V

    return-void
.end method

.method public synthetic lambda$animateStrokeColor$2$XStateGradient2Drawable(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 209
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    iput p1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentStrokeColor:I

    .line 212
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->invalidateSelf()V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/drawable/XDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3

    .line 118
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentColorFrom:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFromFrom:I

    .line 119
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentColorTo:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorToFrom:I

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFrom:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFromTo:I

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorTo:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorToTo:I

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 123
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->strokeColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 125
    iget v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentStrokeColor:I

    iput v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeValueFrom:I

    .line 126
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeValueTo:I

    .line 127
    iget v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeValueFrom:I

    iget-boolean v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->isNeedAnimate:Z

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->animateStrokeColor(IIZ)V

    .line 129
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFromFrom:I

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFromTo:I

    iget-boolean v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->isNeedAnimate:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->animateColorFrom(IIZ)V

    .line 130
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorToFrom:I

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorToTo:I

    iget-boolean v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->isNeedAnimate:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->animateColorTo(IIZ)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->strokeColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 133
    iget v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentStrokeColor:I

    iput v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeValueFrom:I

    .line 134
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeValueTo:I

    .line 135
    iget v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeValueFrom:I

    invoke-direct {p0, v2, v0, v1}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->animateStrokeColor(IIZ)V

    .line 137
    :cond_2
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFromFrom:I

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFromTo:I

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->animateColorFrom(IIZ)V

    .line 138
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorToFrom:I

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorToTo:I

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->animateColorTo(IIZ)V

    goto :goto_0

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->strokeColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_4

    .line 142
    iget v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentStrokeColor:I

    iput v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeValueFrom:I

    .line 143
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeValueTo:I

    .line 144
    iget v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeValueFrom:I

    invoke-direct {p0, v2, v0, v1}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->animateStrokeColor(IIZ)V

    .line 146
    :cond_4
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFromFrom:I

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFromTo:I

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->animateColorFrom(IIZ)V

    .line 147
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorToFrom:I

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorToTo:I

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->animateColorTo(IIZ)V

    .line 150
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
