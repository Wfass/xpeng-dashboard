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

    .line 52
    return-void
.end method

.method private animateHeight(II)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 91
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable$1;-><init>(Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 102
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 142
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 83
    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 4
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

    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 58
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 59
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XPressableRoundRectDrawable:[I

    invoke-virtual {p4, p3, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "ta":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 61
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XPressableRoundRectDrawable:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 63
    .restart local v1    # "ta":Landroid/content/res/TypedArray;
    :goto_0
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XPressableRoundRectDrawable_android_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mFillColorList:Landroid/content/res/ColorStateList;

    .line 64
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mFillColorList:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_1

    .line 65
    const v2, -0x33201f1b

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mFillColorList:Landroid/content/res/ColorStateList;

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mFillColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XPressableRoundRectDrawable_android_radius:I

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mRadius:I

    .line 69
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XPressableRoundRectDrawable_android_valueFrom:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mValueFrom:I

    .line 70
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XPressableRoundRectDrawable_android_valueTo:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mValueTo:I

    .line 71
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XPressableRoundRectDrawable_android_width:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mWidth:I

    .line 72
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XPressableRoundRectDrawable_android_height:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeight:I

    .line 73
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0

    .line 199
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 128
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 129
    const-string v0, "XPressableRoundRectDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBoundsChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 131
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mWidth:I

    if-lez v0, :cond_0

    .line 132
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mWidth:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->setWidth(I)V

    .line 134
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeight:I

    if-eqz v0, :cond_1

    .line 135
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeight:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->setHeight(I)V

    .line 137
    :cond_1
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 5
    .param p1, "stateSet"    # [I

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

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "isPressed":Z
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 161
    .local v3, "s":I
    const v4, 0x10100a7

    if-ne v3, v4, :cond_0

    .line 162
    const/4 v0, 0x1

    .line 163
    goto :goto_1

    .line 160
    .end local v3    # "s":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mIsPressed:Z

    if-eq v1, v0, :cond_3

    .line 167
    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mIsPressed:Z

    .line 169
    iget-boolean v1, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mIsPressed:Z

    if-eqz v1, :cond_2

    .line 170
    iget v1, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mValueFrom:I

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mValueTo:I

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->animateHeight(II)V

    goto :goto_2

    .line 172
    :cond_2
    iget v1, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mValueTo:I

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mValueFrom:I

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->animateHeight(II)V

    .line 174
    :goto_2
    const/4 v1, 0x1

    return v1

    .line 177
    .end local v0    # "isPressed":Z
    :cond_3
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 147
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 152
    return-void
.end method

.method public setHeight(I)V
    .locals 6
    .param p1, "height"    # I

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    .line 106
    .local v0, "center":I
    int-to-float v1, v0

    int-to-float v2, p1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 107
    .local v1, "top":F
    int-to-float v2, v0

    int-to-float v4, p1

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    .line 108
    .local v2, "bottom":F
    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mRect:Landroid/graphics/RectF;

    iput v1, v3, Landroid/graphics/RectF;->top:F

    .line 109
    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mRect:Landroid/graphics/RectF;

    iput v2, v3, Landroid/graphics/RectF;->bottom:F

    .line 110
    const-string v3, "XPressableRoundRectDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setHeight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 123
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public setWidth(I)V
    .locals 5
    .param p1, "width"    # I

    .line 114
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 115
    .local v0, "center":I
    int-to-float v1, v0

    int-to-float v2, p1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 116
    .local v1, "left":F
    int-to-float v2, v0

    int-to-float v4, p1

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    .line 117
    .local v2, "right":F
    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mRect:Landroid/graphics/RectF;

    iput v1, v3, Landroid/graphics/RectF;->left:F

    .line 118
    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mRect:Landroid/graphics/RectF;

    iput v2, v3, Landroid/graphics/RectF;->right:F

    .line 119
    return-void
.end method

.method public start()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 185
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 192
    :cond_0
    return-void
.end method
