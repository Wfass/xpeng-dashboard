.class final Landroidx/fragment/app/FragmentManagerImpl;
.super Landroidx/fragment/app/FragmentManager;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;,
        Landroidx/fragment/app/FragmentManagerImpl$AnimatorOnHWLayerIfNeededListener;,
        Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;,
        Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;,
        Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;,
        Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;,
        Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;,
        Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;,
        Landroidx/fragment/app/FragmentManagerImpl$FragmentTag;,
        Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    }
.end annotation


# static fields
.field static final ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final ANIM_DUR:I = 0xdc

.field public static final ANIM_STYLE_CLOSE_ENTER:I = 0x3

.field public static final ANIM_STYLE_CLOSE_EXIT:I = 0x4

.field public static final ANIM_STYLE_FADE_ENTER:I = 0x5

.field public static final ANIM_STYLE_FADE_EXIT:I = 0x6

.field public static final ANIM_STYLE_OPEN_ENTER:I = 0x1

.field public static final ANIM_STYLE_OPEN_EXIT:I = 0x2

.field static DEBUG:Z = false

.field static final DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"

.field static sAnimationListenerField:Ljava/lang/reflect/Field;


# instance fields
.field mActive:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContainer:Landroidx/fragment/app/FragmentContainer;

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mHost:Landroidx/fragment/app/FragmentHostCallback;

.field private final mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;",
            ">;"
        }
    .end annotation
.end field

.field mNeedMenuInvalidate:Z

.field mNextFragmentIndex:I

.field mNoTransactionsBecause:Ljava/lang/String;

.field mParent:Landroidx/fragment/app/Fragment;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;",
            ">;"
        }
    .end annotation
.end field

.field mPostponedTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mPrimaryNav:Landroidx/fragment/app/Fragment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mSavedNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mStopped:Z

.field mTmpAddedFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mTmpIsPop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mTmpRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 664
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    .line 706
    const/4 v0, 0x0

    sput-object v0, Landroidx/fragment/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    .line 1129
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 1130
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    .line 1131
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/FragmentManagerImpl;->ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 1132
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/FragmentManagerImpl;->ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 663
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;-><init>()V

    .line 685
    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    .line 687
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 697
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 700
    iput v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    .line 721
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 722
    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 730
    new-instance v0, Landroidx/fragment/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManagerImpl$1;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    .line 4076
    return-void
.end method

.method static synthetic access$500(Landroidx/fragment/app/FragmentManagerImpl;)V
    .locals 0

    .line 663
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->scheduleCommit()V

    return-void
.end method

.method static synthetic access$600(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/BackStackRecord;ZZZ)V
    .locals 0

    .line 663
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentManagerImpl;->completeExecute(Landroidx/fragment/app/BackStackRecord;ZZZ)V

    return-void
.end method

