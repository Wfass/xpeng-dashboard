.class Landroidx/transition/al$1;
.super Landroidx/transition/p;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/al;->b(Landroid/view/ViewGroup;Landroidx/transition/u;ILandroidx/transition/u;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroidx/transition/al;


# direct methods
.method constructor <init>(Landroidx/transition/al;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 441
    iput-object p1, p0, Landroidx/transition/al$1;->d:Landroidx/transition/al;

    iput-object p2, p0, Landroidx/transition/al$1;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/transition/al$1;->b:Landroid/view/View;

    iput-object p4, p0, Landroidx/transition/al$1;->c:Landroid/view/View;

    invoke-direct {p0}, Landroidx/transition/p;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/transition/o;)V
    .locals 3

    .line 459
    iget-object v0, p0, Landroidx/transition/al$1;->c:Landroid/view/View;

    sget v1, Landroidx/transition/l$a;->save_overlay_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 460
    iget-object v0, p0, Landroidx/transition/al$1;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/transition/z;->a(Landroid/view/ViewGroup;)Landroidx/transition/y;

    move-result-object v0

    iget-object v1, p0, Landroidx/transition/al$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroidx/transition/y;->b(Landroid/view/View;)V

    .line 461
    invoke-virtual {p1, p0}, Landroidx/transition/o;->b(Landroidx/transition/o$c;)Landroidx/transition/o;

    return-void
.end method

.method public c(Landroidx/transition/o;)V
    .locals 1

    .line 445
    iget-object p1, p0, Landroidx/transition/al$1;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/transition/z;->a(Landroid/view/ViewGroup;)Landroidx/transition/y;

    move-result-object p1

    iget-object v0, p0, Landroidx/transition/al$1;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/transition/y;->b(Landroid/view/View;)V

    return-void
.end method

.method public d(Landroidx/transition/o;)V
    .locals 1

    .line 450
    iget-object p1, p0, Landroidx/transition/al$1;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 451
    iget-object p1, p0, Landroidx/transition/al$1;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/transition/z;->a(Landroid/view/ViewGroup;)Landroidx/transition/y;

    move-result-object p1

    iget-object v0, p0, Landroidx/transition/al$1;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/transition/y;->a(Landroid/view/View;)V

    goto :goto_0

    .line 453
    :cond_0
    iget-object p1, p0, Landroidx/transition/al$1;->d:Landroidx/transition/al;

    invoke-virtual {p1}, Landroidx/transition/al;->l()V

    :goto_0
    return-void
.end method
