.class public abstract Landroidx/recyclerview/selection/SelectionTracker;
.super Ljava/lang/Object;
.source "SelectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/selection/SelectionTracker$Builder;,
        Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;,
        Landroidx/recyclerview/selection/SelectionTracker$SelectionObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final SELECTION_CHANGED_MARKER:Ljava/lang/String; = "Selection-Changed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    return-void
.end method


# virtual methods
.method public abstract addObserver(Landroidx/recyclerview/selection/SelectionTracker$SelectionObserver;)V
.end method

.method abstract anchorRange(I)V
.end method

.method abstract clearProvisionalSelection()V
.end method

.method public abstract clearSelection()Z
.end method

.method public abstract copySelection(Landroidx/recyclerview/selection/MutableSelection;)V
    .param p1    # Landroidx/recyclerview/selection/MutableSelection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/selection/MutableSelection<",
            "TK;>;)V"
        }
    .end annotation
.end method

.method public abstract deselect(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation
.end method

.method abstract endRange()V
.end method

.method abstract extendProvisionalRange(I)V
.end method

.method abstract extendRange(I)V
.end method

.method abstract getAdapterDataObserver()Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.end method

.method public abstract getSelection()Landroidx/recyclerview/selection/Selection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/selection/Selection<",
            "TK;>;"
        }
    .end annotation
.end method

.method public abstract hasSelection()Z
.end method

.method abstract isRangeActive()Z
.end method

.method public abstract isSelected(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation
.end method

.method abstract mergeProvisionalSelection()V
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected abstract restoreSelection(Landroidx/recyclerview/selection/Selection;)V
    .param p1    # Landroidx/recyclerview/selection/Selection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/selection/Selection<",
            "TK;>;)V"
        }
    .end annotation
.end method

.method public abstract select(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation
.end method

.method public abstract setItemsSelected(Ljava/lang/Iterable;Z)Z
    .param p1    # Ljava/lang/Iterable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TK;>;Z)Z"
        }
    .end annotation
.end method

.method abstract setProvisionalSelection(Ljava/util/Set;)V
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TK;>;)V"
        }
    .end annotation
.end method

.method abstract startRange(I)V
.end method
