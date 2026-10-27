.class public abstract Lcom/xiaopeng/musicradio/datalist/r;
.super Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;
.source "MoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/datalist/r$b;,
        Lcom/xiaopeng/musicradio/datalist/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;"
    }
.end annotation


# instance fields
.field private d:Z

.field public j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 38
    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/musicradio/datalist/r;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/xiaopeng/musicradio/datalist/r;->j:I

    .line 43
    iput-boolean p5, p0, Lcom/xiaopeng/musicradio/datalist/r;->d:Z

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public a(ZI)V
    .locals 1

    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/datalist/r;->a(ZIZ)V

    return-void
.end method

.method public a(ZIZ)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/datalist/r;->d:Z

    .line 60
    iput p2, p0, Lcom/xiaopeng/musicradio/datalist/r;->j:I

    if-eqz p3, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/r;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public abstract b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TT;"
        }
    .end annotation
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 127
    instance-of p2, p1, Lcom/xiaopeng/musicradio/datalist/r$a;

    if-eqz p2, :cond_0

    .line 128
    check-cast p1, Lcom/xiaopeng/musicradio/datalist/r$a;

    .line 129
    iget p2, p0, Lcom/xiaopeng/musicradio/datalist/r;->j:I

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/datalist/r$a;->a(I)V

    :cond_0
    return-void
.end method

.method public c(I)I
    .locals 0

    .line 99
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public c(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 122
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/xiaopeng/musicradio/common/k$f;->item_foot_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 123
    new-instance p2, Lcom/xiaopeng/musicradio/datalist/r$b;

    invoke-direct {p2, p1}, Lcom/xiaopeng/musicradio/datalist/r$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public f(I)V
    .locals 1

    .line 70
    iget v0, p0, Lcom/xiaopeng/musicradio/datalist/r;->j:I

    .line 71
    iput p1, p0, Lcom/xiaopeng/musicradio/datalist/r;->j:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 73
    :goto_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/datalist/r;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/r;->j()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p1, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/r;->j()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/datalist/r;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method public final getItemCount()I
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/r;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/r;->j()I

    move-result v0

    .line 84
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/datalist/r;->d:Z

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/datalist/r;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/r;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v0, p1, :cond_0

    const p1, 0x7fffffff

    return p1

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/datalist/r;->c(I)I

    move-result p1

    return p1
.end method

.method public abstract j()I
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 114
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/datalist/r;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/datalist/r;->getItemViewType(I)I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/datalist/r;->b(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/datalist/r;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :goto_0
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/datalist/r;->d:Z

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    if-ne p2, v0, :cond_0

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/datalist/r;->c(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    .line 108
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/datalist/r;->b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method
