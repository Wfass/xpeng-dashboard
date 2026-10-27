.class public Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;
.super Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;
.source "KugouZoneBanner13.java"


# instance fields
.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZone13BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lbhn;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;III)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->h:Ljava/util/List;

    .line 44
    iput p2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->d:I

    .line 45
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->k:Lbhn;

    iget p2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->d:I

    invoke-virtual {p1, p2}, Lbhn;->b(I)V

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->k:Lbhn;

    invoke-virtual {p1, p3}, Lbhn;->d(I)V

    .line 47
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->k:Lbhn;

    invoke-virtual {p1, p4}, Lbhn;->e(I)V

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->g()V

    return-void
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZone13BannerBean;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 70
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 71
    new-instance v2, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZone13BannerBean;

    invoke-direct {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZone13BannerBean;-><init>()V

    .line 72
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZone13BannerBean;->setItem(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    .line 73
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected b()V
    .locals 2

    .line 37
    sget v0, Lbez$d;->banner_kugou_zone:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/to/aboomy/pager2banner/Banner;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->c:Lcom/to/aboomy/pager2banner/Banner;

    .line 38
    new-instance v0, Lbhn;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lbhn;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->k:Lbhn;

    return-void
.end method

.method protected h()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->h:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->j:Ljava/util/List;

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->k:Lbhn;

    invoke-virtual {v0}, Lbhn;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->k:Lbhn;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->j:Ljava/util/List;

    invoke-virtual {v0, v2}, Lbhn;->a(Ljava/util/List;)V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->c:Lcom/to/aboomy/pager2banner/Banner;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->k:Lbhn;

    invoke-virtual {v0, v2}, Lcom/to/aboomy/pager2banner/Banner;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->c:Lcom/to/aboomy/pager2banner/Banner;

    invoke-virtual {v0, v1, v1}, Lcom/to/aboomy/pager2banner/Banner;->a(IZ)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->k:Lbhn;

    invoke-virtual {v0}, Lbhn;->notifyDataSetChanged()V

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->c:Lcom/to/aboomy/pager2banner/Banner;

    invoke-virtual {v0, v1}, Lcom/to/aboomy/pager2banner/Banner;->setVisibility(I)V

    goto :goto_1

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->c:Lcom/to/aboomy/pager2banner/Banner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/to/aboomy/pager2banner/Banner;->setVisibility(I)V

    :goto_1
    return-void
.end method
