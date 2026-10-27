.class public Lme/drakeet/multitype/e;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MultiTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field private b:Lme/drakeet/multitype/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/drakeet/multitype/e;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 55
    new-instance v0, Lme/drakeet/multitype/f;

    invoke-direct {v0}, Lme/drakeet/multitype/f;-><init>()V

    invoke-direct {p0, p1, v0}, Lme/drakeet/multitype/e;-><init>(Ljava/util/List;Lme/drakeet/multitype/g;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lme/drakeet/multitype/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Lme/drakeet/multitype/g;",
            ")V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 77
    iput-object p1, p0, Lme/drakeet/multitype/e;->a:Ljava/util/List;

    .line 78
    iput-object p2, p0, Lme/drakeet/multitype/e;->b:Lme/drakeet/multitype/g;

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lme/drakeet/multitype/c;
    .locals 1

    .line 321
    iget-object v0, p0, Lme/drakeet/multitype/e;->b:Lme/drakeet/multitype/g;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-interface {v0, p1}, Lme/drakeet/multitype/g;->a(I)Lme/drakeet/multitype/c;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lme/drakeet/multitype/e;->b:Lme/drakeet/multitype/g;

    invoke-interface {v0, p1}, Lme/drakeet/multitype/g;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You have registered the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " type. "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "It will override the original binder(s)."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MultiTypeAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)I
    .locals 2

    .line 326
    iget-object v0, p0, Lme/drakeet/multitype/e;->b:Lme/drakeet/multitype/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lme/drakeet/multitype/g;->b(Ljava/lang/Class;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 329
    iget-object v1, p0, Lme/drakeet/multitype/e;->b:Lme/drakeet/multitype/g;

    invoke-interface {v1, v0}, Lme/drakeet/multitype/g;->b(I)Lme/drakeet/multitype/d;

    move-result-object v1

    .line 330
    invoke-interface {v1, p1}, Lme/drakeet/multitype/d;->a(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0

    .line 332
    :cond_0
    new-instance v0, Lme/drakeet/multitype/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1}, Lme/drakeet/multitype/a;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method public a()Lme/drakeet/multitype/g;
    .locals 1

    .line 184
    iget-object v0, p0, Lme/drakeet/multitype/e;->b:Lme/drakeet/multitype/g;

    return-object v0
.end method

.method public a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lme/drakeet/multitype/c<",
            "TT;*>;)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lme/drakeet/multitype/e;->a(Ljava/lang/Class;)V

    .line 99
    iget-object v0, p0, Lme/drakeet/multitype/e;->b:Lme/drakeet/multitype/g;

    new-instance v1, Lme/drakeet/multitype/b;

    invoke-direct {v1}, Lme/drakeet/multitype/b;-><init>()V

    invoke-interface {v0, p1, p2, v1}, Lme/drakeet/multitype/g;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;Lme/drakeet/multitype/d;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lme/drakeet/multitype/e;->a:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lme/drakeet/multitype/e;->a:Ljava/util/List;

    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 235
    iget-object v0, p0, Lme/drakeet/multitype/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    .line 250
    iget-object v0, p0, Lme/drakeet/multitype/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 251
    invoke-virtual {p0, p1}, Lme/drakeet/multitype/e;->getItemViewType(I)I

    move-result p1

    .line 252
    iget-object v1, p0, Lme/drakeet/multitype/e;->b:Lme/drakeet/multitype/g;

    invoke-interface {v1, p1}, Lme/drakeet/multitype/g;->a(I)Lme/drakeet/multitype/c;

    move-result-object p1

    .line 253
    invoke-virtual {p1, v0}, Lme/drakeet/multitype/c;->a(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 190
    iget-object v0, p0, Lme/drakeet/multitype/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 191
    invoke-virtual {p0, p1}, Lme/drakeet/multitype/e;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 220
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "You should not call this method. Call RecyclerView.Adapter#onBindViewHolder(holder, position, payloads) instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lme/drakeet/multitype/e;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 228
    iget-object v0, p0, Lme/drakeet/multitype/e;->b:Lme/drakeet/multitype/g;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    invoke-interface {v0, v1}, Lme/drakeet/multitype/g;->a(I)Lme/drakeet/multitype/c;

    move-result-object v0

    .line 229
    invoke-virtual {v0, p1, p2, p3}, Lme/drakeet/multitype/c;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 197
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lme/drakeet/multitype/e;->b:Lme/drakeet/multitype/g;

    invoke-interface {v1, p2}, Lme/drakeet/multitype/g;->a(I)Lme/drakeet/multitype/c;

    move-result-object p2

    .line 199
    iput-object p0, p2, Lme/drakeet/multitype/c;->e:Lme/drakeet/multitype/e;

    .line 200
    invoke-virtual {p2, v0, p1}, Lme/drakeet/multitype/c;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 287
    invoke-direct {p0, p1}, Lme/drakeet/multitype/e;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lme/drakeet/multitype/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/drakeet/multitype/c;->c(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 301
    invoke-direct {p0, p1}, Lme/drakeet/multitype/e;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lme/drakeet/multitype/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/drakeet/multitype/c;->d(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 315
    invoke-direct {p0, p1}, Lme/drakeet/multitype/e;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lme/drakeet/multitype/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/drakeet/multitype/c;->e(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 267
    invoke-direct {p0, p1}, Lme/drakeet/multitype/e;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lme/drakeet/multitype/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/drakeet/multitype/c;->b(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
