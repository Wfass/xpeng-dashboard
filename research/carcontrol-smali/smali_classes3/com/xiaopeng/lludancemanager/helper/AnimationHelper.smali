.class public Lcom/xiaopeng/lludancemanager/helper/AnimationHelper;
.super Ljava/lang/Object;
.source "AnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lludancemanager/helper/AnimationHelper$ViewAnimationListener;
    }
.end annotation


# static fields
.field public static final ALPHA_0:F = 0.0f

.field public static final ALPHA_1:F = 1.0f

.field public static final DURATION:J = 0x3e8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startViewAlphaAnimation(Landroid/view/View;FJLcom/xiaopeng/lludancemanager/helper/AnimationHelper$ViewAnimationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "alpha",
            "duration",
            "viewAnimationListener"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Lcom/xiaopeng/lludancemanager/helper/AnimationHelper$1;

    invoke-direct {p1, p4}, Lcom/xiaopeng/lludancemanager/helper/AnimationHelper$1;-><init>(Lcom/xiaopeng/lludancemanager/helper/AnimationHelper$ViewAnimationListener;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
