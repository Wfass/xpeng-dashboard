.class public Landroidx/recyclerview/selection/DefaultSelectionTracker;
.super Landroidx/recyclerview/selection/SelectionTracker;
.source "DefaultSelectionTracker.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/selection/DefaultSelectionTracker$AdapterObserver;,
        Landroidx/recyclerview/selection/DefaultSelectionTracker$RangeCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/selection/SelectionTracker<",
        "TK;>;"
    }
.end annotation


# static fields
.field private static final EXTRA_SELECTION_PREFIX:Ljava/lang/String; = "androidx.recyclerview.selection"

.field private static final TAG:Ljava/lang/String; = "DefaultSelectionTracker"


# instance fields
.field private final mAdapterObserver:Landroidx/recyclerview/selection/DefaultSelectionTracker$AdapterObserver;

.field private final mKeyProvider:Landroidx/recyclerview/selection/ItemKeyProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/ItemKeyProvider<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/selection/SelectionTracker$SelectionObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mRange:Landroidx/recyclerview/selection/Range;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mRangeCallbacks:Landroidx/recyclerview/selection/DefaultSelectionTracker$RangeCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/DefaultSelectionTracker<",
            "TK;>.RangeCallbacks;"
        }
    .end annotation
.end field

.field private final mSelection:Landroidx/recyclerview/selection/Selection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/Selection<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final mSelectionId:Ljava/lang/String;

.field private final mSelectionPredicate:Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final mSingleSelect:Z

