.class public Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "XPressableRoundRectDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final DEFAULT_COLOR:I = -0x33201f1b

.field private static final DEFAULT_RADIUS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "XPressableRoundRectDrawable"


# instance fields
.field private mFillColorList:Landroid/content/res/ColorStateList;

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mHeightAnimator:Landroid/animation/ValueAnimator;

.field private mIsPressed:Z

.field private mRadius:I

.field private final mRect:Landroid/graphics/RectF;

.field private mValueFrom:I

.field private mValueTo:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mRect:Landroid/graphics/RectF;

    return-void
.end method

.method private animateHeight(II)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 91
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 92
    new-instance p2, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable$1;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable$1;-><init>(Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 101
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mFillPaint:Landroid/graphics/Paint;

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
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    const/4 p2, 0x0

    if-eqz p4, :cond_0

    .line 59
    sget-object p1, Lcom/xiaopeng/xpui/R$styleable;->XPressableRoundRectDrawable:[I

    invoke-virtual {p4, p3, p1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 61
    :cond_0
    sget-object p4, Lcom/xiaopeng/xpui/R$styleable;->XPressableRoundRectDrawable:[I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 63
    :goto_0
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XPressableRoundRectDrawable_android_color:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mFillColorList:Landroid/content/res/ColorStateList;

    if-nez p3, :cond_1

    const p3, -0x33201f1b

    .line 65
    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mFillColorList:Landroid/content/res/ColorStateList;

    .line 67
    :cond_1
    iget-object p3, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget-object p4, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mFillColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {p4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XPressableRoundRectDrawable_android_radius:I

    const/16 p4, 0x8

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mRadius:I

    .line 69
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XPressableRoundRectDrawable_android_valueFrom:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mValueFrom:I

    .line 70
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XPressableRoundRectDrawable_android_valueTo:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mValueTo:I

    .line 71
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XPressableRoundRectDrawable_android_width:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mWidth:I

    .line 72
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XPressableRoundRectDrawable_android_height:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeight:I

    .line 73
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    .line 128
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBoundsChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XPressableRoundRectDrawable"

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 131
    iget p1, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mWidth:I

    if-lez p1, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->setWidth(I)V

    .line 134
    :cond_0
    iget p1, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeight:I

    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->setHeight(I)V

    :cond_1
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 6

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mFillColorList:Landroid/content/res/ColorStateList;

    const v2, -0x33201f1b

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mValueFrom:I

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mValueTo:I

    if-eq v0, v1, :cond_3

    .line 160
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    aget v4, p1, v2

    const v5, 0x10100a7

    if-ne v4, v5, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mIsPressed:Z

    if-eq v0, v1, :cond_3

    .line 167
    iput-boolean v1, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mIsPressed:Z

    if-eqz v1, :cond_2

    .line 170
    iget p1, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mValueFrom:I

    iget v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mValueTo:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->animateHeight(II)V

    goto :goto_2

    .line 172
    :cond_2
    iget p1, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mValueTo:I

    iget v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mValueFrom:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->animateHeight(II)V

    :goto_2
    return v3

    .line 177
    :cond_3
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

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

.method public setHeight(I)V
    .locals 3

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v2, v0, v1

    add-float/2addr v0, v1

    .line 108
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mRect:Landroid/graphics/RectF;

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 109
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mRect:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", result:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XPressableRoundRectDrawable"

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 0

    .line 123
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public setWidth(I)V
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    sub-float v1, v0, p1

    add-float/2addr v0, p1

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mRect:Landroid/graphics/RectF;

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mRect:Landroid/graphics/RectF;

    iput v0, p1, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method public start()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method
