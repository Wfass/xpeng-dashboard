.class public Lxiaopeng/widget/SimpleSlider;
.super Landroid/view/View;
.source "SimpleSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxiaopeng/widget/SimpleSlider$AccessibilityEventSender;,
        Lxiaopeng/widget/SimpleSlider$SeekHandler;,
        Lxiaopeng/widget/SimpleSlider$SlideHandler;,
        Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;,
        Lxiaopeng/widget/SimpleSlider$TouchEventHandler;,
        Lxiaopeng/widget/SimpleSlider$TickMarkStyle;,
        Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;
    }
.end annotation


# static fields
.field public static final DRAG_MODE_STEP:I = 0x0

.field public static final DRAG_MODE_STEPLESS:I = 0x1

.field public static final DRAG_MODE_STEP_ON_DROP:I = 0x2

.field private static final MAX_LEVEL:I = 0x2710

.field private static final MAX_VALUE:I = 0x64

.field private static final MIN_VALUE:I = 0x0

.field private static final NO_ALPHA:I = 0xff

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SimpleSlider"

.field public static final TICK_MARK_STYLE_ALL:I = 0x1

.field public static final TICK_MARK_STYLE_CUSTOM:I = 0x2

.field public static final TICK_MARK_STYLE_PROGRESS:I = 0x0

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8

.field public static final TOUCH_MODE_SEEK:I = 0x1

.field public static final TOUCH_MODE_SLIDE:I


# instance fields
.field private dragMax:F

.field private dragMin:F

.field private mAccessibilityEventSender:Lxiaopeng/widget/SimpleSlider$AccessibilityEventSender;

.field private final mChangeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mClipToPadding:Z

.field private mDisabledAlpha:F

.field protected mDragMode:I

.field private mEnabled:Z

.field private mMax:I

.field private mMaxInitialized:Z

.field private mMin:I

.field private mMinInitialized:Z

.field private mOnSlideChangeListener:Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

.field protected mOrientation:I

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressDrawableRes:I

.field private mScaledTouchSlop:I

.field private mSecondaryProgress:I

.field private mSlideScale:F

