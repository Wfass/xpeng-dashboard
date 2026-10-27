.class Lgj$c$1;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgj$c;->a(Landroid/view/View;Lgb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Lgr;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lgb;


# direct methods
.method constructor <init>(Landroid/view/View;Lgb;)V
    .locals 0

    .line 4774
    iput-object p1, p0, Lgj$c$1;->b:Landroid/view/View;

    iput-object p2, p0, Lgj$c$1;->c:Lgb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 4775
    iput-object p1, p0, Lgj$c$1;->a:Lgr;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 4780
    invoke-static {p2, p1}, Lgr;->a(Landroid/view/WindowInsets;Landroid/view/View;)Lgr;

    move-result-object v0

    .line 4782
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    .line 4783
    iget-object v1, p0, Lgj$c$1;->b:Landroid/view/View;

    invoke-static {p2, v1}, Lgj$c;->a(Landroid/view/WindowInsets;Landroid/view/View;)V

    .line 4785
    iget-object p2, p0, Lgj$c$1;->a:Lgr;

    invoke-virtual {v0, p2}, Lgr;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4787
    iget-object p2, p0, Lgj$c$1;->c:Lgb;

    invoke-interface {p2, p1, v0}, Lgb;->a(Landroid/view/View;Lgr;)Lgr;

    move-result-object p1

    .line 4788
    invoke-virtual {p1}, Lgr;->n()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    .line 4791
    :cond_0
    iput-object v0, p0, Lgj$c$1;->a:Lgr;

    .line 4792
    iget-object p2, p0, Lgj$c$1;->c:Lgb;

    invoke-interface {p2, p1, v0}, Lgb;->a(Landroid/view/View;Lgr;)Lgr;

    move-result-object p2

    .line 4794
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    .line 4795
    invoke-virtual {p2}, Lgr;->n()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    .line 4802
    :cond_1
    invoke-static {p1}, Lgj;->r(Landroid/view/View;)V

    .line 4806
    invoke-virtual {p2}, Lgr;->n()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
