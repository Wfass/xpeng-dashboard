.class public Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;
.super Lcom/airbnb/lottie/f;
.source "XCheckBoxDrawableV5.java"


# instance fields
.field private checkedFrom:F

.field private checkedTo:F

.field private height:I

.field private lastChecked:Z

.field private mHeightAnimator:Landroid/animation/ValueAnimator;

.field private srcId:I

.field private unCheckedFrom:F

.field private unCheckedTo:F

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/airbnb/lottie/f;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->checkedFrom:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 40
    iput v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->checkedTo:F

    .line 41
    iput v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->unCheckedFrom:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 42
    iput v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->unCheckedTo:F

    return-void
.end method

.method private animateColor(FF)V
    .locals 2

    .line 125
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setProgress "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "not main thread"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->setProgress(F)V

    .line 128
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 130
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 135
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_2
    const/4 v0, 0x2

    .line 138
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 139
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->mHeightAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/xiaopeng/xui/drawable/checkbox/-$$Lambda$XCheckBoxDrawableV5$bhJIzOwAKFxHwaSx7qKU_G7A3cw;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/drawable/checkbox/-$$Lambda$XCheckBoxDrawableV5$bhJIzOwAKFxHwaSx7qKU_G7A3cw;-><init>(Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->mHeightAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 150
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 81
    invoke-super {p0, p1}, Lcom/airbnb/lottie/f;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->height:I

    if-nez v0, :cond_0

    const/16 v0, 0x2a

    :cond_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->width:I

    if-nez v0, :cond_0

    const/16 v0, 0x2a

    :cond_0
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/f;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    const/4 p2, 0x0

    if-eqz p4, :cond_0

    .line 51
    sget-object p1, Lbyg$n;->XCheckBoxDrawableV5:[I

    invoke-virtual {p4, p3, p1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 53
    :cond_0
    sget-object p4, Lbyg$n;->XCheckBoxDrawableV5:[I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 55
    :goto_0
    sget p3, Lbyg$n;->XCheckBoxDrawableV5_android_src:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->srcId:I

    .line 56
    sget p3, Lbyg$n;->XCheckBoxDrawableV5_android_width:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->width:I

    .line 57
    sget p3, Lbyg$n;->XCheckBoxDrawableV5_android_height:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->height:I

    .line 58
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    iget p1, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->srcId:I

    if-eqz p1, :cond_1

    .line 60
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lbyg$k;->x_checkbox_lottie:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/airbnb/lottie/e;->a(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/m;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5$2;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5$2;-><init>(Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;)V

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/m;->a(Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/m;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5$1;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5$1;-><init>(Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;)V

    .line 69
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/m;->c(Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/m;

    :cond_1
    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$animateColor$0$XCheckBoxDrawableV5(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 140
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 142
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->setProgress(F)V

    .line 144
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 146
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 5

    .line 104
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget v3, p1, v1

    const v4, 0x10100a0

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->lastChecked:Z

    if-eq v0, v2, :cond_3

    .line 112
    iput-boolean v2, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->lastChecked:Z

    if-eqz v2, :cond_2

    .line 115
    iget v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->checkedFrom:F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->checkedTo:F

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->animateColor(FF)V

    goto :goto_1

    .line 118
    :cond_2
    iget v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->unCheckedFrom:F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->unCheckedTo:F

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->animateColor(FF)V

    .line 121
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/airbnb/lottie/f;->onStateChange([I)Z

    move-result p1

    return p1
.end method
