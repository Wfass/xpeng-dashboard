.class Landroidx/fragment/app/Fragment$8;
.super Landroidx/fragment/app/Fragment$c;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->prepareCallInternal(Lc;Lz;Landroidx/activity/result/a;)Landroidx/activity/result/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lz;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic c:Lc;

.field final synthetic d:Landroidx/activity/result/a;

.field final synthetic e:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Lz;Ljava/util/concurrent/atomic/AtomicReference;Lc;Landroidx/activity/result/a;)V
    .locals 0

    .line 3493
    iput-object p1, p0, Landroidx/fragment/app/Fragment$8;->e:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/Fragment$8;->a:Lz;

    iput-object p3, p0, Landroidx/fragment/app/Fragment$8;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Landroidx/fragment/app/Fragment$8;->c:Lc;

    iput-object p5, p0, Landroidx/fragment/app/Fragment$8;->d:Landroidx/activity/result/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/fragment/app/Fragment$c;-><init>(Landroidx/fragment/app/Fragment$1;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    .line 3496
    iget-object v0, p0, Landroidx/fragment/app/Fragment$8;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->generateActivityResultKey()Ljava/lang/String;

    move-result-object v0

    .line 3497
    iget-object v1, p0, Landroidx/fragment/app/Fragment$8;->a:Lz;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lz;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/result/c;

    .line 3498
    iget-object v2, p0, Landroidx/fragment/app/Fragment$8;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Landroidx/fragment/app/Fragment$8;->e:Landroidx/fragment/app/Fragment;

    iget-object v4, p0, Landroidx/fragment/app/Fragment$8;->c:Lc;

    iget-object v5, p0, Landroidx/fragment/app/Fragment$8;->d:Landroidx/activity/result/a;

    invoke-virtual {v1, v0, v3, v4, v5}, Landroidx/activity/result/c;->a(Ljava/lang/String;Landroidx/lifecycle/n;Lc;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
