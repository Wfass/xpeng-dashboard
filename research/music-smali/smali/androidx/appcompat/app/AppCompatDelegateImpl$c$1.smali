.class Landroidx/appcompat/app/AppCompatDelegateImpl$c$1;
.super Lgp;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a(Lo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl$c;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl$c;)V
    .locals 0

    .line 2716
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$1;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    invoke-direct {p0}, Lgp;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 2719
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$1;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 2720
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$1;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    .line 2721
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$1;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 2722
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$1;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 2723
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$1;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lgj;->r(Landroid/view/View;)V

    .line 2725
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$1;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->c()V

    .line 2726
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$1;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Lgn;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lgn;->a(Lgo;)Lgn;

    .line 2727
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$1;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Lgn;

    .line 2728
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$1;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Landroid/view/ViewGroup;

    invoke-static {p1}, Lgj;->r(Landroid/view/View;)V

    return-void
.end method
