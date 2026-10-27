.class public abstract Landroidx/lifecycle/a;
.super Landroidx/lifecycle/aa$c;
.source "AbstractSavedStateViewModelFactory.java"


# instance fields
.field private final a:Landroidx/savedstate/b;

.field private final b:Landroidx/lifecycle/j;

.field private final c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroidx/lifecycle/aa$c;-><init>()V

    .line 54
    invoke-interface {p1}, Landroidx/savedstate/SavedStateRegistryOwner;->getSavedStateRegistry()Landroidx/savedstate/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/a;->a:Landroidx/savedstate/b;

    .line 55
    invoke-interface {p1}, Landroidx/savedstate/SavedStateRegistryOwner;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/a;->b:Landroidx/lifecycle/j;

    .line 56
    iput-object p2, p0, Landroidx/lifecycle/a;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/z;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 80
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/a;->a(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/z;

    move-result-object p1

    return-object p1

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/z;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Landroidx/lifecycle/a;->a:Landroidx/savedstate/b;

    iget-object v1, p0, Landroidx/lifecycle/a;->b:Landroidx/lifecycle/j;

    iget-object v2, p0, Landroidx/lifecycle/a;->c:Landroid/os/Bundle;

    invoke-static {v0, v1, p1, v2}, Landroidx/lifecycle/SavedStateHandleController;->a(Landroidx/savedstate/b;Landroidx/lifecycle/j;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandleController;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroidx/lifecycle/SavedStateHandleController;->b()Landroidx/lifecycle/v;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Landroidx/lifecycle/a;->a(Ljava/lang/String;Ljava/lang/Class;Landroidx/lifecycle/v;)Landroidx/lifecycle/z;

    move-result-object p1

    const-string p2, "androidx.lifecycle.savedstate.vm.tag"

    .line 70
    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/z;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/Class;Landroidx/lifecycle/v;)Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/z;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/lifecycle/v;",
            ")TT;"
        }
    .end annotation
.end method

.method a(Landroidx/lifecycle/z;)V
    .locals 2

    .line 103
    iget-object v0, p0, Landroidx/lifecycle/a;->a:Landroidx/savedstate/b;

    iget-object v1, p0, Landroidx/lifecycle/a;->b:Landroidx/lifecycle/j;

    invoke-static {p1, v0, v1}, Landroidx/lifecycle/SavedStateHandleController;->a(Landroidx/lifecycle/z;Landroidx/savedstate/b;Landroidx/lifecycle/j;)V

    return-void
.end method
