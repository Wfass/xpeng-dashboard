.class Lme/yokeyword/fragmentation/h$14;
.super Lcdb;
.source "TransactionDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yokeyword/fragmentation/h;->a(Landroidx/fragment/app/FragmentManager;Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroidx/fragment/app/FragmentManager;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lme/yokeyword/fragmentation/d;

.field final synthetic e:Lme/yokeyword/fragmentation/d;

.field final synthetic f:Lme/yokeyword/fragmentation/h;


# direct methods
.method constructor <init>(Lme/yokeyword/fragmentation/h;IZLandroidx/fragment/app/FragmentManager;Ljava/lang/String;Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lme/yokeyword/fragmentation/h$14;->f:Lme/yokeyword/fragmentation/h;

    iput-boolean p3, p0, Lme/yokeyword/fragmentation/h$14;->a:Z

    iput-object p4, p0, Lme/yokeyword/fragmentation/h$14;->b:Landroidx/fragment/app/FragmentManager;

    iput-object p5, p0, Lme/yokeyword/fragmentation/h$14;->c:Ljava/lang/String;

    iput-object p6, p0, Lme/yokeyword/fragmentation/h$14;->d:Lme/yokeyword/fragmentation/d;

    iput-object p7, p0, Lme/yokeyword/fragmentation/h$14;->e:Lme/yokeyword/fragmentation/d;

    invoke-direct {p0, p2}, Lcdb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 184
    iget-boolean v0, p0, Lme/yokeyword/fragmentation/h$14;->a:Z

    .line 188
    iget-object v1, p0, Lme/yokeyword/fragmentation/h$14;->b:Landroidx/fragment/app/FragmentManager;

    iget-object v2, p0, Lme/yokeyword/fragmentation/h$14;->c:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lme/yokeyword/fragmentation/g;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 190
    iget-object v2, p0, Lme/yokeyword/fragmentation/h$14;->f:Lme/yokeyword/fragmentation/h;

    iget-object v3, p0, Lme/yokeyword/fragmentation/h$14;->d:Lme/yokeyword/fragmentation/d;

    iget-object v4, p0, Lme/yokeyword/fragmentation/h$14;->b:Landroidx/fragment/app/FragmentManager;

    invoke-static {v2, v3, v4}, Lme/yokeyword/fragmentation/h;->a(Lme/yokeyword/fragmentation/h;Lme/yokeyword/fragmentation/d;Landroidx/fragment/app/FragmentManager;)Lme/yokeyword/fragmentation/d;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 194
    invoke-interface {v2}, Lme/yokeyword/fragmentation/d;->getSupportDelegate()Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    move-result-object v3

    iget v3, v3, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->c:I

    .line 195
    iget-object v4, p0, Lme/yokeyword/fragmentation/h$14;->f:Lme/yokeyword/fragmentation/h;

    iget-object v5, p0, Lme/yokeyword/fragmentation/h$14;->e:Lme/yokeyword/fragmentation/d;

    invoke-static {v4, v3, v5}, Lme/yokeyword/fragmentation/h;->a(Lme/yokeyword/fragmentation/h;ILme/yokeyword/fragmentation/d;)V

    .line 197
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v3, p0, Lme/yokeyword/fragmentation/h$14;->f:Lme/yokeyword/fragmentation/h;

    iget-object v4, p0, Lme/yokeyword/fragmentation/h$14;->b:Landroidx/fragment/app/FragmentManager;

    const-string v5, "startWithPopTo()"

    invoke-static {v3, v4, v5}, Lme/yokeyword/fragmentation/h;->a(Lme/yokeyword/fragmentation/h;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 200
    iget-object v3, p0, Lme/yokeyword/fragmentation/h$14;->b:Landroidx/fragment/app/FragmentManager;

    invoke-static {v3}, Landroidx/fragment/app/t;->c(Landroidx/fragment/app/FragmentManager;)V

    .line 201
    iget-object v3, p0, Lme/yokeyword/fragmentation/h$14;->b:Landroidx/fragment/app/FragmentManager;

    invoke-static {v3}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/FragmentManager;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 202
    iget-object v3, p0, Lme/yokeyword/fragmentation/h$14;->f:Lme/yokeyword/fragmentation/h;

    iget-object v4, p0, Lme/yokeyword/fragmentation/h$14;->b:Landroidx/fragment/app/FragmentManager;

    invoke-static {v4}, Lme/yokeyword/fragmentation/g;->a(Landroidx/fragment/app/FragmentManager;)Lme/yokeyword/fragmentation/d;

    move-result-object v4

    iget-object v5, p0, Lme/yokeyword/fragmentation/h$14;->e:Lme/yokeyword/fragmentation/d;

    invoke-interface {v2}, Lme/yokeyword/fragmentation/d;->getSupportDelegate()Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    move-result-object v2

    iget-object v2, v2, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->mAnimHelper:Lme/yokeyword/fragmentation/helper/internal/a;

    iget-object v2, v2, Lme/yokeyword/fragmentation/helper/internal/a;->d:Landroid/view/animation/Animation;

    invoke-static {v3, v4, v5, v2}, Lme/yokeyword/fragmentation/h;->a(Lme/yokeyword/fragmentation/h;Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;Landroid/view/animation/Animation;)V

    .line 205
    :cond_1
    iget-object v2, p0, Lme/yokeyword/fragmentation/h$14;->f:Lme/yokeyword/fragmentation/h;

    iget-object v3, p0, Lme/yokeyword/fragmentation/h$14;->c:Ljava/lang/String;

    iget-object v4, p0, Lme/yokeyword/fragmentation/h$14;->b:Landroidx/fragment/app/FragmentManager;

    invoke-static {v2, v3, v4, v0, v1}, Lme/yokeyword/fragmentation/h;->a(Lme/yokeyword/fragmentation/h;Ljava/lang/String;Landroidx/fragment/app/FragmentManager;ILjava/util/List;)V

    return-void

    .line 192
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "There is no Fragment in the FragmentManager, maybe you need to call loadRootFragment() first!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
