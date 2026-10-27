.class Landroidx/transition/o$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/o;->a(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/transition/o;


# direct methods
.method constructor <init>(Landroidx/transition/o;)V
    .locals 0

    .line 1898
    iput-object p1, p0, Landroidx/transition/o$3;->a:Landroidx/transition/o;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1901
    iget-object v0, p0, Landroidx/transition/o$3;->a:Landroidx/transition/o;

    invoke-virtual {v0}, Landroidx/transition/o;->k()V

    .line 1902
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
