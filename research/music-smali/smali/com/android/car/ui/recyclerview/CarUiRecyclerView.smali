.class public interface abstract Lcom/android/car/ui/recyclerview/CarUiRecyclerView;
.super Ljava/lang/Object;
.source "CarUiRecyclerView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Instantiatable"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ui/recyclerview/CarUiRecyclerView$b;,
        Lcom/android/car/ui/recyclerview/CarUiRecyclerView$c;,
        Lcom/android/car/ui/recyclerview/CarUiRecyclerView$a;
    }
.end annotation


# virtual methods
.method public abstract addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V
.end method

.method public abstract findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end method

.method public abstract focusableViewAvailable(Landroid/view/View;)V
.end method

.method public abstract getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getChildLayoutPosition(Landroid/view/View;)I
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract invalidateItemDecorations()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract post(Ljava/lang/Runnable;)Z
.end method

.method public abstract scrollToPosition(I)V
.end method

.method public abstract setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract setClipToPadding(Z)V
.end method

.method public abstract setPadding(IIII)V
.end method
