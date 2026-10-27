.class public Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
.super Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;
.source "BottomAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<",
        "Lcom/google/android/material/bottomappbar/BottomAppBar;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 637
    invoke-direct {p0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 646
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 647
    return-void
.end method

.method private updateFabPositionAndVisibility(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .locals 2
    .param p1, "fab"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .param p2, "child"    # Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 651
    nop

    .line 652
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 653
    .local v0, "fabLayoutParams":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 656
    invoke-static {p2, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1000(Lcom/google/android/material/bottomappbar/BottomAppBar;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    .line 658
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public bridge synthetic onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    .line 634
    check-cast p2, Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/bottomappbar/BottomAppBar;I)Z

    move-result p1

    return p1
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/bottomappbar/BottomAppBar;I)Z
    .locals 2
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/google/android/material/bottomappbar/BottomAppBar;
    .param p3, "layoutDirection"    # I

    .line 664
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1100(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    .line 665
    .local v0, "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    if-eqz v0, :cond_0

    .line 666
    invoke-direct {p0, v0, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->updateFabPositionAndVisibility(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/bottomappbar/BottomAppBar;)Z

    .line 671
    :cond_0
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1200(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 672
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1300(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    .line 676
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 677
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 7
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 634
    move-object v2, p2

    check-cast v2, Lcom/google/android/material/bottomappbar/BottomAppBar;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1
    .param p1, "coordinatorLayout"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "child"    # Lcom/google/android/material/bottomappbar/BottomAppBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "directTargetChild"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "target"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "axes"    # I
    .param p6, "type"    # I

    .line 689
    invoke-virtual {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getHideOnScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    invoke-super/range {p0 .. p6}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 689
    :goto_0
    return v0
.end method

.method protected bridge synthetic slideDown(Landroid/view/View;)V
    .locals 0

    .line 634
    check-cast p1, Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->slideDown(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    return-void
.end method

.method protected slideDown(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 6
    .param p1, "child"    # Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 709
    invoke-super {p0, p1}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->slideDown(Landroid/view/View;)V

    .line 710
    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1100(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    .line 711
    .local v0, "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    if-eqz v0, :cond_0

    .line 712
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 713
    .local v1, "contentRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContentRect(Landroid/graphics/Rect;)Z

    .line 714
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 716
    .local v2, "fabShadowPadding":F
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->clearAnimation()V

    .line 717
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 718
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getPaddingBottom()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 719
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xaf

    .line 720
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 722
    .end local v1    # "contentRect":Landroid/graphics/Rect;
    .end local v2    # "fabShadowPadding":F
    :cond_0
    return-void
.end method

.method protected bridge synthetic slideUp(Landroid/view/View;)V
    .locals 0

    .line 634
    check-cast p1, Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->slideUp(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    return-void
.end method

.method protected slideUp(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 4
    .param p1, "child"    # Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 696
    invoke-super {p0, p1}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->slideUp(Landroid/view/View;)V

    .line 697
    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1100(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    .line 698
    .local v0, "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->clearAnimation()V

    .line 700
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 701
    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1400(Lcom/google/android/material/bottomappbar/BottomAppBar;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 702
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xe1

    .line 703
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 705
    :cond_0
    return-void
.end method
