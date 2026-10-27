.class Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl$3;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "CarUiRecyclerViewImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->setLayoutStyle(Lcom/android/car/ui/recyclerview/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;


# direct methods
.method constructor <init>(Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;Landroid/content/Context;IIZ)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl$3;->a:Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method


# virtual methods
.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 318
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 321
    new-instance p1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl$3;->a:Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;

    .line 322
    invoke-static {v0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->access$300(Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 323
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 324
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method
