.class public Lcom/xiaopeng/xui/drawable/ripple/XRipple;
.super Ljava/lang/Object;
.source "XRipple.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/drawable/ripple/XRipple$AnimTransformListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_TIME:J = 0x190L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimTransformListener:Lcom/xiaopeng/xui/drawable/ripple/XRipple$AnimTransformListener;

.field private mAnimationPress:Landroid/animation/ValueAnimator;

.field private mAnimationUp:Landroid/animation/ValueAnimator;

.field private mBackgroundColor:I

.field private mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private mClearDistance:F

.field private mCurrentDistance:F

.field private mDownX:F

.field private mDownY:F

.field private mIsAnimating:Z

.field private mIsPressAnimating:Z

.field private mIsTouched:Z

.field private mIsUpAnimating:Z

.field private mMaxPressRadius:F

.field private mNeedUpAnim:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPressRadius:F

.field private mRippleAlpha:I

.field private mRippleColor:I

.field private mRipplePath:Landroid/graphics/Path;

.field private mRippleRadius:F

.field private mRippleRectF:Landroid/graphics/RectF;

.field private mSupportScale:Z

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->init()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 64
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->getView(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 65
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->init()V

    .line 66
    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/xui/drawable/ripple/XRipple;F)F
    .locals 0

    .line 29
    iput p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mPressRadius:F

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mMaxPressRadius:F

    return p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mNeedUpAnim:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/xiaopeng/xui/drawable/ripple/XRipple;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mNeedUpAnim:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mAnimationUp:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/xiaopeng/xui/drawable/ripple/XRipple;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mIsUpAnimating:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/xiaopeng/xui/drawable/ripple/XRipple;F)F
    .locals 0

    .line 29
    iput p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mCurrentDistance:F

    return p1
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mClearDistance:F

    return p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Lcom/xiaopeng/xui/drawable/ripple/XRipple$AnimTransformListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mAnimTransformListener:Lcom/xiaopeng/xui/drawable/ripple/XRipple$AnimTransformListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mSupportScale:Z

    return p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->invalidateSelf()V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleAlpha:I

    return p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Landroid/graphics/Paint;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mIsPressAnimating:Z

    return p0
.end method

