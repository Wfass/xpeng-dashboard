.class public abstract Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$b;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$c;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$d;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/google/android/material/snackbar/BaseTransientBottomBar<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final a:Landroid/os/Handler;

.field private static final d:Z

.field private static final e:[I

.field private static final f:Ljava/lang/String;


# instance fields
.field protected final b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

.field c:Lcom/google/android/material/snackbar/b$a;

.field private final g:Landroid/view/ViewGroup;

.field private final h:Lcom/google/android/material/snackbar/a;

.field private i:Z

.field private j:Landroid/view/View;

.field private final k:Ljava/lang/Runnable;

.field private l:Landroid/graphics/Rect;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar$a<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field private s:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

.field private final t:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 227
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->d:Z

    .line 231
    new-array v0, v1, [I

    sget v1, Laiv$b;->snackbarStyle:I

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->e:[I

    .line 233
    const-class v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->f:Ljava/lang/String;

    .line 236
    new-instance v0, Landroid/os/Handler;

    .line 238
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;

    invoke-direct {v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I
    .locals 0

    .line 95
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->p:I

    return p1
.end method

.method private varargs a([F)Landroid/animation/ValueAnimator;
    .locals 1

    .line 946
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 947
    sget-object v0, Laiw;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 948
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$5;

    invoke-direct {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$5;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private a(Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;)V
    .locals 2

    .line 827
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->s:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    if-nez v0, :cond_0

    .line 828
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b()Lcom/google/android/material/behavior/SwipeDismissBehavior;

    move-result-object v0

    .line 830
    :cond_0
    instance-of v1, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    if-eqz v1, :cond_1

    .line 831
    move-object v1, v0

    check-cast v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    invoke-static {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->a(Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 834
    :cond_1
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(Lcom/google/android/material/behavior/SwipeDismissBehavior$a;)V

    .line 861
    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;)V

    .line 864
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->j:Landroid/view/View;

    if-nez v0, :cond_2

    const/16 v0, 0x50

    .line 865
    iput v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->g:I

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->h()V

    return-void
.end method

.method private varargs b([F)Landroid/animation/ValueAnimator;
    .locals 1

    .line 959
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 960
    sget-object v0, Laiw;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 961
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;

    invoke-direct {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->m()V

    return-void
.end method

.method private d(I)V
    .locals 2

    .line 908
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getAnimationMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 909
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->e(I)V

    goto :goto_0

    .line 911
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->f(I)V

    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->n()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)Lcom/google/android/material/snackbar/a;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->h:Lcom/google/android/material/snackbar/a;

    return-object p0
.end method

.method private e(I)V
    .locals 3

    const/4 v0, 0x2

    .line 933
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x4b

    .line 934
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 935
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 942
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private f(I)V
    .locals 4

    .line 1020
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    .line 1021
    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->o()I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1022
    sget-object v1, Laiw;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    .line 1023
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1024
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$9;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$9;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1036
    new-instance p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$10;

    invoke-direct {p1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$10;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1054
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic g()Z
    .locals 1

    .line 95
    sget-boolean v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->d:Z

    return v0
.end method

.method private h()V
    .locals 3

    .line 447
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 448
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->l:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    goto :goto_1

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->j:Landroid/view/View;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->q:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->m:I

    .line 455
    :goto_0
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 456
    iget-object v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->l:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 457
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->l:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->n:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 458
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->l:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->o:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 459
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->requestLayout()V

    .line 461
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 463
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 464
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    .line 449
    :cond_3
    :goto_1
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->f:Ljava/lang/String;

    const-string v1, "Unable to update margins because layout params are not MarginLayoutParams"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private i()Z
    .locals 1

    .line 469
    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->p:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private j()Z
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 474
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    .line 475
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->b()Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private k()V
    .locals 2

    .line 797
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->d()V

    goto :goto_0

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 803
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setVisibility(I)V

    .line 805
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->e()V

    :goto_0
    return-void
.end method

.method private l()I
    .locals 4

    .line 870
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->j:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x2

    .line 874
    new-array v2, v1, [I

    .line 875
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x1

    .line 876
    aget v2, v2, v0

    .line 878
    new-array v1, v1, [I

    .line 879
    iget-object v3, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->g:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 880
    aget v0, v1, v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    return v0
.end method

.method private m()V
    .locals 5

    const/4 v0, 0x2

    .line 916
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 917
    new-array v2, v0, [F

    fill-array-data v2, :array_1

    invoke-direct {p0, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 919
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 920
    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x96

    .line 921
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 922
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;

    invoke-direct {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 929
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private n()V
    .locals 5

    .line 974
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->o()I

    move-result v0

    .line 975
    sget-boolean v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->d:Z

    if-eqz v1, :cond_0

    .line 976
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v1, v0}, Lgj;->g(Landroid/view/View;I)V

    goto :goto_0

    .line 978
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setTranslationY(F)V

    .line 981
    :goto_0
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v2, 0x2

    .line 982
    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 983
    sget-object v2, Laiw;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa

    .line 984
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 985
    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;

    invoke-direct {v2, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 998
    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;

    invoke-direct {v2, p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1016
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private o()I
    .locals 3

    .line 1058
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getHeight()I

    move-result v0

    .line 1059
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1060
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 1061
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method


# virtual methods
.method protected a(I)V
    .locals 2

    .line 657
    invoke-static {}, Lcom/google/android/material/snackbar/b;->a()Lcom/google/android/material/snackbar/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/b$a;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/snackbar/b;->a(Lcom/google/android/material/snackbar/b$a;I)V

    return-void
.end method

.method public a()Z
    .locals 2

    .line 709
    invoke-static {}, Lcom/google/android/material/snackbar/b;->a()Lcom/google/android/material/snackbar/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/b$a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/b;->e(Lcom/google/android/material/snackbar/b$a;)Z

    move-result v0

    return v0
.end method

.method protected b()Lcom/google/android/material/behavior/SwipeDismissBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/behavior/SwipeDismissBehavior<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 729
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    invoke-direct {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;-><init>()V

    return-object v0
.end method

.method final b(I)V
    .locals 1

    .line 1067
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1068
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->d(I)V

    goto :goto_0

    .line 1071
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c(I)V

    :goto_0
    return-void
.end method

.method final c()V
    .locals 2

    .line 733
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnAttachStateChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$c;)V

    .line 764
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 767
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    if-eqz v1, :cond_0

    .line 768
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    invoke-direct {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;)V

    .line 771
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->l()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->q:I

    .line 772
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->h()V

    .line 776
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setVisibility(I)V

    .line 777
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 780
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v0}, Lgj;->B(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 781
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k()V

    return-void

    .line 786
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$12;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$12;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnLayoutChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$d;)V

    return-void
.end method

.method c(I)V
    .locals 2

    .line 1089
    invoke-static {}, Lcom/google/android/material/snackbar/b;->a()Lcom/google/android/material/snackbar/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/b$a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/b;->a(Lcom/google/android/material/snackbar/b$a;)V

    .line 1090
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->r:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1093
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1095
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$a;

    invoke-virtual {v1, p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$a;->a(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1099
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 1100
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1101
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method d()V
    .locals 2

    .line 887
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method e()V
    .locals 2

    .line 1076
    invoke-static {}, Lcom/google/android/material/snackbar/b;->a()Lcom/google/android/material/snackbar/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/b$a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/b;->b(Lcom/google/android/material/snackbar/b$a;)V

    .line 1077
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->r:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1080
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1082
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$a;

    invoke-virtual {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$a;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method f()Z
    .locals 2

    .line 1107
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->t:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1112
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1113
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