.field private mStateSetSelected:[I

.field private mStateSetUnSelected:[I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mThumbRes:I

.field private mTickMark:Landroid/graphics/drawable/Drawable;

.field private mTickMarkPadding:F

.field private mTickMarkPositions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTickMarkProgressEnd:Z

.field private mTickMarkProgressStart:Z

.field private mTickMarkRes:I

.field private mTickMarkStyle:I

.field private mTouchEventHandler:Lxiaopeng/widget/SimpleSlider$TouchEventHandler;

.field protected mTouchMode:I

.field private final mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lxiaopeng/widget/SimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 188
    sget v0, Lcom/xiaopeng/xpui/R$style;->SimpleSlider:I

    invoke-direct {p0, p1, p2, v0}, Lxiaopeng/widget/SimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 192
    sget v0, Lcom/xiaopeng/xpui/R$style;->SimpleSlider:I

    invoke-direct {p0, p1, p2, p3, v0}, Lxiaopeng/widget/SimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 196
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lxiaopeng/widget/SimpleSlider;->mOrientation:I

    .line 111
    iput v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    .line 112
    iput v0, p0, Lxiaopeng/widget/SimpleSlider;->mSecondaryProgress:I

    .line 114
    iput v0, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    .line 115
    const/16 v1, 0x64

    iput v1, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    .line 116
    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mMaxInitialized:Z

    .line 117
    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mMinInitialized:Z

    .line 122
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lxiaopeng/widget/SimpleSlider;->mSlideScale:F

    .line 125
    const/4 v1, -0x1

    iput v1, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawableRes:I

    .line 127
    iput v1, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkRes:I

    .line 128
    iput v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkStyle:I

    .line 131
    const/4 v2, 0x0

    iput v2, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkPadding:F

    .line 132
    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkProgressStart:Z

    .line 133
    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkProgressEnd:Z

    .line 135
    iput v1, p0, Lxiaopeng/widget/SimpleSlider;->mThumbRes:I

    .line 139
    iput v0, p0, Lxiaopeng/widget/SimpleSlider;->mTouchMode:I

    .line 141
    iput v0, p0, Lxiaopeng/widget/SimpleSlider;->mDragMode:I

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mEnabled:Z

    .line 150
    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mClipToPadding:Z

    .line 155
    new-instance v0, Lxiaopeng/widget/SimpleSlider$1;

    invoke-direct {v0, p0}, Lxiaopeng/widget/SimpleSlider$1;-><init>(Lxiaopeng/widget/SimpleSlider;)V

    iput-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mChangeListenerList:Ljava/util/List;

    .line 198
    invoke-direct {p0, p1, p2, p3, p4}, Lxiaopeng/widget/SimpleSlider;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 199
    return-void
.end method

.method static synthetic access$000(Lxiaopeng/widget/SimpleSlider;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lxiaopeng/widget/SimpleSlider;
    .param p1, "x1"    # I

    .line 46
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider;->findProgressDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lxiaopeng/widget/SimpleSlider;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lxiaopeng/widget/SimpleSlider;

    .line 46
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Lxiaopeng/widget/SimpleSlider;ILandroid/graphics/drawable/Drawable;FI)V
    .locals 0
    .param p0, "x0"    # Lxiaopeng/widget/SimpleSlider;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x3"    # F
    .param p4, "x4"    # I

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lxiaopeng/widget/SimpleSlider;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    return-void
.end method

.method static synthetic access$300(Lxiaopeng/widget/SimpleSlider;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lxiaopeng/widget/SimpleSlider;

    .line 46
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMark:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lxiaopeng/widget/SimpleSlider;IZ)V
    .locals 0
    .param p0, "x0"    # Lxiaopeng/widget/SimpleSlider;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 46
    invoke-direct {p0, p1, p2}, Lxiaopeng/widget/SimpleSlider;->onAnimationFinish(IZ)V

    return-void
.end method

.method static synthetic access$500(Lxiaopeng/widget/SimpleSlider;FIZ)V
    .locals 0
    .param p0, "x0"    # Lxiaopeng/widget/SimpleSlider;
    .param p1, "x1"    # F
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lxiaopeng/widget/SimpleSlider;->setProgressFromTouch(FIZ)V

    return-void
.end method

.method static synthetic access$600(Lxiaopeng/widget/SimpleSlider;)V
    .locals 0
    .param p0, "x0"    # Lxiaopeng/widget/SimpleSlider;

    .line 46
    invoke-direct {p0}, Lxiaopeng/widget/SimpleSlider;->attemptClaimDrag()V

    return-void
.end method

.method private animateProgress(IZ)V
    .locals 5
    .param p1, "toProgress"    # I
    .param p2, "fromUser"    # Z

    .line 898
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider;->getVisualScale(I)F

    move-result v0

    .line 899
    .local v0, "scale":F
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getCurrentVisualScale()F

    move-result v1

    .line 900
    .local v1, "currentScale":F
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    .line 901
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 902
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 903
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 905
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 906
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 907
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 908
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lxiaopeng/widget/SimpleSlider;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 909
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lxiaopeng/widget/SimpleSlider$2;

    invoke-direct {v3, p0, p1, p2}, Lxiaopeng/widget/SimpleSlider$2;-><init>(Lxiaopeng/widget/SimpleSlider;IZ)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 930
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 931
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .line 1051
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1052
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1054
    :cond_0
    return-void
.end method

.method private findProgressDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "id"    # I

    .line 577
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 578
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_0

    .line 579
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 580
    if-nez v0, :cond_0

    .line 585
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 588
    :cond_0
    return-object v0
.end method

.method private getVisualScale(I)F
    .locals 3
    .param p1, "progress"    # I

    .line 592
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider;->limitProgress(I)I

    move-result p1

    .line 593
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    iget v1, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    sub-int/2addr v0, v1

    .line 594
    .local v0, "range":I
    if-lez v0, :cond_0

    iget v1, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private getVisualScaleFromTouch(FI)F
    .locals 4
    .param p1, "scaleDelta"    # F
    .param p2, "fromProgress"    # I

    .line 598
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getMax()I

    move-result v0

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    .line 599
    .local v0, "range":I
    int-to-float v1, p2

    int-to-float v2, v0

    div-float/2addr v1, v2

    add-float/2addr v1, p1

    .line 600
    .local v1, "scale":F
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 601
    return v1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 208
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->SimpleSlider:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 210
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->SimpleSlider_android_progressDrawable:I

    iget v2, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawableRes:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawableRes:I

    .line 211
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->SimpleSlider_android_progressDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lxiaopeng/widget/SimpleSlider;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->SimpleSlider_android_tickMark:I

    iget v2, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkRes:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkRes:I

    .line 214
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->SimpleSlider_android_tickMark:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 215
    .local v1, "tickMark":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Lxiaopeng/widget/SimpleSlider;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 216
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->SimpleSlider_android_thumb:I

    iget v3, p0, Lxiaopeng/widget/SimpleSlider;->mThumbRes:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lxiaopeng/widget/SimpleSlider;->mThumbRes:I

    .line 217
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->SimpleSlider_android_thumb:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 218
    .local v2, "thumbDr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Lxiaopeng/widget/SimpleSlider;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 219
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->SimpleSlider_android_orientation:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lxiaopeng/widget/SimpleSlider;->mOrientation:I

    .line 220
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->SimpleSlider_ss_tickMarkStyle:I

    iget v4, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkStyle:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkStyle:I

    .line 221
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->SimpleSlider_ss_tickMarkPositions:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "arrayString":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 223
    invoke-virtual {p0, v3}, Lxiaopeng/widget/SimpleSlider;->setTickMartPositions(Ljava/lang/String;)V

    .line 225
    :cond_0
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->SimpleSlider_ss_tickMark_padding:I

    iget v5, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkPadding:F

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkPadding:F

    .line 226
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->SimpleSlider_ss_tickMark_ProgressStart:I

    iget-boolean v5, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkProgressStart:Z

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkProgressStart:Z

    .line 227
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->SimpleSlider_ss_tickMark_ProgressEnd:I

    iget-boolean v5, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkProgressEnd:Z

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkProgressEnd:Z

    .line 229
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->SimpleSlider_ss_slideScale:I

    iget v5, p0, Lxiaopeng/widget/SimpleSlider;->mSlideScale:F

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lxiaopeng/widget/SimpleSlider;->mSlideScale:F

    .line 230
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->SimpleSlider_android_enabled:I

    iget-boolean v5, p0, Lxiaopeng/widget/SimpleSlider;->mEnabled:Z

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lxiaopeng/widget/SimpleSlider;->mEnabled:Z

    .line 231
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->SimpleSlider_android_disabledAlpha:I

    const v5, 0x3eb851ec    # 0.36f

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lxiaopeng/widget/SimpleSlider;->mDisabledAlpha:F

    .line 233
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->SimpleSlider_android_min:I

    iget v5, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lxiaopeng/widget/SimpleSlider;->setMin(I)V

    .line 234
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->SimpleSlider_android_max:I

    iget v5, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lxiaopeng/widget/SimpleSlider;->setMax(I)V

    .line 235
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->SimpleSlider_drag_min:I

    iget v5, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lxiaopeng/widget/SimpleSlider;->dragMin:F

    .line 236
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->SimpleSlider_drag_max:I

    iget v5, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lxiaopeng/widget/SimpleSlider;->dragMax:F

    .line 237
    iget v4, p0, Lxiaopeng/widget/SimpleSlider;->dragMin:F

    iget v5, p0, Lxiaopeng/widget/SimpleSlider;->dragMax:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 238
    iget v4, p0, Lxiaopeng/widget/SimpleSlider;->dragMax:F

    iput v4, p0, Lxiaopeng/widget/SimpleSlider;->dragMin:F

    .line 241
    :cond_1
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->SimpleSlider_android_progress:I

    iget v5, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lxiaopeng/widget/SimpleSlider;->setProgress(I)V

    .line 242
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->SimpleSlider_android_secondaryProgress:I

    iget v5, p0, Lxiaopeng/widget/SimpleSlider;->mSecondaryProgress:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lxiaopeng/widget/SimpleSlider;->setSecondaryProgress(I)V

    .line 244
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->SimpleSlider_ss_touchMode:I

    iget v5, p0, Lxiaopeng/widget/SimpleSlider;->mTouchMode:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lxiaopeng/widget/SimpleSlider;->mTouchMode:I

    .line 245
    iget v4, p0, Lxiaopeng/widget/SimpleSlider;->mTouchMode:I

    invoke-virtual {p0, v4}, Lxiaopeng/widget/SimpleSlider;->generateTouchEventHandler(I)Lxiaopeng/widget/SimpleSlider$TouchEventHandler;

    move-result-object v4

    iput-object v4, p0, Lxiaopeng/widget/SimpleSlider;->mTouchEventHandler:Lxiaopeng/widget/SimpleSlider$TouchEventHandler;

    .line 246
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->SimpleSlider_ss_dragMode:I

    iget v5, p0, Lxiaopeng/widget/SimpleSlider;->mDragMode:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lxiaopeng/widget/SimpleSlider;->mDragMode:I

    .line 247
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->SimpleSlider_android_clipToPadding:I

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lxiaopeng/widget/SimpleSlider;->mClipToPadding:Z

    .line 248
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 250
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 251
    .local v4, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Lxiaopeng/widget/SimpleSlider;->mScaledTouchSlop:I

    .line 252
    invoke-virtual {p0, v5}, Lxiaopeng/widget/SimpleSlider;->setImportantForAccessibility(I)V

    .line 253
    return-void
.end method

.method private limitProgress(I)I
    .locals 3
    .param p1, "progress"    # I

    .line 1248
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    .line 1249
    .local v0, "min":I
    iget v1, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    .line 1250
    .local v1, "max":I
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private onAnimationFinish(IZ)V
    .locals 1
    .param p1, "toProgress"    # I
    .param p2, "fromUser"    # Z

    .line 542
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 544
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 546
    :cond_0
    if-ltz p1, :cond_1

    .line 547
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lxiaopeng/widget/SimpleSlider;->setProgressAndDispatch(IZZ)V

    .line 549
    :cond_1
    if-eqz p2, :cond_2

    .line 550
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->onStopTrackingTouch()V

    .line 552
    :cond_2
    return-void
.end method

.method private refreshEnabledDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 1000
    if-eqz p1, :cond_1

    .line 1001
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Lxiaopeng/widget/SimpleSlider;->mDisabledAlpha:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1003
    :cond_1
    return-void
.end method

.method private refreshEnabledVisual()V
    .locals 1

    .line 1006
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lxiaopeng/widget/SimpleSlider;->refreshEnabledDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1007
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lxiaopeng/widget/SimpleSlider;->refreshEnabledDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1008
    return-void
.end method

.method private refreshProgress(II)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "progress"    # I

    .line 521
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lxiaopeng/widget/SimpleSlider;->refreshProgress(IIZZZ)V

    .line 522
    return-void
.end method

.method private refreshProgress(IIZZZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "animate"    # Z
    .param p5, "callbackToApp"    # Z

    .line 529
    const v0, 0x102000d

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 530
    .local v0, "isPrimary":Z
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    .line 531
    invoke-direct {p0, p2, p3}, Lxiaopeng/widget/SimpleSlider;->animateProgress(IZ)V

    goto :goto_1

    .line 533
    :cond_1
    invoke-direct {p0, p2}, Lxiaopeng/widget/SimpleSlider;->getVisualScale(I)F

    move-result v1

    .line 534
    .local v1, "scale":F
    invoke-virtual {p0, p1, v1}, Lxiaopeng/widget/SimpleSlider;->setVisualProgress(IF)V

    .line 535
    if-eqz v0, :cond_2

    .line 536
    invoke-direct {p0, p2, p3, p5}, Lxiaopeng/widget/SimpleSlider;->setProgressAndDispatch(IZZ)V

    .line 539
    .end local v1    # "scale":F
    :cond_2
    :goto_1
    return-void
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 3

    .line 1481
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mAccessibilityEventSender:Lxiaopeng/widget/SimpleSlider$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 1482
    new-instance v0, Lxiaopeng/widget/SimpleSlider$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lxiaopeng/widget/SimpleSlider$AccessibilityEventSender;-><init>(Lxiaopeng/widget/SimpleSlider;Lxiaopeng/widget/SimpleSlider$1;)V

    iput-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mAccessibilityEventSender:Lxiaopeng/widget/SimpleSlider$AccessibilityEventSender;

    goto :goto_0

    .line 1484
    :cond_0
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mAccessibilityEventSender:Lxiaopeng/widget/SimpleSlider$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lxiaopeng/widget/SimpleSlider;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1486
    :goto_0
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mAccessibilityEventSender:Lxiaopeng/widget/SimpleSlider$AccessibilityEventSender;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lxiaopeng/widget/SimpleSlider;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1487
    return-void
.end method

.method private setProgressAndDispatch(IZZ)V
    .locals 3
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z
    .param p3, "callbackToApp"    # Z

    .line 555
    const-string v0, "SimpleSlider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgressAndDispatch, progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fromUser:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", callbackToApp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider;->limitProgress(I)I

    move-result p1

    .line 557
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    if-eq p1, v0, :cond_1

    .line 558
    iput p1, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    .line 559
    if-eqz p3, :cond_0

    .line 560
    invoke-virtual {p0, p1, p2}, Lxiaopeng/widget/SimpleSlider;->onProgressChanged(IZ)V

    .line 562
    :cond_0
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->onAccessibilityProgressRefresh()V

    .line 564
    :cond_1
    return-void
.end method

.method private setProgressFromTouch(FIZ)V
    .locals 10
    .param p1, "scaleDelta"    # F
    .param p2, "fromProgress"    # I
    .param p3, "touchEnd"    # Z

    .line 605
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getMax()I

    move-result v0

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    .line 606
    .local v0, "range":I
    int-to-float v1, p2

    int-to-float v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getMin()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 607
    .local v1, "progress":F
    iget v2, p0, Lxiaopeng/widget/SimpleSlider;->dragMin:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 608
    iget v1, p0, Lxiaopeng/widget/SimpleSlider;->dragMin:F

    .line 609
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getMin()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v1, v2

    int-to-float v3, p2

    sub-float/2addr v2, v3

    int-to-float v3, v0

    div-float p1, v2, v3

    .line 611
    :cond_0
    iget v2, p0, Lxiaopeng/widget/SimpleSlider;->dragMax:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 612
    iget v1, p0, Lxiaopeng/widget/SimpleSlider;->dragMax:F

    .line 613
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getMin()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v1, v2

    int-to-float v3, p2

    sub-float/2addr v2, v3

    int-to-float v3, v0

    div-float p1, v2, v3

    .line 615
    :cond_1
    const/4 v2, 0x0

    .line 616
    .local v2, "animate":Z
    const/4 v3, 0x1

    .line 617
    .local v3, "fromUser":Z
    iget v4, p0, Lxiaopeng/widget/SimpleSlider;->mDragMode:I

    const v5, 0x102000d

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    .line 618
    invoke-direct {p0, p1, p2}, Lxiaopeng/widget/SimpleSlider;->getVisualScaleFromTouch(FI)F

    move-result v4

    .line 619
    .local v4, "scale":F
    invoke-virtual {p0, v5, v4}, Lxiaopeng/widget/SimpleSlider;->setVisualProgress(IF)V

    .line 621
    const-string v5, "SimpleSlider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setProgressFromTouch, scale:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", floatProgress:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", current:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getProgress()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 621
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {p0, v5}, Lxiaopeng/widget/SimpleSlider;->limitProgress(I)I

    move-result v5

    .line 624
    .local v5, "newProgress":I
    iget v7, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    if-eq v5, v7, :cond_2

    .line 625
    const-string v7, "SimpleSlider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setProgressFromTouch, SET floatProgress:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", current:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getProgress()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", newProgress:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 625
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-direct {p0, v5, v3, v6}, Lxiaopeng/widget/SimpleSlider;->setProgressAndDispatch(IZZ)V

    .line 629
    .end local v4    # "scale":F
    .end local v5    # "newProgress":I
    :cond_2
    goto :goto_1

    :cond_3
    iget v4, p0, Lxiaopeng/widget/SimpleSlider;->mDragMode:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_6

    .line 630
    const/4 v2, 0x1

    .line 631
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-direct {p0, v4}, Lxiaopeng/widget/SimpleSlider;->limitProgress(I)I

    move-result v4

    .line 632
    .local v4, "newProgress":I
    if-eqz p3, :cond_4

    .line 633
    invoke-virtual {p0, v4, v3, v2}, Lxiaopeng/widget/SimpleSlider;->setProgressInternal(IZZ)V

    goto :goto_0

    .line 635
    :cond_4
    invoke-direct {p0, p1, p2}, Lxiaopeng/widget/SimpleSlider;->getVisualScaleFromTouch(FI)F

    move-result v7

    .line 636
    .local v7, "scale":F
    invoke-virtual {p0, v5, v7}, Lxiaopeng/widget/SimpleSlider;->setVisualProgress(IF)V

    .line 638
    iget v5, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    if-eq v4, v5, :cond_5

    .line 639
    invoke-direct {p0, v4, v3, v6}, Lxiaopeng/widget/SimpleSlider;->setProgressAndDispatch(IZZ)V

    .line 642
    .end local v4    # "newProgress":I
    .end local v7    # "scale":F
    :cond_5
    :goto_0
    goto :goto_1

    .line 643
    :cond_6
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-direct {p0, v4}, Lxiaopeng/widget/SimpleSlider;->limitProgress(I)I

    move-result v4

    .line 644
    .restart local v4    # "newProgress":I
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getProgress()I

    move-result v5

    if-eq v4, v5, :cond_7

    .line 645
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v3, v5}, Lxiaopeng/widget/SimpleSlider;->setProgressInternal(IZZ)V

    .line 649
    .end local v4    # "newProgress":I
    :cond_7
    :goto_1
    if-nez v2, :cond_8

    if-eqz p3, :cond_8

    .line 650
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->onStopTrackingTouch()V

    .line 652
    :cond_8
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 15
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "offset"    # I

    move-object v0, p0

    .line 806
    move/from16 v1, p4

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingEnd()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingStart()I

    move-result v3

    sub-int/2addr v2, v3

    .line 808
    .local v2, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 809
    .local v3, "thumbWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 810
    .local v4, "thumbHeight":I
    sub-int/2addr v2, v3

    .line 813
    iget v5, v0, Lxiaopeng/widget/SimpleSlider;->mThumbOffset:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    .line 815
    int-to-float v5, v2

    mul-float v5, v5, p3

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 818
    .local v5, "thumbPos":I
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_0

    .line 819
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 820
    .local v6, "oldBounds":Landroid/graphics/Rect;
    iget v7, v6, Landroid/graphics/Rect;->top:I

    .line 821
    .local v7, "top":I
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 822
    .local v6, "bottom":I
    goto :goto_0

    .line 823
    .end local v6    # "bottom":I
    .end local v7    # "top":I
    :cond_0
    move v7, v1

    .line 824
    .restart local v7    # "top":I
    add-int v6, v1, v4

    .line 827
    .restart local v6    # "bottom":I
    :goto_0
    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->isVertical()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getLayoutDirection()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    sub-int v8, v2, v5

    goto :goto_1

    :cond_1
    move v8, v5

    .line 828
    .local v8, "left":I
    :goto_1
    add-int v9, v8, v3

    .line 830
    .local v9, "right":I
    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 831
    .local v10, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_2

    .line 832
    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingStart()I

    move-result v11

    iget v12, v0, Lxiaopeng/widget/SimpleSlider;->mThumbOffset:I

    sub-int/2addr v11, v12

    .line 833
    .local v11, "offsetX":I
    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingTop()I

    move-result v12

    .line 834
    .local v12, "offsetY":I
    add-int v13, v8, v11

    add-int v0, v7, v12

    add-int v1, v9, v11

    move v14, v2

    add-int v2, v6, v12

    .end local v2    # "available":I
    .local v14, "available":I
    invoke-virtual {v10, v13, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .end local v11    # "offsetX":I
    .end local v12    # "offsetY":I
    goto :goto_2

    .line 839
    .end local v14    # "available":I
    .restart local v2    # "available":I
    :cond_2
    move v14, v2

    .end local v2    # "available":I
    .restart local v14    # "available":I
    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v7, v9, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 840
    return-void
.end method

.method private setTickMarkStates(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "tickMark"    # Landroid/graphics/drawable/Drawable;
    .param p2, "position"    # I

    .line 1152
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1153
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    invoke-direct {p0, v0}, Lxiaopeng/widget/SimpleSlider;->getVisualScale(I)F

    move-result v0

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getRange()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getMin()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 1154
    .local v0, "visualProgress":F
    int-to-float v1, p2

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_0

    .line 1155
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider;->mStateSetSelected:[I

    if-eqz v1, :cond_1

    .line 1156
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider;->mStateSetSelected:[I

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 1159
    :cond_0
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider;->mStateSetUnSelected:[I

    if-eqz v1, :cond_1

    .line 1160
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider;->mStateSetUnSelected:[I

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1164
    .end local v0    # "visualProgress":F
    :cond_1
    :goto_0
    return-void
.end method

.method private updateDrawableBounds(II)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 845
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingEnd()I

    move-result v0

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingStart()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 846
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 848
    move v0, p1

    .line 849
    .local v0, "right":I
    move v1, p2

    .line 851
    .local v1, "bottom":I
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 852
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 854
    :cond_0
    return-void
.end method

.method private updateDrawableState()V
    .locals 4

    .line 857
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getDrawableState()[I

    move-result-object v0

    .line 858
    .local v0, "state":[I
    const/4 v1, 0x0

    .line 860
    .local v1, "changed":Z
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 861
    .local v2, "sliderDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 862
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    .line 865
    :cond_0
    if-eqz v1, :cond_1

    .line 866
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->invalidate()V

    .line 868
    :cond_1
    return-void
.end method

.method private updateThumbAndTrackPos(II)V
    .locals 12
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 762
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingTop()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 763
    .local v0, "paddedHeight":I
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 764
    .local v1, "track":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 766
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    goto :goto_1

    :cond_1
    :goto_0
    move v3, p2

    .line 767
    .local v3, "trackHeight":I
    :goto_1
    const/4 v4, 0x0

    if-nez v2, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 772
    .local v5, "thumbHeight":I
    :goto_2
    if-le v5, v3, :cond_3

    .line 773
    sub-int v6, v0, v5

    div-int/lit8 v6, v6, 0x2

    .line 774
    .local v6, "offsetHeight":I
    sub-int v7, v5, v3

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    .line 775
    .local v7, "trackOffset":I
    nop

    .line 776
    .local v6, "thumbOffset":I
    goto :goto_3

    .line 777
    .end local v6    # "thumbOffset":I
    .end local v7    # "trackOffset":I
    :cond_3
    sub-int v6, v0, v3

    div-int/lit8 v6, v6, 0x2

    .line 778
    .local v6, "offsetHeight":I
    move v7, v6

    .line 779
    .restart local v7    # "trackOffset":I
    sub-int v8, v3, v5

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    .line 782
    .local v6, "thumbOffset":I
    :goto_3
    if-eqz v1, :cond_6

    .line 783
    iget-boolean v8, p0, Lxiaopeng/widget/SimpleSlider;->mClipToPadding:Z

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingEnd()I

    move-result v8

    neg-int v8, v8

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingStart()I

    move-result v9

    sub-int/2addr v8, v9

    goto :goto_4

    :cond_4
    move v8, v4

    :goto_4
    add-int/2addr v8, p1

    .line 784
    .local v8, "trackWidth":I
    iget-boolean v9, p0, Lxiaopeng/widget/SimpleSlider;->mClipToPadding:Z

    if-nez v9, :cond_5

    .line 786
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingStart()I

    move-result v9

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderWidth()I

    move-result v10

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingEnd()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v1, v9, v4, v10, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 788
    :cond_5
    add-int v9, v7, v3

    invoke-virtual {v1, v4, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 791
    .end local v8    # "trackWidth":I
    :cond_6
    if-eqz v2, :cond_7

    .line 792
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getProgress()I

    move-result v4

    invoke-direct {p0, v4}, Lxiaopeng/widget/SimpleSlider;->getVisualScale(I)F

    move-result v4

    invoke-direct {p0, p1, v2, v4, v6}, Lxiaopeng/widget/SimpleSlider;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 794
    :cond_7
    return-void
.end method


# virtual methods
.method public addOnSliderChangeListener(Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;)V
    .locals 1
    .param p1, "onSlideChangeListener"    # Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    .line 452
    if-nez p1, :cond_0

    .line 453
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    return-void
.end method

.method protected canDrawTickMark(I)Z
    .locals 5
    .param p1, "position"    # I

    .line 1175
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkStyle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1176
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    if-ne p1, v0, :cond_0

    .line 1177
    return v2

    .line 1179
    :cond_0
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkProgressEnd:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    if-le p1, v0, :cond_1

    .line 1180
    return v2

    .line 1181
    :cond_1
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkProgressEnd:Z

    if-nez v0, :cond_5

    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    if-lt p1, v0, :cond_5

    .line 1182
    return v2

    .line 1184
    :cond_2
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkStyle:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 1185
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkPositions:Ljava/util/Set;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1186
    return v2

    .line 1188
    :cond_3
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkStyle:I

    if-ne v0, v1, :cond_5

    .line 1189
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    if-ne p1, v0, :cond_4

    .line 1190
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkProgressEnd:Z

    if-nez v0, :cond_5

    .line 1191
    return v2

    .line 1193
    :cond_4
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    if-ne p1, v0, :cond_5

    .line 1194
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkProgressStart:Z

    if-nez v0, :cond_5

    .line 1195
    return v2

    .line 1199
    :cond_5
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1017
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1018
    return v1

    .line 1020
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1021
    .local v0, "action":I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1023
    :pswitch_0
    invoke-virtual {p0, v1}, Lxiaopeng/widget/SimpleSlider;->setPressed(Z)V

    .line 1024
    goto :goto_0

    .line 1027
    :cond_1
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lxiaopeng/widget/SimpleSlider;->setPressed(Z)V

    .line 1031
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected drawThumb(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1203
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1204
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1207
    .local v0, "saveCount":I
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingStart()I

    move-result v1

    iget v2, p0, Lxiaopeng/widget/SimpleSlider;->mThumbOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1208
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1209
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1211
    .end local v0    # "saveCount":I
    :cond_0
    return-void
.end method

.method protected drawTickMarks(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1119
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->hasTickMark()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1120
    return-void

    .line 1122
    :cond_0
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getTickMark()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1123
    .local v0, "tickMark":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_8

    .line 1124
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1125
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getMax()I

    move-result v1

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getMin()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1126
    .local v1, "count":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_8

    .line 1127
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 1128
    .local v3, "w":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 1129
    .local v4, "h":I
    if-ltz v3, :cond_1

    div-int/lit8 v5, v3, 0x2

    goto :goto_0

    :cond_1
    move v5, v2

    .line 1130
    .local v5, "halfW":I
    :goto_0
    if-ltz v4, :cond_2

    div-int/lit8 v6, v4, 0x2

    goto :goto_1

    :cond_2
    move v6, v2

    .line 1131
    .local v6, "halfH":I
    :goto_1
    neg-int v7, v5

    neg-int v8, v6

    invoke-virtual {v0, v7, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1133
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderWidth()I

    move-result v7

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingStart()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingEnd()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkPadding:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    int-to-float v8, v1

    div-float/2addr v7, v8

    .line 1134
    .local v7, "spacing":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 1135
    .local v8, "saveCount":I
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->isVertical()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getLayoutDirection()I

    move-result v9

    if-ne v9, v2, :cond_3

    move v9, v2

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 1136
    .local v9, "needMirror":Z
    :goto_2
    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderWidth()I

    move-result v10

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingStart()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkPadding:F

    sub-float/2addr v10, v11

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingStart()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkPadding:F

    add-float/2addr v10, v11

    .line 1137
    .local v10, "canvasOffsetX":F
    :goto_3
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderHeight()I

    move-result v11

    shr-int/lit8 v2, v11, 0x1

    int-to-float v2, v2

    invoke-virtual {p1, v10, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1138
    if-eqz v9, :cond_5

    neg-float v2, v7

    goto :goto_4

    :cond_5
    move v2, v7

    .line 1139
    .local v2, "offsetX":F
    :goto_4
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getMin()I

    move-result v11

    .local v11, "i":I
    :goto_5
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getMax()I

    move-result v12

    if-gt v11, v12, :cond_7

    .line 1140
    invoke-virtual {p0, v11}, Lxiaopeng/widget/SimpleSlider;->canDrawTickMark(I)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1141
    invoke-direct {p0, v0, v11}, Lxiaopeng/widget/SimpleSlider;->setTickMarkStates(Landroid/graphics/drawable/Drawable;I)V

    .line 1142
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1144
    :cond_6
    const/4 v12, 0x0

    invoke-virtual {p1, v2, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1139
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1146
    .end local v11    # "i":I
    :cond_7
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1149
    .end local v1    # "count":I
    .end local v2    # "offsetX":F
    .end local v3    # "w":I
    .end local v4    # "h":I
    .end local v5    # "halfW":I
    .end local v6    # "halfH":I
    .end local v7    # "spacing":F
    .end local v8    # "saveCount":I
    .end local v9    # "needMirror":Z
    .end local v10    # "canvasOffsetX":F
    :cond_8
    return-void
.end method

.method protected drawTrack(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1103
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 1104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1106
    .local v0, "saveCount":I
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->isVertical()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1107
    iget-boolean v1, p0, Lxiaopeng/widget/SimpleSlider;->mClipToPadding:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingEnd()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1108
    .local v1, "paddingEnd":I
    :goto_0
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderWidth()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v2, v2

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1109
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1110
    .end local v1    # "paddingEnd":I
    goto :goto_2

    .line 1111
    :cond_1
    iget-boolean v1, p0, Lxiaopeng/widget/SimpleSlider;->mClipToPadding:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingStart()I

    move-result v1

    int-to-float v1, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1113
    :goto_2
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1114
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1116
    .end local v0    # "saveCount":I
    :cond_3
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 290
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 292
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 295
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 5

    .line 962
    invoke-direct {p0}, Lxiaopeng/widget/SimpleSlider;->refreshEnabledVisual()V

    .line 963
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 965
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getDrawableState()[I

    move-result-object v0

    .line 966
    .local v0, "drawableState":[I
    if-eqz v0, :cond_2

    .line 967
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider;->mStateSetSelected:[I

    array-length v1, v1

    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 968
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider;->mStateSetSelected:[I

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 970
    :cond_0
    const-string v1, "SimpleSlider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StateSetSelected length not enough:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lxiaopeng/widget/SimpleSlider;->mStateSetSelected:[I

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :goto_0
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider;->mStateSetUnSelected:[I

    array-length v1, v1

    array-length v2, v0

    if-le v1, v2, :cond_1

    .line 974
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider;->mStateSetUnSelected:[I

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 976
    :cond_1
    const-string v1, "SimpleSlider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StateSetUnSelected length not enough:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lxiaopeng/widget/SimpleSlider;->mStateSetUnSelected:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_2
    :goto_1
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider;->mStateSetSelected:[I

    array-length v1, v1

    if-lez v1, :cond_3

    .line 981
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider;->mStateSetSelected:[I

    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mStateSetSelected:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const v3, 0x10100a1

    aput v3, v1, v2

    .line 983
    :cond_3
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider;->mStateSetUnSelected:[I

    array-length v1, v1

    if-lez v1, :cond_4

    .line 984
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider;->mStateSetUnSelected:[I

    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mStateSetUnSelected:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const v3, -0x10100a1

    aput v3, v1, v2

    .line 987
    :cond_4
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 988
    .local v1, "progressDr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 989
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 990
    invoke-virtual {p0, v1}, Lxiaopeng/widget/SimpleSlider;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 992
    :cond_5
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 993
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 994
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 995
    invoke-virtual {p0, v2}, Lxiaopeng/widget/SimpleSlider;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 997
    :cond_6
    return-void
.end method

.method protected generateTouchEventHandler(I)Lxiaopeng/widget/SimpleSlider$TouchEventHandler;
    .locals 1
    .param p1, "touchMode"    # I

    .line 257
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 258
    new-instance v0, Lxiaopeng/widget/SimpleSlider$SeekHandler;

    invoke-direct {v0}, Lxiaopeng/widget/SimpleSlider$SeekHandler;-><init>()V

    .local v0, "value":Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;
    goto :goto_0

    .line 260
    .end local v0    # "value":Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;
    :cond_0
    new-instance v0, Lxiaopeng/widget/SimpleSlider$SlideHandler;

    invoke-direct {v0}, Lxiaopeng/widget/SimpleSlider$SlideHandler;-><init>()V

    .line 262
    .restart local v0    # "value":Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;
    :goto_0
    invoke-virtual {v0, p0}, Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;->setSimpleSlider(Lxiaopeng/widget/SimpleSlider;)V

    .line 263
    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 274
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentVisualScale()F
    .locals 4

    .line 567
    const v0, 0x102000d

    invoke-direct {p0, v0}, Lxiaopeng/widget/SimpleSlider;->findProgressDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 568
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 569
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getRange()I

    move-result v1

    .line 570
    .local v1, "range":I
    if-lez v1, :cond_0

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getProgress()I

    move-result v2

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getMin()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 572
    .end local v1    # "range":I
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x461c4000    # 10000.0f

    div-float/2addr v1, v2

    return v1
.end method

.method public getMax()I
    .locals 1

    .line 416
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .line 392
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 509
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mOrientation:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 444
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    return v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 663
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getRange()I
    .locals 2

    .line 440
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    iget v1, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    sub-int/2addr v0, v1

    return v0
.end method

.method getScaledTouchSlop()I
    .locals 1

    .line 298
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mScaledTouchSlop:I

    return v0
.end method

.method public getScrollingContainer()Landroid/view/ViewGroup;
    .locals 3

    .line 1254
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1255
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 1256
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 1257
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1258
    return-object v1

    .line 1260
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1261
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    goto :goto_0

    .line 1262
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSecondaryProgress()I
    .locals 1

    .line 490
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mSecondaryProgress:I

    return v0
.end method

.method public getSlideScale()F
    .locals 1

    .line 655
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mSlideScale:F

    return v0
.end method

.method public getSliderHeight()I
    .locals 1

    .line 343
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getWidth()I

    move-result v0

    return v0

    .line 346
    :cond_0
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getHeight()I

    move-result v0

    return v0
.end method

.method public getSliderPaddingBottom()I
    .locals 1

    .line 323
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getPaddingEnd()I

    move-result v0

    return v0

    .line 326
    :cond_0
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getSliderPaddingEnd()I
    .locals 1

    .line 309
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getPaddingTop()I

    move-result v0

    return v0

    .line 312
    :cond_0
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getPaddingEnd()I

    move-result v0

    return v0
.end method

.method public getSliderPaddingStart()I
    .locals 1

    .line 302
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getPaddingBottom()I

    move-result v0

    return v0

    .line 305
    :cond_0
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getPaddingStart()I

    move-result v0

    return v0
.end method

.method public getSliderPaddingTop()I
    .locals 1

    .line 316
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getPaddingStart()I

    move-result v0

    return v0

    .line 319
    :cond_0
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getSliderWidth()I
    .locals 1

    .line 333
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getHeight()I

    move-result v0

    return v0

    .line 336
    :cond_0
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getWidth()I

    move-result v0

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 712
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTickMark()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 708
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMark:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTouchEventHandler()Lxiaopeng/widget/SimpleSlider$TouchEventHandler;
    .locals 1

    .line 369
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mTouchEventHandler:Lxiaopeng/widget/SimpleSlider$TouchEventHandler;

    return-object v0
.end method

.method protected hasTickMark()Z
    .locals 4

    .line 1167
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getMax()I

    move-result v0

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1168
    .local v0, "hasTickMark":Z
    :goto_0
    iget v2, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkStyle:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1169
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkPositions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    .line 1171
    :cond_1
    return v0
.end method

.method public isVertical()Z
    .locals 2

    .line 513
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method onAccessibilityProgressRefresh()V
    .locals 1

    .line 1475
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1476
    invoke-direct {p0}, Lxiaopeng/widget/SimpleSlider;->scheduleAccessibilityEventSender()V

    .line 1478
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3
    .param p1, "i"    # I

    .line 949
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 950
    .local v0, "drawableState":[I
    const/4 v1, 0x0

    .line 951
    .local v1, "length":I
    if-eqz v0, :cond_0

    .line 952
    array-length v1, v0

    .line 954
    :cond_0
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mStateSetSelected:[I

    .line 955
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mStateSetUnSelected:[I

    .line 957
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1071
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    const/4 v0, 0x0

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1073
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1075
    :cond_0
    invoke-virtual {p0, p1}, Lxiaopeng/widget/SimpleSlider;->drawTrack(Landroid/graphics/Canvas;)V

    .line 1076
    invoke-virtual {p0, p1}, Lxiaopeng/widget/SimpleSlider;->drawTickMarks(Landroid/graphics/Canvas;)V

    .line 1077
    invoke-virtual {p0, p1}, Lxiaopeng/widget/SimpleSlider;->drawThumb(Landroid/graphics/Canvas;)V

    .line 1078
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 203
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 204
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mEnabled:Z

    invoke-virtual {p0, v0}, Lxiaopeng/widget/SimpleSlider;->setEnabled(Z)V

    .line 205
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 268
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 269
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 270
    return-void
.end method

.method protected onProgressChanged(IZ)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z

    .line 1214
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mOnSlideChangeListener:Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    if-eqz v0, :cond_0

    .line 1215
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mOnSlideChangeListener:Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    invoke-interface {v0, p0, p1, p2}, Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;->onProgressChanged(Lxiaopeng/widget/SimpleSlider;IZ)V

    .line 1217
    :cond_0
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mChangeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    .line 1218
    .local v1, "listener":Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;
    invoke-interface {v1, p0, p1, p2}, Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;->onProgressChanged(Lxiaopeng/widget/SimpleSlider;IZ)V

    .line 1219
    .end local v1    # "listener":Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;
    goto :goto_0

    .line 1220
    :cond_1
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 935
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 936
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 939
    :cond_0
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 940
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 942
    :cond_1
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 943
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 945
    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1058
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1060
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    move v0, p2

    .line 1062
    .local v0, "temp":I
    move p2, p1

    .line 1063
    move p1, v0

    .line 1065
    .end local v0    # "temp":I
    :cond_0
    invoke-direct {p0, p1, p2}, Lxiaopeng/widget/SimpleSlider;->updateThumbAndTrackPos(II)V

    .line 1066
    return-void
.end method

.method protected onStartTrackingTouch()V
    .locals 2

    .line 1226
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mOnSlideChangeListener:Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mOnSlideChangeListener:Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    invoke-interface {v0, p0}, Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;->onStartTrackingTouch(Lxiaopeng/widget/SimpleSlider;)V

    .line 1229
    :cond_0
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mChangeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    .line 1230
    .local v1, "listener":Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;
    invoke-interface {v1, p0}, Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;->onStartTrackingTouch(Lxiaopeng/widget/SimpleSlider;)V

    .line 1231
    .end local v1    # "listener":Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;
    goto :goto_0

    .line 1232
    :cond_1
    return-void
.end method

.method protected onStopTrackingTouch()V
    .locals 2

    .line 1239
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mOnSlideChangeListener:Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mOnSlideChangeListener:Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    invoke-interface {v0, p0}, Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;->onStopTrackingTouch(Lxiaopeng/widget/SimpleSlider;)V

    .line 1242
    :cond_0
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mChangeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    .line 1243
    .local v1, "listener":Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;
    invoke-interface {v1, p0}, Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;->onStopTrackingTouch(Lxiaopeng/widget/SimpleSlider;)V

    .line 1244
    .end local v1    # "listener":Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;
    goto :goto_0

    .line 1245
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1037
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1038
    const/4 v0, 0x0

    return v0

    .line 1040
    :cond_0
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mTouchEventHandler:Lxiaopeng/widget/SimpleSlider$TouchEventHandler;

    if-eqz v0, :cond_1

    .line 1041
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mTouchEventHandler:Lxiaopeng/widget/SimpleSlider$TouchEventHandler;

    invoke-interface {v0, p1}, Lxiaopeng/widget/SimpleSlider$TouchEventHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1043
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onVisibilityAggregated(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .line 1082
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 1083
    if-nez p1, :cond_2

    .line 1084
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 1087
    :cond_0
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_2

    .line 1088
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x102000d

    .line 1089
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1090
    .local v0, "progressDr":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_1

    .line 1091
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 1093
    :cond_1
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    const/high16 v2, 0x1020000

    .line 1094
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1095
    .local v1, "backgroundDr":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_2

    .line 1096
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/Animatable;

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 1100
    .end local v0    # "progressDr":Landroid/graphics/drawable/Drawable;
    .end local v1    # "backgroundDr":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 279
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 280
    if-eqz p2, :cond_0

    .line 281
    const-string v0, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 282
    .local v0, "progress":F
    float-to-int v1, v0

    invoke-virtual {p0, v1}, Lxiaopeng/widget/SimpleSlider;->setProgress(I)V

    .line 285
    .end local v0    # "progress":F
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public refreshVisual()V
    .locals 3

    .line 377
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawableRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 378
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawableRes:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lxiaopeng/widget/SimpleSlider;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    :cond_0
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkRes:I

    if-eq v0, v1, :cond_1

    .line 381
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkRes:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lxiaopeng/widget/SimpleSlider;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 383
    :cond_1
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mThumbRes:I

    if-eq v0, v1, :cond_2

    .line 384
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lxiaopeng/widget/SimpleSlider;->mThumbRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lxiaopeng/widget/SimpleSlider;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 386
    :cond_2
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getRange()I

    move-result v0

    .line 387
    .local v0, "range":I
    if-lez v0, :cond_3

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getProgress()I

    move-result v1

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getMin()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 388
    .local v1, "scale":F
    :goto_0
    const v2, 0x102000d

    invoke-virtual {p0, v2, v1}, Lxiaopeng/widget/SimpleSlider;->setVisualProgress(IF)V

    .line 389
    return-void
.end method

.method public removeOnSliderChangeListener(Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;)V
    .locals 1
    .param p1, "onSlideChangeListener"    # Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    .line 459
    if-nez p1, :cond_0

    .line 460
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 463
    return-void
.end method

.method public setDragRange(II)V
    .locals 1
    .param p1, "dragMin"    # I
    .param p2, "dragMax"    # I

    .line 476
    if-le p1, p2, :cond_0

    .line 477
    return-void

    .line 479
    :cond_0
    int-to-float v0, p1

    iput v0, p0, Lxiaopeng/widget/SimpleSlider;->dragMin:F

    .line 480
    int-to-float v0, p2

    iput v0, p0, Lxiaopeng/widget/SimpleSlider;->dragMax:F

    .line 481
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    if-ge v0, p1, :cond_1

    .line 482
    invoke-virtual {p0, p1}, Lxiaopeng/widget/SimpleSlider;->setProgress(I)V

    .line 484
    :cond_1
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    if-le v0, p2, :cond_2

    .line 485
    invoke-virtual {p0, p2}, Lxiaopeng/widget/SimpleSlider;->setProgress(I)V

    .line 487
    :cond_2
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "maxProgress"    # I

    .line 420
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mMinInitialized:Z

    if-eqz v0, :cond_0

    .line 421
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    if-ge p1, v0, :cond_0

    .line 422
    iget p1, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    .line 425
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mMaxInitialized:Z

    .line 426
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mMinInitialized:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    if-eq p1, v0, :cond_2

    .line 427
    iput p1, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    .line 428
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->postInvalidate()V

    .line 430
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    if-le v0, p1, :cond_1

    .line 431
    iput p1, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    .line 433
    :cond_1
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    invoke-virtual {p0, v0}, Lxiaopeng/widget/SimpleSlider;->setProgress(I)V

    goto :goto_0

    .line 435
    :cond_2
    iput p1, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    .line 437
    :goto_0
    return-void
.end method

.method public setMin(I)V
    .locals 1
    .param p1, "minProgress"    # I

    .line 396
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mMaxInitialized:Z

    if-eqz v0, :cond_0

    .line 397
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    if-le p1, v0, :cond_0

    .line 398
    iget p1, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    .line 401
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mMinInitialized:Z

    .line 402
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider;->mMaxInitialized:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    if-eq p1, v0, :cond_2

    .line 403
    iput p1, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    .line 404
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->postInvalidate()V

    .line 406
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    if-ge v0, p1, :cond_1

    .line 407
    iput p1, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    .line 409
    :cond_1
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    invoke-virtual {p0, v0}, Lxiaopeng/widget/SimpleSlider;->setProgress(I)V

    goto :goto_0

    .line 411
    :cond_2
    iput p1, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    .line 413
    :goto_0
    return-void
.end method

.method public setOnSlideChangeListener(Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;)V
    .locals 0
    .param p1, "onSlideChangeListener"    # Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    .line 448
    iput-object p1, p0, Lxiaopeng/widget/SimpleSlider;->mOnSlideChangeListener:Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    .line 449
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .line 466
    int-to-float v0, p1

    iget v1, p0, Lxiaopeng/widget/SimpleSlider;->dragMin:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 467
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->dragMin:F

    float-to-int p1, v0

    .line 469
    :cond_0
    int-to-float v0, p1

    iget v1, p0, Lxiaopeng/widget/SimpleSlider;->dragMax:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 470
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->dragMax:F

    float-to-int p1, v0

    .line 472
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lxiaopeng/widget/SimpleSlider;->setProgressInternal(IZZ)V

    .line 473
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 667
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    .line 668
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 670
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lxiaopeng/widget/SimpleSlider;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 672
    :cond_0
    iput-object p1, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 673
    if-eqz p1, :cond_2

    .line 674
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 675
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 676
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 680
    :cond_1
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderWidth()I

    move-result v0

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lxiaopeng/widget/SimpleSlider;->updateDrawableBounds(II)V

    .line 681
    invoke-direct {p0}, Lxiaopeng/widget/SimpleSlider;->updateDrawableState()V

    .line 683
    :cond_2
    const v0, 0x102000d

    iget v1, p0, Lxiaopeng/widget/SimpleSlider;->mProgress:I

    invoke-direct {p0, v0, v1}, Lxiaopeng/widget/SimpleSlider;->refreshProgress(II)V

    .line 684
    const v0, 0x102000f

    iget v1, p0, Lxiaopeng/widget/SimpleSlider;->mSecondaryProgress:I

    invoke-direct {p0, v0, v1}, Lxiaopeng/widget/SimpleSlider;->refreshProgress(II)V

    .line 685
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lxiaopeng/widget/SimpleSlider;->refreshEnabledDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 687
    :cond_3
    return-void
.end method

.method protected setProgressInternal(IZZ)V
    .locals 6
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z
    .param p3, "animate"    # Z

    .line 517
    const v1, 0x102000d

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lxiaopeng/widget/SimpleSlider;->refreshProgress(IIZZZ)V

    .line 518
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 2
    .param p1, "secondaryProgress"    # I

    .line 494
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    if-ge p1, v0, :cond_0

    .line 495
    iget p1, p0, Lxiaopeng/widget/SimpleSlider;->mMin:I

    .line 498
    :cond_0
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    if-le p1, v0, :cond_1

    .line 499
    iget p1, p0, Lxiaopeng/widget/SimpleSlider;->mMax:I

    .line 502
    :cond_1
    iget v0, p0, Lxiaopeng/widget/SimpleSlider;->mSecondaryProgress:I

    if-eq p1, v0, :cond_2

    .line 503
    iput p1, p0, Lxiaopeng/widget/SimpleSlider;->mSecondaryProgress:I

    .line 504
    const v0, 0x102000f

    iget v1, p0, Lxiaopeng/widget/SimpleSlider;->mSecondaryProgress:I

    invoke-direct {p0, v0, v1}, Lxiaopeng/widget/SimpleSlider;->refreshProgress(II)V

    .line 506
    :cond_2
    return-void
.end method

.method public setSlideScale(F)V
    .locals 0
    .param p1, "slideScale"    # F

    .line 659
    iput p1, p0, Lxiaopeng/widget/SimpleSlider;->mSlideScale:F

    .line 660
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .line 720
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    .line 721
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 722
    const/4 v0, 0x1

    .local v0, "needUpdate":Z
    goto :goto_0

    .line 724
    .end local v0    # "needUpdate":Z
    :cond_0
    const/4 v0, 0x0

    .line 727
    .restart local v0    # "needUpdate":Z
    :goto_0
    if-eqz p1, :cond_3

    .line 728
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 729
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->canResolveLayoutDirection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 730
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 736
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lxiaopeng/widget/SimpleSlider;->mThumbOffset:I

    .line 739
    if-eqz v0, :cond_3

    .line 740
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 741
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 742
    :cond_2
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->requestLayout()V

    .line 746
    :cond_3
    iput-object p1, p0, Lxiaopeng/widget/SimpleSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 748
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->invalidate()V

    .line 750
    if-eqz v0, :cond_4

    .line 751
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderWidth()I

    move-result v1

    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lxiaopeng/widget/SimpleSlider;->updateThumbAndTrackPos(II)V

    .line 752
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 755
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getDrawableState()[I

    move-result-object v1

    .line 756
    .local v1, "state":[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 759
    .end local v1    # "state":[I
    :cond_4
    return-void
.end method

.method public setTickMark(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "tickMark"    # Landroid/graphics/drawable/Drawable;

    .line 690
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMark:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 694
    :cond_0
    iput-object p1, p0, Lxiaopeng/widget/SimpleSlider;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 696
    if-eqz p1, :cond_1

    .line 697
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 698
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 699
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 703
    :cond_1
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lxiaopeng/widget/SimpleSlider;->refreshEnabledDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 704
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->invalidate()V

    .line 705
    return-void
.end method

.method public setTickMartPositions(Ljava/lang/String;)V
    .locals 4
    .param p1, "positions"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 352
    const-string v0, "\\D"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "array":[Ljava/lang/String;
    const-string v1, "SimpleSlider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTickMartPositions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", string:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 355
    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkPositions:Ljava/util/Set;

    .line 356
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider;->mTickMarkPositions:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 358
    :cond_0
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->invalidate()V

    .line 359
    return-void
.end method

.method public setTouchEventHandler(Lxiaopeng/widget/SimpleSlider$TouchEventHandler;)V
    .locals 1
    .param p1, "touchEventHandler"    # Lxiaopeng/widget/SimpleSlider$TouchEventHandler;

    .line 362
    iput-object p1, p0, Lxiaopeng/widget/SimpleSlider;->mTouchEventHandler:Lxiaopeng/widget/SimpleSlider$TouchEventHandler;

    .line 363
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mTouchEventHandler:Lxiaopeng/widget/SimpleSlider$TouchEventHandler;

    instance-of v0, v0, Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mTouchEventHandler:Lxiaopeng/widget/SimpleSlider$TouchEventHandler;

    check-cast v0, Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;

    invoke-virtual {v0, p0}, Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;->setSimpleSlider(Lxiaopeng/widget/SimpleSlider;)V

    .line 366
    :cond_0
    return-void
.end method

.method protected setVisualProgress(IF)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "progress"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 876
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider;->findProgressDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 877
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 878
    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 879
    .local v1, "level":I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 880
    const v2, 0x102000d

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 881
    .local v2, "isPrimary":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 882
    iget-object v3, p0, Lxiaopeng/widget/SimpleSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 883
    .local v3, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 884
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->getSliderWidth()I

    move-result v4

    const/high16 v5, -0x80000000

    invoke-direct {p0, v4, v3, p2, v5}, Lxiaopeng/widget/SimpleSlider;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 889
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->invalidate()V

    .line 892
    .end local v1    # "level":I
    .end local v2    # "isPrimary":Z
    .end local v3    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_1
    goto :goto_1

    .line 893
    :cond_2
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider;->invalidate()V

    .line 895
    :goto_1
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1012
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
