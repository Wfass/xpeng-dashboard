.class public Lcom/xiaopeng/musicradio/widget/common/a;
.super Lcom/xiaopeng/musicradio/widget/common/b;
.source "MusicDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/common/a$a;
    }
.end annotation


# instance fields
.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/widget/common/b;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/a;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/widget/common/b;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/a;->i:I

    .line 29
    iput-object p5, p0, Lcom/xiaopeng/musicradio/widget/common/a;->h:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-void
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/musicradio/widget/common/b$b;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IZ)V
    .locals 1

    .line 92
    iget-object p4, p1, Lcom/xiaopeng/musicradio/widget/common/b$b;->a:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/common/a;->g:I

    invoke-virtual {p4, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->setAccountType(I)V

    .line 93
    iget-object p1, p1, Lcom/xiaopeng/musicradio/widget/common/b$b;->a:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    iget-object p4, p0, Lcom/xiaopeng/musicradio/widget/common/a;->h:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0, p4}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/a;->i:I

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/a;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/common/a;->notifyItemChanged(I)V

    return-void
.end method

.method public b()[Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;
    .locals 4

    const/4 v0, 0x1

    .line 34
    new-array v1, v0, [Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;

    new-instance v2, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;

    sget v3, Lcom/xiaopeng/musicradio/common/k$f;->item_musiclist_foot_view:I

    invoke-direct {v2, v0, v3, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;-><init>(III)V

    const/4 v0, 0x0

    aput-object v2, v1, v0

    return-object v1
.end method

.method public g()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/common/a;->i:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/a;->i()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/a;->i()Ljava/util/List;

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

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/a;->getItemCount()I

    move-result v1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 63
    instance-of v0, p1, Lcom/xiaopeng/musicradio/widget/common/a$a;

    if-eqz v0, :cond_4

    .line 64
    check-cast p1, Lcom/xiaopeng/musicradio/widget/common/a$a;

    .line 65
    iget-object p2, p1, Lcom/xiaopeng/musicradio/widget/common/a$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz p2, :cond_5

    .line 66
    iget p2, p0, Lcom/xiaopeng/musicradio/widget/common/a;->i:I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 67
    iget-object p2, p1, Lcom/xiaopeng/musicradio/widget/common/a$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 68
    iget-object p2, p1, Lcom/xiaopeng/musicradio/widget/common/a$a;->b:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 69
    iget-object p1, p1, Lcom/xiaopeng/musicradio/widget/common/a$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    sget p2, Lcom/xiaopeng/musicradio/common/k$g;->rv_loading:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p2, v1, :cond_1

    .line 71
    iget-object p2, p1, Lcom/xiaopeng/musicradio/widget/common/a$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 72
    iget-object p1, p1, Lcom/xiaopeng/musicradio/widget/common/a$a;->b:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 74
    iget-object p2, p1, Lcom/xiaopeng/musicradio/widget/common/a$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 75
    iget-object p1, p1, Lcom/xiaopeng/musicradio/widget/common/a$a;->b:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 77
    iget-object p2, p1, Lcom/xiaopeng/musicradio/widget/common/a$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 78
    iget-object p1, p1, Lcom/xiaopeng/musicradio/widget/common/a$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    sget p2, Lcom/xiaopeng/musicradio/common/k$g;->rv_loading:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    goto :goto_0

    .line 80
    :cond_3
    iget-object p2, p1, Lcom/xiaopeng/musicradio/widget/common/a$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 81
    iget-object p1, p1, Lcom/xiaopeng/musicradio/widget/common/a$a;->b:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    goto :goto_0

    .line 85
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/common/b;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/xiaopeng/musicradio/common/k$f;->item_musiclist_foot_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 44
    new-instance p2, Lcom/xiaopeng/musicradio/widget/common/a$a;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/musicradio/widget/common/a$a;-><init>(Lcom/xiaopeng/musicradio/widget/common/a;Landroid/view/View;)V

    return-object p2

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/a;->c()Landroid/view/View;

    move-result-object p1

    .line 47
    new-instance p2, Lcom/xiaopeng/musicradio/widget/common/b$b;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/musicradio/widget/common/b$b;-><init>(Lcom/xiaopeng/musicradio/widget/common/b;Landroid/view/View;)V

    return-object p2
.end method
