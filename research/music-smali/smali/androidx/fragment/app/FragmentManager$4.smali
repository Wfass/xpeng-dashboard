.class Landroidx/fragment/app/FragmentManager$4;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/fragment/app/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 451
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$4;->a:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/Fragment;Lek;)V
    .locals 1

    .line 455
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$4;->a:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentManager;->addCancellationSignal(Landroidx/fragment/app/Fragment;Lek;)V

    return-void
.end method

.method public b(Landroidx/fragment/app/Fragment;Lek;)V
    .locals 1

    .line 460
    invoke-virtual {p2}, Lek;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$4;->a:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentManager;->removeCancellationSignal(Landroidx/fragment/app/Fragment;Lek;)V

    :cond_0
    return-void
.end method
