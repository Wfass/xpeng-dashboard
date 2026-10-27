.class public Landroid/support/design/widget/BottomSheetBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BottomSheetBehavior$SavedState;,
        Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;,
        Landroid/support/design/widget/BottomSheetBehavior$State;,
        Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final HIDE_FRICTION:F = 0.1f

.field private static final HIDE_THRESHOLD:F = 0.5f

.field public static final PEEK_HEIGHT_AUTO:I = -0x1

.field public static final STATE_COLLAPSED:I = 0x4

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_EXPANDED:I = 0x3

.field public static final STATE_HALF_EXPANDED:I = 0x6

.field public static final STATE_HIDDEN:I = 0x5

.field public static final STATE_SETTLING:I = 0x2


# instance fields
.field activePointerId:I

.field private callback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

.field collapsedOffset:I

.field private final dragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field private fitToContents:Z

.field fitToContentsOffset:I

.field halfExpandedOffset:I

.field hideable:Z

.field private ignoreEvents:Z

.field private initialY:I

.field private lastNestedScrollDy:I

.field private lastPeekHeight:I

.field private maximumVelocity:F

.field private nestedScrolled:Z

.field nestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field parentHeight:I

.field private peekHeight:I

.field private peekHeightAuto:Z

.field private peekHeightMin:I

.field private skipCollapsed:Z

.field state:I

.field touchingScrollingChild:Z

.field private velocityTracker:Landroid/view/VelocityTracker;

.field viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 170
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    .line 143
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    .line 744
    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$2;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetBehavior$2;-><init>(Landroid/support/design/widget/BottomSheetBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->dragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 179
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    .line 143
    const/4 v1, 0x4

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    .line 744
    new-instance v1, Landroid/support/design/widget/BottomSheetBehavior$2;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BottomSheetBehavior$2;-><init>(Landroid/support/design/widget/BottomSheetBehavior;)V

    iput-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->dragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 180
    sget-object v1, Landroid/support/design/widget/R$styleable;->BottomSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 181
    sget v1, Landroid/support/design/widget/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 182
    const/4 v2, -0x1

    if-eqz v1, :cond_0

    iget v3, v1, Landroid/util/TypedValue;->data:I

    if-ne v3, v2, :cond_0

    .line 183
    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    goto :goto_0

    .line 185
    :cond_0
    sget v1, Landroid/support/design/widget/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    .line 186
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 185
    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    .line 189
    :goto_0
    sget v1, Landroid/support/design/widget/R$styleable;->BottomSheetBehavior_Layout_behavior_hideable:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setHideable(Z)V

    .line 190
    sget v1, Landroid/support/design/widget/R$styleable;->BottomSheetBehavior_Layout_behavior_fitToContents:I

    .line 191
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 190
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setFitToContents(Z)V

    .line 192
    sget v0, Landroid/support/design/widget/R$styleable;->BottomSheetBehavior_Layout_behavior_skipCollapsed:I

    .line 193
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 192
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setSkipCollapsed(Z)V

    .line 194
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 195
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->maximumVelocity:F

    .line 197
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/BottomSheetBehavior;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    return p0
.end method

.method static synthetic access$100(Landroid/support/design/widget/BottomSheetBehavior;)I
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getExpandedOffset()I

    move-result p0

    return p0
.end method

.method private calculateCollapsedOffset()V
    .locals 2

    .line 665
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_0

    .line 666
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->lastPeekHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContentsOffset:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    goto :goto_0

    .line 668
    :cond_0
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->lastPeekHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    .line 670
    :goto_0
    return-void
.end method

.method public static from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Landroid/support/design/widget/BottomSheetBehavior<",
            "TV;>;"
        }
    .end annotation

    .line 954
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 955
    instance-of v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 958
    check-cast p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object p0

    .line 959
    instance-of v0, p0, Landroid/support/design/widget/BottomSheetBehavior;

    if-eqz v0, :cond_0

    .line 962
    check-cast p0, Landroid/support/design/widget/BottomSheetBehavior;

    return-object p0

    .line 960
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not associated with BottomSheetBehavior"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 956
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not a child of CoordinatorLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getExpandedOffset()I
    .locals 1

    .line 715
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContentsOffset:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getYVelocity()F
    .locals 3

    .line 710
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->maximumVelocity:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 711
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->activePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    return v0
.end method

