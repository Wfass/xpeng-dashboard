.class public Laia;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laia$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 102
    new-instance v0, Laia$2;

    invoke-direct {v0, p0}, Laia$2;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static a(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-static {p0, p1, v0}, Laia;->a(Landroid/view/View;ILaia$a;)V

    return-void
.end method

.method public static a(Landroid/view/View;ILaia$a;)V
    .locals 4

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x8

    .line 76
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 80
    :cond_0
    invoke-static {p0}, Laia;->a(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p1

    .line 82
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Laia$1;

    invoke-direct {v1, v0, p2, p0}, Laia$1;-><init>(Landroid/animation/Animator$AnimatorListener;Laia$a;Landroid/view/View;)V

    .line 83
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    .line 92
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 276
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    return-void

    .line 283
    :cond_0
    invoke-static {p0}, Laia;->b(Landroid/view/View;)V

    .line 285
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 286
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 287
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    if-eqz p0, :cond_2

    .line 290
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_2
    const/4 p0, 0x4

    .line 292
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 183
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static b(Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 265
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 163
    invoke-static {p0, p1, v0}, Laia;->b(Landroid/view/View;ILaia$a;)V

    return-void
.end method

.method public static b(Landroid/view/View;ILaia$a;)V
    .locals 3

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Laia$3;

    invoke-direct {v0, p0, p2}, Laia$3;-><init>(Landroid/view/View;Laia$a;)V

    .line 146
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 158
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
