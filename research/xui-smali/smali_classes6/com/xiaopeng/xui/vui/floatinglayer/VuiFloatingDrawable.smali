.class Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "VuiFloatingDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable2;


# static fields
.field private static final PADDING:I


# instance fields
.field private mAlphaAnimatorIn:Landroid/animation/ValueAnimator;

.field private mAlphaAnimatorOut:Landroid/animation/ValueAnimator;

.field private mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Animatable2$AnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mEndListener:Landroid/animation/Animator$AnimatorListener;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mRunning:Z

.field private mScaleAnimator:[Landroid/animation/ValueAnimator;

.field private mStarting:Z

.field private mUpdateListenerAlpha:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mUpdateListenerScale:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 89
    new-instance v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$1;-><init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mUpdateListenerAlpha:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 98
    new-instance v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$2;-><init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mUpdateListenerScale:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 107
    new-instance v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$3;-><init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mEndListener:Landroid/animation/Animator$AnimatorListener;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 49
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 89
    new-instance v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$1;-><init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mUpdateListenerAlpha:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 98
    new-instance v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$2;-><init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mUpdateListenerScale:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 107
    new-instance v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$3;-><init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mEndListener:Landroid/animation/Animator$AnimatorListener;

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mPaint:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 59
    const/4 v0, 0x2

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAlphaAnimatorIn:Landroid/animation/ValueAnimator;

    .line 60
    iget-object v2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAlphaAnimatorIn:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 61
    iget-object v2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAlphaAnimatorIn:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 63
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/animation/ValueAnimator;

    iput-object v2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mScaleAnimator:[Landroid/animation/ValueAnimator;

    .line 64
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 65
    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    nop

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mScaleAnimator:[Landroid/animation/ValueAnimator;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 66
    rem-int/lit8 v3, v1, 0x2

    if-nez v3, :cond_0

    .line 67
    iget-object v3, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mScaleAnimator:[Landroid/animation/ValueAnimator;

    new-array v4, v0, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_1

    .line 69
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mScaleAnimator:[Landroid/animation/ValueAnimator;

    new-array v4, v0, [F

    fill-array-data v4, :array_2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    .line 71
    :goto_1
    iget-object v3, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mScaleAnimator:[Landroid/animation/ValueAnimator;

    aget-object v3, v3, v1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 72
    iget-object v3, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mScaleAnimator:[Landroid/animation/ValueAnimator;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "i":I
    :cond_1
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAlphaAnimatorOut:Landroid/animation/ValueAnimator;

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAlphaAnimatorOut:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAlphaAnimatorOut:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 79
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAnimators:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAlphaAnimatorIn:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAnimators:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mScaleAnimator:[Landroid/animation/ValueAnimator;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAnimators:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAlphaAnimatorOut:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 87
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f866666    # 1.05f
    .end array-data

    :array_2
    .array-data 4
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->log(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 267
    const-string v0, "VuiFloatingDrawable"

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method private postOnAnimationEnd()V
    .locals 2

    .line 241
    const-string v0, "postOnAnimationEnd "

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->log(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 243
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 246
    .local v1, "callback":Landroid/graphics/drawable/Animatable2$AnimationCallback;
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 247
    .end local v1    # "callback":Landroid/graphics/drawable/Animatable2$AnimationCallback;
    goto :goto_0

    .line 248
    :cond_1
    return-void
.end method

.method private postOnAnimationStart()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 233
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 236
    .local v1, "callback":Landroid/graphics/drawable/Animatable2$AnimationCallback;
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 237
    .end local v1    # "callback":Landroid/graphics/drawable/Animatable2$AnimationCallback;
    goto :goto_0

    .line 238
    :cond_1
    return-void
.end method


# virtual methods
.method public clearAnimationCallbacks()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 195
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    return-void

    .line 151
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mStarting:Z

    if-eqz v0, :cond_1

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mStarting:Z

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mRunning:Z

    .line 154
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->postOnAnimationStart()V

    .line 156
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mRunning:Z

    if-nez v0, :cond_2

    .line 157
    return-void

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 162
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    return v0

    .line 143
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    return v0

    .line 135
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 166
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mRunning:Z

    return v0
.end method

.method public registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/graphics/drawable/Animatable2$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_1
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 259
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 264
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 123
    if-nez p1, :cond_0

    .line 124
    const-string v0, "setVisible false "

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->log(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->stop()V

    .line 127
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 5

    .line 199
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mRunning:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->stop()V

    .line 202
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mStarting:Z

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mScaleAnimator:[Landroid/animation/ValueAnimator;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 205
    .local v3, "animator":Landroid/animation/ValueAnimator;
    iget-object v4, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mUpdateListenerScale:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 204
    .end local v3    # "animator":Landroid/animation/ValueAnimator;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAlphaAnimatorIn:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mUpdateListenerAlpha:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAlphaAnimatorOut:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mUpdateListenerAlpha:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAlphaAnimatorOut:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mEndListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 211
    return-void
.end method

.method public stop()V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAnimators:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 218
    .local v1, "anim":Landroid/animation/Animator;
    instance-of v2, v1, Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    .line 219
    move-object v2, v1

    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 221
    :cond_0
    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 222
    .end local v1    # "anim":Landroid/animation/Animator;
    goto :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 225
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mRunning:Z

    if-eqz v0, :cond_2

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mRunning:Z

    .line 227
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->postOnAnimationEnd()V

    .line 229
    :cond_2
    return-void
.end method

.method public unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/graphics/drawable/Animatable2$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->clearAnimationCallbacks()V

    .line 187
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 182
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
