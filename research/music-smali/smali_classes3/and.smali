.class public Land;
.super Ljava/lang/Object;
.source "DesignUtil.java"


# direct methods
.method public static a(Landroid/view/View;Laml;Lamr;)V
    .locals 2

    .line 19
    :try_start_0
    instance-of v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_1

    .line 20
    invoke-interface {p1}, Laml;->getRefreshLayout()Lamm;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lamm;->setEnableNestedScroll(Z)Lamm;

    .line 21
    check-cast p0, Landroid/view/ViewGroup;

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 23
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 24
    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_0

    .line 25
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v1, Land$1;

    invoke-direct {v1, p2}, Land$1;-><init>(Lamr;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->a(Lcom/google/android/material/appbar/AppBarLayout$c;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method
