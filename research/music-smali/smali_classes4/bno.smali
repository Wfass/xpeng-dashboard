.class public Lbno;
.super Lbns;
.source "SearchAlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbns<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;",
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
    iput p3, p0, Lbno;->j:I

    .line 24
    iput-object p1, p0, Lbno;->k:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lbno;)Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lbno;->k:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lbno;)I
    .locals 0

    .line 18
    iget p0, p0, Lbno;->j:I

    return p0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 29
    invoke-virtual {p0, p2}, Lbno;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lbns$a;

    if-eqz v0, :cond_2

    .line 30
    check-cast p1, Lbns$a;

    .line 31
    invoke-virtual {p0, p2}, Lbno;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    if-eqz v0, :cond_2

    .line 34
    iget-object v1, p0, Lbno;->h:Lbnn;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lbnn;->isMusicAlbumPlaying(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    move v7, v1

    .line 40
    iget-object v2, p1, Lbns$a;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getLogo()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, p2, 0x1

    sget v6, Lcom/xiaopeng/musicradio/search/a$c;->pic_covers_music_220:I

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->a(Ljava/lang/String;Ljava/lang/String;III)V

    .line 41
    iget-object p2, p1, Lbns$a;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    .line 42
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getHighlightName()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getHighlightName()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 41
    :goto_1
    invoke-virtual {p2, v1}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p2, p1, Lbns$a;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    new-instance v1, Lbno$1;

    invoke-direct {v1, p0, v0}, Lbno$1;-><init>(Lbno;Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;)V

    invoke-virtual {p2, v1}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setPlayClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object p1, p1, Lbns$a;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    new-instance p2, Lbno$2;

    invoke-direct {p2, p0, v0}, Lbno$2;-><init>(Lbno;Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setOpenDetailClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method
