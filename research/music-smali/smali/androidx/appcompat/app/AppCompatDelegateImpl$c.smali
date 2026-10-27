.class Landroidx/appcompat/app/AppCompatDelegateImpl$c;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Lo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl;

.field private b:Lo$a;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Lo$a;)V
    .locals 0

    .line 2686
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2687
    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Lo$a;

    return-void
.end method


# virtual methods
.method public a(Lo;)V
    .locals 2

    .line 2708
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Lo$a;

    invoke-interface {v0, p1}, Lo$a;->a(Lo;)V

    .line 2709
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    .line 2710
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->c:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2713
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz p1, :cond_1

    .line 2714
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->r()V

    .line 2715
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Lgj;->n(Landroid/view/View;)Lgn;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgn;->a(F)Lgn;

    move-result-object v0

    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Lgn;

    .line 2716
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Lgn;

    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$c$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$c$1;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl$c;)V

    invoke-virtual {p1, v0}, Lgn;->a(Lgo;)Lgn;

    .line 2732
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Landroidx/appcompat/app/d;

    if-eqz p1, :cond_2

    .line 2733
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Landroidx/appcompat/app/d;

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Lo;

    invoke-interface {p1, v0}, Landroidx/appcompat/app/d;->onSupportActionModeFinished(Lo;)V

    .line 2735
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Lo;

    .line 2736
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Landroid/view/ViewGroup;

    invoke-static {p1}, Lgj;->r(Landroid/view/View;)V

    return-void
.end method

.method public a(Lo;Landroid/view/Menu;)Z
    .locals 1

    .line 2692
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Lo$a;

    invoke-interface {v0, p1, p2}, Lo$a;->a(Lo;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public a(Lo;Landroid/view/MenuItem;)Z
    .locals 1

    .line 2703
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Lo$a;

    invoke-interface {v0, p1, p2}, Lo$a;->a(Lo;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b(Lo;Landroid/view/Menu;)Z
    .locals 1

    .line 2697
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Landroid/view/ViewGroup;

    invoke-static {v0}, Lgj;->r(Landroid/view/View;)V

    .line 2698
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b:Lo$a;

    invoke-interface {v0, p1, p2}, Lo$a;->b(Lo;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
