.class public Lblw;
.super Lbll;
.source "AlbumCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lblw$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbll<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
        "Lblw$a;",
        ">;"
    }
.end annotation


# instance fields
.field private j:Landroid/content/Context;

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILblm;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lbll;-><init>(Landroid/content/Context;ILblm;)V

    const/4 p2, 0x0

    .line 32
    iput p2, p0, Lblw;->k:I

    .line 36
    iput-object p1, p0, Lblw;->j:Landroid/content/Context;

    .line 37
    iput p4, p0, Lblw;->k:I

    return-void
.end method

.method static synthetic a(Lblw;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;
    .locals 0

    .line 25
    iget-object p0, p0, Lblw;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    return-object p0
.end method

.method static synthetic b(Lblw;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;
    .locals 0

    .line 25
    iget-object p0, p0, Lblw;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    return-object p0
.end method

.method static synthetic c(Lblw;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;
    .locals 0

    .line 25
    iget-object p0, p0, Lblw;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    return-object p0
.end method

.method static synthetic d(Lblw;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;
    .locals 0

    .line 25
    iget-object p0, p0, Lblw;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    return-object p0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method protected synthetic a(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lblw;->b(Landroid/view/View;)Lblw$a;

    move-result-object p1

    return-object p1
.end method

.method public a(J)V
    .locals 5

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    iget-object v1, p0, Lblw;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 107
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 108
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 112
    :goto_1
    iget-object p2, p0, Lblw;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 113
    iget-object p2, p0, Lblw;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "payload"

    .line 114
    invoke-virtual {p0, p1, p2}, Lblw;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;I)V
    .locals 3

    .line 47
    iget-object v0, p0, Lblw;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 25
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {p0, p1, p2}, Lblw;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;I)V

    return-void
.end method

.method protected b(Landroid/view/View;)Lblw$a;
    .locals 1

    .line 42
    new-instance v0, Lblw$a;

    invoke-direct {v0, p0, p1}, Lblw$a;-><init>(Lblw;Landroid/view/View;)V

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 66
    invoke-virtual {p0, p2}, Lblw;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lblw$a;

    if-eqz v0, :cond_1

    .line 67
    check-cast p1, Lblw$a;

    .line 68
    invoke-virtual {p0, p2}, Lblw;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    if-eqz v0, :cond_1

    .line 70
    iget-object v1, p1, Lblw$a;->a:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getBestSizeLogo()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, p2, 0x1

    const/4 v6, 0x0

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->a(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 72
    iget-object v1, p1, Lblw$a;->a:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    new-instance v2, Lblw$1;

    invoke-direct {v2, p0, p2}, Lblw$1;-><init>(Lblw;I)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v1, p1, Lblw$a;->a:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    new-instance v2, Lblw$2;

    invoke-direct {v2, p0, p2}, Lblw$2;-><init>(Lblw;I)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->setPlayListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x0

    .line 89
    iget-object v1, p0, Lblw;->i:Lblm;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lblm;->isAlbumPlaying(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x2

    .line 90
    invoke-virtual {p0, v0, p2}, Lblw;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;I)V

    .line 91
    iget-object v1, p1, Lblw$a;->a:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    invoke-virtual {v1, p2}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->a(I)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 94
    invoke-virtual {p0, v0, v1}, Lblw;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;I)V

    .line 95
    iget-object v2, p1, Lblw$a;->a:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->a(I)V

    .line 97
    :goto_0
    iget-object v1, p1, Lblw$a;->a:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getPaymentType()I

    move-result v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->isAuthorized()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->a(IZ)V

    .line 98
    iget-object v0, p0, Lblw;->j:Landroid/content/Context;

    iget-object p1, p1, Lblw$a;->a:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    .line 99
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->getPlayControlView()Landroid/view/View;

    move-result-object p1

    .line 98
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1

    .line 57
    instance-of v0, p1, Lblw$a;

    if-eqz v0, :cond_0

    .line 58
    move-object v0, p1

    check-cast v0, Lblw$a;

    .line 59
    iget-object v0, v0, Lblw$a;->a:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    invoke-virtual {v0, p3}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->setNeedRefreshLogo(Z)V

    .line 61
    :cond_0
    invoke-virtual {p0, p1, p2}, Lblw;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method
