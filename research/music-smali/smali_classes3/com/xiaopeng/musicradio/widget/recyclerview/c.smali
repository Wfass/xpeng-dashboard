.class public abstract Lcom/xiaopeng/musicradio/widget/recyclerview/c;
.super Lcom/xiaopeng/musicradio/widget/recyclerview/b;
.source "BaseItemClickAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/recyclerview/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/xiaopeng/musicradio/widget/recyclerview/b<",
        "TK;TT;>;"
    }
.end annotation


# instance fields
.field private a:[I

.field protected c:Landroidx/recyclerview/widget/RecyclerView;

.field protected d:Lcom/xiaopeng/musicradio/widget/recyclerview/c$a;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/b;-><init>()V

    .line 67
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/c$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/c$1;-><init>(Lcom/xiaopeng/musicradio/widget/recyclerview/c;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/c;->h:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public abstract b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TT;"
        }
    .end annotation
.end method

.method protected b()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/b;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/c;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/c;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TT;"
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/c;->b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 28
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/c;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/c;->a:[I

    if-nez p2, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/c;->b()[I

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/c;->a:[I

    .line 32
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/c;->a:[I

    if-eqz p2, :cond_2

    .line 33
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p2, v1

    .line 34
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 36
    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/c;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/b;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/c;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
