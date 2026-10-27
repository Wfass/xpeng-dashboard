.class Landroidx/transition/w;
.super Landroidx/transition/ab;
.source "ViewGroupOverlayApi14.java"

# interfaces
.implements Landroidx/transition/y;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroidx/transition/ab;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static a(Landroid/view/ViewGroup;)Landroidx/transition/w;
    .locals 0

    .line 32
    invoke-static {p0}, Landroidx/transition/ab;->d(Landroid/view/View;)Landroidx/transition/ab;

    move-result-object p0

    check-cast p0, Landroidx/transition/w;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 37
    iget-object v0, p0, Landroidx/transition/w;->a:Landroidx/transition/ab$a;

    invoke-virtual {v0, p1}, Landroidx/transition/ab$a;->a(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .line 42
    iget-object v0, p0, Landroidx/transition/w;->a:Landroidx/transition/ab$a;

    invoke-virtual {v0, p1}, Landroidx/transition/ab$a;->b(Landroid/view/View;)V

    return-void
.end method
