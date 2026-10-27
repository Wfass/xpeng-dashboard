.class final Lcom/xiaopeng/lludancemanager/helper/AnimationHelper$1;
.super Ljava/lang/Object;
.source "AnimationHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lludancemanager/helper/AnimationHelper;->startViewAlphaAnimation(Landroid/view/View;FJLcom/xiaopeng/lludancemanager/helper/AnimationHelper$ViewAnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$viewAnimationListener:Lcom/xiaopeng/lludancemanager/helper/AnimationHelper$ViewAnimationListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lludancemanager/helper/AnimationHelper$ViewAnimationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$viewAnimationListener"
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/helper/AnimationHelper$1;->val$viewAnimationListener:Lcom/xiaopeng/lludancemanager/helper/AnimationHelper$ViewAnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 22
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/helper/AnimationHelper$1;->val$viewAnimationListener:Lcom/xiaopeng/lludancemanager/helper/AnimationHelper$ViewAnimationListener;

    if-eqz p1, :cond_0

    .line 23
    invoke-interface {p1}, Lcom/xiaopeng/lludancemanager/helper/AnimationHelper$ViewAnimationListener;->onAnimationEnd()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method
