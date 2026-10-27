.class Landroidx/appcompat/app/j;
.super Landroidx/appcompat/app/a;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/j$b;,
        Landroidx/appcompat/app/j$a;,
        Landroidx/appcompat/app/j$c;
    }
.end annotation


# instance fields
.field a:Landroidx/appcompat/widget/ac;

.field b:Z

.field c:Landroid/view/Window$Callback;

.field private d:Z

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Runnable;

.field private final h:Landroidx/appcompat/widget/Toolbar$c;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Landroidx/appcompat/app/a;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/j;->f:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Landroidx/appcompat/app/j$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/j$1;-><init>(Landroidx/appcompat/app/j;)V

    iput-object v0, p0, Landroidx/appcompat/app/j;->g:Ljava/lang/Runnable;

    .line 61
    new-instance v0, Landroidx/appcompat/app/j$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/j$2;-><init>(Landroidx/appcompat/app/j;)V

    iput-object v0, p0, Landroidx/appcompat/app/j;->h:Landroidx/appcompat/widget/Toolbar$c;

    .line 70
    new-instance v0, Landroidx/appcompat/widget/au;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/widget/au;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ac;

    .line 71
    new-instance v0, Landroidx/appcompat/app/j$c;

    invoke-direct {v0, p0, p3}, Landroidx/appcompat/app/j$c;-><init>(Landroidx/appcompat/app/j;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Landroidx/appcompat/app/j;->c:Landroid/view/Window$Callback;

    .line 72
    iget-object p3, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ac;

    iget-object v0, p0, Landroidx/appcompat/app/j;->c:Landroid/view/Window$Callback;

    invoke-interface {p3, v0}, Landroidx/appcompat/widget/ac;->a(Landroid/view/Window$Callback;)V

    .line 73
    iget-object p3, p0, Landroidx/appcompat/app/j;->h:Landroidx/appcompat/widget/Toolbar$c;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$c;)V

    .line 74
    iget-object p1, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ac;

    invoke-interface {p1, p2}, Landroidx/appcompat/widget/ac;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private j()Landroid/view/Menu;
    .locals 3

    .line 544
    iget-boolean v0, p0, Landroidx/appcompat/app/j;->d:Z

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ac;

    new-instance v1, Landroidx/appcompat/app/j$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/j$a;-><init>(Landroidx/appcompat/app/j;)V

    new-instance v2, Landroidx/appcompat/app/j$b;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/j$b;-><init>(Landroidx/appcompat/app/j;)V

    invoke-interface {v0, v1, v2}, Landroidx/appcompat/widget/ac;->a(Landroidx/appcompat/view/menu/l$a;Landroidx/appcompat/view/menu/g$a;)V

    const/4 v0, 0x1

    .line 547
    iput-boolean v0, p0, Landroidx/appcompat/app/j;->d:Z

    .line 549
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ac;

    invoke-interface {v0}, Landroidx/appcompat/widget/ac;->q()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 324
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ac;

    invoke-interface {v0}, Landroidx/appcompat/widget/ac;->o()I

    move-result v0

    return v0
.end method

.method public a(F)V
    .locals 1

    .line 137
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ac;

    invoke-interface {v0}, Landroidx/appcompat/widget/ac;->a()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p1}, Lgj;->i(Landroid/view/View;F)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 177
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ac;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/ac;->d(I)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .line 187
    invoke-super {p0, p1}, Landroidx/appcompat/app/a;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 229
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ac;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/ac;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 477
    invoke-direct {p0}, Landroidx/appcompat/app/j;->j()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 480
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 479
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 481
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 482
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 469
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 470
    invoke-virtual {p0}, Landroidx/appcompat/app/j;->c()Z

    :cond_0
    return v0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 147
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ac;

    invoke-interface {v0}, Landroidx/appcompat/widget/ac;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 1

    .line 424
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ac;

    invoke-interface {v0}, Landroidx/appcompat/widget/ac;->k()Z

    move-result v0

    return v0
.end method

.method public d(Z)V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 1

    .line 429
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ac;

    invoke-interface {v0}, Landroidx/appcompat/widget/ac;->l()Z

    move-result v0

    return v0
.end method

.method public e(Z)V
    .locals 3

    .line 505
    iget-boolean v0, p0, Landroidx/appcompat/app/j;->e:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 508
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/app/j;->e:Z

    .line 510
    iget-object v0, p0, Landroidx/appcompat/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 512
    iget-object v2, p0, Landroidx/appcompat/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/a$b;

    invoke-interface {v2, p1}, Landroidx/appcompat/app/a$b;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e()Z
    .locals 2

    .line 434
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ac;

    invoke-interface {v0}, Landroidx/appcompat/widget/ac;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/j;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 435
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ac;

    invoke-interface {v0}, Landroidx/appcompat/widget/ac;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/j;->g:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lgj;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 1

    .line 441
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ac;

    invoke-interface {v0}, Landroidx/appcompat/widget/ac;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ac;

    invoke-interface {v0}, Landroidx/appcompat/widget/ac;->d()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method g()V
    .locals 2

    .line 490
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ac;

    invoke-interface {v0}, Landroidx/appcompat/widget/ac;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/j;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public h()Landroid/view/Window$Callback;
    .locals 1

    .line 78
    iget-object v0, p0, Landroidx/appcompat/app/j;->c:Landroid/view/Window$Callback;

    return-object v0
.end method

.method i()V
    .locals 5

    .line 449
    invoke-direct {p0}, Landroidx/appcompat/app/j;->j()Landroid/view/Menu;

    move-result-object v0

    .line 450
    instance-of v1, v0, Landroidx/appcompat/view/menu/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/g;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 452
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->h()V

    .line 455
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 456
    iget-object v3, p0, Landroidx/appcompat/app/j;->c:Landroid/view/Window$Callback;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/appcompat/app/j;->c:Landroid/view/Window$Callback;

    .line 457
    invoke-interface {v3, v4, v2, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 458
    :cond_2
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v1, :cond_4

    .line 462
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->i()V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->i()V

    .line 464
    :cond_5
    throw v0
.end method
