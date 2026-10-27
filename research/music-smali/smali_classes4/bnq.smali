.class public Lbnq;
.super Lbnm;
.source "SearchNetRadioAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbnq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbnm<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
        "Lbnq$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbnn;)V
    .locals 1

    .line 28
    sget v0, Lcom/xiaopeng/musicradio/search/a$e;->item_search_netradio_layout:I

    invoke-direct {p0, p1, v0, p2}, Lbnm;-><init>(Landroid/content/Context;ILbnn;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbnn;Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 1

    .line 32
    sget v0, Lcom/xiaopeng/musicradio/search/a$e;->item_search_netradio_layout:I

    invoke-direct {p0, p1, v0, p2}, Lbnm;-><init>(Landroid/content/Context;ILbnn;)V

    .line 33
    iput-object p3, p0, Lbnq;->i:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lbnq;->b(Landroid/view/View;)Lbnq$a;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/view/View;)Lbnq$a;
    .locals 1

    .line 38
    new-instance v0, Lbnq$a;

    invoke-direct {v0, p0, p1}, Lbnq$a;-><init>(Lbnq;Landroid/view/View;)V

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 53
    invoke-virtual {p0, p2}, Lbnq;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lbnq$a;

    if-eqz v0, :cond_2

    .line 54
    check-cast p1, Lbnq$a;

    .line 55
    invoke-virtual {p0, p2}, Lbnq;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    if-eqz v0, :cond_2

    .line 59
    iget-object v1, p0, Lbnq;->h:Lbnn;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v2

    invoke-interface {v1, v2}, Lbnn;->isNetRadioPlaying(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    move v7, v1

    .line 64
    iget-object v2, p1, Lbnq$a;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPicUrl()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, p2, 0x1

    sget v6, Lcom/xiaopeng/musicradio/search/a$c;->pic_covers_music_220:I

    iget-object v8, p0, Lbnq;->i:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual/range {v2 .. v8}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->a(Ljava/lang/String;Ljava/lang/String;IIILcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    .line 65
    iget-object p2, p1, Lbnq$a;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    .line 66
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getHighlightName()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getHighlightName()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 65
    :goto_1
    invoke-virtual {p2, v1}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    iget-object p2, p1, Lbnq$a;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    new-instance v1, Lbnq$1;

    invoke-direct {v1, p0, v0}, Lbnq$1;-><init>(Lbnq;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    invoke-virtual {p2, v1}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setPlayClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p1, p1, Lbnq$a;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    new-instance p2, Lbnq$2;

    invoke-direct {p2, p0, v0}, Lbnq$2;-><init>(Lbnq;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setOpenDetailClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1

    .line 44
    instance-of v0, p1, Lbnq$a;

    if-eqz v0, :cond_0

    .line 45
    move-object v0, p1

    check-cast v0, Lbnq$a;

    .line 46
    iget-object v0, v0, Lbnq$a;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    invoke-virtual {v0, p3}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setNeedRefreshLogo(Z)V

    .line 48
    :cond_0
    invoke-virtual {p0, p1, p2}, Lbnq;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method
