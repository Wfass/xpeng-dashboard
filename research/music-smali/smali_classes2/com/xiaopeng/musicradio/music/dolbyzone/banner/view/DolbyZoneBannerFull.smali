.class public Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;
.super Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;
.source "DolbyZoneBannerFull.java"


# instance fields
.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneFullBannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lbgv;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;I)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;->h:Ljava/util/List;

    .line 45
    iput p2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;->d:I

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;->k:Lbgv;

    iget p2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;->d:I

    invoke-virtual {p1, p2}, Lbgv;->b(I)V

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;->g()V

    return-void
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneFullBannerBean;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 69
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 70
    new-instance v2, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneFullBannerBean;

    invoke-direct {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneFullBannerBean;-><init>()V

    .line 71
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-static {v3}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneFullBannerBean;->setOneItem(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    add-int/lit8 v3, v1, 0x1

    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 73
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-static {v3}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneFullBannerBean;->setTowItem(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    add-int/lit8 v3, v1, 0x2

    .line 74
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 75
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-static {v3}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneFullBannerBean;->setThreeItem(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    add-int/lit8 v3, v1, 0x3

    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 77
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-static {v3}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneFullBannerBean;->setFourItem(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    add-int/lit8 v3, v1, 0x4

    .line 78
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 79
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-static {v3}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneFullBannerBean;->setFiveItem(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 85
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected b()V
    .locals 2

    .line 38
    sget v0, Lbez$d;->banner_kugou_zone:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/to/aboomy/pager2banner/Banner;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;->c:Lcom/to/aboomy/pager2banner/Banner;

    .line 39
    new-instance v0, Lbgv;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lbgv;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;->k:Lbgv;

    return-void
.end method

.method protected h()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;->h:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;->j:Ljava/util/List;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;->k:Lbgv;

    invoke-virtual {v0}, Lbgv;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;->k:Lbgv;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;->j:Ljava/util/List;

    invoke-virtual {v0, v2}, Lbgv;->a(Ljava/util/List;)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;->c:Lcom/to/aboomy/pager2banner/Banner;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;->k:Lbgv;

    invoke-virtual {v0, v2}, Lcom/to/aboomy/pager2banner/Banner;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;->c:Lcom/to/aboomy/pager2banner/Banner;

    invoke-virtual {v0, v1, v1}, Lcom/to/aboomy/pager2banner/Banner;->a(IZ)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;->k:Lbgv;

    invoke-virtual {v0}, Lbgv;->notifyDataSetChanged()V

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;->c:Lcom/to/aboomy/pager2banner/Banner;

    invoke-virtual {v0, v1}, Lcom/to/aboomy/pager2banner/Banner;->setVisibility(I)V

    goto :goto_1

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerFull;->c:Lcom/to/aboomy/pager2banner/Banner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/to/aboomy/pager2banner/Banner;->setVisibility(I)V

    :goto_1
    return-void
.end method
