.class public Lbnr;
.super Lbns;
.source "SearchProgramAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbns<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbnn;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lbns;-><init>(Landroid/content/Context;Lbnn;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbnn;Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lbns;-><init>(Landroid/content/Context;Lbnn;)V

    .line 28
    iput-object p3, p0, Lbnr;->i:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    .line 33
    invoke-virtual {p0, p2}, Lbnr;->b(I)Z

    move-result v0

    if-nez v0, :cond_5

    instance-of v0, p1, Lbns$a;

    if-eqz v0, :cond_5

    .line 34
    check-cast p1, Lbns$a;

    .line 35
    invoke-virtual {p0, p2}, Lbnr;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    if-eqz v0, :cond_5

    .line 39
    iget-object v1, p0, Lbnr;->h:Lbnn;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lbnn;->isProgramPlaying(J)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    move v8, v1

    .line 44
    :goto_0
    iget-object v3, p1, Lbns$a;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lbmy;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x1

    add-int/lit8 v6, p2, 0x1

    sget v7, Lcom/xiaopeng/musicradio/search/a$c;->pic_covers_music_220:I

    iget-object v9, p0, Lbnr;->i:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual/range {v3 .. v9}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->a(Ljava/lang/String;Ljava/lang/String;IIILcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    .line 45
    iget-object p2, p1, Lbns$a;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    .line 46
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getHighlightTitle()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getHighlightTitle()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 45
    :goto_1
    invoke-virtual {p2, v3}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p2, p1, Lbns$a;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    new-instance v3, Lbnr$1;

    invoke-direct {v3, p0, v0}, Lbnr$1;-><init>(Lbnr;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    invoke-virtual {p2, v3}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setPlayClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object p2, p1, Lbns$a;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    new-instance v3, Lbnr$2;

    invoke-direct {v3, p0, v0}, Lbnr$2;-><init>(Lbnr;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    invoke-virtual {p2, v3}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setOpenDetailClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getPaymentType()I

    move-result p2

    const/4 v3, 0x0

    if-nez p2, :cond_2

    .line 67
    iget-object p2, p1, Lbns$a;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p2, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 68
    :cond_2
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getPaymentType()I

    move-result p2

    if-ne p2, v1, :cond_3

    .line 69
    iget-object p2, p1, Lbns$a;->b:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lcom/xiaopeng/musicradio/search/a$c;->ic_xmly_cover_label_vip:I

    invoke-virtual {p2, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_2

    .line 70
    :cond_3
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getPaymentType()I

    move-result p2

    if-ne p2, v2, :cond_4

    .line 71
    iget-object p2, p1, Lbns$a;->b:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lcom/xiaopeng/musicradio/search/a$c;->ic_xmly_cover_label_payment:I

    invoke-virtual {p2, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_2

    .line 73
    :cond_4
    iget-object p2, p1, Lbns$a;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p2, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    :goto_2
    iget-object p1, p1, Lbns$a;->itemView:Landroid/view/View;

    new-instance p2, Lbnr$3;

    invoke-direct {p2, p0, v0}, Lbnr$3;-><init>(Lbnr;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method
