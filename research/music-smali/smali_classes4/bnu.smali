.class public abstract Lbnu;
.super Lbnm;
.source "SearchSingerRectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbnu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lbnm<",
        "TT;",
        "Lbnu$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbnn;)V
    .locals 1

    .line 21
    sget v0, Lcom/xiaopeng/musicradio/search/a$e;->item_search_singer_layout:I

    invoke-direct {p0, p1, v0, p2}, Lbnm;-><init>(Landroid/content/Context;ILbnn;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lbnu;->b(Landroid/view/View;)Lbnu$a;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/view/View;)Lbnu$a;
    .locals 1

    .line 35
    new-instance v0, Lbnu$a;

    invoke-direct {v0, p1}, Lbnu$a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1

    .line 26
    instance-of v0, p1, Lbnu$a;

    if-eqz v0, :cond_0

    .line 27
    move-object v0, p1

    check-cast v0, Lbnu$a;

    .line 28
    iget-object v0, v0, Lbnu$a;->a:Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    invoke-virtual {v0, p3}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->setNeedRefreshLogo(Z)V

    .line 30
    :cond_0
    invoke-virtual {p0, p1, p2}, Lbnu;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method
