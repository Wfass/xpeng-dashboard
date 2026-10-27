.class Lgn$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgn;->a(Landroid/view/View;Lgo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgo;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lgn;


# direct methods
.method constructor <init>(Lgn;Lgo;Landroid/view/View;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lgn$1;->c:Lgn;

    iput-object p2, p0, Lgn$1;->a:Lgo;

    iput-object p3, p0, Lgn$1;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 745
    iget-object p1, p0, Lgn$1;->a:Lgo;

    iget-object v0, p0, Lgn$1;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lgo;->c(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 750
    iget-object p1, p0, Lgn$1;->a:Lgo;

    iget-object v0, p0, Lgn$1;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lgo;->b(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 755
    iget-object p1, p0, Lgn$1;->a:Lgo;

    iget-object v0, p0, Lgn$1;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lgo;->a(Landroid/view/View;)V

    return-void
.end method
