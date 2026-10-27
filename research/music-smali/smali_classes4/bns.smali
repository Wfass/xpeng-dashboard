.class public abstract Lbns;
.super Lbnm;
.source "SearchRoundRectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbns$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lbnm<",
        "TT;",
        "Lbns$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbnn;)V
    .locals 1

    .line 23
    sget v0, Lcom/xiaopeng/musicradio/search/a$e;->item_search_roundrect_layout:I

    invoke-direct {p0, p1, v0, p2}, Lbnm;-><init>(Landroid/content/Context;ILbnn;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lbns;->b(Landroid/view/View;)Lbns$a;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/view/View;)Lbns$a;
    .locals 1

    .line 37
    new-instance v0, Lbns$a;

    invoke-direct {v0, p1}, Lbns$a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1

    .line 28
    instance-of v0, p1, Lbns$a;

    if-eqz v0, :cond_0

    .line 29
    move-object v0, p1

    check-cast v0, Lbns$a;

    .line 30
    iget-object v0, v0, Lbns$a;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    invoke-virtual {v0, p3}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setNeedRefreshLogo(Z)V

    .line 32
    :cond_0
    invoke-virtual {p0, p1, p2}, Lbns;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method
