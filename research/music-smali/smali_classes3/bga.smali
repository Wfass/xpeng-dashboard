.class public Lbga;
.super Lbgb;
.source "MsRmCategoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbga$a;
    }
.end annotation


# instance fields
.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 23
    invoke-direct {p0, p1, v0}, Lbgb;-><init>(Landroid/content/Context;I)V

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lbga;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 7

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 31
    invoke-direct/range {v0 .. v6}, Lbgb;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;ILcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lbga;->g:I

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 85
    iput p1, p0, Lbga;->g:I

    .line 86
    invoke-virtual {p0}, Lbga;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lbga;->notifyItemChanged(I)V

    return-void
.end method

.method public b()[Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;
    .locals 4

    const/4 v0, 0x1

    .line 36
    new-array v1, v0, [Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;

    new-instance v2, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;

    sget v3, Lbez$f;->item_foot_view:I

    invoke-direct {v2, v0, v3, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;-><init>(III)V

    const/4 v0, 0x0

    aput-object v2, v1, v0

    return-object v1
.end method

.method public g()I
    .locals 1

    .line 90
    iget v0, p0, Lbga;->g:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 120
    invoke-virtual {p0}, Lbga;->i()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lbga;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 95
    invoke-virtual {p0}, Lbga;->getItemCount()I

    move-result v1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 59
    invoke-super {p0, p1, p2}, Lbgb;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 60
    instance-of p2, p1, Lbga$a;

    if-eqz p2, :cond_4

    .line 61
    check-cast p1, Lbga$a;

    .line 62
    iget-object p2, p1, Lbga$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz p2, :cond_4

    .line 63
    iget p2, p0, Lbga;->g:I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 64
    iget-object p2, p1, Lbga$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 65
    iget-object p2, p1, Lbga$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lbez$g;->rv_loading:I

    invoke-virtual {p2, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 66
    iget-object p1, p1, Lbga$a;->b:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p2, v1, :cond_1

    .line 68
    iget-object p2, p1, Lbga$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 69
    iget-object p1, p1, Lbga$a;->b:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 71
    iget-object p2, p1, Lbga$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 72
    iget-object p1, p1, Lbga$a;->b:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 74
    iget-object p2, p1, Lbga$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 75
    iget-object p1, p1, Lbga$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    sget p2, Lbez$g;->rv_loading:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    goto :goto_0

    .line 77
    :cond_3
    iget-object p2, p1, Lbga$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 78
    iget-object p1, p1, Lbga$a;->b:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lbez$f;->item_foot_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    new-instance p2, Lbga$a;

    invoke-direct {p2, p0, p1}, Lbga$a;-><init>(Lbga;Landroid/view/View;)V

    return-object p2

    .line 52
    :cond_0
    invoke-virtual {p0}, Lbga;->c()Landroid/view/View;

    move-result-object p1

    .line 53
    new-instance p2, Lbgb$a;

    invoke-direct {p2, p0, p1}, Lbgb$a;-><init>(Lbgb;Landroid/view/View;)V

    return-object p2
.end method
