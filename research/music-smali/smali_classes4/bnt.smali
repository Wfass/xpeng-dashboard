.class public Lbnt;
.super Lbnu;
.source "SearchSingerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbnu<",
        "Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;",
        ">;"
    }
.end annotation


# instance fields
.field private j:I

.field private k:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbnn;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lbnu;-><init>(Landroid/content/Context;Lbnn;)V

    .line 22
    iput p3, p0, Lbnt;->j:I

    .line 23
    iput-object p1, p0, Lbnt;->k:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lbnt;)Landroid/content/Context;
    .locals 0

    .line 17
    iget-object p0, p0, Lbnt;->k:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lbnt;)I
    .locals 0

    .line 17
    iget p0, p0, Lbnt;->j:I

    return p0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 28
    invoke-virtual {p0, p2}, Lbnt;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lbnu$a;

    if-eqz v0, :cond_2

    .line 29
    check-cast p1, Lbnu$a;

    .line 30
    invoke-virtual {p0, p2}, Lbnt;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;

    if-eqz v0, :cond_2

    .line 33
    iget-object v1, p0, Lbnt;->h:Lbnn;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lbnn;->isMusicSingerPlaying(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    move v7, v1

    .line 39
    iget-object v2, p1, Lbnu$a;->a:Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->getLogo()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, p2, 0x1

    sget v6, Lcom/xiaopeng/musicradio/search/a$c;->pic_covers_music_round:I

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->a(Ljava/lang/String;Ljava/lang/String;III)V

    .line 40
    iget-object p2, p1, Lbnu$a;->a:Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;

    .line 41
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->getHighlightName()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->getHighlightName()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 40
    :goto_1
    invoke-virtual {p2, v1}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p2, p1, Lbnu$a;->a:Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;

    new-instance v1, Lbnt$1;

    invoke-direct {v1, p0, v0}, Lbnt$1;-><init>(Lbnt;Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;)V

    invoke-virtual {p2, v1}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->setPlayClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object p1, p1, Lbnu$a;->a:Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;

    new-instance p2, Lbnt$2;

    invoke-direct {p2, p0, v0}, Lbnt$2;-><init>(Lbnt;Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->setOpenDetailClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method
