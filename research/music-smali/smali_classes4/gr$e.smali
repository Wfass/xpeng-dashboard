.class Lgr$e;
.super Lgr$c;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field final b:Landroid/view/WindowInsets$Builder;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1809
    invoke-direct {p0}, Lgr$c;-><init>()V

    .line 1810
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, Lgr$e;->b:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method constructor <init>(Lgr;)V
    .locals 1

    .line 1814
    invoke-direct {p0, p1}, Lgr$c;-><init>(Lgr;)V

    .line 1815
    invoke-virtual {p1}, Lgr;->n()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1817
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_0

    .line 1818
    :cond_0
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    :goto_0
    iput-object v0, p0, Lgr$e;->b:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method a(Ldv;)V
    .locals 1

    .line 1823
    iget-object v0, p0, Lgr$e;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Ldv;->a()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method b()Lgr;
    .locals 2

    .line 1854
    invoke-virtual {p0}, Lgr$e;->a()V

    .line 1855
    iget-object v0, p0, Lgr$e;->b:Landroid/view/WindowInsets$Builder;

    .line 1856
    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    .line 1855
    invoke-static {v0}, Lgr;->a(Landroid/view/WindowInsets;)Lgr;

    move-result-object v0

    .line 1857
    iget-object v1, p0, Lgr$e;->a:[Ldv;

    invoke-virtual {v0, v1}, Lgr;->a([Ldv;)V

    return-object v0
.end method

.method b(Ldv;)V
    .locals 1

    .line 1828
    iget-object v0, p0, Lgr$e;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Ldv;->a()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setSystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method c(Ldv;)V
    .locals 1

    .line 1833
    iget-object v0, p0, Lgr$e;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Ldv;->a()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setMandatorySystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method d(Ldv;)V
    .locals 1

    .line 1838
    iget-object v0, p0, Lgr$e;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Ldv;->a()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setTappableElementInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method e(Ldv;)V
    .locals 1

    .line 1843
    iget-object v0, p0, Lgr$e;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Ldv;->a()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method