.method private addAddedFragments(Landroidx/collection/ArraySet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 2646
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2647
    return-void

    .line 2650
    :cond_0
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2651
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2652
    const/4 v2, 0x0

    move v8, v2

    :goto_0
    if-ge v8, v1, :cond_2

    .line 2653
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/fragment/app/Fragment;

    .line 2654
    iget v2, v9, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v2, v0, :cond_1

    .line 2655
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v5

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v9

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 2657
    iget-object v2, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-boolean v2, v9, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v2, :cond_1

    iget-boolean v2, v9, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v2, :cond_1

    .line 2658
    invoke-virtual {p1, v9}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2652
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2662
    :cond_2
    return-void
.end method

.method private animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;I)V
    .locals 4
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1641
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1642
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1643
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1644
    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->setStateAfterAnimating(I)V

    .line 1645
    iget-object p3, p2, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz p3, :cond_0

    .line 1646
    new-instance p3, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;

    iget-object v2, p2, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-direct {p3, v2, v1, v0}, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1648
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1649
    invoke-static {p3}, Landroidx/fragment/app/FragmentManagerImpl;->getAnimationListener(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v2

    .line 1650
    new-instance v3, Landroidx/fragment/app/FragmentManagerImpl$2;

    invoke-direct {v3, p0, v2, v1, p1}, Landroidx/fragment/app/FragmentManagerImpl$2;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Landroid/view/animation/Animation$AnimationListener;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p3, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1670
    invoke-static {v0, p2}, Landroidx/fragment/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1671
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1672
    goto :goto_0

    .line 1673
    :cond_0
    iget-object p3, p2, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    .line 1674
    iget-object v2, p2, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1675
    new-instance v2, Landroidx/fragment/app/FragmentManagerImpl$3;

    invoke-direct {v2, p0, v1, v0, p1}, Landroidx/fragment/app/FragmentManagerImpl$3;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p3, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1688
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1689
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {p1, p2}, Landroidx/fragment/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1690
    invoke-virtual {p3}, Landroid/animation/Animator;->start()V

    .line 1692
    :goto_0
    return-void
.end method

.method private burpActive()V
    .locals 3

    .line 3199
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 3200
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3201
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3202
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 3200
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3206
    :cond_1
    return-void
.end method

.method private checkStateLoss()V
    .locals 3

    .line 2090
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2094
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2098
    return-void

    .line 2095
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2091
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cleanupExec()V
    .locals 1

    .line 2268
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2269
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2270
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2271
    return-void
.end method

.method private completeExecute(Landroidx/fragment/app/BackStackRecord;ZZZ)V
    .locals 7

    .line 2540
    if-eqz p2, :cond_0

    .line 2541
    invoke-virtual {p1, p4}, Landroidx/fragment/app/BackStackRecord;->executePopOps(Z)V

    goto :goto_0

    .line 2543
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/BackStackRecord;->executeOps()V

    .line 2545
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2546
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2547
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2548
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2549
    if-eqz p3, :cond_1

    .line 2550
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->startTransitions(Landroidx/fragment/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2552
    :cond_1
    if-eqz p4, :cond_2

    .line 2553
    iget p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, p2, v6}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2556
    :cond_2
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz p2, :cond_6

    .line 2557
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    .line 2558
    const/4 p3, 0x0

    move v0, p3

    :goto_1
    if-ge v0, p2, :cond_6

    .line 2561
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2562
    if-eqz v1, :cond_5

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v2, :cond_5

    iget v2, v1, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 2563
    invoke-virtual {p1, v2}, Landroidx/fragment/app/BackStackRecord;->interactsWith(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2564
    iget v2, v1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 2565
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget v4, v1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2567
    :cond_3
    if-eqz p4, :cond_4

    .line 2568
    iput v3, v1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    goto :goto_2

    .line 2570
    :cond_4
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 2571
    iput-boolean p3, v1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    .line 2558
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2576
    :cond_6
    return-void
.end method

.method private dispatchStateChange(I)V
    .locals 2

    .line 3281
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 3282
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3284
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 3285
    nop

    .line 3286
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    .line 3287
    return-void

    .line 3284
    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    throw p1
.end method

.method private endAnimatingAwayFragments()V
    .locals 9

    .line 2680
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2681
    move v0, v1

    goto :goto_0

    .line 2680
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2681
    :goto_0
    if-ge v1, v0, :cond_4

    .line 2682
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 2683
    if-eqz v4, :cond_3

    .line 2684
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2686
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v5

    .line 2687
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v2

    .line 2688
    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    .line 2689
    if-eqz v3, :cond_1

    .line 2690
    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 2693
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 2695
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 2696
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 2697
    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2698
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 2681
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2702
    :cond_4
    return-void
.end method

.method private ensureExecReady(Z)V
    .locals 2

    .line 2216
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    if-nez v0, :cond_4

    .line 2220
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_3

    .line 2224
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 2228
    if-nez p1, :cond_0

    .line 2229
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    .line 2232
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 2233
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    .line 2234
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    .line 2236
    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2238
    const/4 p1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2240
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2241
    nop

    .line 2242
    return-void

    .line 2240
    :catchall_0
    move-exception v0

    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    throw v0

    .line 2225
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2221
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment host has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2217
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .line 2623
    :goto_0
    if-ge p2, p3, :cond_2

    .line 2624
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    .line 2625
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2626
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2627
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2630
    add-int/lit8 v1, p3, -0x1

    if-ne p2, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 2631
    :goto_1
    invoke-virtual {v0, v2}, Landroidx/fragment/app/BackStackRecord;->executePopOps(Z)V

    .line 2632
    goto :goto_2

    .line 2633
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2634
    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->executeOps()V

    .line 2623
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2637
    :cond_2
    return-void
.end method

.method private executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    .line 2396
    move/from16 v10, p4

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    iget-boolean v11, v0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    .line 2397
    nop

    .line 2398
    iget-object v0, v6, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    goto :goto_0

    .line 2401
    :cond_0
    iget-object v0, v6, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2403
    :goto_0
    iget-object v0, v6, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    iget-object v1, v6, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2404
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManagerImpl;->getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 2405
    const/4 v1, 0x0

    move-object v2, v0

    move v12, v1

    move v0, v9

    :goto_1
    const/4 v13, 0x1

    if-ge v0, v10, :cond_4

    .line 2406
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    .line 2407
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 2408
    if-nez v4, :cond_1

    .line 2409
    iget-object v4, v6, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v2}, Landroidx/fragment/app/BackStackRecord;->expandOps(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    goto :goto_2

    .line 2411
    :cond_1
    iget-object v4, v6, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v2}, Landroidx/fragment/app/BackStackRecord;->trackAddedFragmentsInPop(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 2413
    :goto_2
    if-nez v12, :cond_3

    iget-boolean v3, v3, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v3, :cond_2

    goto :goto_3

    .line 2405
    :cond_2
    move v12, v1

    goto :goto_4

    .line 2413
    :cond_3
    :goto_3
    nop

    .line 2405
    move v12, v13

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2415
    :cond_4
    iget-object v0, v6, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2417
    if-nez v11, :cond_5

    .line 2418
    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move v4, v10

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->startTransitions(Landroidx/fragment/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2421
    :cond_5
    invoke-static/range {p1 .. p4}, Landroidx/fragment/app/FragmentManagerImpl;->executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2423
    nop

    .line 2424
    if-eqz v11, :cond_6

    .line 2425
    new-instance v14, Landroidx/collection/ArraySet;

    invoke-direct {v14}, Landroidx/collection/ArraySet;-><init>()V

    .line 2426
    invoke-direct {v6, v14}, Landroidx/fragment/app/FragmentManagerImpl;->addAddedFragments(Landroidx/collection/ArraySet;)V

    .line 2427
    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move v4, v10

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/FragmentManagerImpl;->postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/collection/ArraySet;)I

    move-result v0

    .line 2429
    invoke-direct {v6, v14}, Landroidx/fragment/app/FragmentManagerImpl;->makeRemovedFragmentsInvisible(Landroidx/collection/ArraySet;)V

    .line 2432
    move v4, v0

    goto :goto_5

    :cond_6
    move v4, v10

    :goto_5
    if-eq v4, v9, :cond_7

    if-eqz v11, :cond_7

    .line 2434
    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->startTransitions(Landroidx/fragment/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2436
    iget v0, v6, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {v6, v0, v13}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2439
    :cond_7
    :goto_6
    if-ge v9, v10, :cond_9

    .line 2440
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    .line 2441
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2442
    if-eqz v1, :cond_8

    iget v1, v0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ltz v1, :cond_8

    .line 2443
    iget v1, v0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {v6, v1}, Landroidx/fragment/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    .line 2444
    const/4 v1, -0x1

    iput v1, v0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 2446
    :cond_8
    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->runOnCommitRunnables()V

    .line 2439
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 2448
    :cond_9
    if-eqz v12, :cond_a

    .line 2449
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 2451
    :cond_a
    return-void
.end method

.method private executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2302
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2303
    move v0, v1

    goto :goto_0

    .line 2302
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2303
    :goto_0
    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_5

    .line 2304
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;

    .line 2305
    const/4 v4, -0x1

    if-eqz p1, :cond_1

    invoke-static {v3}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->access$300(Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2306
    invoke-static {v3}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->access$400(Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 2307
    if-eq v5, v4, :cond_1

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2308
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    .line 2309
    goto :goto_2

    .line 2312
    :cond_1
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->isReady()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p1, :cond_4

    .line 2313
    invoke-static {v3}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->access$400(Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, p1, v1, v6}, Landroidx/fragment/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2314
    :cond_2
    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2315
    add-int/lit8 v0, v0, -0x1

    .line 2316
    add-int/lit8 v2, v2, -0x1

    .line 2318
    if-eqz p1, :cond_3

    invoke-static {v3}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->access$300(Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2319
    invoke-static {v3}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->access$400(Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v4, :cond_3

    .line 2320
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2322
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    goto :goto_2

    .line 2324
    :cond_3
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    .line 2303
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2328
    :cond_5
    return-void
.end method

.method private findFragmentUnder(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 4

    .line 2595
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 2596
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 2598
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    .line 2602
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 2603
    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 2604
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2605
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-ne v3, v0, :cond_1

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 2607
    return-object v1

    .line 2603
    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 2610
    :cond_2
    return-object v2

    .line 2599
    :cond_3
    :goto_1
    return-object v2
.end method

.method private forcePostponedTransactions()V
    .locals 2

    .line 2668
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2669
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2670
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    goto :goto_0

    .line 2673
    :cond_0
    return-void
.end method

.method private generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2716
    nop

    .line 2717
    monitor-enter p0

    .line 2718
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2722
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2723
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2724
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;

    invoke-interface {v3, p1, p2}, Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 2723
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2726
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2727
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2728
    monitor-exit p0

    .line 2729
    return v2

    .line 2719
    :cond_2
    :goto_1
    monitor-exit p0

    return v1

    .line 2728
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static getAnimationListener(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;
    .locals 2

    .line 1298
    nop

    .line 1300
    :try_start_0
    sget-object v0, Landroidx/fragment/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 1301
    const-class v0, Landroid/view/animation/Animation;

    const-string v1, "mListener"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    .line 1302
    sget-object v0, Landroidx/fragment/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1304
    :cond_0
    sget-object v0, Landroidx/fragment/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/Animation$AnimationListener;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1309
    goto :goto_1

    .line 1307
    :catch_0
    move-exception p0

    .line 1308
    const-string v0, "FragmentManager"

    const-string v1, "Cannot access Animation\'s mListener field"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1305
    :catch_1
    move-exception p0

    .line 1306
    const-string v0, "FragmentManager"

    const-string v1, "No field with the name mListener is found in Animation class"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1309
    nop

    .line 1310
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method static makeFadeAnimation(Landroid/content/Context;FF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    .locals 0

    .line 1152
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1153
    sget-object p1, Landroidx/fragment/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1154
    const-wide/16 p1, 0xdc

    invoke-virtual {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1155
    new-instance p1, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;Landroidx/fragment/app/FragmentManagerImpl$1;)V

    return-object p1
.end method

.method static makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    .locals 10

    .line 1138
    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1139
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1141
    sget-object p1, Landroidx/fragment/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1142
    const-wide/16 p1, 0xdc

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1143
    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1144
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1145
    sget-object p3, Landroidx/fragment/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1146
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1147
    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1148
    new-instance p1, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;Landroidx/fragment/app/FragmentManagerImpl$1;)V

    return-object p1
.end method

.method private makeRemovedFragmentsInvisible(Landroidx/collection/ArraySet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 2461
    invoke-virtual {p1}, Landroidx/collection/ArraySet;->size()I

    move-result v0

    .line 2462
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2463
    invoke-virtual {p1, v1}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 2464
    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v3, :cond_0

    .line 2465
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    .line 2466
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v2, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 2467
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2462
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2470
    :cond_1
    return-void
.end method

.method static modifiesAlpha(Landroid/animation/Animator;)Z
    .locals 5

    .line 754
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 755
    return v0

    .line 757
    :cond_0
    instance-of v1, p0, Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 758
    check-cast p0, Landroid/animation/ValueAnimator;

    .line 759
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    .line 760
    move v1, v0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 761
    const-string v3, "alpha"

    aget-object v4, p0, v1

    invoke-virtual {v4}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 762
    return v2

    .line 760
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 765
    :cond_2
    goto :goto_2

    :cond_3
    instance-of v1, p0, Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_5

    .line 766
    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p0

    .line 767
    move v1, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 768
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-static {v3}, Landroidx/fragment/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 769
    return v2

    .line 767
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 773
    :cond_5
    :goto_2
    return v0
.end method

.method static modifiesAlpha(Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)Z
    .locals 4

    .line 738
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    instance-of v0, v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 739
    return v1

    .line 740
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    instance-of v0, v0, Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_3

    .line 741
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    check-cast p0, Landroid/view/animation/AnimationSet;

    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object p0

    .line 742
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 743
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/view/animation/AlphaAnimation;

    if-eqz v3, :cond_1

    .line 744
    return v1

    .line 742
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 747
    :cond_2
    return v0

    .line 749
    :cond_3
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-static {p0}, Landroidx/fragment/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result p0

    return p0
.end method

.method private popBackStackImmediate(Ljava/lang/String;II)Z
    .locals 8

    .line 867
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    .line 868
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 870
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    if-gez p2, :cond_0

    if-nez p1, :cond_0

    .line 873
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->peekChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 874
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 876
    return v0

    .line 880
    :cond_0
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    .line 881
    if-eqz p1, :cond_1

    .line 882
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 884
    :try_start_0
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object p3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Landroidx/fragment/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    .line 887
    goto :goto_0

    .line 886
    :catchall_0
    move-exception p1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    throw p1

    .line 890
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 891
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->burpActive()V

    .line 892
    return p1
.end method

.method private postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/collection/ArraySet;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Landroidx/collection/ArraySet<",
            "Landroidx/fragment/app/Fragment;",
            ">;)I"
        }
    .end annotation

    .line 2487
    nop

    .line 2488
    add-int/lit8 v0, p4, -0x1

    move v1, p4

    :goto_0
    if-lt v0, p3, :cond_5

    .line 2489
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/BackStackRecord;

    .line 2490
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2491
    invoke-virtual {v2}, Landroidx/fragment/app/BackStackRecord;->isPostponed()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    .line 2492
    invoke-virtual {v2, p1, v4, p4}, Landroidx/fragment/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2493
    const/4 v4, 0x1

    goto :goto_1

    .line 2492
    :cond_0
    nop

    .line 2493
    move v4, v5

    :goto_1
    if-eqz v4, :cond_4

    .line 2494
    iget-object v4, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 2495
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    .line 2497
    :cond_1
    new-instance v4, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-direct {v4, v2, v3}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;-><init>(Landroidx/fragment/app/BackStackRecord;Z)V

    .line 2499
    iget-object v6, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2500
    invoke-virtual {v2, v4}, Landroidx/fragment/app/BackStackRecord;->setOnStartPostponedListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V

    .line 2503
    if-eqz v3, :cond_2

    .line 2504
    invoke-virtual {v2}, Landroidx/fragment/app/BackStackRecord;->executeOps()V

    goto :goto_2

    .line 2506
    :cond_2
    invoke-virtual {v2, v5}, Landroidx/fragment/app/BackStackRecord;->executePopOps(Z)V

    .line 2510
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 2511
    if-eq v0, v1, :cond_3

    .line 2512
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2513
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2517
    :cond_3
    invoke-direct {p0, p5}, Landroidx/fragment/app/FragmentManagerImpl;->addAddedFragments(Landroidx/collection/ArraySet;)V

    .line 2488
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2520
    :cond_5
    return v1
.end method

.method private removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2346
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2350
    :cond_0
    if-eqz p2, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 2355
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2357
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2358
    nop

    .line 2359
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    .line 2360
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    iget-boolean v3, v3, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    .line 2361
    if-nez v3, :cond_3

    .line 2363
    if-eq v2, v1, :cond_1

    .line 2364
    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/fragment/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2368
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 2369
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2370
    :goto_1
    if-ge v2, v0, :cond_2

    .line 2371
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2372
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    iget-boolean v3, v3, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v3, :cond_2

    .line 2373
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2376
    :cond_2
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2377
    nop

    .line 2378
    add-int/lit8 v1, v2, -0x1

    .line 2359
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2381
    :cond_4
    if-eq v2, v0, :cond_5

    .line 2382
    invoke-direct {p0, p1, p2, v2, v0}, Landroidx/fragment/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2384
    :cond_5
    return-void

    .line 2351
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2347
    :cond_7
    :goto_2
    return-void
.end method

.method public static reverseTransit(I)I
    .locals 3

    .line 3668
    nop

    .line 3669
    const/16 v0, 0x2002

    const/16 v1, 0x1003

    const/16 v2, 0x1001

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    .line 3680
    const/4 v0, 0x0

    goto :goto_0

    .line 3674
    :cond_0
    nop

    .line 3675
    nop

    .line 3680
    move v0, v2

    goto :goto_0

    .line 3677
    :cond_1
    nop

    .line 3680
    move v0, v1

    goto :goto_0

    .line 3671
    :cond_2
    nop

    .line 3672
    nop

    .line 3680
    :goto_0
    return v0
.end method

.method private scheduleCommit()V
    .locals 4

    .line 2142
    monitor-enter p0

    .line 2143
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    .line 2144
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2145
    move v0, v2

    goto :goto_0

    .line 2144
    :cond_0
    nop

    .line 2145
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 2146
    move v1, v2

    goto :goto_1

    .line 2145
    :cond_1
    nop

    .line 2146
    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 2147
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2148
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2150
    :cond_3
    monitor-exit p0

    .line 2151
    return-void

    .line 2150
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)V
    .locals 3

    .line 1276
    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 1279
    :cond_0
    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1280
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 1281
    iget-object p1, p1, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    new-instance v0, Landroidx/fragment/app/FragmentManagerImpl$AnimatorOnHWLayerIfNeededListener;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManagerImpl$AnimatorOnHWLayerIfNeededListener;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 1283
    :cond_1
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-static {v0}, Landroidx/fragment/app/FragmentManagerImpl;->getAnimationListener(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    .line 1287
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1288
    iget-object p1, p1, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    new-instance v1, Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    invoke-direct {v1, p0, v0}, Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1292
    :cond_2
    :goto_0
    return-void

    .line 1277
    :cond_3
    :goto_1
    return-void
.end method

.method private static setRetaining(Landroidx/fragment/app/FragmentManagerNonConfig;)V
    .locals 3

    .line 2823
    if-nez p0, :cond_0

    .line 2824
    return-void

    .line 2826
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 2827
    if-eqz v0, :cond_1

    .line 2828
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2829
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mRetaining:Z

    .line 2830
    goto :goto_0

    .line 2832
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object p0

    .line 2833
    if-eqz p0, :cond_2

    .line 2834
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManagerNonConfig;

    .line 2835
    invoke-static {v0}, Landroidx/fragment/app/FragmentManagerImpl;->setRetaining(Landroidx/fragment/app/FragmentManagerNonConfig;)V

    .line 2836
    goto :goto_1

    .line 2838
    :cond_2
    return-void
.end method

.method static shouldRunOnHWLayer(Landroid/view/View;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)Z
    .locals 3

    .line 777
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 780
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 781
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-nez v1, :cond_1

    .line 782
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 783
    invoke-static {p1}, Landroidx/fragment/app/FragmentManagerImpl;->modifiesAlpha(Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    .line 778
    :cond_2
    :goto_0
    return v0
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .locals 5

    .line 787
    const-string v0, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const-string v0, "FragmentManager"

    const-string v1, "Activity state:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    new-instance v0, Landroidx/core/util/LogWriter;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroidx/core/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 790
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 791
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 793
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    const-string v4, "  "

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v4, v3, v1, v2}, Landroidx/fragment/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 794
    :catch_0
    move-exception v0

    .line 795
    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 796
    :goto_0
    goto :goto_1

    .line 799
    :cond_0
    :try_start_1
    const-string v0, "  "

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 802
    goto :goto_1

    .line 800
    :catch_1
    move-exception v0

    .line 801
    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 804
    :goto_1
    throw p1
.end method

.method public static transitToStyleIndex(IZ)I
    .locals 1

    .line 3692
    nop

    .line 3693
    const/16 v0, 0x1001

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1003

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2002

    if-eq p0, v0, :cond_0

    .line 3704
    const/4 p0, -0x1

    goto :goto_2

    .line 3698
    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, 0x3

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    .line 3699
    :goto_0
    goto :goto_2

    .line 3701
    :cond_2
    if-eqz p1, :cond_3

    const/4 p0, 0x5

    goto :goto_2

    :cond_3
    const/4 p0, 0x6

    goto :goto_2

    .line 3695
    :cond_4
    if-eqz p1, :cond_5

    const/4 p0, 0x1

    goto :goto_1

    :cond_5
    const/4 p0, 0x2

    .line 3696
    :goto_1
    nop

    .line 3704
    :goto_2
    return p0
.end method


# virtual methods
.method addBackStackState(Landroidx/fragment/app/BackStackRecord;)V
    .locals 1

    .line 2748
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2749
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2751
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2752
    return-void
.end method

.method public addFragment(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    .line 1923
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->makeActive(Landroidx/fragment/app/Fragment;)V

    .line 1925
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v0, :cond_4

    .line 1926
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1929
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1930
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1931
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1932
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 1933
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 1934
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1935
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1937
    :cond_1
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_2

    .line 1938
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1940
    :cond_2
    if-eqz p2, :cond_4

    .line 1941
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 1931
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1927
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment already added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1944
    :cond_4
    :goto_0
    return-void
.end method

.method public addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1

    .line 907
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 908
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 910
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    return-void
.end method

.method public allocBackStackIndex(Landroidx/fragment/app/BackStackRecord;)I
    .locals 4

    .line 2154
    monitor-enter p0

    .line 2155
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2165
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2166
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2168
    monitor-exit p0

    return v0

    .line 2156
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 2157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 2159
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2160
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2162
    monitor-exit p0

    return v0

    .line 2170
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public attachController(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 3210
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    .line 3211
    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3212
    iput-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    .line 3213
    iput-object p3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    .line 3214
    return-void

    .line 3210
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public attachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 2012
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_3

    .line 2014
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 2015
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v0, :cond_3

    .line 2016
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2019
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add from attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2021
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2022
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2023
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 2024
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_3

    iget-boolean p1, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz p1, :cond_3

    .line 2025
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_0

    .line 2022
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 2017
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2029
    :cond_3
    :goto_0
    return-void
.end method

.method public beginTransaction()Landroidx/fragment/app/FragmentTransaction;
    .locals 1

    .line 809
    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method completeShowHideFragment(Landroidx/fragment/app/Fragment;)V
    .locals 7

    .line 1725
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 1726
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v0

    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1727
    xor-int/2addr v3, v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransitionStyle()I

    move-result v4

    .line 1726
    invoke-virtual {p0, p1, v0, v3, v4}, Landroidx/fragment/app/FragmentManagerImpl;->loadAnimation(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v0

    .line 1728
    if-eqz v0, :cond_2

    iget-object v3, v0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-eqz v3, :cond_2

    .line 1729
    iget-object v3, v0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1730
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_1

    .line 1731
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1732
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    goto :goto_0

    .line 1734
    :cond_0
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1735
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1736
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1739
    iget-object v5, v0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    new-instance v6, Landroidx/fragment/app/FragmentManagerImpl$4;

    invoke-direct {v6, p0, v3, v4, p1}, Landroidx/fragment/app/FragmentManagerImpl$4;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1749
    goto :goto_0

    .line 1751
    :cond_1
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1753
    :goto_0
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v3, v0}, Landroidx/fragment/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1754
    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_2

    .line 1756
    :cond_2
    if-eqz v0, :cond_3

    .line 1757
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v3, v0}, Landroidx/fragment/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1758
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v4, v0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1759
    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 1761
    :cond_3
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x8

    goto :goto_1

    .line 1764
    :cond_4
    move v0, v2

    :goto_1
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1765
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1766
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 1770
    :cond_5
    :goto_2
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_6

    .line 1771
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1773
    :cond_6
    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1774
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 1775
    return-void
.end method

.method public detachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 1994
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v0, :cond_3

    .line 1996
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 1997
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_3

    .line 1999
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove from detach: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2001
    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2002
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2003
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_2

    .line 2004
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 2006
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    goto :goto_0

    .line 2002
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 2009
    :cond_3
    :goto_0
    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 1

    .line 3236
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3237
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 3238
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3239
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 3308
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3309
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3310
    if-eqz v1, :cond_0

    .line 3311
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3308
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3314
    :cond_1
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 3390
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 3391
    return v1

    .line 3393
    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3394
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 3395
    if-eqz v3, :cond_1

    .line 3396
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3397
    return v2

    .line 3393
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3401
    :cond_2
    return v1
.end method

.method public dispatchCreate()V
    .locals 1

    .line 3230
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3231
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 3232
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3233
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 7

    .line 3326
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 3327
    return v1

    .line 3329
    :cond_0
    nop

    .line 3330
    const/4 v0, 0x0

    .line 3331
    move-object v3, v0

    move v0, v1

    move v4, v0

    :goto_0
    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 3332
    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 3333
    if-eqz v5, :cond_2

    .line 3334
    invoke-virtual {v5, p1, p2}, Landroidx/fragment/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3335
    nop

    .line 3336
    if-nez v3, :cond_1

    .line 3337
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3339
    :cond_1
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3331
    move v4, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3344
    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    .line 3345
    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    .line 3346
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 3347
    if-eqz v3, :cond_4

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 3348
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    .line 3345
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3353
    :cond_6
    iput-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    .line 3355
    return v4
.end method

.method public dispatchDestroy()V
    .locals 1

    .line 3271
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    .line 3272
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    .line 3273
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3274
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3275
    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    .line 3276
    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    .line 3277
    return-void
.end method

.method public dispatchDestroyView()V
    .locals 1

    .line 3267
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3268
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 2

    .line 3317
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3318
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3319
    if-eqz v1, :cond_0

    .line 3320
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performLowMemory()V

    .line 3317
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3323
    :cond_1
    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .locals 2

    .line 3290
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3291
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3292
    if-eqz v1, :cond_0

    .line 3293
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performMultiWindowModeChanged(Z)V

    .line 3290
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3296
    :cond_1
    return-void
.end method

.method dispatchOnFragmentActivityCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3516
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3517
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3518
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3519
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3520
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3523
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3524
    if-eqz p3, :cond_1

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3525
    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentActivityCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 3527
    :cond_2
    goto :goto_0

    .line 3528
    :cond_3
    return-void
.end method

.method dispatchOnFragmentAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3468
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3469
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3470
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3471
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3472
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 3475
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3476
    if-eqz p3, :cond_1

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3477
    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentAttached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    .line 3479
    :cond_2
    goto :goto_0

    .line 3480
    :cond_3
    return-void
.end method

.method dispatchOnFragmentCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3500
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3501
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3502
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3503
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3504
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3507
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3508
    if-eqz p3, :cond_1

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3509
    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 3511
    :cond_2
    goto :goto_0

    .line 3512
    :cond_3
    return-void
.end method

.method dispatchOnFragmentDestroyed(Landroidx/fragment/app/Fragment;Z)V
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3638
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3639
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3640
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3641
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3642
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroidx/fragment/app/Fragment;Z)V

    .line 3645
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3646
    if-eqz p2, :cond_1

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3647
    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDestroyed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3649
    :cond_2
    goto :goto_0

    .line 3650
    :cond_3
    return-void
.end method

.method dispatchOnFragmentDetached(Landroidx/fragment/app/Fragment;Z)V
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3653
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3654
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3655
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3656
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3657
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroidx/fragment/app/Fragment;Z)V

    .line 3660
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3661
    if-eqz p2, :cond_1

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3662
    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDetached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3664
    :cond_2
    goto :goto_0

    .line 3665
    :cond_3
    return-void
.end method

.method dispatchOnFragmentPaused(Landroidx/fragment/app/Fragment;Z)V
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3577
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3578
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3579
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3580
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3581
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroidx/fragment/app/Fragment;Z)V

    .line 3584
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3585
    if-eqz p2, :cond_1

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3586
    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPaused(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3588
    :cond_2
    goto :goto_0

    .line 3589
    :cond_3
    return-void
.end method

.method dispatchOnFragmentPreAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3452
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3453
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3454
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3455
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3456
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 3459
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3460
    if-eqz p3, :cond_1

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3461
    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreAttached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    .line 3463
    :cond_2
    goto :goto_0

    .line 3464
    :cond_3
    return-void
.end method

.method dispatchOnFragmentPreCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3484
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3485
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3486
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3487
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3488
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3491
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3492
    if-eqz p3, :cond_1

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3493
    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 3495
    :cond_2
    goto :goto_0

    .line 3496
    :cond_3
    return-void
.end method

.method dispatchOnFragmentResumed(Landroidx/fragment/app/Fragment;Z)V
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3562
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3563
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3564
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3565
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3566
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroidx/fragment/app/Fragment;Z)V

    .line 3569
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3570
    if-eqz p2, :cond_1

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3571
    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentResumed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3573
    :cond_2
    goto :goto_0

    .line 3574
    :cond_3
    return-void
.end method

.method dispatchOnFragmentSaveInstanceState(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3608
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3609
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3610
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3611
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3612
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3615
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3616
    if-eqz p3, :cond_1

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3617
    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentSaveInstanceState(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 3619
    :cond_2
    goto :goto_0

    .line 3620
    :cond_3
    return-void
.end method

.method dispatchOnFragmentStarted(Landroidx/fragment/app/Fragment;Z)V
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3547
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3548
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3549
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3550
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3551
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroidx/fragment/app/Fragment;Z)V

    .line 3554
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3555
    if-eqz p2, :cond_1

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3556
    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStarted(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3558
    :cond_2
    goto :goto_0

    .line 3559
    :cond_3
    return-void
.end method

.method dispatchOnFragmentStopped(Landroidx/fragment/app/Fragment;Z)V
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3592
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3593
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3594
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3595
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3596
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroidx/fragment/app/Fragment;Z)V

    .line 3599
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3600
    if-eqz p2, :cond_1

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3601
    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStopped(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3603
    :cond_2
    goto :goto_0

    .line 3604
    :cond_3
    return-void
.end method

.method dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3532
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3533
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3534
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3535
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3536
    invoke-virtual {v0, p1, p2, p3, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 3539
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3540
    if-eqz p4, :cond_1

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3541
    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2, p3}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    .line 3543
    :cond_2
    goto :goto_0

    .line 3544
    :cond_3
    return-void
.end method

.method dispatchOnFragmentViewDestroyed(Landroidx/fragment/app/Fragment;Z)V
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3623
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3624
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3625
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3626
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3627
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroidx/fragment/app/Fragment;Z)V

    .line 3630
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3631
    if-eqz p2, :cond_1

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3632
    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewDestroyed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3634
    :cond_2
    goto :goto_0

    .line 3635
    :cond_3
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 3375
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 3376
    return v1

    .line 3378
    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3379
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 3380
    if-eqz v3, :cond_1

    .line 3381
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3382
    return v2

    .line 3378
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3386
    :cond_2
    return v1
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2

    .line 3405
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 3406
    return-void

    .line 3408
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3409
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3410
    if-eqz v1, :cond_1

    .line 3411
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3408
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3414
    :cond_2
    return-void
.end method

.method public dispatchPause()V
    .locals 1

    .line 3254
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3255
    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .locals 2

    .line 3299
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3300
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3301
    if-eqz v1, :cond_0

    .line 3302
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performPictureInPictureModeChanged(Z)V

    .line 3299
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3305
    :cond_1
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 3359
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 3360
    return v1

    .line 3362
    :cond_0
    nop

    .line 3363
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 3364
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 3365
    if-eqz v3, :cond_1

    .line 3366
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3367
    nop

    .line 3363
    move v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3371
    :cond_2
    return v0
.end method

.method public dispatchReallyStop()V
    .locals 1

    .line 3263
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3264
    return-void
.end method

.method public dispatchResume()V
    .locals 1

    .line 3248
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3249
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 3250
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3251
    return-void
.end method

.method public dispatchStart()V
    .locals 1

    .line 3242
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3243
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 3244
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3245
    return-void
.end method

.method public dispatchStop()V
    .locals 1

    .line 3258
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 3259
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3260
    return-void
.end method

.method doPendingDeferredStart()V
    .locals 1

    .line 2733
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-eqz v0, :cond_0

    .line 2734
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 2735
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 2737
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1023
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1024
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1025
    if-lez v1, :cond_1

    .line 1026
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Fragments in "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1027
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1028
    const-string v3, ":"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1029
    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1030
    iget-object v4, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 1031
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1032
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1033
    if-eqz v4, :cond_0

    .line 1034
    invoke-virtual {v4, v0, p2, p3, p4}, Landroidx/fragment/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1029
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1040
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1041
    if-lez v1, :cond_2

    .line 1042
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Added Fragments:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    .line 1044
    iget-object v4, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 1045
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1046
    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1048
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1053
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 1054
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1055
    if-lez v1, :cond_3

    .line 1056
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Fragments Created Menus:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_3

    .line 1058
    iget-object v4, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 1059
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1060
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1065
    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 1066
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1067
    if-lez v1, :cond_4

    .line 1068
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Back Stack:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    move v3, v2

    :goto_3
    if-ge v3, v1, :cond_4

    .line 1070
    iget-object v4, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/BackStackRecord;

    .line 1071
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1072
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroidx/fragment/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {v4, v0, p2, p3, p4}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1069
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1078
    :cond_4
    monitor-enter p0

    .line 1079
    :try_start_0
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    .line 1080
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1081
    if-lez p2, :cond_5

    .line 1082
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack Indices:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    move p4, v2

    :goto_4
    if-ge p4, p2, :cond_5

    .line 1084
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    .line 1085
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 1086
    const-string v1, ": "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1083
    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    .line 1091
    :cond_5
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz p2, :cond_6

    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_6

    .line 1092
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mAvailBackStackIndices: "

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1093
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1095
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1097
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz p2, :cond_7

    .line 1098
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1099
    if-lez p2, :cond_7

    .line 1100
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Pending Actions:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1101
    :goto_5
    if-ge v2, p2, :cond_7

    .line 1102
    iget-object p4, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;

    .line 1103
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1104
    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1101
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1109
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1111
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1112
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_8

    .line 1113
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1115
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 1116
    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1117
    const-string p2, " mStopped="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1118
    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1119
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz p2, :cond_9

    .line 1120
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1121
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1123
    :cond_9
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 1124
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNoTransactionsBecause="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1125
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    :cond_a
    return-void

    .line 1095
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public enqueueAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V
    .locals 1

    .line 2116
    if-nez p2, :cond_0

    .line 2117
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    .line 2119
    :cond_0
    monitor-enter p0

    .line 2120
    :try_start_0
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_1

    goto :goto_0

    .line 2127
    :cond_1
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez p2, :cond_2

    .line 2128
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    .line 2130
    :cond_2
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2131
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->scheduleCommit()V

    .line 2132
    monitor-exit p0

    .line 2133
    return-void

    .line 2121
    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 2123
    monitor-exit p0

    return-void

    .line 2125
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2132
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method ensureInflatedFragmentView(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1699
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    if-nez v0, :cond_2

    .line 1700
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 1702
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1703
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1704
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1705
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1706
    :cond_0
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1707
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v2, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 1709
    :cond_1
    iput-object v2, p1, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1712
    :cond_2
    :goto_0
    return-void
.end method

.method public execPendingActions()Z
    .locals 4

    .line 2277
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 2279
    nop

    .line 2280
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2281
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2283
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2285
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    .line 2286
    nop

    .line 2287
    nop

    .line 2280
    move v1, v0

    goto :goto_0

    .line 2285
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    throw v0

    .line 2290
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 2291
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->burpActive()V

    .line 2293
    return v1
.end method

.method public execSingleAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V
    .locals 1

    .line 2245
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 2247
    :cond_0
    return-void

    .line 2249
    :cond_1
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 2250
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-interface {p1, p2, v0}, Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2251
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2253
    :try_start_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2255
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    .line 2256
    goto :goto_0

    .line 2255
    :catchall_0
    move-exception p1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    throw p1

    .line 2259
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 2260
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->burpActive()V

    .line 2261
    return-void
.end method

.method public executePendingTransactions()Z
    .locals 1

    .line 814
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    .line 815
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->forcePostponedTransactions()V

    .line 816
    return v0
.end method

.method public findFragmentById(I)Landroidx/fragment/app/Fragment;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2035
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2036
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2037
    if-eqz v1, :cond_0

    iget v2, v1, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_0

    .line 2038
    return-object v1

    .line 2035
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2041
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    .line 2043
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 2044
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2045
    if-eqz v1, :cond_2

    iget v2, v1, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_2

    .line 2046
    return-object v1

    .line 2043
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2050
    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2056
    if-eqz p1, :cond_1

    .line 2058
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2059
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2060
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2061
    return-object v1

    .line 2058
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2065
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 2067
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 2068
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2069
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2070
    return-object v1

    .line 2067
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2074
    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 2078
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2079
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2080
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2081
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2082
    return-object v1

    .line 2079
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2086
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public freeBackStackIndex(I)V
    .locals 3

    .line 2199
    monitor-enter p0

    .line 2200
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2201
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 2204
    :cond_0
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2206
    monitor-exit p0

    .line 2207
    return-void

    .line 2206
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getActiveFragmentCount()I
    .locals 1

    .line 978
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 979
    const/4 v0, 0x0

    return v0

    .line 981
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method getActiveFragments()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 961
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 962
    const/4 v0, 0x0

    return-object v0

    .line 964
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 965
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 966
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 967
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 969
    :cond_1
    return-object v1
.end method

.method public getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;
    .locals 1

    .line 902
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentManager$BackStackEntry;

    return-object p1
.end method

.method public getBackStackEntryCount()I
    .locals 1

    .line 897
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 932
    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 933
    if-ne p1, v0, :cond_0

    .line 934
    const/4 p1, 0x0

    return-object p1

    .line 936
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 937
    if-nez v0, :cond_1

    .line 938
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment no longer exists for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": index "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 941
    :cond_1
    return-object v0
.end method

.method public getFragments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 946
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 949
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 950
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 951
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .locals 0

    .line 3809
    return-object p0
.end method

.method public getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3429
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public hideFragment(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1968
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    .line 1970
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1973
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1975
    :cond_1
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .line 1000
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    return v0
.end method

.method isStateAtLeast(I)Z
    .locals 1

    .line 1314
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isStateSaved()Z
    .locals 1

    .line 2105
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

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

.method loadAnimation(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    .locals 5

    .line 1160
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v0

    .line 1161
    invoke-virtual {p1, p2, p3, v0}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1162
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1163
    new-instance p1, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {p1, v1, v2}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;Landroidx/fragment/app/FragmentManagerImpl$1;)V

    return-object p1

    .line 1166
    :cond_0
    invoke-virtual {p1, p2, p3, v0}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p1

    .line 1167
    if-eqz p1, :cond_1

    .line 1168
    new-instance p2, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {p2, p1, v2}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;Landroidx/fragment/app/FragmentManagerImpl$1;)V

    return-object p2

    .line 1171
    :cond_1
    if-eqz v0, :cond_6

    .line 1172
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    .line 1173
    const-string v1, "anim"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 1174
    const/4 v1, 0x0

    .line 1175
    if-eqz p1, :cond_3

    .line 1178
    :try_start_0
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 1179
    if-eqz v3, :cond_2

    .line 1180
    new-instance v4, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v4, v3, v2}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;Landroidx/fragment/app/FragmentManagerImpl$1;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 1183
    :cond_2
    const/4 v1, 0x1

    .line 1188
    goto :goto_0

    .line 1186
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1184
    :catch_1
    move-exception p1

    .line 1185
    throw p1

    .line 1190
    :cond_3
    :goto_0
    if-nez v1, :cond_6

    .line 1193
    :try_start_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 1194
    if-eqz v1, :cond_4

    .line 1195
    new-instance v3, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v3, v1, v2}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;Landroidx/fragment/app/FragmentManagerImpl$1;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v3

    .line 1207
    :cond_4
    goto :goto_1

    .line 1197
    :catch_2
    move-exception v1

    .line 1198
    if-nez p1, :cond_5

    .line 1203
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 1204
    if-eqz p1, :cond_6

    .line 1205
    new-instance p2, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {p2, p1, v2}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;Landroidx/fragment/app/FragmentManagerImpl$1;)V

    return-object p2

    .line 1200
    :cond_5
    throw v1

    .line 1211
    :cond_6
    :goto_1
    if-nez p2, :cond_7

    .line 1212
    return-object v2

    .line 1215
    :cond_7
    invoke-static {p2, p3}, Landroidx/fragment/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result p1

    .line 1216
    if-gez p1, :cond_8

    .line 1217
    return-object v2

    .line 1220
    :cond_8
    const p2, 0x3f79999a    # 0.975f

    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    packed-switch p1, :pswitch_data_0

    .line 1236
    if-nez p4, :cond_9

    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->onHasWindowAnimations()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1237
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->onGetWindowAnimations()I

    move-result p4

    goto :goto_2

    .line 1232
    :pswitch_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, p3}, Landroidx/fragment/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object p1

    return-object p1

    .line 1230
    :pswitch_1
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3, v0}, Landroidx/fragment/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object p1

    return-object p1

    .line 1228
    :pswitch_2
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x3f89999a    # 1.075f

    invoke-static {p1, v0, p2, v0, p3}, Landroidx/fragment/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object p1

    return-object p1

    .line 1226
    :pswitch_3
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, v0, p3, v0}, Landroidx/fragment/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object p1

    return-object p1

    .line 1224
    :pswitch_4
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, p2, v0, p3}, Landroidx/fragment/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object p1

    return-object p1

    .line 1222
    :pswitch_5
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x3f900000    # 1.125f

    invoke-static {p1, p2, v0, p3, v0}, Landroidx/fragment/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object p1

    return-object p1

    .line 1239
    :cond_9
    :goto_2
    if-nez p4, :cond_a

    .line 1240
    return-object v2

    .line 1253
    :cond_a
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method makeActive(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1897
    iget v0, p1, Landroidx/fragment/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 1898
    return-void

    .line 1901
    :cond_0
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->setIndex(ILandroidx/fragment/app/Fragment;)V

    .line 1902
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 1903
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    .line 1905
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1906
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Allocated fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    :cond_2
    return-void
.end method

.method makeInactive(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1910
    iget v0, p1, Landroidx/fragment/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 1911
    return-void

    .line 1914
    :cond_0
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroidx/fragment/app/Fragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1919
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->initState()V

    .line 1920
    return-void
.end method

.method moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V
    .locals 10

    .line 1784
    if-nez p1, :cond_0

    .line 1785
    return-void

    .line 1787
    :cond_0
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    .line 1788
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 1789
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1790
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 1792
    :cond_1
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1795
    :cond_2
    :goto_0
    move v6, v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v7

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransitionStyle()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1797
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1799
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentUnder(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 1800
    if-eqz v0, :cond_3

    .line 1801
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1803
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1804
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1805
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 1806
    if-ge v4, v0, :cond_3

    .line 1807
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1808
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1811
    :cond_3
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 1813
    iget v0, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 1814
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget v4, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1816
    :cond_4
    iput v1, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 1817
    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    .line 1819
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v0

    .line 1820
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransitionStyle()I

    move-result v1

    .line 1819
    invoke-virtual {p0, p1, v0, v3, v1}, Landroidx/fragment/app/FragmentManagerImpl;->loadAnimation(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v0

    .line 1821
    if-eqz v0, :cond_6

    .line 1822
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1, v0}, Landroidx/fragment/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1823
    iget-object v1, v0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_5

    .line 1824
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 1826
    :cond_5
    iget-object v1, v0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1827
    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1832
    :cond_6
    :goto_1
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_7

    .line 1833
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->completeShowHideFragment(Landroidx/fragment/app/Fragment;)V

    .line 1835
    :cond_7
    return-void
.end method

.method moveToState(IZ)V
    .locals 3

    .line 1847
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1848
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1851
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    if-ne p1, p2, :cond_2

    .line 1852
    return-void

    .line 1855
    :cond_2
    iput p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    .line 1857
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz p1, :cond_7

    .line 1860
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1861
    const/4 p2, 0x0

    move v0, p2

    :goto_1
    if-ge v0, p1, :cond_3

    .line 1862
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 1863
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    .line 1861
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1868
    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 1869
    move v0, p2

    :goto_2
    if-ge v0, p1, :cond_6

    .line 1870
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 1871
    if-eqz v1, :cond_5

    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-nez v2, :cond_4

    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_5

    :cond_4
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-nez v2, :cond_5

    .line 1872
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    .line 1869
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1876
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1878
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz p1, :cond_7

    iget p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    .line 1879
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 1880
    iput-boolean p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1883
    :cond_7
    return-void
.end method

.method moveToState(Landroidx/fragment/app/Fragment;)V
    .locals 6

    .line 1695
    iget v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1696
    return-void
.end method

.method moveToState(Landroidx/fragment/app/Fragment;IIIZ)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    .line 1321
    iget-boolean v0, v8, Landroidx/fragment/app/Fragment;->mAdded:Z

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v8, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1324
    :cond_0
    move/from16 v0, p2

    goto :goto_1

    .line 1321
    :cond_1
    :goto_0
    move/from16 v0, p2

    if-le v0, v9, :cond_2

    .line 1322
    nop

    .line 1324
    move v0, v9

    :cond_2
    :goto_1
    iget-boolean v1, v8, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v1, :cond_4

    iget v1, v8, Landroidx/fragment/app/Fragment;->mState:I

    if-le v0, v1, :cond_4

    .line 1325
    iget v0, v8, Landroidx/fragment/app/Fragment;->mState:I

    if-nez v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1327
    nop

    .line 1335
    move v0, v9

    goto :goto_2

    .line 1330
    :cond_3
    iget v0, v8, Landroidx/fragment/app/Fragment;->mState:I

    .line 1335
    :cond_4
    :goto_2
    iget-boolean v1, v8, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-eqz v1, :cond_5

    iget v1, v8, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v1, v10, :cond_5

    if-le v0, v11, :cond_5

    .line 1336
    nop

    .line 1338
    move v0, v11

    :cond_5
    iget v1, v8, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-gt v1, v0, :cond_23

    .line 1342
    iget-boolean v1, v8, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v8, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-nez v1, :cond_6

    .line 1343
    return-void

    .line 1345
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1350
    :cond_7
    invoke-virtual {v8, v13}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1351
    invoke-virtual {v8, v13}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1352
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, v8

    invoke-virtual/range {v1 .. v6}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1354
    :cond_8
    iget v1, v8, Landroidx/fragment/app/Fragment;->mState:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_11

    .line 1356
    :pswitch_0
    if-lez v0, :cond_13

    .line 1357
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_9

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveto CREATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_9
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v1, :cond_c

    .line 1359
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v2, v7, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1360
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1359
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1361
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:view_state"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1363
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:target_state"

    invoke-virtual {v7, v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    iput-object v1, v8, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 1365
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_a

    .line 1366
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:target_req_state"

    invoke-virtual {v1, v2, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v8, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    .line 1369
    :cond_a
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    .line 1370
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v8, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 1371
    iput-object v13, v8, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    goto :goto_3

    .line 1373
    :cond_b
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v1, v2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v8, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 1376
    :goto_3
    iget-boolean v1, v8, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_c

    .line 1377
    iput-boolean v9, v8, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 1378
    if-le v0, v11, :cond_c

    .line 1379
    nop

    .line 1384
    move v0, v11

    :cond_c
    iget-object v1, v7, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iput-object v1, v8, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 1385
    iget-object v1, v7, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    iput-object v1, v8, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 1386
    iget-object v1, v7, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_d

    iget-object v1, v7, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    goto :goto_4

    :cond_d
    iget-object v1, v7, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 1387
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getFragmentManagerImpl()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v1

    :goto_4
    iput-object v1, v8, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 1391
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_f

    .line 1392
    iget-object v1, v7, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v2, v8, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget v2, v2, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v8, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-ne v1, v2, :cond_e

    .line 1397
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget v1, v1, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v1, v9, :cond_f

    .line 1398
    iget-object v2, v8, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_5

    .line 1393
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declared target fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " that does not belong to this FragmentManager!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1402
    :cond_f
    :goto_5
    iget-object v1, v7, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7, v8, v1, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 1403
    iput-boolean v14, v8, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1404
    iget-object v1, v7, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 1405
    iget-boolean v1, v8, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v1, :cond_12

    .line 1409
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_10

    .line 1410
    iget-object v1, v7, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1, v8}, Landroidx/fragment/app/FragmentHostCallback;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_6

    .line 1412
    :cond_10
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v8}, Landroidx/fragment/app/Fragment;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    .line 1414
    :goto_6
    iget-object v1, v7, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7, v8, v1, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 1416
    iget-boolean v1, v8, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    if-nez v1, :cond_11

    .line 1417
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v1, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1418
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v1}, Landroidx/fragment/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 1419
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v1, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_7

    .line 1421
    :cond_11
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v1}, Landroidx/fragment/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 1422
    iput v9, v8, Landroidx/fragment/app/Fragment;->mState:I

    .line 1424
    :goto_7
    iput-boolean v14, v8, Landroidx/fragment/app/Fragment;->mRetaining:Z

    goto :goto_8

    .line 1406
    :cond_12
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1431
    :cond_13
    :goto_8
    :pswitch_1
    move v1, v0

    invoke-virtual/range {p0 .. p1}, Landroidx/fragment/app/FragmentManagerImpl;->ensureInflatedFragmentView(Landroidx/fragment/app/Fragment;)V

    .line 1433
    if-le v1, v9, :cond_1e

    .line 1434
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_14

    const-string v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :cond_14
    iget-boolean v0, v8, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-nez v0, :cond_1c

    .line 1436
    nop

    .line 1437
    iget v0, v8, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-eqz v0, :cond_16

    .line 1438
    iget v0, v8, Landroidx/fragment/app/Fragment;->mContainerId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_15

    .line 1439
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for a container view with no id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v0}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1444
    :cond_15
    iget-object v0, v7, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    iget v2, v8, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    .line 1445
    if-nez v2, :cond_17

    iget-boolean v0, v8, Landroidx/fragment/app/Fragment;->mRestored:Z

    if-nez v0, :cond_17

    .line 1448
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, v8, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1451
    goto :goto_9

    .line 1449
    :catch_0
    move-exception v0

    .line 1450
    const-string v0, "unknown"

    .line 1452
    :goto_9
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No view found for id 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 1454
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for fragment "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1452
    invoke-direct {v7, v3}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto :goto_a

    .line 1459
    :cond_16
    move-object v2, v13

    :cond_17
    :goto_a
    iput-object v2, v8, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1460
    iget-object v0, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v0}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v3, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v0, v2, v3}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 1462
    iget-object v0, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 1463
    iget-object v0, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iput-object v0, v8, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1464
    iget-object v0, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v14}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1465
    if-eqz v2, :cond_18

    .line 1466
    iget-object v0, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1468
    :cond_18
    iget-boolean v0, v8, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_19

    .line 1469
    iget-object v0, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1471
    :cond_19
    iget-object v0, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v0, v2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1472
    iget-object v0, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v0, v2, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 1476
    iget-object v0, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, v8, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    goto :goto_b

    :cond_1a
    move v9, v14

    :goto_b
    iput-boolean v9, v8, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_c

    .line 1479
    :cond_1b
    iput-object v13, v8, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1483
    :cond_1c
    :goto_c
    iget-object v0, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v0}, Landroidx/fragment/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 1484
    iget-object v0, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v0, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1485
    iget-object v0, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1d

    .line 1486
    iget-object v0, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v0}, Landroidx/fragment/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 1488
    :cond_1d
    iput-object v13, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1492
    :cond_1e
    move v0, v1

    :pswitch_2
    if-le v0, v12, :cond_1f

    .line 1493
    iput v11, v8, Landroidx/fragment/app/Fragment;->mState:I

    .line 1497
    :cond_1f
    :pswitch_3
    if-le v0, v11, :cond_21

    .line 1498
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_20

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveto STARTED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->performStart()V

    .line 1500
    invoke-virtual {v7, v8, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroidx/fragment/app/Fragment;Z)V

    .line 1504
    :cond_21
    :pswitch_4
    if-le v0, v10, :cond_37

    .line 1505
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_22

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveto RESUMED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->performResume()V

    .line 1507
    invoke-virtual {v7, v8, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroidx/fragment/app/Fragment;Z)V

    .line 1508
    iput-object v13, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1509
    iput-object v13, v8, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_11

    .line 1512
    :cond_23
    iget v1, v8, Landroidx/fragment/app/Fragment;->mState:I

    if-le v1, v0, :cond_37

    .line 1513
    iget v1, v8, Landroidx/fragment/app/Fragment;->mState:I

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_11

    .line 1515
    :pswitch_5
    const/4 v1, 0x5

    if-ge v0, v1, :cond_25

    .line 1516
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_24

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movefrom RESUMED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->performPause()V

    .line 1518
    invoke-virtual {v7, v8, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroidx/fragment/app/Fragment;Z)V

    .line 1522
    :cond_25
    :pswitch_6
    if-ge v0, v10, :cond_27

    .line 1523
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_26

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movefrom STARTED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->performStop()V

    .line 1525
    invoke-virtual {v7, v8, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroidx/fragment/app/Fragment;Z)V

    .line 1529
    :cond_27
    :pswitch_7
    if-ge v0, v11, :cond_29

    .line 1530
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_28

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movefrom STOPPED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->performReallyStop()V

    .line 1535
    :cond_29
    :pswitch_8
    if-ge v0, v12, :cond_2f

    .line 1536
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_2a

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    :cond_2a
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2b

    .line 1540
    iget-object v1, v7, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1, v8}, Landroidx/fragment/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v1, :cond_2b

    .line 1541
    invoke-virtual/range {p0 .. p1}, Landroidx/fragment/app/FragmentManagerImpl;->saveFragmentViewState(Landroidx/fragment/app/Fragment;)V

    .line 1544
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->performDestroyView()V

    .line 1545
    invoke-virtual {v7, v8, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroidx/fragment/app/Fragment;Z)V

    .line 1546
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2e

    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2e

    .line 1548
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1549
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1550
    nop

    .line 1551
    iget v1, v7, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v2, 0x0

    if-lez v1, :cond_2c

    iget-boolean v1, v7, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v1, :cond_2c

    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1552
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2c

    iget v1, v8, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2c

    .line 1554
    move/from16 v1, p3

    move/from16 v3, p4

    invoke-virtual {v7, v8, v1, v14, v3}, Landroidx/fragment/app/FragmentManagerImpl;->loadAnimation(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v1

    goto :goto_d

    .line 1557
    :cond_2c
    move-object v1, v13

    :goto_d
    iput v2, v8, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 1558
    if-eqz v1, :cond_2d

    .line 1559
    invoke-direct {v7, v8, v1, v0}, Landroidx/fragment/app/FragmentManagerImpl;->animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;I)V

    .line 1561
    :cond_2d
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1563
    :cond_2e
    iput-object v13, v8, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1564
    iput-object v13, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1567
    iput-object v13, v8, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 1568
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v13}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 1569
    iput-object v13, v8, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1570
    iput-boolean v14, v8, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 1574
    :cond_2f
    :pswitch_9
    if-ge v0, v9, :cond_37

    .line 1575
    iget-boolean v1, v7, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v1, :cond_31

    .line 1582
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 1583
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v1

    .line 1584
    invoke-virtual {v8, v13}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1585
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1586
    goto :goto_e

    :cond_30
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 1587
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    .line 1588
    invoke-virtual {v8, v13}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1589
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 1592
    :cond_31
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_36

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_32

    goto :goto_10

    .line 1600
    :cond_32
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_33

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movefrom CREATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :cond_33
    iget-boolean v1, v8, Landroidx/fragment/app/Fragment;->mRetaining:Z

    if-nez v1, :cond_34

    .line 1602
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->performDestroy()V

    .line 1603
    invoke-virtual {v7, v8, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroidx/fragment/app/Fragment;Z)V

    goto :goto_f

    .line 1605
    :cond_34
    iput v14, v8, Landroidx/fragment/app/Fragment;->mState:I

    .line 1608
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->performDetach()V

    .line 1609
    invoke-virtual {v7, v8, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroidx/fragment/app/Fragment;Z)V

    .line 1610
    if-nez p5, :cond_37

    .line 1611
    iget-boolean v1, v8, Landroidx/fragment/app/Fragment;->mRetaining:Z

    if-nez v1, :cond_35

    .line 1612
    invoke-virtual/range {p0 .. p1}, Landroidx/fragment/app/FragmentManagerImpl;->makeInactive(Landroidx/fragment/app/Fragment;)V

    goto :goto_11

    .line 1614
    :cond_35
    iput-object v13, v8, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 1615
    iput-object v13, v8, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 1616
    iput-object v13, v8, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    goto :goto_11

    .line 1597
    :cond_36
    :goto_10
    invoke-virtual {v8, v0}, Landroidx/fragment/app/Fragment;->setStateAfterAnimating(I)V

    .line 1598
    goto :goto_12

    .line 1624
    :cond_37
    :goto_11
    move v9, v0

    :goto_12
    iget v0, v8, Landroidx/fragment/app/Fragment;->mState:I

    if-eq v0, v9, :cond_38

    .line 1625
    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveToState: Fragment state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not updated inline; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "expected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Landroidx/fragment/app/Fragment;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    iput v9, v8, Landroidx/fragment/app/Fragment;->mState:I

    .line 1629
    :cond_38
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .locals 3

    .line 3217
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    .line 3218
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3219
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 3220
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3221
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3222
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 3223
    if-eqz v2, :cond_0

    .line 3224
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->noteStateNotSaved()V

    .line 3221
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3227
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p3

    .line 3709
    move-object/from16 v2, p4

    const-string v3, "fragment"

    move-object v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 3710
    return-object v4

    .line 3713
    :cond_0
    const-string v3, "class"

    invoke-interface {v2, v4, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3714
    sget-object v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentTag;->Fragment:[I

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 3715
    const/4 v6, 0x0

    if-nez v3, :cond_1

    .line 3716
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3718
    :cond_1
    move-object v7, v3

    const/4 v3, -0x1

    const/4 v8, 0x1

    invoke-virtual {v5, v8, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 3719
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3720
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 3722
    iget-object v5, v0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7}, Landroidx/fragment/app/Fragment;->isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3725
    return-object v4

    .line 3728
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    nop

    .line 3729
    :cond_3
    if-ne v6, v3, :cond_5

    if-ne v9, v3, :cond_5

    if-eqz v10, :cond_4

    goto :goto_0

    .line 3730
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3737
    :cond_5
    :goto_0
    if-eq v9, v3, :cond_6

    invoke-virtual {v0, v9}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v5

    goto :goto_1

    .line 3738
    :cond_6
    move-object v5, v4

    :goto_1
    if-nez v5, :cond_7

    if-eqz v10, :cond_7

    .line 3739
    invoke-virtual {v0, v10}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    .line 3741
    :cond_7
    if-nez v5, :cond_8

    if-eq v6, v3, :cond_8

    .line 3742
    invoke-virtual {v0, v6}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v5

    .line 3745
    :cond_8
    sget-boolean v3, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_9

    const-string v3, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onCreateView: id=0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3746
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " fname="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " existing="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3745
    invoke-static {v3, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    :cond_9
    if-nez v5, :cond_b

    .line 3749
    iget-object v3, v0, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {v3, v1, v7, v4}, Landroidx/fragment/app/FragmentContainer;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 3750
    iput-boolean v8, v1, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 3751
    if-eqz v9, :cond_a

    move v3, v9

    goto :goto_2

    :cond_a
    move v3, v6

    :goto_2
    iput v3, v1, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 3752
    iput v6, v1, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 3753
    iput-object v10, v1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 3754
    iput-boolean v8, v1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 3755
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 3756
    iget-object v3, v0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3757
    iget-object v3, v0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v2, v4}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 3758
    invoke-virtual {v0, v1, v8}, Landroidx/fragment/app/FragmentManagerImpl;->addFragment(Landroidx/fragment/app/Fragment;Z)V

    .line 3784
    move-object v6, v1

    goto :goto_3

    .line 3760
    :cond_b
    iget-boolean v1, v5, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-nez v1, :cond_11

    .line 3770
    iput-boolean v8, v5, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 3771
    iget-object v1, v0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iput-object v1, v5, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3775
    iget-boolean v1, v5, Landroidx/fragment/app/Fragment;->mRetaining:Z

    if-nez v1, :cond_c

    .line 3776
    iget-object v1, v0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, v5, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v5, v1, v2, v3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 3784
    :cond_c
    move-object v6, v5

    :goto_3
    iget v1, v0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    if-ge v1, v8, :cond_d

    iget-boolean v1, v6, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v1, :cond_d

    .line 3785
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_4

    .line 3787
    :cond_d
    invoke-virtual {v0, v6}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;)V

    .line 3790
    :goto_4
    iget-object v0, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 3794
    if-eqz v9, :cond_e

    .line 3795
    iget-object v0, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    .line 3797
    :cond_e
    iget-object v0, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    .line 3798
    iget-object v0, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3800
    :cond_f
    iget-object v0, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    return-object v0

    .line 3791
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3763
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Duplicate id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3764
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", or parent id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3765
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with another fragment for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 3805
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/FragmentManagerImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public performPendingDeferredStart(Landroidx/fragment/app/Fragment;)V
    .locals 7

    .line 1257
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_1

    .line 1258
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_0

    .line 1260
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 1261
    return-void

    .line 1263
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 1264
    iget v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1266
    :cond_1
    return-void
.end method

.method public popBackStack()V
    .locals 4

    .line 821
    new-instance v0, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, p0, v2, v3, v1}, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->enqueueAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 822
    return-void
