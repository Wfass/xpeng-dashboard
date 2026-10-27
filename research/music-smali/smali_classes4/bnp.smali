.class public Lbnp;
.super Lbns;
.source "SearchCollectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbns<",
        "Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;",
        ">;"
    }
.end annotation


# instance fields
.field private j:I

.field private k:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbnn;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lbns;-><init>(Landroid/content/Context;Lbnn;)V

    .line 23
    iput p3, p0, Lbnp;->j:I

    .line 24
    iput-object p1, p0, Lbnp;->k:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lbnp;)Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lbnp;->k:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lbnp;)I
    .locals 0

    .line 18
    iget p0, p0, Lbnp;->j:I

    return p0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 29
    invoke-virtual {p0, p2}, Lbnp;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;

    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {p0, p2}, Lbnp;->b(I)Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, p1, Lbns$a;

    if-eqz v1, :cond_2

    .line 32
    check-cast p1, Lbns$a;

    .line 34
    iget-object v1, p0, Lbnp;->h:Lbnn;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lbnn;->isMusicCollectPlaying(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    move v7, v1

    .line 39
    iget-object v2, p1, Lbns$a;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getLogo()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, p2, 0x1

    sget v6, Lcom/xiaopeng/musicradio/search/a$c;->pic_covers_music_220:I

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->a(Ljava/lang/String;Ljava/lang/String;III)V

    .line 40
    iget-object p2, p1, Lbns$a;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    .line 41
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getHighlightName()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getHighlightName()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 40
    :goto_1
    invoke-virtual {p2, v1}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p2, p1, Lbns$a;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    new-instance v1, Lbnp$1;

    invoke-direct {v1, p0, v0}, Lbnp$1;-><init>(Lbnp;Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;)V

    invoke-virtual {p2, v1}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setPlayClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object p1, p1, Lbns$a;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    new-instance p2, Lbnp$2;

    invoke-direct {p2, p0, v0}, Lbnp$2;-><init>(Lbnp;Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setOpenDetailClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method
