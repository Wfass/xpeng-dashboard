.class Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/LiveData$b;
.source "LiveData.java"

# interfaces
.implements Landroidx/lifecycle/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "TT;>.b;",
        "Landroidx/lifecycle/l;"
    }
.end annotation


# instance fields
.field final a:Landroidx/lifecycle/n;

.field final synthetic b:Landroidx/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/n;Landroidx/lifecycle/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/n;",
            "Landroidx/lifecycle/s<",
            "-TT;>;)V"
        }
    .end annotation

    .line 404
    iput-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->b:Landroidx/lifecycle/LiveData;

    .line 405
    invoke-direct {p0, p1, p3}, Landroidx/lifecycle/LiveData$b;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/s;)V

    .line 406
    iput-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Landroidx/lifecycle/n;

    return-void
.end method


# virtual methods
.method a()Z
    .locals 2

    .line 411
    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Landroidx/lifecycle/n;

    invoke-interface {v0}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/j;->getCurrentState()Landroidx/lifecycle/j$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/j$b;->STARTED:Landroidx/lifecycle/j$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j$b;->a(Landroidx/lifecycle/j$b;)Z

    move-result v0

    return v0
.end method

.method a(Landroidx/lifecycle/n;)Z
    .locals 1

    .line 432
    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Landroidx/lifecycle/n;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method b()V
    .locals 1

    .line 437
    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Landroidx/lifecycle/n;

    invoke-interface {v0}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/j;->removeObserver(Landroidx/lifecycle/m;)V

    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/n;Landroidx/lifecycle/j$a;)V
    .locals 1

    .line 417
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Landroidx/lifecycle/n;

    invoke-interface {p1}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/j;->getCurrentState()Landroidx/lifecycle/j$b;

    move-result-object p1

    .line 418
    sget-object p2, Landroidx/lifecycle/j$b;->DESTROYED:Landroidx/lifecycle/j$b;

    if-ne p1, p2, :cond_0

    .line 419
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->b:Landroidx/lifecycle/LiveData;

    iget-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->c:Landroidx/lifecycle/s;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->b(Landroidx/lifecycle/s;)V

    return-void

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eq p2, p1, :cond_1

    .line 425
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a(Z)V

    .line 426
    iget-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Landroidx/lifecycle/n;

    invoke-interface {p2}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/j;->getCurrentState()Landroidx/lifecycle/j$b;

    move-result-object p2

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    goto :goto_0

    :cond_1
    return-void
.end method