.field private final mStorage:Landroidx/recyclerview/selection/StorageStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/StorageStrategy<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/recyclerview/selection/ItemKeyProvider;Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;Landroidx/recyclerview/selection/StorageStrategy;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/selection/ItemKeyProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/selection/StorageStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/recyclerview/selection/ItemKeyProvider;",
            "Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;",
            "Landroidx/recyclerview/selection/StorageStrategy<",
            "TK;>;)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Landroidx/recyclerview/selection/SelectionTracker;-><init>()V

    .line 58
    new-instance v0, Landroidx/recyclerview/selection/Selection;

    invoke-direct {v0}, Landroidx/recyclerview/selection/Selection;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mObservers:Ljava/util/List;

    .line 85
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 87
    if-eqz p2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 88
    if-eqz p3, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 89
    if-eqz p4, :cond_3

    move v0, v1

    nop

    :cond_3
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 91
    iput-object p1, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelectionId:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mKeyProvider:Landroidx/recyclerview/selection/ItemKeyProvider;

    .line 93
    iput-object p3, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelectionPredicate:Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;

    .line 94
    iput-object p4, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mStorage:Landroidx/recyclerview/selection/StorageStrategy;

    .line 96
    new-instance p1, Landroidx/recyclerview/selection/DefaultSelectionTracker$RangeCallbacks;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/recyclerview/selection/DefaultSelectionTracker$RangeCallbacks;-><init>(Landroidx/recyclerview/selection/DefaultSelectionTracker;Landroidx/recyclerview/selection/DefaultSelectionTracker$1;)V

    iput-object p1, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mRangeCallbacks:Landroidx/recyclerview/selection/DefaultSelectionTracker$RangeCallbacks;

    .line 98
    invoke-virtual {p3}, Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;->canSelectMultiple()Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSingleSelect:Z

    .line 100
    new-instance p1, Landroidx/recyclerview/selection/DefaultSelectionTracker$AdapterObserver;

    invoke-direct {p1, p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker$AdapterObserver;-><init>(Landroidx/recyclerview/selection/DefaultSelectionTracker;)V

    iput-object p1, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mAdapterObserver:Landroidx/recyclerview/selection/DefaultSelectionTracker$AdapterObserver;

    .line 101
    return-void
.end method

.method static synthetic access$100(Landroidx/recyclerview/selection/DefaultSelectionTracker;IIZ)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->updateForRegularRange(IIZ)V

    return-void
.end method

.method static synthetic access$200(Landroidx/recyclerview/selection/DefaultSelectionTracker;IIZ)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->updateForProvisionalRange(IIZ)V

    return-void
.end method

.method static synthetic access$300(Landroidx/recyclerview/selection/DefaultSelectionTracker;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->onDataSetChanged()V

    return-void
.end method

.method private canSetState(Ljava/lang/Object;Z)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)Z"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelectionPredicate:Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;->canSetStateForKey(Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method private clearPrimarySelection()V
    .locals 1

    .line 170
    invoke-virtual {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    return-void

    .line 174
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->clearSelectionQuietly()Landroidx/recyclerview/selection/Selection;

    move-result-object v0

    .line 175
    invoke-direct {p0, v0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->notifySelectionCleared(Landroidx/recyclerview/selection/Selection;)V

    .line 176
    invoke-direct {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->notifySelectionChanged()V

    .line 177
    return-void
.end method

.method private clearSelectionQuietly()Landroidx/recyclerview/selection/Selection;
    .locals 2

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mRange:Landroidx/recyclerview/selection/Range;

    .line 187
    new-instance v0, Landroidx/recyclerview/selection/MutableSelection;

    invoke-direct {v0}, Landroidx/recyclerview/selection/MutableSelection;-><init>()V

    .line 188
    invoke-virtual {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {p0, v0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->copySelection(Landroidx/recyclerview/selection/MutableSelection;)V

    .line 190
    iget-object v1, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    invoke-virtual {v1}, Landroidx/recyclerview/selection/Selection;->clear()V

    .line 193
    :cond_0
    return-object v0
.end method

.method private extendRange(II)V
    .locals 2

    .line 297
    invoke-virtual {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->isRangeActive()Z

    move-result v0

    const-string v1, "Range start point not set."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 299
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mRange:Landroidx/recyclerview/selection/Range;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/selection/Range;->extendRange(II)V

    .line 304
    invoke-direct {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->notifySelectionChanged()V

    .line 305
    return-void
.end method

.method private notifyItemStateChanged(Ljava/lang/Object;Z)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)V"
        }
    .end annotation

    .line 383
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 385
    iget-object v1, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .line 386
    :goto_1
    if-ltz v1, :cond_1

    .line 387
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mObservers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/selection/SelectionTracker$SelectionObserver;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/selection/SelectionTracker$SelectionObserver;->onItemStateChanged(Ljava/lang/Object;Z)V

    .line 386
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 389
    :cond_1
    return-void
.end method

.method private notifySelectionChanged()V
    .locals 2

    .line 407
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 408
    :goto_0
    if-ltz v0, :cond_0

    .line 409
    iget-object v1, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mObservers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/selection/SelectionTracker$SelectionObserver;

    invoke-virtual {v1}, Landroidx/recyclerview/selection/SelectionTracker$SelectionObserver;->onSelectionChanged()V

    .line 408
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 411
    :cond_0
    return-void
.end method

.method private notifySelectionCleared(Landroidx/recyclerview/selection/Selection;)V
    .locals 3
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

    .line 392
    iget-object v0, p1, Landroidx/recyclerview/selection/Selection;->mSelection:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 393
    invoke-direct {p0, v1, v2}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->notifyItemStateChanged(Ljava/lang/Object;Z)V

    .line 394
    goto :goto_0

    .line 395
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/selection/Selection;->mProvisionalSelection:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 396
    invoke-direct {p0, v0, v2}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->notifyItemStateChanged(Ljava/lang/Object;Z)V

    .line 397
    goto :goto_1

    .line 398
    :cond_1
    return-void
.end method

.method private notifySelectionRefresh()V
    .locals 2

    .line 421
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 422
    :goto_0
    if-ltz v0, :cond_0

    .line 423
    iget-object v1, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mObservers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/selection/SelectionTracker$SelectionObserver;

    invoke-virtual {v1}, Landroidx/recyclerview/selection/SelectionTracker$SelectionObserver;->onSelectionRefresh()V

    .line 422
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 425
    :cond_0
    return-void
.end method

.method private notifySelectionRestored()V
    .locals 2

    .line 414
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 415
    :goto_0
    if-ltz v0, :cond_0

    .line 416
    iget-object v1, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mObservers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/selection/SelectionTracker$SelectionObserver;

    invoke-virtual {v1}, Landroidx/recyclerview/selection/SelectionTracker$SelectionObserver;->onSelectionRestored()V

    .line 415
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 418
    :cond_0
    return-void
.end method

.method private onDataSetChanged()V
    .locals 5

    .line 356
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/Selection;->clearProvisionalSelection()V

    .line 358
    invoke-direct {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->notifySelectionRefresh()V

    .line 360
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/Selection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 365
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->canSetState(Ljava/lang/Object;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 366
    invoke-virtual {p0, v1}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->deselect(Ljava/lang/Object;)Z

    goto :goto_2

    .line 368
    :cond_0
    iget-object v3, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .line 369
    :goto_1
    if-ltz v3, :cond_1

    .line 370
    iget-object v4, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mObservers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/selection/SelectionTracker$SelectionObserver;

    invoke-virtual {v4, v1, v2}, Landroidx/recyclerview/selection/SelectionTracker$SelectionObserver;->onItemStateChanged(Ljava/lang/Object;Z)V

    .line 369
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 373
    :cond_1
    :goto_2
    goto :goto_0

    .line 375
    :cond_2
    invoke-direct {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->notifySelectionChanged()V

    .line 376
    return-void
.end method

.method private setItemsSelectedQuietly(Ljava/lang/Iterable;Z)Z
    .locals 5
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

    .line 145
    nop

    .line 146
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 147
    const/4 v3, 0x1

    if-eqz p2, :cond_1

    .line 148
    invoke-direct {p0, v2, v3}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->canSetState(Ljava/lang/Object;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/selection/Selection;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 150
    :cond_0
    :goto_1
    move v3, v0

    goto :goto_2

    .line 148
    :cond_1
    nop

    .line 149
    invoke-direct {p0, v2, v0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->canSetState(Ljava/lang/Object;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/selection/Selection;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_1

    .line 150
    :goto_2
    if-eqz v3, :cond_3

    .line 151
    invoke-direct {p0, v2, p2}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->notifyItemStateChanged(Ljava/lang/Object;Z)V

    .line 153
    :cond_3
    or-int/2addr v1, v3

    .line 154
    goto :goto_0

    .line 155
    :cond_4
    return v1
.end method

.method private updateForProvisionalRange(IIZ)V
    .locals 4

    .line 458
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p2, p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 460
    :goto_1
    if-gt p1, p2, :cond_5

    .line 461
    iget-object v2, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mKeyProvider:Landroidx/recyclerview/selection/ItemKeyProvider;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/selection/ItemKeyProvider;->getKey(I)Ljava/lang/Object;

    move-result-object v2

    .line 462
    if-nez v2, :cond_1

    .line 463
    goto :goto_4

    .line 466
    :cond_1
    nop

    .line 467
    if-eqz p3, :cond_3

    .line 468
    invoke-direct {p0, v2, v1}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->canSetState(Ljava/lang/Object;Z)Z

    move-result v3

    .line 469
    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    iget-object v3, v3, Landroidx/recyclerview/selection/Selection;->mSelection:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 470
    iget-object v3, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    iget-object v3, v3, Landroidx/recyclerview/selection/Selection;->mProvisionalSelection:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 471
    nop

    .line 473
    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    goto :goto_3

    .line 474
    :cond_3
    iget-object v3, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    iget-object v3, v3, Landroidx/recyclerview/selection/Selection;->mProvisionalSelection:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 475
    nop

    .line 480
    move v3, v1

    :goto_3
    if-eqz v3, :cond_4

    .line 481
    invoke-direct {p0, v2, p3}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->notifyItemStateChanged(Ljava/lang/Object;Z)V

    .line 460
    :cond_4
    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 485
    :cond_5
    invoke-direct {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->notifySelectionChanged()V

    .line 486
    return-void
.end method

.method private updateForRange(IIZI)V
    .locals 0

    .line 428
    packed-switch p4, :pswitch_data_0

    .line 436
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid range type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 433
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->updateForProvisionalRange(IIZ)V

    .line 434
    goto :goto_0

    .line 430
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->updateForRegularRange(IIZ)V

    .line 431
    nop

    .line 438
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateForRegularRange(IIZ)V
    .locals 1

    .line 441
    if-lt p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 443
    :goto_1
    if-gt p1, p2, :cond_3

    .line 444
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mKeyProvider:Landroidx/recyclerview/selection/ItemKeyProvider;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/ItemKeyProvider;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    .line 445
    if-nez v0, :cond_1

    .line 446
    goto :goto_2

    .line 449
    :cond_1
    if-eqz p3, :cond_2

    .line 450
    invoke-virtual {p0, v0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->select(Ljava/lang/Object;)Z

    goto :goto_2

    .line 452
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->deselect(Ljava/lang/Object;)Z

    .line 443
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 455
    :cond_3
    return-void
.end method


# virtual methods
.method public addObserver(Landroidx/recyclerview/selection/SelectionTracker$SelectionObserver;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/selection/SelectionTracker$SelectionObserver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 105
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 106
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public anchorRange(I)V
    .locals 2

    .line 268
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 269
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    iget-object v1, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mKeyProvider:Landroidx/recyclerview/selection/ItemKeyProvider;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/selection/ItemKeyProvider;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/selection/Selection;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 271
    new-instance v0, Landroidx/recyclerview/selection/Range;

    iget-object v1, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mRangeCallbacks:Landroidx/recyclerview/selection/DefaultSelectionTracker$RangeCallbacks;

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/selection/Range;-><init>(ILandroidx/recyclerview/selection/Range$Callbacks;)V

    iput-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mRange:Landroidx/recyclerview/selection/Range;

    .line 272
    return-void
.end method

.method public clearProvisionalSelection()V
    .locals 3

    .line 335
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    iget-object v0, v0, Landroidx/recyclerview/selection/Selection;->mProvisionalSelection:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 336
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->notifyItemStateChanged(Ljava/lang/Object;Z)V

    .line 337
    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/Selection;->clearProvisionalSelection()V

    .line 339
    return-void
.end method

.method public clearSelection()Z
    .locals 1

    .line 160
    invoke-virtual {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    return v0

    .line 164
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->clearProvisionalSelection()V

    .line 165
    invoke-direct {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->clearPrimarySelection()V

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public copySelection(Landroidx/recyclerview/selection/MutableSelection;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/selection/MutableSelection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 121
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/selection/MutableSelection;->copyFrom(Landroidx/recyclerview/selection/Selection;)V

    .line 122
    return-void
.end method

.method public deselect(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 224
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 226
    iget-object v2, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/selection/Selection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->canSetState(Ljava/lang/Object;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 229
    return v1

    .line 231
    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/selection/Selection;->remove(Ljava/lang/Object;)Z

    .line 232
    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->notifyItemStateChanged(Ljava/lang/Object;Z)V

    .line 233
    invoke-direct {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->notifySelectionChanged()V

    .line 234
    iget-object p1, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    invoke-virtual {p1}, Landroidx/recyclerview/selection/Selection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->isRangeActive()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 238
    invoke-virtual {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->endRange()V

    .line 240
    :cond_2
    return v0

    .line 243
    :cond_3
    return v1
.end method

.method public endRange()V
    .locals 1

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mRange:Landroidx/recyclerview/selection/Range;

    .line 263
    invoke-virtual {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->clearProvisionalSelection()V

    .line 264
    return-void
.end method

.method public extendProvisionalRange(I)V
    .locals 2

    .line 276
    iget-boolean v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSingleSelect:Z

    if-eqz v0, :cond_0

    .line 277
    return-void

    .line 281
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->isRangeActive()Z

    move-result v0

    const-string v1, "Range start point not set."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 282
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->extendRange(II)V

    .line 283
    return-void
.end method

.method public extendRange(I)V
    .locals 1

    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->extendRange(II)V

    .line 257
    return-void
.end method

.method getAdapterDataObserver()Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
    .locals 1

    .line 352
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mAdapterObserver:Landroidx/recyclerview/selection/DefaultSelectionTracker$AdapterObserver;

    return-object v0
.end method

.method getInstanceStateKey()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "androidx.recyclerview.selection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelectionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelection()Landroidx/recyclerview/selection/Selection;
    .locals 1

    .line 116
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    return-object v0
.end method

.method public hasSelection()Z
    .locals 1

    .line 111
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/Selection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isRangeActive()Z
    .locals 1

    .line 343
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mRange:Landroidx/recyclerview/selection/Range;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelected(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/Selection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public mergeProvisionalSelection()V
    .locals 1

    .line 323
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/Selection;->mergeProvisionalSelection()V

    .line 330
    invoke-direct {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->notifySelectionChanged()V

    .line 331
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 505
    if-nez p1, :cond_0

    .line 506
    return-void

    .line 509
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->getInstanceStateKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 510
    if-nez p1, :cond_1

    .line 511
    return-void

    .line 514
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mStorage:Landroidx/recyclerview/selection/StorageStrategy;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/StorageStrategy;->asSelection(Landroid/os/Bundle;)Landroidx/recyclerview/selection/Selection;

    move-result-object p1

    .line 515
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/selection/Selection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 516
    invoke-virtual {p0, p1}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->restoreSelection(Landroidx/recyclerview/selection/Selection;)V

    .line 518
    :cond_2
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 496
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/Selection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    return-void

    .line 500
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->getInstanceStateKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mStorage:Landroidx/recyclerview/selection/StorageStrategy;

    iget-object v2, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/selection/StorageStrategy;->asBundle(Landroidx/recyclerview/selection/Selection;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 501
    return-void
.end method

.method protected restoreSelection(Landroidx/recyclerview/selection/Selection;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/selection/Selection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 131
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 132
    iget-object p1, p1, Landroidx/recyclerview/selection/Selection;->mSelection:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->setItemsSelectedQuietly(Ljava/lang/Iterable;Z)Z

    .line 134
    invoke-direct {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->notifySelectionRestored()V

    .line 135
    return-void
.end method

.method public select(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 198
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 200
    iget-object v2, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/selection/Selection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    return v0

    .line 204
    :cond_1
    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->canSetState(Ljava/lang/Object;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 206
    return v0

    .line 210
    :cond_2
    iget-boolean v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSingleSelect:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    invoke-direct {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->clearSelectionQuietly()Landroidx/recyclerview/selection/Selection;

    move-result-object v0

    .line 212
    invoke-direct {p0, v0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->notifySelectionCleared(Landroidx/recyclerview/selection/Selection;)V

    .line 215
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/Selection;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->notifyItemStateChanged(Ljava/lang/Object;Z)V

    .line 217
    invoke-direct {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->notifySelectionChanged()V

    .line 219
    return v1
.end method

.method public setItemsSelected(Ljava/lang/Iterable;Z)Z
    .locals 0
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

    .line 139
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->setItemsSelectedQuietly(Ljava/lang/Iterable;Z)Z

    move-result p1

    .line 140
    invoke-direct {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->notifySelectionChanged()V

    .line 141
    return p1
.end method

.method public setProvisionalSelection(Ljava/util/Set;)V
    .locals 2
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

    .line 309
    iget-boolean v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSingleSelect:Z

    if-eqz v0, :cond_0

    .line 310
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/Selection;->setProvisionalSelection(Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    .line 314
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 315
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->notifyItemStateChanged(Ljava/lang/Object;Z)V

    .line 316
    goto :goto_0

    .line 318
    :cond_1
    invoke-direct {p0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->notifySelectionChanged()V

    .line 319
    return-void
.end method

.method public startRange(I)V
    .locals 2

    .line 248
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mSelection:Landroidx/recyclerview/selection/Selection;

    iget-object v1, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mKeyProvider:Landroidx/recyclerview/selection/ItemKeyProvider;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/selection/ItemKeyProvider;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/selection/Selection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker;->mKeyProvider:Landroidx/recyclerview/selection/ItemKeyProvider;

    .line 249
    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/ItemKeyProvider;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->select(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->anchorRange(I)V

    .line 252
    :cond_1
    return-void
.end method
