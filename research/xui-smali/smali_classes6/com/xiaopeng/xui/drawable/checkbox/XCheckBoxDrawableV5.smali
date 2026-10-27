.class public Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;
.super Lcom/airbnb/lottie/LottieDrawable;
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
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->checkedFrom:F

    .line 40
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->checkedTo:F

    .line 41
    iput v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->unCheckedFrom:F

    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->unCheckedTo:F

    return-void
.end method

.method private animateColor(FF)V
    .locals 3
    .param p1, "from"    # F
    .param p2, "to"    # F

    .line 125
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    const-string v0, "not main thread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->setProgress(F)V

    .line 128
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 129
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :cond_0
    return-void

    .line 134
    .end local v0    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 138
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->mHeightAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/drawable/checkbox/-$$Lambda$XCheckBoxDrawableV5$bhJIzOwAKFxHwaSx7qKU_G7A3cw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/drawable/checkbox/-$$Lambda$XCheckBoxDrawableV5$bhJIzOwAKFxHwaSx7qKU_G7A3cw;-><init>(Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->mHeightAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 151
    return-void
.end method

.method public static synthetic lambda$animateColor$0(Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 140
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 142
    .local v0, "value":F
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->setProgress(F)V

    .line 144
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    .line 145
    .local v1, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v1, :cond_0

    .line 146
    invoke-interface {v1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

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
    invoke-super {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 82
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->height:I

    if-nez v0, :cond_0

    const/16 v0, 0x2a

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->height:I

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->width:I

    if-nez v0, :cond_0

    const/16 v0, 0x2a

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->width:I

    :goto_0
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

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/LottieDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 50
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 51
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XCheckBoxDrawableV5:[I

    invoke-virtual {p4, p3, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "ta":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 53
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XCheckBoxDrawableV5:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 55
    .restart local v1    # "ta":Landroid/content/res/TypedArray;
    :goto_0
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XCheckBoxDrawableV5_android_src:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->srcId:I

    .line 56
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XCheckBoxDrawableV5_android_width:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->width:I

    .line 57
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XCheckBoxDrawableV5_android_height:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->height:I

    .line 58
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    iget v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->srcId:I

    if-eqz v0, :cond_1

    .line 60
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/xiaopeng/xpui/R$raw;->x_checkbox_lottie:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5$2;-><init>(Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;)V

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5$1;-><init>(Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;)V

    .line 69
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 76
    :cond_1
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 5
    .param p1, "state"    # [I

    .line 102
    const/4 v0, 0x0

    .line 104
    .local v0, "currentChecked":Z
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 105
    .local v3, "s":I
    const v4, 0x10100a0

    if-ne v3, v4, :cond_0

    .line 107
    const/4 v0, 0x1

    .line 104
    .end local v3    # "s":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_1
    iget-boolean v1, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->lastChecked:Z

    if-eq v1, v0, :cond_3

    .line 112
    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->lastChecked:Z

    .line 113
    if-eqz v0, :cond_2

    .line 115
    iget v1, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->checkedFrom:F

    iget v2, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->checkedTo:F

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->animateColor(FF)V

    goto :goto_1

    .line 118
    :cond_2
    iget v1, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->unCheckedFrom:F

    iget v2, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->unCheckedTo:F

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->animateColor(FF)V

    .line 121
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->onStateChange([I)Z

    move-result v1

    return v1
.end method