.end method

.method public popBackStack(II)V
    .locals 2

    .line 843
    if-ltz p1, :cond_0

    .line 846
    new-instance v0, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->enqueueAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 847
    return-void

    .line 844
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 832
    new-instance v0, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p1, v1, p2}, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->enqueueAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 833
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 3

    .line 826
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    .line 827
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .locals 2

    .line 851
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    .line 852
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    .line 853
    if-ltz p1, :cond_0

    .line 856
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroidx/fragment/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result p1

    return p1

    .line 854
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 837
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    .line 838
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroidx/fragment/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .line 2757
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2758
    return v1

    .line 2760
    :cond_0
    const/4 v0, 0x1

    if-nez p3, :cond_2

    if-gez p4, :cond_2

    and-int/lit8 v2, p5, 0x1

    if-nez v2, :cond_2

    .line 2761
    iget-object p3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    .line 2762
    if-gez p3, :cond_1

    .line 2763
    return v1

    .line 2765
    :cond_1
    iget-object p4, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2766
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2767
    goto/16 :goto_6

    .line 2768
    :cond_2
    nop

    .line 2769
    if-nez p3, :cond_4

    if-ltz p4, :cond_3

    goto :goto_0

    .line 2800
    :cond_3
    const/4 p3, -0x1

    move v2, p3

    goto :goto_4

    .line 2772
    :cond_4
    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .line 2773
    :goto_1
    if-ltz v2, :cond_7

    .line 2774
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    .line 2775
    if-eqz p3, :cond_5

    invoke-virtual {v3}, Landroidx/fragment/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2776
    goto :goto_2

    .line 2778
    :cond_5
    if-ltz p4, :cond_6

    iget v3, v3, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ne p4, v3, :cond_6

    .line 2779
    goto :goto_2

    .line 2781
    :cond_6
    add-int/lit8 v2, v2, -0x1

    .line 2782
    goto :goto_1

    .line 2783
    :cond_7
    :goto_2
    if-gez v2, :cond_8

    .line 2784
    return v1

    .line 2786
    :cond_8
    and-int/2addr p5, v0

    if-eqz p5, :cond_b

    .line 2787
    add-int/lit8 v2, v2, -0x1

    .line 2789
    :goto_3
    if-ltz v2, :cond_b

    .line 2790
    iget-object p5, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/fragment/app/BackStackRecord;

    .line 2791
    if-eqz p3, :cond_9

    invoke-virtual {p5}, Landroidx/fragment/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    if-ltz p4, :cond_b

    iget p5, p5, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ne p4, p5, :cond_b

    .line 2793
    :cond_a
    add-int/lit8 v2, v2, -0x1

    .line 2794
    goto :goto_3

    .line 2800
    :cond_b
    :goto_4
    iget-object p3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    if-ne v2, p3, :cond_c

    .line 2801
    return v1

    .line 2803
    :cond_c
    iget-object p3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    :goto_5
    if-le p3, v2, :cond_d

    .line 2804
    iget-object p4, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2805
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2803
    add-int/lit8 p3, p3, -0x1

    goto :goto_5

    .line 2808
    :cond_d
    :goto_6
    return v0
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 922
    iget v0, p3, Landroidx/fragment/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 923
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 926
    :cond_0
    iget p3, p3, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 927
    return-void
