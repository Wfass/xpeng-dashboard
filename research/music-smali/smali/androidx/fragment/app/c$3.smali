.class Landroidx/fragment/app/c$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/c;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/c$a;Landroidx/fragment/app/q$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/fragment/app/Fragment;

.field final synthetic d:Landroidx/fragment/app/q$a;

.field final synthetic e:Lek;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/q$a;Lek;)V
    .locals 0

    .line 195
    iput-object p1, p0, Landroidx/fragment/app/c$3;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/fragment/app/c$3;->b:Landroid/view/View;

    iput-object p3, p0, Landroidx/fragment/app/c$3;->c:Landroidx/fragment/app/Fragment;

    iput-object p4, p0, Landroidx/fragment/app/c$3;->d:Landroidx/fragment/app/q$a;

    iput-object p5, p0, Landroidx/fragment/app/c$3;->e:Lek;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 198
    iget-object p1, p0, Landroidx/fragment/app/c$3;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/c$3;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 201
    iget-object p1, p0, Landroidx/fragment/app/c$3;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object p1

    .line 202
    iget-object v0, p0, Landroidx/fragment/app/c$3;->c:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    if-eqz p1, :cond_0

    .line 203
    iget-object p1, p0, Landroidx/fragment/app/c$3;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/c$3;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_0

    .line 204
    iget-object p1, p0, Landroidx/fragment/app/c$3;->d:Landroidx/fragment/app/q$a;

    iget-object v0, p0, Landroidx/fragment/app/c$3;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/c$3;->e:Lek;

    invoke-interface {p1, v0, v1}, Landroidx/fragment/app/q$a;->b(Landroidx/fragment/app/Fragment;Lek;)V

    :cond_0
    return-void
.end method
