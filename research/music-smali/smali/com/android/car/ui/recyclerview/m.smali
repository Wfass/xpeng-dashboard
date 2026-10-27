.class public final Lcom/android/car/ui/recyclerview/m;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "ProxyRecyclerView.java"


# instance fields
.field private a:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/ui/recyclerview/CarUiRecyclerView;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p2, p0, Lcom/android/car/ui/recyclerview/m;->a:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    return-void
.end method


# virtual methods
.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/m;->a:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-interface {v0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/m;->a:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-interface {v0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/m;->a:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-interface {v0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method public invalidateItemDecorations()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/m;->a:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-interface {v0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->invalidateItemDecorations()V

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/m;->a:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-interface {v0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/m;->a:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-interface {v0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
