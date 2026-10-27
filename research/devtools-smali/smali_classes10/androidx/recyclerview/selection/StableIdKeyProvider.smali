.class public final Landroidx/recyclerview/selection/StableIdKeyProvider;
.super Landroidx/recyclerview/selection/ItemKeyProvider;
.source "StableIdKeyProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/selection/ItemKeyProvider<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mKeyToPosition:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPositionToKey:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/recyclerview/selection/ItemKeyProvider;-><init>(I)V

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/selection/StableIdKeyProvider;->mPositionToKey:Landroid/util/SparseArray;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/selection/StableIdKeyProvider;->mKeyToPosition:Ljava/util/Map;

    .line 58
    iput-object p1, p0, Landroidx/recyclerview/selection/StableIdKeyProvider;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    iget-object p1, p0, Landroidx/recyclerview/selection/StableIdKeyProvider;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/selection/StableIdKeyProvider$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/selection/StableIdKeyProvider$1;-><init>(Landroidx/recyclerview/selection/StableIdKeyProvider;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Landroidx/recyclerview/selection/StableIdKeyProvider;Landroid/view/View;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroidx/recyclerview/selection/StableIdKeyProvider;->onAttached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/recyclerview/selection/StableIdKeyProvider;Landroid/view/View;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroidx/recyclerview/selection/StableIdKeyProvider;->onDetached(Landroid/view/View;)V

    return-void
.end method

.method private onAttached(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 77
    iget-object v0, p0, Landroidx/recyclerview/selection/StableIdKeyProvider;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 79
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v1

    .line 80
    const/4 p1, -0x1

    if-eq v0, p1, :cond_0

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Landroidx/recyclerview/selection/StableIdKeyProvider;->mPositionToKey:Landroid/util/SparseArray;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    iget-object p1, p0, Landroidx/recyclerview/selection/StableIdKeyProvider;->mKeyToPosition:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    return-void
.end method

.method private onDetached(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 87
    iget-object v0, p0, Landroidx/recyclerview/selection/StableIdKeyProvider;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 89
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v1

    .line 90
    const/4 p1, -0x1

    if-eq v0, p1, :cond_0

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Landroidx/recyclerview/selection/StableIdKeyProvider;->mPositionToKey:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 92
    iget-object p1, p0, Landroidx/recyclerview/selection/StableIdKeyProvider;->mKeyToPosition:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public getKey(I)Ljava/lang/Long;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 98
    iget-object v0, p0, Landroidx/recyclerview/selection/StableIdKeyProvider;->mPositionToKey:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public bridge synthetic getKey(I)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Landroidx/recyclerview/selection/StableIdKeyProvider;->getKey(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getPosition(Ljava/lang/Long;)I
    .locals 1
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 103
    iget-object v0, p0, Landroidx/recyclerview/selection/StableIdKeyProvider;->mKeyToPosition:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Landroidx/recyclerview/selection/StableIdKeyProvider;->mKeyToPosition:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 106
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic getPosition(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/selection/StableIdKeyProvider;->getPosition(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method
