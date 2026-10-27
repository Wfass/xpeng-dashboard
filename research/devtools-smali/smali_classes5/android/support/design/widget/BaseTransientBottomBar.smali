.class public abstract Landroid/support/design/widget/BaseTransientBottomBar;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BaseTransientBottomBar$Behavior;,
        Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;,
        Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;,
        Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;,
        Landroid/support/design/widget/BaseTransientBottomBar$Duration;,
        Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;,
        Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroid/support/design/widget/BaseTransientBottomBar<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final ANIMATION_DURATION:I = 0xfa

.field static final ANIMATION_FADE_DURATION:I = 0xb4

.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1

.field static final MSG_DISMISS:I = 0x1

.field static final MSG_SHOW:I

.field private static final USE_OFFSET_API:Z

.field static final handler:Landroid/os/Handler;


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field private final contentViewCallback:Landroid/support/design/snackbar/ContentViewCallback;

.field private final context:Landroid/content/Context;

.field private duration:I

.field final managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

.field private final targetParent:Landroid/view/ViewGroup;

.field final view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/support/design/widget/BaseTransientBottomBar;->USE_OFFSET_API:Z

    .line 168
    new-instance v0, Landroid/os/Handler;

    .line 170
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$1;

    invoke-direct {v2}, Landroid/support/design/widget/BaseTransientBottomBar$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Landroid/support/design/widget/BaseTransientBottomBar;->handler:Landroid/os/Handler;

    .line 186
    return-void
.end method

.method protected constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/design/snackbar/ContentViewCallback;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/design/snackbar/ContentViewCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    new-instance v0, Landroid/support/design/widget/BaseTransientBottomBar$3;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BaseTransientBottomBar$3;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    iput-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    .line 223
    if-eqz p1, :cond_2

    .line 226
    if-eqz p2, :cond_1

    .line 229
    if-eqz p3, :cond_0

    .line 233
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    .line 234
    iput-object p3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->contentViewCallback:Landroid/support/design/snackbar/ContentViewCallback;

    .line 235
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->context:Landroid/content/Context;

    .line 237
    iget-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/design/internal/ThemeEnforcement;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 239
    iget-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 243
    sget p3, Landroid/support/design/widget/R$layout;->design_layout_snackbar:I

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 244
    invoke-virtual {p1, p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 245
    iget-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->addView(Landroid/view/View;)V

    .line 247
    iget-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 248
    iget-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 251
    iget-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 252
    iget-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance p2, Landroid/support/design/widget/BaseTransientBottomBar$2;

    invoke-direct {p2, p0}, Landroid/support/design/widget/BaseTransientBottomBar$2;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 268
    iget-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->context:Landroid/content/Context;

    const-string p2, "accessibility"

    .line 269
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 270
    return-void

    .line 230
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transient bottom bar must have non-null callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 227
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transient bottom bar must have non-null content"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 224
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transient bottom bar must have non-null parent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Landroid/support/design/widget/BaseTransientBottomBar;)Landroid/support/design/snackbar/ContentViewCallback;
    .locals 0

    .line 59
    iget-object p0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->contentViewCallback:Landroid/support/design/snackbar/ContentViewCallback;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 59
    sget-boolean v0, Landroid/support/design/widget/BaseTransientBottomBar;->USE_OFFSET_API:Z

    return v0
.end method

.method private animateViewOut(I)V
    .locals 4

    .line 529
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 530
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 531
    sget-object v1, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 532
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 533
    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$9;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$9;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 545
    new-instance p1, Landroid/support/design/widget/BaseTransientBottomBar$10;

    invoke-direct {p1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$10;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 563
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 564
    return-void
.end method


# virtual methods
.method public addCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;
    .locals 1
    .param p1    # Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<",
            "TB;>;)TB;"
        }
    .end annotation

    .line 329
    if-nez p1, :cond_0

    .line 330
    return-object p0

    .line 332
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    if-nez v0, :cond_1

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    .line 335
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    return-object p0
.end method

