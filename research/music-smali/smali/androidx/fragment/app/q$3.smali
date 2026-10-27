.class Landroidx/fragment/app/q$3;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/q;->b(Landroid/view/ViewGroup;Landroidx/fragment/app/q$b;Landroid/view/View;Landroidx/collection/a;Landroidx/fragment/app/q$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/q$a;

.field final synthetic b:Landroidx/fragment/app/Fragment;

.field final synthetic c:Lek;


# direct methods
.method constructor <init>(Landroidx/fragment/app/q$a;Landroidx/fragment/app/Fragment;Lek;)V
    .locals 0

    .line 396
    iput-object p1, p0, Landroidx/fragment/app/q$3;->a:Landroidx/fragment/app/q$a;

    iput-object p2, p0, Landroidx/fragment/app/q$3;->b:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Landroidx/fragment/app/q$3;->c:Lek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 399
    iget-object v0, p0, Landroidx/fragment/app/q$3;->a:Landroidx/fragment/app/q$a;

    iget-object v1, p0, Landroidx/fragment/app/q$3;->b:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/q$3;->c:Lek;

    invoke-interface {v0, v1, v2}, Landroidx/fragment/app/q$a;->b(Landroidx/fragment/app/Fragment;Lek;)V

    return-void
.end method
