.class Landroidx/fragment/app/v$a;
.super Landroidx/fragment/app/v$b;
.source "SpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/fragment/app/n;


# direct methods
.method constructor <init>(Landroidx/fragment/app/v$b$b;Landroidx/fragment/app/v$b$a;Landroidx/fragment/app/n;Lek;)V
    .locals 1

    .line 708
    invoke-virtual {p3}, Landroidx/fragment/app/n;->a()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Landroidx/fragment/app/v$b;-><init>(Landroidx/fragment/app/v$b$b;Landroidx/fragment/app/v$b$a;Landroidx/fragment/app/Fragment;Lek;)V

    .line 710
    iput-object p3, p0, Landroidx/fragment/app/v$a;->a:Landroidx/fragment/app/n;

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .line 715
    invoke-virtual {p0}, Landroidx/fragment/app/v$a;->d()Landroidx/fragment/app/v$b$a;

    move-result-object v0

    sget-object v1, Landroidx/fragment/app/v$b$a;->ADDING:Landroidx/fragment/app/v$b$a;

    if-ne v0, v1, :cond_3

    .line 716
    iget-object v0, p0, Landroidx/fragment/app/v$a;->a:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->a()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 717
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 719
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    const/4 v2, 0x2

    .line 720
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 721
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestFocus: Saved focused view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for Fragment "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/v$a;->e()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    .line 729
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 730
    iget-object v2, p0, Landroidx/fragment/app/v$a;->a:Landroidx/fragment/app/n;

    invoke-virtual {v2}, Landroidx/fragment/app/n;->s()V

    .line 731
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 735
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x4

    .line 736
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 738
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getPostOnViewCreatedAlpha()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method public b()V
    .locals 1

    .line 744
    invoke-super {p0}, Landroidx/fragment/app/v$b;->b()V

    .line 745
    iget-object v0, p0, Landroidx/fragment/app/v$a;->a:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->c()V

    return-void
.end method
