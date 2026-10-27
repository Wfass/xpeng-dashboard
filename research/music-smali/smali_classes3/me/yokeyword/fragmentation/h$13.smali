.class Lme/yokeyword/fragmentation/h$13;
.super Lcdb;
.source "TransactionDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yokeyword/fragmentation/h;->b(Landroidx/fragment/app/FragmentManager;Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/yokeyword/fragmentation/d;

.field final synthetic b:Landroidx/fragment/app/FragmentManager;

.field final synthetic c:Lme/yokeyword/fragmentation/d;

.field final synthetic d:Lme/yokeyword/fragmentation/h;


# direct methods
.method constructor <init>(Lme/yokeyword/fragmentation/h;ILme/yokeyword/fragmentation/d;Landroidx/fragment/app/FragmentManager;Lme/yokeyword/fragmentation/d;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lme/yokeyword/fragmentation/h$13;->d:Lme/yokeyword/fragmentation/h;

    iput-object p3, p0, Lme/yokeyword/fragmentation/h$13;->a:Lme/yokeyword/fragmentation/d;

    iput-object p4, p0, Lme/yokeyword/fragmentation/h$13;->b:Landroidx/fragment/app/FragmentManager;

    iput-object p5, p0, Lme/yokeyword/fragmentation/h$13;->c:Lme/yokeyword/fragmentation/d;

    invoke-direct {p0, p2}, Lcdb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 156
    iget-object v0, p0, Lme/yokeyword/fragmentation/h$13;->d:Lme/yokeyword/fragmentation/h;

    iget-object v1, p0, Lme/yokeyword/fragmentation/h$13;->a:Lme/yokeyword/fragmentation/d;

    iget-object v2, p0, Lme/yokeyword/fragmentation/h$13;->b:Landroidx/fragment/app/FragmentManager;

    invoke-static {v0, v1, v2}, Lme/yokeyword/fragmentation/h;->a(Lme/yokeyword/fragmentation/h;Lme/yokeyword/fragmentation/d;Landroidx/fragment/app/FragmentManager;)Lme/yokeyword/fragmentation/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 160
    invoke-interface {v0}, Lme/yokeyword/fragmentation/d;->getSupportDelegate()Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    move-result-object v1

    iget v1, v1, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->c:I

    .line 161
    iget-object v2, p0, Lme/yokeyword/fragmentation/h$13;->d:Lme/yokeyword/fragmentation/h;

    iget-object v3, p0, Lme/yokeyword/fragmentation/h$13;->c:Lme/yokeyword/fragmentation/d;

    invoke-static {v2, v1, v3}, Lme/yokeyword/fragmentation/h;->a(Lme/yokeyword/fragmentation/h;ILme/yokeyword/fragmentation/d;)V

    .line 163
    iget-object v1, p0, Lme/yokeyword/fragmentation/h$13;->d:Lme/yokeyword/fragmentation/h;

    iget-object v2, p0, Lme/yokeyword/fragmentation/h$13;->b:Landroidx/fragment/app/FragmentManager;

    const-string v3, "popTo()"

    invoke-static {v1, v2, v3}, Lme/yokeyword/fragmentation/h;->a(Lme/yokeyword/fragmentation/h;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lme/yokeyword/fragmentation/h$13;->b:Landroidx/fragment/app/FragmentManager;

    invoke-static {v1}, Landroidx/fragment/app/t;->c(Landroidx/fragment/app/FragmentManager;)V

    .line 165
    invoke-interface {v0}, Lme/yokeyword/fragmentation/d;->getSupportDelegate()Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->b:Z

    .line 166
    iget-object v1, p0, Lme/yokeyword/fragmentation/h$13;->b:Landroidx/fragment/app/FragmentManager;

    invoke-static {v1}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/FragmentManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    iget-object v1, p0, Lme/yokeyword/fragmentation/h$13;->d:Lme/yokeyword/fragmentation/h;

    iget-object v2, p0, Lme/yokeyword/fragmentation/h$13;->b:Landroidx/fragment/app/FragmentManager;

    invoke-static {v2}, Lme/yokeyword/fragmentation/g;->a(Landroidx/fragment/app/FragmentManager;)Lme/yokeyword/fragmentation/d;

    move-result-object v2

    iget-object v3, p0, Lme/yokeyword/fragmentation/h$13;->c:Lme/yokeyword/fragmentation/d;

    invoke-interface {v0}, Lme/yokeyword/fragmentation/d;->getSupportDelegate()Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    move-result-object v0

    iget-object v0, v0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->mAnimHelper:Lme/yokeyword/fragmentation/helper/internal/a;

    iget-object v0, v0, Lme/yokeyword/fragmentation/helper/internal/a;->d:Landroid/view/animation/Animation;

    invoke-static {v1, v2, v3, v0}, Lme/yokeyword/fragmentation/h;->a(Lme/yokeyword/fragmentation/h;Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;Landroid/view/animation/Animation;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lme/yokeyword/fragmentation/h$13;->d:Lme/yokeyword/fragmentation/h;

    iget-object v1, p0, Lme/yokeyword/fragmentation/h$13;->b:Landroidx/fragment/app/FragmentManager;

    invoke-static {v0, v1}, Lme/yokeyword/fragmentation/h;->a(Lme/yokeyword/fragmentation/h;Landroidx/fragment/app/FragmentManager;)V

    .line 171
    iget-object v0, p0, Lme/yokeyword/fragmentation/h$13;->b:Landroidx/fragment/app/FragmentManager;

    invoke-static {v0}, Landroidx/fragment/app/t;->b(Landroidx/fragment/app/FragmentManager;)V

    .line 172
    iget-object v0, p0, Lme/yokeyword/fragmentation/h$13;->b:Landroidx/fragment/app/FragmentManager;

    invoke-static {v0}, Landroidx/fragment/app/t;->c(Landroidx/fragment/app/FragmentManager;)V

    return-void

    .line 158
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "There is no Fragment in the FragmentManager, maybe you need to call loadRootFragment() first!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
