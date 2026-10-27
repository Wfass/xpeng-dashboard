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

    .line 51
    return-void
.end method

.method private animateColorFrom(IIZ)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "isNeedAnimate"    # Z

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFromAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFromAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFromAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 158
    :cond_0
    if-eqz p3, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFromAnimator:Landroid/animation/ValueAnimator;

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFromAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFromAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/drawable/-$$Lambda$XStateGradient2Drawable$2dTRSzhEkPYqzuQXTFMsukMYObk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/drawable/-$$Lambda$XStateGradient2Drawable$2dTRSzhEkPYqzuQXTFMsukMYObk;-><init>(Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFromAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFromAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 172
    return-void

    .line 159
    :cond_2
    :goto_0
    iput p2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentColorFrom:I

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->invalidateSelf()V

    .line 161
    return-void
.end method

.method private animateColorTo(IIZ)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "isNeedAnimate"    # Z

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorToAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorToAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorToAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 179
    :cond_0
    if-eqz p3, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 184
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorToAnimator:Landroid/animation/ValueAnimator;

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorToAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorToAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/drawable/-$$Lambda$XStateGradient2Drawable$78DpxOP_5WBkRmLtIaN9fi2bLrI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/drawable/-$$Lambda$XStateGradient2Drawable$78DpxOP_5WBkRmLtIaN9fi2bLrI;-><init>(Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorToAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorToAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 193
    return-void

    .line 180
    :cond_2
    :goto_0
    iput p2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentColorTo:I

    .line 181
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->invalidateSelf()V

    .line 182
    return-void
.end method

.method private animateStrokeColor(IIZ)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "isNeedAnimate"    # Z

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 200
    :cond_0
    if-eqz p3, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 206
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeAnimator:Landroid/animation/ValueAnimator;

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/drawable/-$$Lambda$XStateGradient2Drawable$w9Y4hcFMZceuzxdr9RYJSHi6nN4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/drawable/-$$Lambda$XStateGradient2Drawable$w9Y4hcFMZceuzxdr9RYJSHi6nN4;-><init>(Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 216
    return-void

    .line 201
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    iput p2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentStrokeColor:I

    .line 203
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->invalidateSelf()V

    .line 204
    return-void
.end method

.method public static synthetic lambda$animateColorFrom$0(Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 166
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 167
    .local v0, "value":I
    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentColorFrom:I

    .line 168
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->invalidateSelf()V

    .line 169
    return-void
.end method

.method public static synthetic lambda$animateColorTo$1(Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 187
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 188
    .local v0, "value":I
    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentColorTo:I

    .line 189
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->invalidateSelf()V

    .line 190
    return-void
.end method

.method public static synthetic lambda$animateStrokeColor$2(Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 209
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 210
    .local v0, "value":I
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentStrokeColor:I

    .line 212
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->invalidateSelf()V

    .line 213
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 83
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->orientation:I

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->right:F

    const/4 v5, 0x0

    iget v6, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentColorFrom:I

    iget v7, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentColorTo:I

    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .local v0, "shader":Landroid/graphics/Shader;
    goto :goto_0

    .line 86
    .end local v0    # "shader":Landroid/graphics/Shader;
    :cond_0
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mRect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentColorFrom:I

    iget v7, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentColorTo:I

    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 89
    .restart local v0    # "shader":Landroid/graphics/Shader;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 90
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 91
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->strokeColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    .line 92
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v5, v1, v2

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v1, v2

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mRadius:I

    int-to-float v7, v1

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mRadius:I

    int-to-float v8, v1

    iget-object v9, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 94
    :cond_1
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 108
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

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/drawable/XDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 57
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 58
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XStateGradient2Drawable:[I

    invoke-virtual {p4, p3, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "ta":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 60
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XStateGradient2Drawable:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 62
    .restart local v1    # "ta":Landroid/content/res/TypedArray;
    :goto_0
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XStateGradient2Drawable_android_radius:I

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mRadius:I

    .line 63
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XStateGradient2Drawable_android_orientation:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->orientation:I

    .line 64
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XStateGradient2Drawable_android_valueFrom:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFrom:Landroid/content/res/ColorStateList;

    .line 65
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XStateGradient2Drawable_android_valueTo:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorTo:Landroid/content/res/ColorStateList;

    .line 66
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XStateGradient2Drawable_android_strokeColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->strokeColorStateList:Landroid/content/res/ColorStateList;

    .line 67
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XStateGradient2Drawable_android_duration:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->duration:I

    .line 68
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 76
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/drawable/XDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 78
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3
    .param p1, "state"    # [I

    .line 118
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentColorFrom:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFromFrom:I

    .line 119
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentColorTo:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorToFrom:I

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFrom:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFrom:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorFromTo:I

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorTo:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mColorTo:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

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
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentStrokeColor:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeValueFrom:I

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->strokeColorStateList:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->strokeColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeValueTo:I

    .line 127
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeValueFrom:I

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeValueTo:I

    iget-boolean v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->isNeedAnimate:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->animateStrokeColor(IIZ)V

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
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentStrokeColor:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeValueFrom:I

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->strokeColorStateList:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->strokeColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeValueTo:I

    .line 135
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeValueFrom:I

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeValueTo:I

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->animateStrokeColor(IIZ)V

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
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mCurrentStrokeColor:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeValueFrom:I

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->strokeColorStateList:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->strokeColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeValueTo:I

    .line 144
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeValueFrom:I

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->mStrokeValueTo:I

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xui/drawable/XStateGradient2Drawable;->animateStrokeColor(IIZ)V

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

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 99
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 104
    return-void
.end method
