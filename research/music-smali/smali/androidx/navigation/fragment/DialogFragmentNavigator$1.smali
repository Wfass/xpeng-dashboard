.class Landroidx/navigation/fragment/DialogFragmentNavigator$1;
.super Ljava/lang/Object;
.source "DialogFragmentNavigator.java"

# interfaces
.implements Landroidx/lifecycle/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/fragment/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/navigation/fragment/a;


# direct methods
.method constructor <init>(Landroidx/navigation/fragment/a;)V
    .locals 0

    .line 59
    iput-object p1, p0, Landroidx/navigation/fragment/DialogFragmentNavigator$1;->a:Landroidx/navigation/fragment/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/n;Landroidx/lifecycle/j$a;)V
    .locals 1

    .line 63
    sget-object v0, Landroidx/lifecycle/j$a;->ON_STOP:Landroidx/lifecycle/j$a;

    if-ne p2, v0, :cond_0

    .line 64
    check-cast p1, Landroidx/fragment/app/DialogFragment;

    .line 65
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->requireDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_0

    .line 66
    invoke-static {p1}, Landroidx/navigation/fragment/NavHostFragment;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/navigation/e;->b()Z

    :cond_0
    return-void
.end method
