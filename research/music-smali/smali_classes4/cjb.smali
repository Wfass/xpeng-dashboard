.class public Lcjb;
.super Landroid/view/View;
.source "SimpleSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcjb$a;,
        Lcjb$c;,
        Lcjb$e;,
        Lcjb$d;,
        Lcjb$f;,
        Lcjb$b;
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

.field private mAccessibilityEventSender:Lcjb$a;

.field private final mChangeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcjb$b;",
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

.field private mOnSlideChangeListener:Lcjb$b;

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

.field private mTouchEventHandler:Lcjb$f;

.field protected mTouchMode:I

.field private final mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, p1, v0}, Lcjb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 188
    sget v0, Lcja$a;->SimpleSlider:I

    invoke-direct {p0, p1, p2, v0}, Lcjb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 192
    sget v0, Lcja$a;->SimpleSlider:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcjb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 196
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcjb;->mOrientation:I

    .line 111
    iput v0, p0, Lcjb;->mProgress:I

    .line 112
    iput v0, p0, Lcjb;->mSecondaryProgress:I

    .line 114
    iput v0, p0, Lcjb;->mMin:I

    const/16 v1, 0x64

    .line 115
    iput v1, p0, Lcjb;->mMax:I

    .line 116
    iput-boolean v0, p0, Lcjb;->mMaxInitialized:Z

    .line 117
    iput-boolean v0, p0, Lcjb;->mMinInitialized:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 122
    iput v1, p0, Lcjb;->mSlideScale:F

    const/4 v1, -0x1

    .line 125
    iput v1, p0, Lcjb;->mProgressDrawableRes:I

    .line 127
    iput v1, p0, Lcjb;->mTickMarkRes:I

    .line 128
    iput v0, p0, Lcjb;->mTickMarkStyle:I

    const/4 v2, 0x0

    .line 131
    iput v2, p0, Lcjb;->mTickMarkPadding:F

    .line 132
    iput-boolean v0, p0, Lcjb;->mTickMarkProgressStart:Z

    .line 133
    iput-boolean v0, p0, Lcjb;->mTickMarkProgressEnd:Z

    .line 135
    iput v1, p0, Lcjb;->mThumbRes:I

    .line 139
    iput v0, p0, Lcjb;->mTouchMode:I

    .line 141
    iput v0, p0, Lcjb;->mDragMode:I

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcjb;->mEnabled:Z

    .line 150
    iput-boolean v0, p0, Lcjb;->mClipToPadding:Z

    .line 155
    new-instance v0, Lcjb$1;

    invoke-direct {v0, p0}, Lcjb$1;-><init>(Lcjb;)V

    iput-object v0, p0, Lcjb;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcjb;->mChangeListenerList:Ljava/util/List;

    .line 198
    invoke-direct {p0, p1, p2, p3, p4}, Lcjb;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lcjb;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcjb;->findProgressDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcjb;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 46
    iget-object p0, p0, Lcjb;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$200(Lcjb;ILandroid/graphics/drawable/Drawable;FI)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcjb;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    return-void
.end method