.end method

.method public registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .locals 2

    .line 3435
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    invoke-direct {v1, p1, p2}, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;-><init>(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3436
    return-void
.end method

.method public removeFragment(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1947
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v0

    .line 1949
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    .line 1950
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1951
    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1952
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1953
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_2

    .line 1954
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1956
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 1957
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 1959
    :cond_3
    return-void

    .line 1952
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1

    .line 915
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 918
    :cond_0
    return-void
.end method

.method reportBackStackChanged()V
    .locals 2

    .line 2740
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2741
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2742
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 2741
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2745
    :cond_0
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Landroidx/fragment/app/FragmentManagerNonConfig;)V
    .locals 12

    .line 3063
    if-nez p1, :cond_0

    return-void

    .line 3064
    :cond_0
    check-cast p1, Landroidx/fragment/app/FragmentManagerState;

    .line 3065
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    if-nez v0, :cond_1

    return-void

    .line 3067
    :cond_1
    nop

    .line 3068
    nop

    .line 3072
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    .line 3073
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v2

    .line 3074
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v3

    .line 3075
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManagerNonConfig;->getViewModelStores()Ljava/util/List;

    move-result-object v4

    .line 3076
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    .line 3077
    :cond_2
    move v5, v1

    :goto_0
    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_8

    .line 3078
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/Fragment;

    .line 3079
    sget-boolean v8, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreAllState: re-attaching retained "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    :cond_3
    nop

    .line 3081
    move v8, v1

    :goto_2
    iget-object v9, p1, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    array-length v9, v9

    if-ge v8, v9, :cond_4

    iget-object v9, p1, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    aget-object v9, v9, v8

    iget v9, v9, Landroidx/fragment/app/FragmentState;->mIndex:I

    iget v10, v7, Landroidx/fragment/app/Fragment;->mIndex:I

    if-eq v9, v10, :cond_4

    .line 3082
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 3084
    :cond_4
    iget-object v9, p1, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    array-length v9, v9

    if-ne v8, v9, :cond_5

    .line 3085
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not find active fragment with index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v7, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 3088
    :cond_5
    iget-object v9, p1, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    aget-object v8, v9, v8

    .line 3089
    iput-object v7, v8, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    .line 3090
    iput-object v0, v7, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 3091
    iput v1, v7, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 3092
    iput-boolean v1, v7, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 3093
    iput-boolean v1, v7, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 3094
    iput-object v0, v7, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 3095
    iget-object v9, v8, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v9, :cond_6

    .line 3096
    iget-object v9, v8, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v10, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v10}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3097
    iget-object v9, v8, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v10, "android:view_state"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v9

    iput-object v9, v7, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 3099
    iget-object v8, v8, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v8, v7, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 3077
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 3106
    :cond_7
    move-object v3, v0

    move-object v4, v3

    :cond_8
    new-instance v2, Landroid/util/SparseArray;

    iget-object v5, p1, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    array-length v5, v5

    invoke-direct {v2, v5}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    .line 3107
    move v2, v1

    :goto_3
    iget-object v5, p1, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    array-length v5, v5

    if-ge v2, v5, :cond_d

    .line 3108
    iget-object v5, p1, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    aget-object v5, v5, v2

    .line 3109
    if-eqz v5, :cond_c

    .line 3110
    nop

    .line 3111
    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_9

    .line 3112
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentManagerNonConfig;

    .line 3114
    move-object v10, v6

    goto :goto_4

    :cond_9
    move-object v10, v0

    .line 3115
    :goto_4
    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_a

    .line 3116
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/lifecycle/ViewModelStore;

    .line 3118
    move-object v11, v6

    goto :goto_5

    :cond_a
    move-object v11, v0

    :goto_5
    iget-object v7, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v8, p0, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    iget-object v9, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    move-object v6, v5

    invoke-virtual/range {v6 .. v11}, Landroidx/fragment/app/FragmentState;->instantiate(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManagerNonConfig;Landroidx/lifecycle/ViewModelStore;)Landroidx/fragment/app/Fragment;

    move-result-object v6

    .line 3120
    sget-boolean v7, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_b

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreAllState: active #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    :cond_b
    iget-object v7, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v8, v6, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3125
    iput-object v0, v5, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    .line 3107
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3130
    :cond_d
    if-eqz p2, :cond_10

    .line 3131
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object p2

    .line 3132
    if-eqz p2, :cond_e

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_6

    .line 3133
    :cond_e
    move v2, v1

    :goto_6
    move v3, v1

    :goto_7
    if-ge v3, v2, :cond_10

    .line 3134
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 3135
    iget v5, v4, Landroidx/fragment/app/Fragment;->mTargetIndex:I

    if-ltz v5, :cond_f

    .line 3136
    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v6, v4, Landroidx/fragment/app/Fragment;->mTargetIndex:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    iput-object v5, v4, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 3137
    iget-object v5, v4, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-nez v5, :cond_f

    .line 3138
    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Re-attaching retained fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " target no longer exists: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroidx/fragment/app/Fragment;->mTargetIndex:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3133
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 3146
    :cond_10
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 3147
    iget-object p2, p1, Landroidx/fragment/app/FragmentManagerState;->mAdded:[I

    if-eqz p2, :cond_14

    .line 3148
    move p2, v1

    :goto_8
    iget-object v2, p1, Landroidx/fragment/app/FragmentManagerState;->mAdded:[I

    array-length v2, v2

    if-ge p2, v2, :cond_14

    .line 3149
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v3, p1, Landroidx/fragment/app/FragmentManagerState;->mAdded:[I

    aget v3, v3, p2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 3150
    if-nez v2, :cond_11

    .line 3151
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No instantiated fragment for index #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroidx/fragment/app/FragmentManagerState;->mAdded:[I

    aget v5, v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 3154
    :cond_11
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 3155
    sget-boolean v3, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_12

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreAllState: added #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3156
    :cond_12
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 3159
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3160
    :try_start_0
    iget-object v4, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3161
    monitor-exit v3

    .line 3148
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    .line 3161
    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 3157
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already added!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3166
    :cond_14
    iget-object p2, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    if-eqz p2, :cond_17

    .line 3167
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    array-length v0, v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 3168
    move p2, v1

    :goto_9
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    array-length v0, v0

    if-ge p2, v0, :cond_18

    .line 3169
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    aget-object v0, v0, p2

    invoke-virtual {v0, p0}, Landroidx/fragment/app/BackStackState;->instantiate(Landroidx/fragment/app/FragmentManagerImpl;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v0

    .line 3170
    sget-boolean v2, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_15

    .line 3171
    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreAllState: back stack #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    new-instance v2, Landroidx/core/util/LogWriter;

    const-string v3, "FragmentManager"

    invoke-direct {v2, v3}, Landroidx/core/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 3174
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3175
    const-string v2, "  "

    invoke-virtual {v0, v2, v3, v1}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 3176
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 3178
    :cond_15
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3179
    iget v2, v0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ltz v2, :cond_16

    .line 3180
    iget v2, v0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/FragmentManagerImpl;->setBackStackIndex(ILandroidx/fragment/app/BackStackRecord;)V

    .line 3168
    :cond_16
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    .line 3184
    :cond_17
    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 3187
    :cond_18
    iget p2, p1, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    if-ltz p2, :cond_19

    .line 3188
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v0, p1, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 3190
    :cond_19
    iget p1, p1, Landroidx/fragment/app/FragmentManagerState;->mNextFragmentIndex:I

    iput p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    .line 3191
    return-void
.end method

.method retainNonConfig()Landroidx/fragment/app/FragmentManagerNonConfig;
    .locals 1

    .line 2812
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    invoke-static {v0}, Landroidx/fragment/app/FragmentManagerImpl;->setRetaining(Landroidx/fragment/app/FragmentManagerNonConfig;)V

    .line 2813
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    return-object v0
.end method

.method saveAllState()Landroid/os/Parcelable;
    .locals 11

    .line 2950
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->forcePostponedTransactions()V

    .line 2951
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->endAnimatingAwayFragments()V

    .line 2952
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2954
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2955
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    .line 2957
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v2, :cond_12

    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_4

    .line 2962
    :cond_0
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2963
    new-array v3, v2, [Landroidx/fragment/app/FragmentState;

    .line 2964
    nop

    .line 2965
    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_8

    .line 2966
    iget-object v7, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/Fragment;

    .line 2967
    if-eqz v7, :cond_7

    .line 2968
    iget v6, v7, Landroidx/fragment/app/Fragment;->mIndex:I

    if-gez v6, :cond_1

    .line 2969
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure saving state: active "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " has cleared index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2974
    :cond_1
    nop

    .line 2976
    new-instance v6, Landroidx/fragment/app/FragmentState;

    invoke-direct {v6, v7}, Landroidx/fragment/app/FragmentState;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 2977
    aput-object v6, v3, v5

    .line 2979
    iget v8, v7, Landroidx/fragment/app/Fragment;->mState:I

    if-lez v8, :cond_4

    iget-object v8, v6, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v8, :cond_4

    .line 2980
    invoke-virtual {p0, v7}, Landroidx/fragment/app/FragmentManagerImpl;->saveFragmentBasicState(Landroidx/fragment/app/Fragment;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, v6, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2982
    iget-object v8, v7, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz v8, :cond_5

    .line 2983
    iget-object v8, v7, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget v8, v8, Landroidx/fragment/app/Fragment;->mIndex:I

    if-gez v8, :cond_2

    .line 2984
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure saving state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " has target not in fragment manager: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2988
    :cond_2
    iget-object v8, v6, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v8, :cond_3

    .line 2989
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v6, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2991
    :cond_3
    iget-object v8, v6, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v9, "android:target_state"

    iget-object v10, v7, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v8, v9, v10}, Landroidx/fragment/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 2993
    iget v8, v7, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    if-eqz v8, :cond_5

    .line 2994
    iget-object v8, v6, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v9, "android:target_req_state"

    iget v10, v7, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 3001
    :cond_4
    iget-object v8, v7, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v8, v6, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 3004
    :cond_5
    :goto_1
    sget-boolean v8, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_6

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saved state of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    :cond_6
    move v6, v0

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 3009
    :cond_8
    if-nez v6, :cond_a

    .line 3010
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "FragmentManager"

    const-string v2, "saveAllState: no fragments!"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    :cond_9
    return-object v1

    .line 3014
    :cond_a
    nop

    .line 3015
    nop

    .line 3018
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3019
    if-lez v0, :cond_d

    .line 3020
    new-array v2, v0, [I

    .line 3021
    move v5, v4

    :goto_2
    if-ge v5, v0, :cond_e

    .line 3022
    iget-object v6, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    iget v6, v6, Landroidx/fragment/app/Fragment;->mIndex:I

    aput v6, v2, v5

    .line 3023
    aget v6, v2, v5

    if-gez v6, :cond_b

    .line 3024
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure saving state: active "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 3025
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " has cleared index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v2, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 3024
    invoke-direct {p0, v6}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 3028
    :cond_b
    sget-boolean v6, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_c

    .line 3029
    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveAllState: adding fragment #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 3030
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3029
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3036
    :cond_d
    move-object v2, v1

    :cond_e
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    .line 3037
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3038
    if-lez v0, :cond_10

    .line 3039
    new-array v1, v0, [Landroidx/fragment/app/BackStackState;

    .line 3040
    :goto_3
    if-ge v4, v0, :cond_10

    .line 3041
    new-instance v5, Landroidx/fragment/app/BackStackState;

    iget-object v6, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v5, v6}, Landroidx/fragment/app/BackStackState;-><init>(Landroidx/fragment/app/BackStackRecord;)V

    aput-object v5, v1, v4

    .line 3042
    sget-boolean v5, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_f

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveAllState: adding back stack #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 3043
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3042
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3048
    :cond_10
    new-instance v0, Landroidx/fragment/app/FragmentManagerState;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentManagerState;-><init>()V

    .line 3049
    iput-object v3, v0, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    .line 3050
    iput-object v2, v0, Landroidx/fragment/app/FragmentManagerState;->mAdded:[I

    .line 3051
    iput-object v1, v0, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    .line 3052
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_11

    .line 3053
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    iget v1, v1, Landroidx/fragment/app/Fragment;->mIndex:I

    iput v1, v0, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    .line 3055
    :cond_11
    iget v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iput v1, v0, Landroidx/fragment/app/FragmentManagerState;->mNextFragmentIndex:I

    .line 3056
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->saveNonConfig()V

    .line 3057
    return-object v0

    .line 2958
    :cond_12
    :goto_4
    return-object v1
.end method

.method saveFragmentBasicState(Landroidx/fragment/app/Fragment;)Landroid/os/Bundle;
    .locals 3

    .line 2914
    nop

    .line 2916
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2917
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2919
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 2920
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 2921
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2922
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2923
    iput-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    goto :goto_0

    .line 2926
    :cond_1
    move-object v0, v1

    :goto_0
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 2927
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->saveFragmentViewState(Landroidx/fragment/app/Fragment;)V

    .line 2929
    :cond_2
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_4

    .line 2930
    if-nez v0, :cond_3

    .line 2931
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2933
    :cond_3
    const-string v1, "android:view_state"

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2936
    :cond_4
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_6

    .line 2937
    if-nez v0, :cond_5

    .line 2938
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2941
    :cond_5
    const-string v1, "android:user_visible_hint"

    iget-boolean p1, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2944
    :cond_6
    return-object v0
.end method

.method public saveFragmentInstanceState(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 987
    iget v0, p1, Landroidx/fragment/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 988
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 991
    :cond_0
    iget v0, p1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 992
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->saveFragmentBasicState(Landroidx/fragment/app/Fragment;)Landroid/os/Bundle;

    move-result-object p1

    .line 993
    if-eqz p1, :cond_1

    new-instance v1, Landroidx/fragment/app/Fragment$SavedState;

    invoke-direct {v1, p1}, Landroidx/fragment/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    nop

    :cond_1
    return-object v1

    .line 995
    :cond_2
    return-object v1
.end method

.method saveFragmentViewState(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 2898
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2899
    return-void

    .line 2901
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 2902
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    goto :goto_0

    .line 2904
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2906
    :goto_0
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2907
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2908
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2909
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 2911
    :cond_2
    return-void
.end method

.method saveNonConfig()V
    .locals 10

    .line 2841
    nop

    .line 2842
    nop

    .line 2843
    nop

    .line 2844
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2845
    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    :goto_0
    iget-object v6, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_9

    .line 2846
    iget-object v6, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    .line 2847
    if-eqz v6, :cond_7

    .line 2848
    iget-boolean v7, v6, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    if-eqz v7, :cond_2

    .line 2849
    if-nez v3, :cond_0

    .line 2850
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2852
    :cond_0
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2853
    iget-object v7, v6, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz v7, :cond_1

    iget-object v7, v6, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget v7, v7, Landroidx/fragment/app/Fragment;->mIndex:I

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    :goto_1
    iput v7, v6, Landroidx/fragment/app/Fragment;->mTargetIndex:I

    .line 2854
    sget-boolean v7, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retainNonConfig: keeping retained "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    :cond_2
    iget-object v7, v6, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v7, :cond_3

    .line 2858
    iget-object v7, v6, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManagerImpl;->saveNonConfig()V

    .line 2859
    iget-object v7, v6, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    goto :goto_2

    .line 2863
    :cond_3
    iget-object v7, v6, Landroidx/fragment/app/Fragment;->mChildNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    .line 2866
    :goto_2
    if-nez v4, :cond_4

    if-eqz v7, :cond_4

    .line 2867
    new-instance v4, Ljava/util/ArrayList;

    iget-object v8, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 2868
    move v8, v0

    :goto_3
    if-ge v8, v2, :cond_4

    .line 2869
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2868
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2873
    :cond_4
    if-eqz v4, :cond_5

    .line 2874
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2876
    :cond_5
    if-nez v5, :cond_6

    iget-object v7, v6, Landroidx/fragment/app/Fragment;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-eqz v7, :cond_6

    .line 2877
    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2878
    move v7, v0

    :goto_4
    if-ge v7, v2, :cond_6

    .line 2879
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2878
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2883
    :cond_6
    if-eqz v5, :cond_7

    .line 2884
    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2845
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2889
    :cond_8
    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    :cond_9
    if-nez v3, :cond_a

    if-nez v4, :cond_a

    if-nez v5, :cond_a

    .line 2890
    iput-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    goto :goto_5

    .line 2892
    :cond_a
    new-instance v0, Landroidx/fragment/app/FragmentManagerNonConfig;

    invoke-direct {v0, v3, v4, v5}, Landroidx/fragment/app/FragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    .line 2895
    :goto_5
    return-void
.end method

.method public setBackStackIndex(ILandroidx/fragment/app/BackStackRecord;)V
    .locals 4

    .line 2174
    monitor-enter p0

    .line 2175
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 2178
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2179
    if-ge p1, v0, :cond_2

    .line 2180
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2183
    :cond_2
    :goto_0
    if-ge v0, p1, :cond_5

    .line 2184
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2185
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 2186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 2188
    :cond_3
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2192
    :cond_5
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    :cond_6
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2195
    :goto_1
    monitor-exit p0

    .line 2196
    return-void

    .line 2195
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 3418
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_1

    .line 3419
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 3420
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3423
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 3424
    return-void
.end method

.method public showFragment(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1984
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_1

    .line 1986
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1989
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1991
    :cond_1
    return-void
.end method

.method startPendingDeferredFragments()V
    .locals 2

    .line 1886
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    .line 1888
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1889
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 1890
    if-eqz v1, :cond_1

    .line 1891
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->performPendingDeferredStart(Landroidx/fragment/app/Fragment;)V

    .line 1888
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1894
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1006
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 1010
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-static {v1, v0}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 1012
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-static {v1, v0}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 1014
    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .locals 4

    .line 3440
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 3441
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 3442
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    if-ne v3, p1, :cond_0

    .line 3443
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 3444
    goto :goto_1

    .line 3441
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3447
    :cond_1
    :goto_1
    monitor-exit v0

    .line 3448
    return-void

    .line 3447
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