.method static synthetic access$802(Lcom/xiaopeng/xui/drawable/ripple/XRipple;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mIsPressAnimating:Z

    return p1
.end method

.method static synthetic access$902(Lcom/xiaopeng/xui/drawable/ripple/XRipple;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mIsAnimating:Z

    return p1
.end method

.method private drawRippleBackground(Landroid/graphics/Canvas;)V
    .locals 4

    .line 339
    iget v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleColor:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$color;->x_ripple_default_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleColor:I

    .line 342
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mBackgroundColor:I

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRadius:F

    iget v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRadius:F

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 346
    :cond_1
    iget p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleColor:I

    if-eqz p1, :cond_2

    .line 347
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 349
    :cond_2
    return-void
.end method

.method private getView(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 3

    .line 91
    if-eqz p1, :cond_2

    .line 92
    instance-of v0, p1, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 93
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    .line 94
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->getView(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 95
    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 96
    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mView:Landroid/view/View;

    goto :goto_0

    .line 98
    :cond_1
    sget-object v0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",callback is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/d/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_2
    sget-object p1, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",callback is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/d/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void
.end method

.method private init()V
    .locals 2

    .line 69
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRipplePath:Landroid/graphics/Path;

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mPaint:Landroid/graphics/Paint;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->initAnimation()V

    .line 73
    return-void
.end method

.method private initAnimation()V
    .locals 6

    .line 162
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 163
    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mAnimationPress:Landroid/animation/ValueAnimator;

    .line 164
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mAnimationPress:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/xiaopeng/xui/drawable/ripple/XRipple$1;

    invoke-direct {v5, p0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple$1;-><init>(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 180
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mAnimationPress:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/xiaopeng/xui/drawable/ripple/XRipple$2;

    invoke-direct {v5, p0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple$2;-><init>(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 209
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mAnimationPress:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 210
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mAnimationPress:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 212
    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mAnimationUp:Landroid/animation/ValueAnimator;

    .line 213
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mAnimationUp:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;-><init>(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 230
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mAnimationUp:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/xiaopeng/xui/drawable/ripple/XRipple$4;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple$4;-><init>(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 252
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mAnimationUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mAnimationUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 254
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private invalidateSelf()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    instance-of v0, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    .line 264
    :cond_1
    sget-object v0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->TAG:Ljava/lang/String;

    const-string v1, "Callback is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/d/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    :cond_2
    :goto_0
    return-void
.end method

.method private isVisible()Z
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    instance-of v0, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    return v0

    .line 423
    :cond_2
    return v1
.end method

.method private resetPath()V
    .locals 5

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRectF:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRipplePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRipplePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRadius:F

    iget v3, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRadius:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method public drawRipple(Landroid/graphics/Canvas;)V
    .locals 11

    .line 305
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 309
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setRippleRect(Landroid/graphics/RectF;)V

    .line 311
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mIsPressAnimating:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mIsAnimating:Z

    if-eqz v0, :cond_2

    .line 312
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->drawRippleBackground(Landroid/graphics/Canvas;)V

    .line 313
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    .line 315
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRipplePath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 316
    iget v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mDownX:F

    iget v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mDownY:F

    iget v3, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mPressRadius:F

    iget-object v4, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 317
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 318
    goto/16 :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mIsUpAnimating:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mIsAnimating:Z

    if-eqz v0, :cond_3

    .line 319
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->drawRippleBackground(Landroid/graphics/Canvas;)V

    .line 320
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    .line 322
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRadius:F

    iget v3, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRadius:F

    iget-object v4, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 323
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 324
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mCurrentDistance:F

    iget v3, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mClearDistance:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRadius:F

    mul-float v9, v1, v2

    .line 325
    iget v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mCurrentDistance:F

    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float v4, v1, v2

    iget v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mCurrentDistance:F

    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float v5, v1, v2

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRectF:Landroid/graphics/RectF;

    .line 327
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mCurrentDistance:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float v6, v1, v2

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRectF:Landroid/graphics/RectF;

    .line 328
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mCurrentDistance:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float v7, v1, v2

    iget-object v10, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mPaint:Landroid/graphics/Paint;

    .line 325
    move-object v3, p1

    move v8, v9

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 330
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 331
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 332
    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mIsTouched:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mIsAnimating:Z

    if-eqz v0, :cond_4

    .line 333
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->drawRippleBackground(Landroid/graphics/Canvas;)V

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRadius:F

    iget v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRadius:F

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 336
    :cond_4
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 358
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->pressDown(FF)V

    .line 359
    goto :goto_0

    .line 362
    :cond_0
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->pressUp()V

    .line 365
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method pressDown(FF)V
    .locals 3

    .line 373
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRectF:Landroid/graphics/RectF;

    if-eqz v0, :cond_4

    .line 374
    iput p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mDownX:F

    .line 375
    iput p2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mDownY:F

    .line 376
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mNeedUpAnim:Z

    .line 377
    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mIsAnimating:Z

    .line 378
    iget p2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mDownX:F

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, v0

    .line 379
    iget v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mDownY:F

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    .line 380
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float p2, v1, p2

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 384
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float v0, v1, v0

    .line 386
    :cond_1
    mul-float/2addr p2, p2

    mul-float/2addr v0, v0

    add-float/2addr p2, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p2, v0

    iput p2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mMaxPressRadius:F

    .line 387
    iget-boolean p2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mIsUpAnimating:Z

    if-eqz p2, :cond_2

    .line 388
    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mIsUpAnimating:Z

    .line 389
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mAnimationUp:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 391
    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mIsPressAnimating:Z

    .line 392
    iget-object p2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mAnimationPress:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 393
    iget-object p2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mAnimationPress:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 395
    :cond_3
    iget-object p2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mAnimationPress:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 396
    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mIsTouched:Z

    .line 398
    :cond_4
    return-void
.end method

.method pressUp()V
    .locals 2

    .line 404
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mIsTouched:Z

    .line 406
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mIsPressAnimating:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 407
    iput-boolean v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mNeedUpAnim:Z

    goto :goto_0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mAnimationUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 410
    iput-boolean v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mIsUpAnimating:Z

    .line 413
    :cond_1
    :goto_0
    return-void
.end method

.method public setAnimTransformListener(Lcom/xiaopeng/xui/drawable/ripple/XRipple$AnimTransformListener;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mAnimTransformListener:Lcom/xiaopeng/xui/drawable/ripple/XRipple$AnimTransformListener;

    .line 449
    return-void
.end method

.method public setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 87
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->getView(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 88
    return-void
.end method

.method setPressDuration(J)V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mAnimationPress:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 290
    return-void
.end method

.method public setPressInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mAnimationPress:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 274
    return-void
.end method

.method setRippleBackgroundColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 120
    iput p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mBackgroundColor:I

    .line 121
    return-void
.end method

.method setRippleColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 110
    iput p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleColor:I

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleAlpha:I

    .line 113
    return-void
.end method

.method public setRippleRadius(F)V
    .locals 0

    .line 150
    iput p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRadius:F

    .line 151
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->resetPath()V

    .line 152
    return-void
.end method

.method setRippleRect(Landroid/graphics/RectF;)V
    .locals 1

    .line 128
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRectF:Landroid/graphics/RectF;

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float p1, p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    if-lez p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mClearDistance:F

    goto :goto_0

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mRippleRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mClearDistance:F

    .line 134
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->resetPath()V

    .line 135
    return-void
.end method

.method public setSupportScale(Z)V
    .locals 0

    .line 142
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mSupportScale:Z

    .line 143
    return-void
.end method

.method setUpDuration(J)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mAnimationUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 298
    return-void
.end method

.method public setUpInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mAnimationUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 282
    return-void
.end method

.method public setView(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 82
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->getView(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 83
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 431
    if-nez p1, :cond_0

    .line 432
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mAnimationPress:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 433
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mAnimationUp:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 434
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mIsPressAnimating:Z

    .line 435
    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mIsUpAnimating:Z

    .line 436
    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mIsAnimating:Z

    .line 437
    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mPressRadius:F

    .line 438
    iput p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mCurrentDistance:F

    goto :goto_0

    .line 439
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mSupportScale:Z

    if-eqz p1, :cond_1

    .line 440
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 441
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 443
    :cond_1
    :goto_0
    return-void
.end method