.method static synthetic access$300(Lcjb;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 46
    iget-object p0, p0, Lcjb;->mTickMark:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$400(Lcjb;IZ)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcjb;->onAnimationFinish(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcjb;FIZ)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcjb;->setProgressFromTouch(FIZ)V

    return-void
.end method

.method static synthetic access$600(Lcjb;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcjb;->attemptClaimDrag()V

    return-void
.end method

.method private animateProgress(IZ)V
    .locals 4

    .line 898
    invoke-direct {p0, p1}, Lcjb;->getVisualScale(I)F

    move-result v0

    .line 899
    invoke-virtual {p0}, Lcjb;->getCurrentVisualScale()F

    move-result v1

    .line 900
    iget-object v2, p0, Lcjb;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    .line 901
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 902
    iget-object v2, p0, Lcjb;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 903
    iget-object v2, p0, Lcjb;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v2, 0x2

    .line 905
    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcjb;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 906
    iget-object v0, p0, Lcjb;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 907
    iget-object v0, p0, Lcjb;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 908
    iget-object v0, p0, Lcjb;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcjb;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 909
    iget-object v0, p0, Lcjb;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcjb$2;

    invoke-direct {v1, p0, p1, p2}, Lcjb$2;-><init>(Lcjb;IZ)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 930
    iget-object p1, p0, Lcjb;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .line 1051
    invoke-virtual {p0}, Lcjb;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1052
    invoke-virtual {p0}, Lcjb;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private findProgressDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 577
    iget-object v0, p0, Lcjb;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 578
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_0

    .line 579
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 585
    iget-object v0, p0, Lcjb;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object v0
.end method

.method private getVisualScale(I)F
    .locals 2

    .line 592
    invoke-direct {p0, p1}, Lcjb;->limitProgress(I)I

    move-result p1

    .line 593
    iget v0, p0, Lcjb;->mMax:I

    iget v1, p0, Lcjb;->mMin:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    sub-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getVisualScaleFromTouch(FI)F
    .locals 2

    .line 598
    invoke-virtual {p0}, Lcjb;->getMax()I

    move-result v0

    invoke-virtual {p0}, Lcjb;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    add-float/2addr p1, p2

    const/4 p2, 0x0

    .line 600
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 208
    sget-object v0, Lcja$b;->SimpleSlider:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 210
    sget p3, Lcja$b;->SimpleSlider_android_progressDrawable:I

    iget p4, p0, Lcjb;->mProgressDrawableRes:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcjb;->mProgressDrawableRes:I

    .line 211
    sget p3, Lcja$b;->SimpleSlider_android_progressDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcjb;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    sget p3, Lcja$b;->SimpleSlider_android_tickMark:I

    iget p4, p0, Lcjb;->mTickMarkRes:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcjb;->mTickMarkRes:I

    .line 214
    sget p3, Lcja$b;->SimpleSlider_android_tickMark:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 215
    invoke-virtual {p0, p3}, Lcjb;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 216
    sget p3, Lcja$b;->SimpleSlider_android_thumb:I

    iget p4, p0, Lcjb;->mThumbRes:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcjb;->mThumbRes:I

    .line 217
    sget p3, Lcja$b;->SimpleSlider_android_thumb:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 218
    invoke-virtual {p0, p3}, Lcjb;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 219
    sget p3, Lcja$b;->SimpleSlider_android_orientation:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcjb;->mOrientation:I

    .line 220
    sget p3, Lcja$b;->SimpleSlider_ss_tickMarkStyle:I

    iget p4, p0, Lcjb;->mTickMarkStyle:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcjb;->mTickMarkStyle:I

    .line 221
    sget p3, Lcja$b;->SimpleSlider_ss_tickMarkPositions:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 223
    invoke-virtual {p0, p3}, Lcjb;->setTickMartPositions(Ljava/lang/String;)V

    .line 225
    :cond_0
    sget p3, Lcja$b;->SimpleSlider_ss_tickMark_padding:I

    iget p4, p0, Lcjb;->mTickMarkPadding:F

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcjb;->mTickMarkPadding:F

    .line 226
    sget p3, Lcja$b;->SimpleSlider_ss_tickMark_ProgressStart:I

    iget-boolean p4, p0, Lcjb;->mTickMarkProgressStart:Z

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcjb;->mTickMarkProgressStart:Z

    .line 227
    sget p3, Lcja$b;->SimpleSlider_ss_tickMark_ProgressEnd:I

    iget-boolean p4, p0, Lcjb;->mTickMarkProgressEnd:Z

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcjb;->mTickMarkProgressEnd:Z

    .line 229
    sget p3, Lcja$b;->SimpleSlider_ss_slideScale:I

    iget p4, p0, Lcjb;->mSlideScale:F

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcjb;->mSlideScale:F

    .line 230
    sget p3, Lcja$b;->SimpleSlider_android_enabled:I

    iget-boolean p4, p0, Lcjb;->mEnabled:Z

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcjb;->mEnabled:Z

    .line 231
    sget p3, Lcja$b;->SimpleSlider_android_disabledAlpha:I

    const p4, 0x3eb851ec    # 0.36f

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcjb;->mDisabledAlpha:F

    .line 233
    sget p3, Lcja$b;->SimpleSlider_android_min:I

    iget p4, p0, Lcjb;->mMin:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcjb;->setMin(I)V

    .line 234
    sget p3, Lcja$b;->SimpleSlider_android_max:I

    iget p4, p0, Lcjb;->mMax:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcjb;->setMax(I)V

    .line 235
    sget p3, Lcja$b;->SimpleSlider_drag_min:I

    iget p4, p0, Lcjb;->mMin:I

    int-to-float p4, p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcjb;->dragMin:F

    .line 236
    sget p3, Lcja$b;->SimpleSlider_drag_max:I

    iget p4, p0, Lcjb;->mMax:I

    int-to-float p4, p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcjb;->dragMax:F

    .line 237
    iget p3, p0, Lcjb;->dragMin:F

    iget p4, p0, Lcjb;->dragMax:F

    cmpl-float p3, p3, p4

    if-lez p3, :cond_1

    .line 238
    iput p4, p0, Lcjb;->dragMin:F

    .line 241
    :cond_1
    sget p3, Lcja$b;->SimpleSlider_android_progress:I

    iget p4, p0, Lcjb;->mProgress:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcjb;->setProgress(I)V

    .line 242
    sget p3, Lcja$b;->SimpleSlider_android_secondaryProgress:I

    iget p4, p0, Lcjb;->mSecondaryProgress:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcjb;->setSecondaryProgress(I)V

    .line 244
    sget p3, Lcja$b;->SimpleSlider_ss_touchMode:I

    iget p4, p0, Lcjb;->mTouchMode:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcjb;->mTouchMode:I

    .line 245
    iget p3, p0, Lcjb;->mTouchMode:I

    invoke-virtual {p0, p3}, Lcjb;->generateTouchEventHandler(I)Lcjb$f;

    move-result-object p3

    iput-object p3, p0, Lcjb;->mTouchEventHandler:Lcjb$f;

    .line 246
    sget p3, Lcja$b;->SimpleSlider_ss_dragMode:I

    iget p4, p0, Lcjb;->mDragMode:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcjb;->mDragMode:I

    .line 247
    sget p3, Lcja$b;->SimpleSlider_android_clipToPadding:I

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcjb;->mClipToPadding:Z

    .line 248
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 250
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 251
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcjb;->mScaledTouchSlop:I

    .line 252
    invoke-virtual {p0, p4}, Lcjb;->setImportantForAccessibility(I)V

    return-void
.end method

.method private limitProgress(I)I
    .locals 2

    .line 1248
    iget v0, p0, Lcjb;->mMin:I

    .line 1249
    iget v1, p0, Lcjb;->mMax:I

    .line 1250
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private onAnimationFinish(IZ)V
    .locals 1

    .line 542
    iget-object v0, p0, Lcjb;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 544
    iget-object v0, p0, Lcjb;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    .line 547
    invoke-direct {p0, p1, p2, v0}, Lcjb;->setProgressAndDispatch(IZZ)V

    :cond_1
    if-eqz p2, :cond_2

    .line 550
    invoke-virtual {p0}, Lcjb;->onStopTrackingTouch()V

    :cond_2
    return-void
.end method

.method private refreshEnabledDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1001
    invoke-virtual {p0}, Lcjb;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Lcjb;->mDisabledAlpha:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    return-void
.end method

.method private refreshEnabledVisual()V
    .locals 1

    .line 1006
    iget-object v0, p0, Lcjb;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcjb;->refreshEnabledDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1007
    iget-object v0, p0, Lcjb;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcjb;->refreshEnabledDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private refreshProgress(II)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 521
    invoke-direct/range {v0 .. v5}, Lcjb;->refreshProgress(IIZZZ)V

    return-void
.end method

.method private refreshProgress(IIZZZ)V
    .locals 1

    const v0, 0x102000d

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    .line 531
    invoke-direct {p0, p2, p3}, Lcjb;->animateProgress(IZ)V

    goto :goto_1

    .line 533
    :cond_1
    invoke-direct {p0, p2}, Lcjb;->getVisualScale(I)F

    move-result p4

    .line 534
    invoke-virtual {p0, p1, p4}, Lcjb;->setVisualProgress(IF)V

    if-eqz v0, :cond_2

    .line 536
    invoke-direct {p0, p2, p3, p5}, Lcjb;->setProgressAndDispatch(IZZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 3

    .line 1481
    iget-object v0, p0, Lcjb;->mAccessibilityEventSender:Lcjb$a;

    if-nez v0, :cond_0

    .line 1482
    new-instance v0, Lcjb$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcjb$a;-><init>(Lcjb;Lcjb$1;)V

    iput-object v0, p0, Lcjb;->mAccessibilityEventSender:Lcjb$a;

    goto :goto_0

    .line 1484
    :cond_0
    invoke-virtual {p0, v0}, Lcjb;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1486
    :goto_0
    iget-object v0, p0, Lcjb;->mAccessibilityEventSender:Lcjb$a;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcjb;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setProgressAndDispatch(IZZ)V
    .locals 2

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProgressAndDispatch, progress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromUser:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callbackToApp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleSlider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-direct {p0, p1}, Lcjb;->limitProgress(I)I

    move-result p1

    .line 557
    iget v0, p0, Lcjb;->mProgress:I

    if-eq p1, v0, :cond_1

    .line 558
    iput p1, p0, Lcjb;->mProgress:I

    if-eqz p3, :cond_0

    .line 560
    invoke-virtual {p0, p1, p2}, Lcjb;->onProgressChanged(IZ)V

    .line 562
    :cond_0
    invoke-virtual {p0}, Lcjb;->onAccessibilityProgressRefresh()V

    :cond_1
    return-void
.end method

.method private setProgressFromTouch(FIZ)V
    .locals 6

    .line 605
    invoke-virtual {p0}, Lcjb;->getMax()I

    move-result v0

    invoke-virtual {p0}, Lcjb;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v1, p2

    int-to-float v0, v0

    mul-float v2, p1, v0

    add-float/2addr v2, v1

    .line 606
    invoke-virtual {p0}, Lcjb;->getMin()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 607
    iget v3, p0, Lcjb;->dragMin:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    .line 609
    invoke-virtual {p0}, Lcjb;->getMin()I

    move-result p1

    int-to-float p1, p1

    sub-float p1, v3, p1

    sub-float/2addr p1, v1

    div-float/2addr p1, v0

    move v2, v3

    .line 611
    :cond_0
    iget v3, p0, Lcjb;->dragMax:F

    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    .line 613
    invoke-virtual {p0}, Lcjb;->getMin()I

    move-result p1

    int-to-float p1, p1

    sub-float p1, v3, p1

    sub-float/2addr p1, v1

    div-float/2addr p1, v0

    move v2, v3

    .line 617
    :cond_1
    iget v0, p0, Lcjb;->mDragMode:I

    const v1, 0x102000d

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 618
    invoke-direct {p0, p1, p2}, Lcjb;->getVisualScaleFromTouch(FI)F

    move-result p1

    .line 619
    invoke-virtual {p0, v1, p1}, Lcjb;->setVisualProgress(IF)V

    .line 621
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setProgressFromTouch, scale:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", floatProgress:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", current:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {p0}, Lcjb;->getProgress()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SimpleSlider"

    .line 621
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-direct {p0, p2}, Lcjb;->limitProgress(I)I

    move-result p2

    .line 624
    iget v1, p0, Lcjb;->mProgress:I

    if-eq p2, v1, :cond_6

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setProgressFromTouch, SET floatProgress:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual {p0}, Lcjb;->getProgress()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", newProgress:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 625
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-direct {p0, p2, v4, v4}, Lcjb;->setProgressAndDispatch(IZZ)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    if-ne v0, v5, :cond_5

    .line 631
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcjb;->limitProgress(I)I

    move-result v0

    if-eqz p3, :cond_3

    .line 633
    invoke-virtual {p0, v0, v4, v4}, Lcjb;->setProgressInternal(IZZ)V

    goto :goto_0

    .line 635
    :cond_3
    invoke-direct {p0, p1, p2}, Lcjb;->getVisualScaleFromTouch(FI)F

    move-result p1

    .line 636
    invoke-virtual {p0, v1, p1}, Lcjb;->setVisualProgress(IF)V

    .line 638
    iget p1, p0, Lcjb;->mProgress:I

    if-eq v0, p1, :cond_4

    .line 639
    invoke-direct {p0, v0, v4, v4}, Lcjb;->setProgressAndDispatch(IZZ)V

    :cond_4
    :goto_0
    move v3, v4

    goto :goto_1

    .line 643
    :cond_5
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcjb;->limitProgress(I)I

    move-result p1

    .line 644
    invoke-virtual {p0}, Lcjb;->getProgress()I

    move-result p2

    if-eq p1, p2, :cond_6

    .line 645
    invoke-virtual {p0, p1, v4, v3}, Lcjb;->setProgressInternal(IZZ)V

    :cond_6
    :goto_1
    if-nez v3, :cond_7

    if-eqz p3, :cond_7

    .line 650
    invoke-virtual {p0}, Lcjb;->onStopTrackingTouch()V

    :cond_7
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 7

    .line 806
    invoke-virtual {p0}, Lcjb;->getSliderPaddingEnd()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcjb;->getSliderPaddingStart()I

    move-result v0

    sub-int/2addr p1, v0

    .line 808
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 809
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr p1, v0

    .line 813
    iget v2, p0, Lcjb;->mThumbOffset:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    int-to-float v2, p1

    mul-float/2addr p3, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr p3, v2

    float-to-int p3, p3

    const/high16 v2, -0x80000000

    if-ne p4, v2, :cond_0

    .line 819
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    .line 820
    iget v1, p4, Landroid/graphics/Rect;->top:I

    .line 821
    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    move v6, v1

    move v1, p4

    move p4, v6

    goto :goto_0

    :cond_0
    add-int/2addr v1, p4

    .line 827
    :goto_0
    invoke-virtual {p0}, Lcjb;->isVertical()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcjb;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    sub-int p3, p1, p3

    :cond_1
    add-int/2addr v0, p3

    .line 830
    invoke-virtual {p0}, Lcjb;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 832
    invoke-virtual {p0}, Lcjb;->getSliderPaddingStart()I

    move-result v2

    iget v3, p0, Lcjb;->mThumbOffset:I

    sub-int/2addr v2, v3

    .line 833
    invoke-virtual {p0}, Lcjb;->getSliderPaddingTop()I

    move-result v3

    add-int v4, p3, v2

    add-int v5, p4, v3

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    .line 834
    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 839
    :cond_2
    invoke-virtual {p2, p3, p4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private setTickMarkStates(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .line 1152
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1153
    iget v0, p0, Lcjb;->mProgress:I

    invoke-direct {p0, v0}, Lcjb;->getVisualScale(I)F

    move-result v0

    invoke-virtual {p0}, Lcjb;->getRange()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcjb;->getMin()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    int-to-float p2, p2

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_0

    .line 1155
    iget-object p2, p0, Lcjb;->mStateSetSelected:[I

    if-eqz p2, :cond_1

    .line 1156
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 1159
    :cond_0
    iget-object p2, p0, Lcjb;->mStateSetUnSelected:[I

    if-eqz p2, :cond_1

    .line 1160
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateDrawableBounds(II)V
    .locals 2

    .line 845
    invoke-virtual {p0}, Lcjb;->getSliderPaddingEnd()I

    move-result v0

    invoke-virtual {p0}, Lcjb;->getSliderPaddingStart()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 846
    invoke-virtual {p0}, Lcjb;->getSliderPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcjb;->getSliderPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 851
    iget-object v0, p0, Lcjb;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 852
    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method private updateDrawableState()V
    .locals 3

    .line 857
    invoke-virtual {p0}, Lcjb;->getDrawableState()[I

    move-result-object v0

    .line 860
    iget-object v1, p0, Lcjb;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 861
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 862
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 866
    invoke-virtual {p0}, Lcjb;->invalidate()V

    :cond_1
    return-void
.end method

.method private updateThumbAndTrackPos(II)V
    .locals 10

    .line 762
    invoke-virtual {p0}, Lcjb;->getSliderPaddingTop()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcjb;->getSliderPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 763
    iget-object v1, p0, Lcjb;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 764
    iget-object v2, p0, Lcjb;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 766
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    :cond_1
    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_2

    move v4, v3

    goto :goto_1

    .line 767
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    :goto_1
    if-le v4, p2, :cond_3

    sub-int/2addr v0, v4

    .line 773
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v4, p2

    .line 774
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    goto :goto_2

    :cond_3
    sub-int/2addr v0, p2

    .line 777
    div-int/lit8 v0, v0, 0x2

    sub-int v4, p2, v4

    .line 779
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    move v9, v4

    move v4, v0

    move v0, v9

    :goto_2
    if-eqz v1, :cond_6

    .line 783
    iget-boolean v5, p0, Lcjb;->mClipToPadding:Z

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcjb;->getSliderPaddingEnd()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Lcjb;->getSliderPaddingStart()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_3

    :cond_4
    move v5, v3

    :goto_3
    add-int/2addr v5, p1

    .line 784
    iget-boolean v6, p0, Lcjb;->mClipToPadding:Z

    if-nez v6, :cond_5

    .line 786
    invoke-virtual {p0}, Lcjb;->getSliderPaddingStart()I

    move-result v6

    invoke-virtual {p0}, Lcjb;->getSliderWidth()I

    move-result v7

    invoke-virtual {p0}, Lcjb;->getSliderPaddingEnd()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v1, v6, v3, v7, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_5
    add-int/2addr p2, v4

    .line 788
    invoke-virtual {v1, v3, v4, v5, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_6
    if-eqz v2, :cond_7

    .line 792
    invoke-virtual {p0}, Lcjb;->getProgress()I

    move-result p2

    invoke-direct {p0, p2}, Lcjb;->getVisualScale(I)F

    move-result p2

    invoke-direct {p0, p1, v2, p2, v0}, Lcjb;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_7
    return-void
.end method


# virtual methods
.method public addOnSliderChangeListener(Lcjb$b;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcjb;->mChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected canDrawTickMark(I)Z
    .locals 4

    .line 1175
    iget v0, p0, Lcjb;->mTickMarkStyle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1176
    iget v0, p0, Lcjb;->mMin:I

    if-ne p1, v0, :cond_0

    return v2

    .line 1179
    :cond_0
    iget-boolean v0, p0, Lcjb;->mTickMarkProgressEnd:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcjb;->mProgress:I

    if-le p1, v0, :cond_1

    return v2

    .line 1181
    :cond_1
    iget-boolean v0, p0, Lcjb;->mTickMarkProgressEnd:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcjb;->mProgress:I

    if-lt p1, v0, :cond_5

    return v2

    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 1185
    iget-object v0, p0, Lcjb;->mTickMarkPositions:Ljava/util/Set;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_3
    if-ne v0, v1, :cond_5

    .line 1189
    iget v0, p0, Lcjb;->mMax:I

    if-ne p1, v0, :cond_4

    .line 1190
    iget-boolean p1, p0, Lcjb;->mTickMarkProgressEnd:Z

    if-nez p1, :cond_5

    return v2

    .line 1193
    :cond_4
    iget v0, p0, Lcjb;->mMin:I

    if-ne p1, v0, :cond_5

    .line 1194
    iget-boolean p1, p0, Lcjb;->mTickMarkProgressStart:Z

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1017
    invoke-virtual {p0}, Lcjb;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1020
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1027
    invoke-virtual {p0, v0}, Lcjb;->setPressed(Z)V

    goto :goto_0

    .line 1023
    :cond_2
    invoke-virtual {p0, v1}, Lcjb;->setPressed(Z)V

    .line 1031
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawThumb(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1203
    iget-object v0, p0, Lcjb;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1204
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1207
    invoke-virtual {p0}, Lcjb;->getSliderPaddingStart()I

    move-result v1

    iget v2, p0, Lcjb;->mThumbOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcjb;->getSliderPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1208
    iget-object v1, p0, Lcjb;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1209
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method protected drawTickMarks(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1119
    invoke-virtual {p0}, Lcjb;->hasTickMark()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1122
    :cond_0
    invoke-virtual {p0}, Lcjb;->getTickMark()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1124
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1125
    invoke-virtual {p0}, Lcjb;->getMax()I

    move-result v1

    invoke-virtual {p0}, Lcjb;->getMin()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-le v1, v2, :cond_8

    .line 1127
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 1128
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-ltz v3, :cond_1

    .line 1129
    div-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-ltz v4, :cond_2

    .line 1130
    div-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    neg-int v5, v3

    neg-int v6, v4

    .line 1131
    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1133
    invoke-virtual {p0}, Lcjb;->getSliderWidth()I

    move-result v3

    invoke-virtual {p0}, Lcjb;->getSliderPaddingStart()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcjb;->getSliderPaddingEnd()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcjb;->mTickMarkPadding:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 1134
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1135
    invoke-virtual {p0}, Lcjb;->isVertical()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcjb;->getLayoutDirection()I

    move-result v4

    if-ne v4, v2, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_4

    .line 1136
    invoke-virtual {p0}, Lcjb;->getSliderWidth()I

    move-result v5

    invoke-virtual {p0}, Lcjb;->getSliderPaddingStart()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcjb;->mTickMarkPadding:F

    sub-float/2addr v5, v6

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcjb;->getSliderPaddingStart()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcjb;->mTickMarkPadding:F

    add-float/2addr v5, v6

    .line 1137
    :goto_3
    invoke-virtual {p0}, Lcjb;->getSliderHeight()I

    move-result v6

    shr-int/lit8 v2, v6, 0x1

    int-to-float v2, v2

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v4, :cond_5

    neg-float v3, v3

    .line 1139
    :cond_5
    invoke-virtual {p0}, Lcjb;->getMin()I

    move-result v2

    :goto_4
    invoke-virtual {p0}, Lcjb;->getMax()I

    move-result v4

    if-gt v2, v4, :cond_7

    .line 1140
    invoke-virtual {p0, v2}, Lcjb;->canDrawTickMark(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1141
    invoke-direct {p0, v0, v2}, Lcjb;->setTickMarkStates(Landroid/graphics/drawable/Drawable;I)V

    .line 1142
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    const/4 v4, 0x0

    .line 1144
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1146
    :cond_7
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_8
    return-void
.end method

.method protected drawTrack(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1103
    iget-object v0, p0, Lcjb;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 1104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1106
    invoke-virtual {p0}, Lcjb;->isVertical()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcjb;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1107
    iget-boolean v1, p0, Lcjb;->mClipToPadding:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcjb;->getSliderPaddingEnd()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1108
    :goto_0
    invoke-virtual {p0}, Lcjb;->getSliderWidth()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {p0}, Lcjb;->getSliderPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1109
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_2

    .line 1111
    :cond_1
    iget-boolean v1, p0, Lcjb;->mClipToPadding:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcjb;->getSliderPaddingStart()I

    move-result v1

    int-to-float v1, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcjb;->getSliderPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1113
    :goto_2
    iget-object v1, p0, Lcjb;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1114
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    .line 290
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 292
    iget-object v0, p0, Lcjb;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 7

    .line 962
    invoke-direct {p0}, Lcjb;->refreshEnabledVisual()V

    .line 963
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 965
    invoke-virtual {p0}, Lcjb;->getDrawableState()[I

    move-result-object v0

    if-eqz v0, :cond_2

    .line 967
    iget-object v1, p0, Lcjb;->mStateSetSelected:[I

    array-length v2, v1

    array-length v3, v0

    const-string v4, ", "

    const-string v5, "SimpleSlider"

    const/4 v6, 0x0

    if-le v2, v3, :cond_0

    .line 968
    array-length v2, v0

    invoke-static {v0, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 970
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateSetSelected length not enough:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcjb;->mStateSetSelected:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :goto_0
    iget-object v1, p0, Lcjb;->mStateSetUnSelected:[I

    array-length v2, v1

    array-length v3, v0

    if-le v2, v3, :cond_1

    .line 974
    array-length v2, v0

    invoke-static {v0, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 976
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateSetUnSelected length not enough:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcjb;->mStateSetUnSelected:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_2
    :goto_1
    iget-object v0, p0, Lcjb;->mStateSetSelected:[I

    array-length v1, v0

    if-lez v1, :cond_3

    .line 981
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const v2, 0x10100a1

    aput v2, v0, v1

    .line 983
    :cond_3
    iget-object v0, p0, Lcjb;->mStateSetUnSelected:[I

    array-length v1, v0

    if-lez v1, :cond_4

    .line 984
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const v2, -0x10100a1

    aput v2, v0, v1

    .line 987
    :cond_4
    iget-object v0, p0, Lcjb;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 988
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 989
    invoke-virtual {p0}, Lcjb;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 990
    invoke-virtual {p0, v0}, Lcjb;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 992
    :cond_5
    iget-object v0, p0, Lcjb;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 993
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 994
    invoke-virtual {p0}, Lcjb;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 995
    invoke-virtual {p0, v0}, Lcjb;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    return-void
.end method

.method protected generateTouchEventHandler(I)Lcjb$f;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 258
    new-instance p1, Lcjb$c;

    invoke-direct {p1}, Lcjb$c;-><init>()V

    goto :goto_0

    .line 260
    :cond_0
    new-instance p1, Lcjb$e;

    invoke-direct {p1}, Lcjb$e;-><init>()V

    .line 262
    :goto_0
    invoke-virtual {p1, p0}, Lcjb$d;->a(Lcjb;)V

    return-object p1
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
    .locals 3

    const v0, 0x102000d

    .line 567
    invoke-direct {p0, v0}, Lcjb;->findProgressDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 569
    invoke-virtual {p0}, Lcjb;->getRange()I

    move-result v0

    if-lez v0, :cond_0

    .line 570
    invoke-virtual {p0}, Lcjb;->getProgress()I

    move-result v1

    invoke-virtual {p0}, Lcjb;->getMin()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 572
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getMax()I
    .locals 1

    .line 416
    iget v0, p0, Lcjb;->mMax:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .line 392
    iget v0, p0, Lcjb;->mMin:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 509
    iget v0, p0, Lcjb;->mOrientation:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 444
    iget v0, p0, Lcjb;->mProgress:I

    return v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 663
    iget-object v0, p0, Lcjb;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getRange()I
    .locals 2

    .line 440
    iget v0, p0, Lcjb;->mMax:I

    iget v1, p0, Lcjb;->mMin:I

    sub-int/2addr v0, v1

    return v0
.end method

.method getScaledTouchSlop()I
    .locals 1

    .line 298
    iget v0, p0, Lcjb;->mScaledTouchSlop:I

    return v0
.end method

.method public getScrollingContainer()Landroid/view/ViewGroup;
    .locals 3

    .line 1254
    invoke-virtual {p0}, Lcjb;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1255
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 1256
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 1257
    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 1260
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .line 490
    iget v0, p0, Lcjb;->mSecondaryProgress:I

    return v0
.end method

.method public getSlideScale()F
    .locals 1

    .line 655
    iget v0, p0, Lcjb;->mSlideScale:F

    return v0
.end method

.method public getSliderHeight()I
    .locals 1

    .line 343
    invoke-virtual {p0}, Lcjb;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lcjb;->getWidth()I

    move-result v0

    return v0

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcjb;->getHeight()I

    move-result v0

    return v0
.end method

.method public getSliderPaddingBottom()I
    .locals 1

    .line 323
    invoke-virtual {p0}, Lcjb;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcjb;->getPaddingEnd()I

    move-result v0

    return v0

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcjb;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getSliderPaddingEnd()I
    .locals 1

    .line 309
    invoke-virtual {p0}, Lcjb;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcjb;->getPaddingTop()I

    move-result v0

    return v0

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcjb;->getPaddingEnd()I

    move-result v0

    return v0
.end method

.method public getSliderPaddingStart()I
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcjb;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcjb;->getPaddingBottom()I

    move-result v0

    return v0

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcjb;->getPaddingStart()I

    move-result v0

    return v0
.end method

.method public getSliderPaddingTop()I
    .locals 1

    .line 316
    invoke-virtual {p0}, Lcjb;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcjb;->getPaddingStart()I

    move-result v0

    return v0

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcjb;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getSliderWidth()I
    .locals 1

    .line 333
    invoke-virtual {p0}, Lcjb;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcjb;->getHeight()I

    move-result v0

    return v0

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcjb;->getWidth()I

    move-result v0

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 712
    iget-object v0, p0, Lcjb;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTickMark()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 708
    iget-object v0, p0, Lcjb;->mTickMark:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTouchEventHandler()Lcjb$f;
    .locals 1

    .line 369
    iget-object v0, p0, Lcjb;->mTouchEventHandler:Lcjb$f;

    return-object v0
.end method

.method protected hasTickMark()Z
    .locals 4

    .line 1167
    invoke-virtual {p0}, Lcjb;->getMax()I

    move-result v0

    invoke-virtual {p0}, Lcjb;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1168
    :goto_0
    iget v2, p0, Lcjb;->mTickMarkStyle:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1169
    iget-object v2, p0, Lcjb;->mTickMarkPositions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public isVertical()Z
    .locals 2

    .line 513
    iget v0, p0, Lcjb;->mOrientation:I

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
    iget-object v0, p0, Lcjb;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1476
    invoke-direct {p0}, Lcjb;->scheduleAccessibilityEventSender()V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .line 949
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 952
    array-length v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 954
    new-array v1, v0, [I

    iput-object v1, p0, Lcjb;->mStateSetSelected:[I

    .line 955
    new-array v0, v0, [I

    iput-object v0, p0, Lcjb;->mStateSetUnSelected:[I

    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1071
    invoke-virtual {p0}, Lcjb;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1072
    invoke-virtual {p0}, Lcjb;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x43870000    # 270.0f

    .line 1073
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1075
    :cond_0
    invoke-virtual {p0, p1}, Lcjb;->drawTrack(Landroid/graphics/Canvas;)V

    .line 1076
    invoke-virtual {p0, p1}, Lcjb;->drawTickMarks(Landroid/graphics/Canvas;)V

    .line 1077
    invoke-virtual {p0, p1}, Lcjb;->drawThumb(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 203
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 204
    iget-boolean v0, p0, Lcjb;->mEnabled:Z

    invoke-virtual {p0, v0}, Lcjb;->setEnabled(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 268
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 269
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method protected onProgressChanged(IZ)V
    .locals 2

    .line 1214
    iget-object v0, p0, Lcjb;->mOnSlideChangeListener:Lcjb$b;

    if-eqz v0, :cond_0

    .line 1215
    invoke-interface {v0, p0, p1, p2}, Lcjb$b;->onProgressChanged(Lcjb;IZ)V

    .line 1217
    :cond_0
    iget-object v0, p0, Lcjb;->mChangeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcjb$b;

    .line 1218
    invoke-interface {v1, p0, p1, p2}, Lcjb$b;->onProgressChanged(Lcjb;IZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 935
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 936
    iget-object v0, p0, Lcjb;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 937
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 939
    :cond_0
    iget-object v0, p0, Lcjb;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 940
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 942
    :cond_1
    iget-object v0, p0, Lcjb;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 943
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 1058
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1060
    invoke-virtual {p0}, Lcjb;->isVertical()Z

    move-result p3

    if-eqz p3, :cond_0

    move v0, p2

    move p2, p1

    move p1, v0

    .line 1065
    :cond_0
    invoke-direct {p0, p1, p2}, Lcjb;->updateThumbAndTrackPos(II)V

    return-void
.end method

.method protected onStartTrackingTouch()V
    .locals 2

    .line 1226
    iget-object v0, p0, Lcjb;->mOnSlideChangeListener:Lcjb$b;

    if-eqz v0, :cond_0

    .line 1227
    invoke-interface {v0, p0}, Lcjb$b;->onStartTrackingTouch(Lcjb;)V

    .line 1229
    :cond_0
    iget-object v0, p0, Lcjb;->mChangeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcjb$b;

    .line 1230
    invoke-interface {v1, p0}, Lcjb$b;->onStartTrackingTouch(Lcjb;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onStopTrackingTouch()V
    .locals 2

    .line 1239
    iget-object v0, p0, Lcjb;->mOnSlideChangeListener:Lcjb$b;

    if-eqz v0, :cond_0

    .line 1240
    invoke-interface {v0, p0}, Lcjb$b;->onStopTrackingTouch(Lcjb;)V

    .line 1242
    :cond_0
    iget-object v0, p0, Lcjb;->mChangeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcjb$b;

    .line 1243
    invoke-interface {v1, p0}, Lcjb$b;->onStopTrackingTouch(Lcjb;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1037
    invoke-virtual {p0}, Lcjb;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1040
    :cond_0
    iget-object v0, p0, Lcjb;->mTouchEventHandler:Lcjb$f;

    if-eqz v0, :cond_1

    .line 1041
    invoke-interface {v0, p1}, Lcjb$f;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1043
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onVisibilityAggregated(Z)V
    .locals 1

    .line 1082
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    if-nez p1, :cond_2

    .line 1084
    iget-object p1, p0, Lcjb;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 1085
    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 1087
    :cond_0
    iget-object p1, p0, Lcjb;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_2

    .line 1088
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    const v0, 0x102000d

    .line 1089
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1090
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    .line 1091
    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 1093
    :cond_1
    iget-object p1, p0, Lcjb;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    const/high16 v0, 0x1020000

    .line 1094
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1095
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_2

    .line 1096
    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_2
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 279
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 281
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 282
    invoke-virtual {p0, v0}, Lcjb;->setProgress(I)V

    .line 285
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public refreshVisual()V
    .locals 3

    .line 377
    iget v0, p0, Lcjb;->mProgressDrawableRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 378
    invoke-virtual {p0}, Lcjb;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcjb;->mProgressDrawableRes:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcjb;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    :cond_0
    iget v0, p0, Lcjb;->mTickMarkRes:I

    if-eq v0, v1, :cond_1

    .line 381
    invoke-virtual {p0}, Lcjb;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcjb;->mTickMarkRes:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcjb;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 383
    :cond_1
    iget v0, p0, Lcjb;->mThumbRes:I

    if-eq v0, v1, :cond_2

    .line 384
    invoke-virtual {p0}, Lcjb;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcjb;->mThumbRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcjb;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 386
    :cond_2
    invoke-virtual {p0}, Lcjb;->getRange()I

    move-result v0

    if-lez v0, :cond_3

    .line 387
    invoke-virtual {p0}, Lcjb;->getProgress()I

    move-result v1

    invoke-virtual {p0}, Lcjb;->getMin()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    const v0, 0x102000d

    .line 388
    invoke-virtual {p0, v0, v1}, Lcjb;->setVisualProgress(IF)V

    return-void
.end method

.method public removeOnSliderChangeListener(Lcjb$b;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcjb;->mChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDragRange(II)V
    .locals 1

    if-le p1, p2, :cond_0

    return-void

    :cond_0
    int-to-float v0, p1

    .line 479
    iput v0, p0, Lcjb;->dragMin:F

    int-to-float v0, p2

    .line 480
    iput v0, p0, Lcjb;->dragMax:F

    .line 481
    iget v0, p0, Lcjb;->mProgress:I

    if-ge v0, p1, :cond_1

    .line 482
    invoke-virtual {p0, p1}, Lcjb;->setProgress(I)V

    .line 484
    :cond_1
    iget p1, p0, Lcjb;->mProgress:I

    if-le p1, p2, :cond_2

    .line 485
    invoke-virtual {p0, p2}, Lcjb;->setProgress(I)V

    :cond_2
    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 420
    iget-boolean v0, p0, Lcjb;->mMinInitialized:Z

    if-eqz v0, :cond_0

    .line 421
    iget v0, p0, Lcjb;->mMin:I

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    const/4 v0, 0x1

    .line 425
    iput-boolean v0, p0, Lcjb;->mMaxInitialized:Z

    .line 426
    iget-boolean v0, p0, Lcjb;->mMinInitialized:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcjb;->mMax:I

    if-eq p1, v0, :cond_2

    .line 427
    iput p1, p0, Lcjb;->mMax:I

    .line 428
    invoke-virtual {p0}, Lcjb;->postInvalidate()V

    .line 430
    iget v0, p0, Lcjb;->mProgress:I

    if-le v0, p1, :cond_1

    .line 431
    iput p1, p0, Lcjb;->mProgress:I

    .line 433
    :cond_1
    iget p1, p0, Lcjb;->mProgress:I

    invoke-virtual {p0, p1}, Lcjb;->setProgress(I)V

    goto :goto_0

    .line 435
    :cond_2
    iput p1, p0, Lcjb;->mMax:I

    :goto_0
    return-void
.end method

.method public setMin(I)V
    .locals 1

    .line 396
    iget-boolean v0, p0, Lcjb;->mMaxInitialized:Z

    if-eqz v0, :cond_0

    .line 397
    iget v0, p0, Lcjb;->mMax:I

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    const/4 v0, 0x1

    .line 401
    iput-boolean v0, p0, Lcjb;->mMinInitialized:Z

    .line 402
    iget-boolean v0, p0, Lcjb;->mMaxInitialized:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcjb;->mMin:I

    if-eq p1, v0, :cond_2

    .line 403
    iput p1, p0, Lcjb;->mMin:I

    .line 404
    invoke-virtual {p0}, Lcjb;->postInvalidate()V

    .line 406
    iget v0, p0, Lcjb;->mProgress:I

    if-ge v0, p1, :cond_1

    .line 407
    iput p1, p0, Lcjb;->mProgress:I

    .line 409
    :cond_1
    iget p1, p0, Lcjb;->mProgress:I

    invoke-virtual {p0, p1}, Lcjb;->setProgress(I)V

    goto :goto_0

    .line 411
    :cond_2
    iput p1, p0, Lcjb;->mMin:I

    :goto_0
    return-void
.end method

.method public setOnSlideChangeListener(Lcjb$b;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcjb;->mOnSlideChangeListener:Lcjb$b;

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    int-to-float v0, p1

    .line 466
    iget v1, p0, Lcjb;->dragMin:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    float-to-int p1, v1

    :cond_0
    int-to-float v0, p1

    .line 469
    iget v1, p0, Lcjb;->dragMax:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    float-to-int p1, v1

    :cond_1
    const/4 v0, 0x0

    .line 472
    invoke-virtual {p0, p1, v0, v0}, Lcjb;->setProgressInternal(IZZ)V

    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 667
    iget-object v0, p0, Lcjb;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 669
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 670
    iget-object v0, p0, Lcjb;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcjb;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 672
    :cond_0
    iput-object p1, p0, Lcjb;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 674
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 675
    invoke-virtual {p0}, Lcjb;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 676
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    invoke-virtual {p0}, Lcjb;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 680
    :cond_1
    invoke-virtual {p0}, Lcjb;->getSliderWidth()I

    move-result p1

    invoke-virtual {p0}, Lcjb;->getSliderHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcjb;->updateDrawableBounds(II)V

    .line 681
    invoke-direct {p0}, Lcjb;->updateDrawableState()V

    :cond_2
    const p1, 0x102000d

    .line 683
    iget v0, p0, Lcjb;->mProgress:I

    invoke-direct {p0, p1, v0}, Lcjb;->refreshProgress(II)V

    const p1, 0x102000f

    .line 684
    iget v0, p0, Lcjb;->mSecondaryProgress:I

    invoke-direct {p0, p1, v0}, Lcjb;->refreshProgress(II)V

    .line 685
    iget-object p1, p0, Lcjb;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcjb;->refreshEnabledDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method protected setProgressInternal(IZZ)V
    .locals 6

    const v1, 0x102000d

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 517
    invoke-direct/range {v0 .. v5}, Lcjb;->refreshProgress(IIZZZ)V

    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1

    .line 494
    iget v0, p0, Lcjb;->mMin:I

    if-ge p1, v0, :cond_0

    move p1, v0

    .line 498
    :cond_0
    iget v0, p0, Lcjb;->mMax:I

    if-le p1, v0, :cond_1

    move p1, v0

    .line 502
    :cond_1
    iget v0, p0, Lcjb;->mSecondaryProgress:I

    if-eq p1, v0, :cond_2

    .line 503
    iput p1, p0, Lcjb;->mSecondaryProgress:I

    const p1, 0x102000f

    .line 504
    iget v0, p0, Lcjb;->mSecondaryProgress:I

    invoke-direct {p0, p1, v0}, Lcjb;->refreshProgress(II)V

    :cond_2
    return-void
.end method

.method public setSlideScale(F)V
    .locals 0

    .line 659
    iput p1, p0, Lcjb;->mSlideScale:F

    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 720
    iget-object v0, p0, Lcjb;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x0

    .line 721
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 728
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 729
    invoke-virtual {p0}, Lcjb;->canResolveLayoutDirection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 730
    invoke-virtual {p0}, Lcjb;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 736
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcjb;->mThumbOffset:I

    if-eqz v0, :cond_3

    .line 740
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcjb;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 741
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcjb;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 742
    :cond_2
    invoke-virtual {p0}, Lcjb;->requestLayout()V

    .line 746
    :cond_3
    iput-object p1, p0, Lcjb;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 748
    invoke-virtual {p0}, Lcjb;->invalidate()V

    if-eqz v0, :cond_4

    .line 751
    invoke-virtual {p0}, Lcjb;->getSliderWidth()I

    move-result v0

    invoke-virtual {p0}, Lcjb;->getSliderHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcjb;->updateThumbAndTrackPos(II)V

    if-eqz p1, :cond_4

    .line 752
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 755
    invoke-virtual {p0}, Lcjb;->getDrawableState()[I

    move-result-object v0

    .line 756
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    return-void
.end method

.method public setTickMark(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 690
    iget-object v0, p0, Lcjb;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 691
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 694
    :cond_0
    iput-object p1, p0, Lcjb;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 697
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 698
    invoke-virtual {p0}, Lcjb;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 699
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    invoke-virtual {p0}, Lcjb;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 703
    :cond_1
    iget-object p1, p0, Lcjb;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcjb;->refreshEnabledDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 704
    invoke-virtual {p0}, Lcjb;->invalidate()V

    return-void
.end method

.method public setTickMartPositions(Ljava/lang/String;)V
    .locals 3

    const-string v0, "\\D"

    .line 352
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTickMartPositions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", string:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SimpleSlider"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    array-length p1, v0

    if-eqz p1, :cond_0

    .line 355
    new-instance p1, Ljava/util/HashSet;

    array-length v1, v0

    invoke-direct {p1, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object p1, p0, Lcjb;->mTickMarkPositions:Ljava/util/Set;

    .line 356
    iget-object p1, p0, Lcjb;->mTickMarkPositions:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcjb;->invalidate()V

    return-void
.end method

.method public setTouchEventHandler(Lcjb$f;)V
    .locals 1

    .line 362
    iput-object p1, p0, Lcjb;->mTouchEventHandler:Lcjb$f;

    .line 363
    iget-object p1, p0, Lcjb;->mTouchEventHandler:Lcjb$f;

    instance-of v0, p1, Lcjb$d;

    if-eqz v0, :cond_0

    .line 364
    check-cast p1, Lcjb$d;

    invoke-virtual {p1, p0}, Lcjb$d;->a(Lcjb;)V

    :cond_0
    return-void
.end method

.method protected setVisualProgress(IF)V
    .locals 2

    .line 876
    invoke-direct {p0, p1}, Lcjb;->findProgressDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 879
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    const v0, 0x102000d

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 882
    iget-object p1, p0, Lcjb;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 884
    invoke-virtual {p0}, Lcjb;->getSliderWidth()I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-direct {p0, v0, p1, p2, v1}, Lcjb;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 889
    invoke-virtual {p0}, Lcjb;->invalidate()V

    goto :goto_1

    .line 893
    :cond_1
    invoke-virtual {p0}, Lcjb;->invalidate()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1012
    iget-object v0, p0, Lcjb;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcjb;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
