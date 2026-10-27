.class public Lcom/xiaopeng/xui/drawable/XPressableDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "XPressableDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final TAG:Ljava/lang/String; = "XPressableDrawable"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mIsPressed:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mValueFrom:I

.field private mValueTo:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 33
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method private inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 4

    .line 96
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    .line 97
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 98
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_2

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 100
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 105
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2

    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    if-eqz p4, :cond_0

    .line 52
    sget-object v0, Lbyg$n;->XPressableDrawable:[I

    const/4 v1, 0x0

    invoke-virtual {p4, p3, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, Lbyg$n;->XPressableDrawable:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    :goto_0
    sget v1, Lbyg$n;->XPressableDrawable_android_drawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 60
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 62
    :goto_1
    sget p1, Lbyg$n;->XPressableDrawable_android_valueFrom:I

    sget p2, Lbyg$n;->XPressableDrawable_android_valueTo:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->readAnimateValues(Landroid/content/res/TypedArray;II)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->readOtherAttributes(Landroid/content/res/TypedArray;)V

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 183
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

.method public synthetic lambda$startAnimation$0$XPressableDrawable(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 195
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->onAnimateValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected onAnimateValue(Ljava/lang/Object;)V
    .locals 0

    .line 202
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->setHeight(I)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 6

    .line 144
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mValueFrom:I

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mValueTo:I

    if-eq v0, v1, :cond_3

    .line 146
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

    .line 152
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mIsPressed:Z

    if-eq v0, v1, :cond_3

    .line 153
    iput-boolean v1, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mIsPressed:Z

    .line 155
    iget-boolean p1, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mIsPressed:Z

    if-eqz p1, :cond_2

    .line 156
    iget p1, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mValueFrom:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mValueTo:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->startAnimation(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 158
    :cond_2
    iget p1, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mValueTo:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mValueFrom:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->startAnimation(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    return v3

    .line 163
    :cond_3
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method protected readAnimateValues(Landroid/content/res/TypedArray;II)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mValueFrom:I

    .line 75
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mValueTo:I

    return-void
.end method

.method protected readOtherAttributes(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 79
    sget v0, Lbyg$n;->XPressableDrawable_android_width:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 80
    sget v2, Lbyg$n;->XPressableDrawable_android_height:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 81
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->setWidth(I)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->setHeight(I)V

    return-void
.end method

.method public setHeight(I)V
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    float-to-int p1, p1

    sub-int v1, v0, p1

    add-int/2addr v0, p1

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mTempRect:Landroid/graphics/Rect;

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 118
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 119
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setWidth(I)V
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    float-to-int p1, p1

    sub-int v1, v0, p1

    add-int/2addr v0, p1

    .line 131
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mTempRect:Landroid/graphics/Rect;

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 132
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 133
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method protected startAnimation(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_0
    const/4 v0, 0x2

    .line 193
    new-array v0, v0, [I

    const/4 v1, 0x0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v0, v1

    const/4 p1, 0x1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    .line 194
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/xiaopeng/xui/drawable/-$$Lambda$XPressableDrawable$5FIuSBlKWFK9bn59hikFCVCE7HI;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/drawable/-$$Lambda$XPressableDrawable$5FIuSBlKWFK9bn59hikFCVCE7HI;-><init>(Lcom/xiaopeng/xui/drawable/XPressableDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 197
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 198
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method
