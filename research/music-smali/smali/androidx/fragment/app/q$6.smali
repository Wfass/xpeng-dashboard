.class Landroidx/fragment/app/q$6;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/q;->b(Landroidx/fragment/app/s;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/a;Landroidx/fragment/app/q$b;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/s;

.field final synthetic b:Landroidx/collection/a;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Landroidx/fragment/app/q$b;

.field final synthetic e:Ljava/util/ArrayList;

.field final synthetic f:Landroid/view/View;

.field final synthetic g:Landroidx/fragment/app/Fragment;

.field final synthetic h:Landroidx/fragment/app/Fragment;

.field final synthetic i:Z

.field final synthetic j:Ljava/util/ArrayList;

.field final synthetic k:Ljava/lang/Object;

.field final synthetic l:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroidx/fragment/app/s;Landroidx/collection/a;Ljava/lang/Object;Landroidx/fragment/app/q$b;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .line 783
    iput-object p1, p0, Landroidx/fragment/app/q$6;->a:Landroidx/fragment/app/s;

    iput-object p2, p0, Landroidx/fragment/app/q$6;->b:Landroidx/collection/a;

    iput-object p3, p0, Landroidx/fragment/app/q$6;->c:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/fragment/app/q$6;->d:Landroidx/fragment/app/q$b;

    iput-object p5, p0, Landroidx/fragment/app/q$6;->e:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidx/fragment/app/q$6;->f:Landroid/view/View;

    iput-object p7, p0, Landroidx/fragment/app/q$6;->g:Landroidx/fragment/app/Fragment;

    iput-object p8, p0, Landroidx/fragment/app/q$6;->h:Landroidx/fragment/app/Fragment;

    iput-boolean p9, p0, Landroidx/fragment/app/q$6;->i:Z

    iput-object p10, p0, Landroidx/fragment/app/q$6;->j:Ljava/util/ArrayList;

    iput-object p11, p0, Landroidx/fragment/app/q$6;->k:Ljava/lang/Object;

    iput-object p12, p0, Landroidx/fragment/app/q$6;->l:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 786
    iget-object v0, p0, Landroidx/fragment/app/q$6;->a:Landroidx/fragment/app/s;

    iget-object v1, p0, Landroidx/fragment/app/q$6;->b:Landroidx/collection/a;

    iget-object v2, p0, Landroidx/fragment/app/q$6;->c:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/fragment/app/q$6;->d:Landroidx/fragment/app/q$b;

    invoke-static {v0, v1, v2, v3}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/s;Landroidx/collection/a;Ljava/lang/Object;Landroidx/fragment/app/q$b;)Landroidx/collection/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 790
    iget-object v1, p0, Landroidx/fragment/app/q$6;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroidx/collection/a;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 791
    iget-object v1, p0, Landroidx/fragment/app/q$6;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/q$6;->f:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/q$6;->g:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/q$6;->h:Landroidx/fragment/app/Fragment;

    iget-boolean v3, p0, Landroidx/fragment/app/q$6;->i:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/a;Z)V

    .line 796
    iget-object v1, p0, Landroidx/fragment/app/q$6;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 797
    iget-object v2, p0, Landroidx/fragment/app/q$6;->a:Landroidx/fragment/app/s;

    iget-object v3, p0, Landroidx/fragment/app/q$6;->j:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/q$6;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3, v4}, Landroidx/fragment/app/s;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 801
    iget-object v1, p0, Landroidx/fragment/app/q$6;->d:Landroidx/fragment/app/q$b;

    iget-object v2, p0, Landroidx/fragment/app/q$6;->k:Ljava/lang/Object;

    iget-boolean v3, p0, Landroidx/fragment/app/q$6;->i:Z

    invoke-static {v0, v1, v2, v3}, Landroidx/fragment/app/q;->a(Landroidx/collection/a;Landroidx/fragment/app/q$b;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 804
    iget-object v1, p0, Landroidx/fragment/app/q$6;->a:Landroidx/fragment/app/s;

    iget-object v2, p0, Landroidx/fragment/app/q$6;->l:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/s;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
