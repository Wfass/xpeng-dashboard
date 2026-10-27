.class public Lbjg;
.super Lbjh;
.source "KugooSingerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbjg$a;
    }
.end annotation


# instance fields
.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lbjh;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 19
    iput p1, p0, Lbjg;->h:I

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 0

    .line 81
    iput p1, p0, Lbjg;->h:I

    .line 82
    invoke-virtual {p0}, Lbjg;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lbjg;->notifyItemChanged(I)V

    return-void
.end method

.method public b()[Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;
    .locals 4

    const/4 v0, 0x1

    .line 27
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

    .line 86
    iget v0, p0, Lbjg;->h:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 100
    invoke-virtual {p0}, Lbjg;->i()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lbjg;->i()Ljava/util/List;

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

    .line 91
    invoke-virtual {p0}, Lbjg;->getItemCount()I

    move-result v1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 56
    instance-of v0, p1, Lbjg$a;

    if-eqz v0, :cond_3

    .line 57
    check-cast p1, Lbjg$a;

    .line 58
    iget-object p2, p1, Lbjg$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz p2, :cond_4

    .line 59
    iget p2, p0, Lbjg;->h:I

    if-nez p2, :cond_0

    .line 60
    iget-object p2, p1, Lbjg$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 61
    iget-object p2, p1, Lbjg$a;->b:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 62
    iget-object p1, p1, Lbjg$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    sget p2, Lcom/xiaopeng/musicradio/common/k$g;->rv_loading:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v0, :cond_1

    .line 64
    iget-object p2, p1, Lbjg$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 65
    iget-object p1, p1, Lbjg$a;->b:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 67
    iget-object p2, p1, Lbjg$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 68
    iget-object p1, p1, Lbjg$a;->b:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    goto :goto_0

    .line 70
    :cond_2
    iget-object p2, p1, Lbjg$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 71
    iget-object p1, p1, Lbjg$a;->b:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    goto :goto_0

    .line 75
    :cond_3
    invoke-super {p0, p1, p2}, Lbjh;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/xiaopeng/musicradio/common/k$f;->item_musiclist_foot_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 37
    new-instance p2, Lbjg$a;

    invoke-direct {p2, p0, p1}, Lbjg$a;-><init>(Lbjg;Landroid/view/View;)V

    return-object p2

    .line 39
    :cond_0
    invoke-virtual {p0}, Lbjg;->c()Landroid/view/View;

    move-result-object p1

    .line 40
    new-instance p2, Lbjh$a;

    invoke-direct {p2, p0, p1}, Lbjh$a;-><init>(Lbjh;Landroid/view/View;)V

    return-object p2
.end method