.method animateViewIn()V
    .locals 5

    .line 483
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getHeight()I

    move-result v0

    .line 484
    sget-boolean v1, Landroid/support/design/widget/BaseTransientBottomBar;->USE_OFFSET_API:Z

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_0

    .line 487
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setTranslationY(F)V

    .line 490
    :goto_0
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 491
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 492
    sget-object v2, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 493
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 494
    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$7;

    invoke-direct {v2, p0}, Landroid/support/design/widget/BaseTransientBottomBar$7;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 507
    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$8;

    invoke-direct {v2, p0, v0}, Landroid/support/design/widget/BaseTransientBottomBar$8;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 525
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 526
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 313
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/support/design/widget/BaseTransientBottomBar;->dispatchDismiss(I)V

    .line 314
    return-void
.end method

.method dispatchDismiss(I)V
    .locals 2

    .line 317
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/SnackbarManager;->dismiss(Landroid/support/design/widget/SnackbarManager$Callback;I)V

    .line 318
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 297
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 291
    iget v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->duration:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 303
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    return-object v0
.end method

.method final hideView(I)V
    .locals 1

    .line 567
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 568
    invoke-direct {p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar;->animateViewOut(I)V

    goto :goto_0

    .line 571
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar;->onViewHidden(I)V

    .line 573
    :goto_0
    return-void
.end method

.method public isShown()Z
    .locals 2

    .line 361
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->isCurrent(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    return v0
.end method

.method public isShownOrQueued()Z
    .locals 2

    .line 369
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->isCurrentOrNext(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    return v0
.end method

.method onViewHidden(I)V
    .locals 2

    .line 589
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->onDismissed(Landroid/support/design/widget/SnackbarManager$Callback;)V

    .line 590
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 594
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 595
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v1, p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;->onDismissed(Ljava/lang/Object;I)V

    .line 594
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 599
    :cond_0
    iget-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 600
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 601
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 603
    :cond_1
    return-void
.end method

.method onViewShown()V
    .locals 2

    .line 576
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->onShown(Landroid/support/design/widget/SnackbarManager$Callback;)V

    .line 577
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 581
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 582
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;->onShown(Ljava/lang/Object;)V

    .line 581
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 585
    :cond_0
    return-void
.end method

.method public removeCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;
    .locals 1
    .param p1    # Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<",
            "TB;>;)TB;"
        }
    .end annotation

    .line 348
    if-nez p1, :cond_0

    .line 349
    return-object p0

    .line 351
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    if-nez v0, :cond_1

    .line 353
    return-object p0

    .line 355
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 356
    return-object p0
.end method

.method public setDuration(I)Landroid/support/design/widget/BaseTransientBottomBar;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 280
    iput p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->duration:I

    .line 281
    return-object p0
.end method

.method shouldAnimate()Z
    .locals 1

    .line 607
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public show()V
    .locals 3

    .line 308
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->duration:I

    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/SnackbarManager;->show(ILandroid/support/design/widget/SnackbarManager$Callback;)V

    .line 309
    return-void
.end method

.method final showView()V
    .locals 3

    .line 387
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 388
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 390
    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 392
    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 394
    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    .line 395
    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v2}, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;->setStartAlphaSwipeDistance(F)V

    .line 396
    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;->setEndAlphaSwipeDistance(F)V

    .line 397
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;->setSwipeDirection(I)V

    .line 398
    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$4;

    invoke-direct {v2, p0}, Landroid/support/design/widget/BaseTransientBottomBar$4;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v1, v2}, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;->setListener(Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;)V

    .line 423
    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    .line 425
    const/16 v1, 0x50

    iput v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 428
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 431
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$5;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$5;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setOnAttachStateChangeListener(Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;)V

    .line 454
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->animateViewIn()V

    goto :goto_0

    .line 460
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->onViewShown()V

    goto :goto_0

    .line 464
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$6;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$6;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setOnLayoutChangeListener(Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;)V

    .line 480
    :goto_0
    return-void
.end method