.method private reset()V
    .locals 1

    .line 673
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->activePointerId:I

    .line 674
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 676
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 678
    :cond_0
    return-void
.end method


# virtual methods
.method dispatchOnSlide(I)V
    .locals 4

    .line 865
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 866
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->callback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    if-eqz v1, :cond_1

    .line 867
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    if-le p1, v1, :cond_0

    .line 868
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->callback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr p1, v2

    invoke-virtual {v1, v0, p1}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    goto :goto_0

    .line 871
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->callback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    .line 872
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getExpandedOffset()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr p1, v2

    .line 871
    invoke-virtual {v1, v0, p1}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    .line 875
    :cond_1
    :goto_0
    return-void
.end method

.method findScrollingChild(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 694
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    return-object p1

    .line 697
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 698
    check-cast p1, Landroid/view/ViewGroup;

    .line 699
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 700
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/design/widget/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 701
    if-eqz v2, :cond_1

    .line 702
    return-object v2

    .line 699
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 706
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getPeekHeight()I
    .locals 1

    .line 547
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightAuto:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeight:I

    :goto_0
    return v0
.end method

.method getPeekHeightMin()I
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 879
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightMin:I

    return v0
.end method

.method public getSkipCollapsed()Z
    .locals 1

    .line 589
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->skipCollapsed:Z

    return v0
.end method

.method public final getState()I
    .locals 1

    .line 650
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    return v0
.end method

.method public isFitToContents()Z
    .locals 1

    .line 486
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    return v0
.end method

.method public isHideable()Z
    .locals 1

    .line 567
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->hideable:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 262
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 263
    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->ignoreEvents:Z

    .line 264
    return v1

    .line 266
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 268
    if-nez v0, :cond_1

    .line 269
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->reset()V

    .line 271
    :cond_1
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    .line 272
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 274
    :cond_2
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 275
    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v0, v3, :cond_6

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 287
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 288
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->initialY:I

    .line 289
    iget-object v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    goto :goto_0

    .line 290
    :cond_3
    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_4

    iget v7, p0, Landroid/support/design/widget/BottomSheetBehavior;->initialY:I

    invoke-virtual {p1, v6, v3, v7}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 291
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-virtual {p3, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->activePointerId:I

    .line 292
    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->touchingScrollingChild:Z

    .line 294
    :cond_4
    iget v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->activePointerId:I

    if-ne v6, v4, :cond_5

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->initialY:I

    .line 296
    invoke-virtual {p1, p2, v3, v4}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p2

    if-nez p2, :cond_5

    move p2, v2

    goto :goto_1

    :cond_5
    move p2, v1

    :goto_1
    iput-boolean p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->ignoreEvents:Z

    .line 297
    goto :goto_2

    .line 278
    :cond_6
    :pswitch_1
    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->touchingScrollingChild:Z

    .line 279
    iput v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->activePointerId:I

    .line 281
    iget-boolean p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->ignoreEvents:Z

    if-eqz p2, :cond_7

    .line 282
    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->ignoreEvents:Z

    .line 283
    return v1

    .line 300
    :cond_7
    :goto_2
    iget-boolean p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->ignoreEvents:Z

    if-nez p2, :cond_8

    iget-object p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p2, p3}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 301
    return v2

    .line 306
    :cond_8
    iget-object p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_9

    iget-object p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Landroid/view/View;

    nop

    .line 307
    :cond_9
    const/4 p2, 0x2

    if-ne v0, p2, :cond_a

    if-eqz v5, :cond_a

    iget-boolean p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->ignoreEvents:Z

    if-nez p2, :cond_a

    iget p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    if-eq p2, v2, :cond_a

    .line 311
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v5, p2, v0}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p1

    if-nez p1, :cond_a

    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->initialY:I

    int-to-float p1, p1

    .line 312
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p2}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_a

    .line 307
    move v1, v2

    goto :goto_3

    .line 312
    :cond_a
    nop

    .line 307
    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 218
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 221
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 223
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 225
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    .line 226
    iget-boolean p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightAuto:Z

    if-eqz p3, :cond_2

    .line 227
    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightMin:I

    if-nez p3, :cond_1

    .line 228
    nop

    .line 230
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Landroid/support/design/widget/R$dimen;->design_bottom_sheet_peek_height_min:I

    .line 231
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightMin:I

    .line 233
    :cond_1
    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightMin:I

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v3, v3, 0x10

    sub-int/2addr v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->lastPeekHeight:I

    goto :goto_0

    .line 235
    :cond_2
    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeight:I

    iput p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->lastPeekHeight:I

    .line 237
    :goto_0
    const/4 p3, 0x0

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContentsOffset:I

    .line 238
    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    const/4 v2, 0x2

    div-int/2addr p3, v2

    iput p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    .line 239
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->calculateCollapsedOffset()V

    .line 241
    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    const/4 v3, 0x3

    if-ne p3, v3, :cond_3

    .line 242
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getExpandedOffset()I

    move-result p3

    invoke-static {p2, p3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    .line 243
    :cond_3
    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    const/4 v3, 0x6

    if-ne p3, v3, :cond_4

    .line 244
    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    invoke-static {p2, p3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    .line 245
    :cond_4
    iget-boolean p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->hideable:Z

    if-eqz p3, :cond_5

    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    const/4 v3, 0x5

    if-ne p3, v3, :cond_5

    .line 246
    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    invoke-static {p2, p3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    .line 247
    :cond_5
    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    const/4 v3, 0x4

    if-ne p3, v3, :cond_6

    .line 248
    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    invoke-static {p2, p3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    .line 249
    :cond_6
    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    if-eq p3, v1, :cond_7

    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    if-ne p3, v2, :cond_8

    .line 250
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr v0, p3

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 252
    :cond_8
    :goto_1
    iget-object p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-nez p3, :cond_9

    .line 253
    iget-object p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->dragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-static {p1, p3}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 255
    :cond_9
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 256
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p2}, Landroid/support/design/widget/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 257
    return v1
.end method

.method public onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 2
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .line 475
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 477
    invoke-super/range {p0 .. p5}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 475
    :goto_0
    return p1
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 1
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    .line 367
    const/4 p1, 0x1

    if-ne p7, p1, :cond_0

    .line 369
    return-void

    .line 371
    :cond_0
    iget-object p4, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    .line 372
    if-eq p3, p4, :cond_1

    .line 373
    return-void

    .line 375
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p4

    .line 376
    sub-int p7, p4, p5

    .line 377
    if-lez p5, :cond_3

    .line 378
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getExpandedOffset()I

    move-result p3

    if-ge p7, p3, :cond_2

    .line 379
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getExpandedOffset()I

    move-result p3

    sub-int/2addr p4, p3

    aput p4, p6, p1

    .line 380
    aget p3, p6, p1

    neg-int p3, p3

    invoke-static {p2, p3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 381
    const/4 p3, 0x3

    invoke-virtual {p0, p3}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1

    .line 383
    :cond_2
    aput p5, p6, p1

    .line 384
    neg-int p3, p5

    invoke-static {p2, p3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 385
    invoke-virtual {p0, p1}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1

    .line 387
    :cond_3
    if-gez p5, :cond_6

    .line 388
    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p3

    if-nez p3, :cond_6

    .line 389
    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    if-le p7, p3, :cond_5

    iget-boolean p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->hideable:Z

    if-eqz p3, :cond_4

    goto :goto_0

    .line 394
    :cond_4
    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr p4, p3

    aput p4, p6, p1

    .line 395
    aget p3, p6, p1

    neg-int p3, p3

    invoke-static {p2, p3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 396
    const/4 p3, 0x4

    invoke-virtual {p0, p3}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1

    .line 390
    :cond_5
    :goto_0
    aput p5, p6, p1

    .line 391
    neg-int p3, p5

    invoke-static {p2, p3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 392
    invoke-virtual {p0, p1}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 400
    :cond_6
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/widget/BottomSheetBehavior;->dispatchOnSlide(I)V

    .line 401
    iput p5, p0, Landroid/support/design/widget/BottomSheetBehavior;->lastNestedScrollDy:I

    .line 402
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrolled:Z

    .line 403
    return-void
.end method

.method public onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 206
    check-cast p3, Landroid/support/design/widget/BottomSheetBehavior$SavedState;

    .line 207
    invoke-virtual {p3}, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 209
    iget p1, p3, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->state:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    iget p1, p3, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->state:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    iget p1, p3, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->state:I

    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    goto :goto_1

    .line 210
    :cond_1
    :goto_0
    const/4 p1, 0x4

    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    .line 214
    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 201
    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$SavedState;

    invoke-super {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    iget p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    invoke-direct {v0, p1, p2}, Landroid/support/design/widget/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v0
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    .line 353
    const/4 p1, 0x0

    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->lastNestedScrollDy:I

    .line 354
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrolled:Z

    .line 355
    and-int/lit8 p2, p5, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    nop

    :cond_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 3
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 411
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getExpandedOffset()I

    move-result p4

    const/4 v0, 0x3

    if-ne p1, p4, :cond_0

    .line 412
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 413
    return-void

    .line 415
    :cond_0
    iget-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p3, p1, :cond_b

    iget-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrolled:Z

    if-nez p1, :cond_1

    goto/16 :goto_5

    .line 420
    :cond_1
    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->lastNestedScrollDy:I

    const/4 p3, 0x0

    const/4 p4, 0x4

    if-lez p1, :cond_2

    .line 421
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getExpandedOffset()I

    move-result p1

    .line 422
    goto/16 :goto_3

    .line 423
    :cond_2
    iget-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->hideable:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getYVelocity()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/support/design/widget/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 424
    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    .line 425
    const/4 v0, 0x5

    goto :goto_3

    .line 426
    :cond_3
    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->lastNestedScrollDy:I

    if-nez p1, :cond_9

    .line 427
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    .line 428
    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    const/4 v2, 0x6

    if-eqz v1, :cond_5

    .line 429
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContentsOffset:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v1, p1, :cond_4

    .line 430
    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContentsOffset:I

    .line 431
    goto :goto_2

    .line 433
    :cond_4
    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    .line 434
    nop

    .line 455
    :goto_0
    move v0, p4

    goto :goto_2

    .line 437
    :cond_5
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    if-ge p1, v1, :cond_7

    .line 438
    iget p4, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    sub-int p4, p1, p4

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    if-ge p1, p4, :cond_6

    .line 439
    nop

    .line 440
    nop

    .line 455
    move p1, p3

    goto :goto_2

    .line 442
    :cond_6
    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    .line 443
    nop

    .line 455
    :goto_1
    move v0, v2

    goto :goto_2

    .line 446
    :cond_7
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v0, p1, :cond_8

    .line 447
    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    .line 448
    goto :goto_1

    .line 450
    :cond_8
    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    .line 451
    goto :goto_0

    .line 455
    :goto_2
    goto :goto_3

    .line 456
    :cond_9
    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    .line 457
    nop

    .line 459
    move v0, p4

    :goto_3
    iget-object p4, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p4, p2, v1, p1}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 460
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 461
    new-instance p1, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;

    invoke-direct {p1, p0, p2, v0}, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p2, p1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_4

    .line 463
    :cond_a
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 465
    :goto_4
    iput-boolean p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrolled:Z

    .line 466
    return-void

    .line 416
    :cond_b
    :goto_5
    return-void
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 317
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    .line 318
    const/4 p1, 0x0

    return p1

    .line 320
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 321
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    .line 322
    return v1

    .line 324
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p3}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 328
    :cond_2
    if-nez p1, :cond_3

    .line 329
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->reset()V

    .line 331
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 332
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 334
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 337
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    iget-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->ignoreEvents:Z

    if-nez p1, :cond_5

    .line 338
    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->initialY:I

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    .line 339
    iget-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 342
    :cond_5
    iget-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->ignoreEvents:Z

    xor-int/2addr p1, v1

    return p1
.end method

.method public setBottomSheetCallback(Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;)V
    .locals 0

    .line 598
    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->callback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    .line 599
    return-void
.end method

.method public setFitToContents(Z)V
    .locals 1

    .line 497
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    if-ne v0, p1, :cond_0

    .line 498
    return-void

    .line 500
    :cond_0
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    .line 504
    iget-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    .line 505
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->calculateCollapsedOffset()V

    .line 508
    :cond_1
    iget-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    if-eqz p1, :cond_2

    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 509
    return-void
.end method

.method public setHideable(Z)V
    .locals 0

    .line 557
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->hideable:Z

    .line 558
    return-void
.end method

.method public final setPeekHeight(I)V
    .locals 3

    .line 519
    nop

    .line 520
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 521
    iget-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez p1, :cond_1

    .line 522
    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightAuto:Z

    .line 523
    goto :goto_1

    .line 525
    :cond_0
    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez v2, :cond_2

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeight:I

    if-eq v2, p1, :cond_1

    goto :goto_0

    .line 531
    :cond_1
    move v0, v1

    goto :goto_1

    .line 526
    :cond_2
    :goto_0
    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightAuto:Z

    .line 527
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeight:I

    .line 528
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    sub-int/2addr v1, p1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    .line 529
    nop

    .line 531
    :goto_1
    if-eqz v0, :cond_3

    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_3

    .line 532
    iget-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 533
    if-eqz p1, :cond_3

    .line 534
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 537
    :cond_3
    return-void
.end method

.method public setSkipCollapsed(Z)V
    .locals 0

    .line 578
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->skipCollapsed:Z

    .line 579
    return-void
.end method

.method public final setState(I)V
    .locals 2

    .line 609
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    if-ne p1, v0, :cond_0

    .line 610
    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    .line 614
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->hideable:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 618
    :cond_1
    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    .line 620
    :cond_2
    return-void

    .line 622
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 623
    if-nez v0, :cond_4

    .line 624
    return-void

    .line 627
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 628
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 629
    nop

    .line 630
    new-instance v1, Landroid/support/design/widget/BottomSheetBehavior$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/support/design/widget/BottomSheetBehavior$1;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 637
    goto :goto_0

    .line 638
    :cond_5
    invoke-virtual {p0, v0, p1}, Landroid/support/design/widget/BottomSheetBehavior;->startSettlingAnimation(Landroid/view/View;I)V

    .line 640
    :goto_0
    return-void
.end method

.method setStateInternal(I)V
    .locals 2

    .line 654
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    if-ne v0, p1, :cond_0

    .line 655
    return-void

    .line 657
    :cond_0
    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    .line 658
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 659
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->callback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    if-eqz v1, :cond_1

    .line 660
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->callback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v1, v0, p1}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;->onStateChanged(Landroid/view/View;I)V

    .line 662
    :cond_1
    return-void
.end method

.method shouldHide(Landroid/view/View;F)Z
    .locals 4

    .line 681
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->skipCollapsed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 682
    return v1

    .line 684
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    .line 686
    return v3

    .line 688
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    .line 689
    iget p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeight:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    return v1
.end method

.method startSettlingAnimation(Landroid/view/View;I)V
    .locals 4

    .line 720
    const/4 v0, 0x3

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 721
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    goto :goto_0

    .line 722
    :cond_0
    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    .line 723
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    .line 724
    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContentsOffset:I

    if-gt v1, v2, :cond_1

    .line 726
    nop

    .line 727
    iget p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContentsOffset:I

    .line 736
    move v3, v0

    move v0, p2

    move p2, v3

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 729
    :cond_2
    if-ne p2, v0, :cond_3

    .line 730
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getExpandedOffset()I

    move-result v0

    goto :goto_0

    .line 731
    :cond_3
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->hideable:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    if-ne p2, v0, :cond_5

    .line 732
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    .line 736
    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 737
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 738
    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 740
    :cond_4
    invoke-virtual {p0, p2}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 742
    :goto_1
    return-void

    .line 734
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
