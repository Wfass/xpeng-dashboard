.class public Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseLinearLayout;
.source "DolbyZoneBanner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseLinearLayout<",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field protected c:Lcom/to/aboomy/pager2banner/Banner;

.field protected d:I

.field protected final e:I

.field protected final f:I

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneBannerBean;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Lbgu;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseLinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->e:I

    const/16 p1, -0x32

    .line 34
    iput p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->f:I

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->g:Ljava/util/List;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->e:I

    const/16 p1, -0x32

    .line 34
    iput p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->f:I

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->g:Ljava/util/List;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->e:I

    const/16 p1, -0x32

    .line 34
    iput p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->f:I

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->g:Ljava/util/List;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected a(II)Lcom/to/aboomy/pager2banner/b;
    .locals 2

    .line 154
    new-instance v0, Lcom/to/aboomy/pager2banner/b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/to/aboomy/pager2banner/b;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/to/aboomy/pager2banner/b;->d(I)Lcom/to/aboomy/pager2banner/b;

    move-result-object p1

    const/4 v0, 0x1

    .line 156
    invoke-virtual {p1, v0}, Lcom/to/aboomy/pager2banner/b;->c(I)Lcom/to/aboomy/pager2banner/b;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 157
    invoke-virtual {p1, v0}, Lcom/to/aboomy/pager2banner/b;->b(F)Lcom/to/aboomy/pager2banner/b;

    move-result-object p1

    const/high16 v0, 0x40a00000    # 5.0f

    .line 158
    invoke-virtual {p1, v0}, Lcom/to/aboomy/pager2banner/b;->a(F)Lcom/to/aboomy/pager2banner/b;

    move-result-object p1

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/to/aboomy/pager2banner/b;->e(I)Lcom/to/aboomy/pager2banner/b;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic a()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->e()Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneBannerBean;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 139
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 140
    new-instance v2, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneBannerBean;

    invoke-direct {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneBannerBean;-><init>()V

    .line 141
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-static {v3}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneBannerBean;->setOneItem(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    add-int/lit8 v3, v1, 0x1

    .line 142
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 143
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-static {v3}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneBannerBean;->setTowItem(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    add-int/lit8 v3, v1, 0x2

    .line 144
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 145
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-static {v3}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneBannerBean;->setThreeItem(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 148
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_1
    return-object v0
.end method

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

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->h:Ljava/util/List;

    .line 116
    iput p2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->d:I

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->i:Lbgu;

    iget p2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->d:I

    invoke-virtual {p1, p2}, Lbgu;->b(I)V

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->g()V

    return-void
.end method

.method protected b()V
    .locals 2

    .line 61
    sget v0, Lbez$d;->banner_kugou_zone:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/to/aboomy/pager2banner/Banner;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->c:Lcom/to/aboomy/pager2banner/Banner;

    .line 62
    new-instance v0, Lbgu;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lbgu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->i:Lbgu;

    return-void
.end method

.method protected c()V
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->f()V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected e()Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerPresenter;
    .locals 1

    .line 56
    new-instance v0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerPresenter;-><init>()V

    return-object v0
.end method

.method protected f()V
    .locals 4

    .line 68
    sget v0, Lcom/xiaopeng/musicradio/common/k$b;->banner_indicator_normal:I

    .line 69
    sget v1, Lcom/xiaopeng/musicradio/common/k$b;->banner_indicator_selected:I

    .line 70
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->a(II)Lcom/to/aboomy/pager2banner/b;

    move-result-object v0

    const/4 v1, 0x0

    .line 71
    invoke-virtual {v0, v1}, Lcom/to/aboomy/pager2banner/b;->setX(F)V

    const/high16 v1, -0x3db80000    # -50.0f

    .line 72
    invoke-virtual {v0, v1}, Lcom/to/aboomy/pager2banner/b;->setY(F)V

    .line 73
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->c:Lcom/to/aboomy/pager2banner/Banner;

    const/16 v2, -0x14

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/to/aboomy/pager2banner/Banner;->a(II)Lcom/to/aboomy/pager2banner/Banner;

    .line 74
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->c:Lcom/to/aboomy/pager2banner/Banner;

    invoke-virtual {v1, v0}, Lcom/to/aboomy/pager2banner/Banner;->a(Lcom/to/aboomy/pager2banner/a;)Lcom/to/aboomy/pager2banner/Banner;

    move-result-object v0

    const/4 v1, 0x0

    .line 75
    invoke-virtual {v0, v1}, Lcom/to/aboomy/pager2banner/Banner;->a(Z)Lcom/to/aboomy/pager2banner/Banner;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner$1;-><init>(Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;)V

    .line 76
    invoke-virtual {v0, v1}, Lcom/to/aboomy/pager2banner/Banner;->a(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)Lcom/to/aboomy/pager2banner/Banner;

    return-void
.end method

.method public g()V
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->h()V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 95
    sget v0, Lbez$f;->layout_dolby_zone_banner_item:I

    return v0
.end method

.method protected h()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->h:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->g:Ljava/util/List;

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->i:Lbgu;

    invoke-virtual {v0}, Lbgu;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->i:Lbgu;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->g:Ljava/util/List;

    invoke-virtual {v0, v2}, Lbgu;->a(Ljava/util/List;)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->c:Lcom/to/aboomy/pager2banner/Banner;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->i:Lbgu;

    invoke-virtual {v0, v2}, Lcom/to/aboomy/pager2banner/Banner;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->c:Lcom/to/aboomy/pager2banner/Banner;

    invoke-virtual {v0, v1, v1}, Lcom/to/aboomy/pager2banner/Banner;->a(IZ)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->i:Lbgu;

    invoke-virtual {v0}, Lbgu;->notifyDataSetChanged()V

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->c:Lcom/to/aboomy/pager2banner/Banner;

    invoke-virtual {v0, v1}, Lcom/to/aboomy/pager2banner/Banner;->setVisibility(I)V

    goto :goto_1

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBanner;->c:Lcom/to/aboomy/pager2banner/Banner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/to/aboomy/pager2banner/Banner;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setLoadingState(I)V
    .locals 0

    return-void
.end method
