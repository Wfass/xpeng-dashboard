.class public Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseLinearLayout;
.source "KugouZoneBanner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseLinearLayout<",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerPresenter;",
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
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneBannerBean;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Lbho;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseLinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->e:I

    const/16 p1, -0x32

    .line 33
    iput p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->f:I

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->g:Ljava/util/List;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->e:I

    const/16 p1, -0x32

    .line 33
    iput p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->f:I

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->g:Ljava/util/List;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->e:I

    const/16 p1, -0x32

    .line 33
    iput p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->f:I

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->g:Ljava/util/List;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected a(II)Lcom/to/aboomy/pager2banner/b;
    .locals 2

    .line 152
    new-instance v0, Lcom/to/aboomy/pager2banner/b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/to/aboomy/pager2banner/b;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/to/aboomy/pager2banner/b;->d(I)Lcom/to/aboomy/pager2banner/b;

    move-result-object p1

    const/4 v0, 0x1

    .line 154
    invoke-virtual {p1, v0}, Lcom/to/aboomy/pager2banner/b;->c(I)Lcom/to/aboomy/pager2banner/b;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 155
    invoke-virtual {p1, v0}, Lcom/to/aboomy/pager2banner/b;->b(F)Lcom/to/aboomy/pager2banner/b;

    move-result-object p1

    const/high16 v0, 0x40a00000    # 5.0f

    .line 156
    invoke-virtual {p1, v0}, Lcom/to/aboomy/pager2banner/b;->a(F)Lcom/to/aboomy/pager2banner/b;

    move-result-object p1

    .line 157
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->getContext()Landroid/content/Context;

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

    .line 26
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->e()Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneBannerBean;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 140
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 141
    new-instance v2, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneBannerBean;

    invoke-direct {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneBannerBean;-><init>()V

    .line 142
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneBannerBean;->setLeftItem(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    add-int/lit8 v3, v1, 0x1

    .line 143
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 144
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneBannerBean;->setRightItem(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    .line 146
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-object v0
.end method

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

    .line 114
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->h:Ljava/util/List;

    .line 115
    iput p2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->d:I

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->i:Lbho;

    iget p2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->d:I

    invoke-virtual {p1, p2}, Lbho;->b(I)V

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->i:Lbho;

    invoke-virtual {p1, p3}, Lbho;->d(I)V

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->i:Lbho;

    invoke-virtual {p1, p4}, Lbho;->e(I)V

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->g()V

    return-void
.end method

.method protected b()V
    .locals 2

    .line 60
    sget v0, Lbez$d;->banner_kugou_zone:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/to/aboomy/pager2banner/Banner;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->c:Lcom/to/aboomy/pager2banner/Banner;

    .line 61
    new-instance v0, Lbho;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lbho;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->i:Lbho;

    return-void
.end method

.method protected c()V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->f()V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected e()Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerPresenter;
    .locals 1

    .line 55
    new-instance v0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerPresenter;-><init>()V

    return-object v0
.end method

.method protected f()V
    .locals 4

    .line 67
    sget v0, Lcom/xiaopeng/musicradio/common/k$b;->banner_indicator_normal:I

    .line 68
    sget v1, Lcom/xiaopeng/musicradio/common/k$b;->banner_indicator_selected:I

    .line 69
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->a(II)Lcom/to/aboomy/pager2banner/b;

    move-result-object v0

    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1}, Lcom/to/aboomy/pager2banner/b;->setX(F)V

    const/high16 v1, -0x3db80000    # -50.0f

    .line 71
    invoke-virtual {v0, v1}, Lcom/to/aboomy/pager2banner/b;->setY(F)V

    .line 72
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->c:Lcom/to/aboomy/pager2banner/Banner;

    const/16 v2, -0x14

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/to/aboomy/pager2banner/Banner;->a(II)Lcom/to/aboomy/pager2banner/Banner;

    .line 73
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->c:Lcom/to/aboomy/pager2banner/Banner;

    invoke-virtual {v1, v0}, Lcom/to/aboomy/pager2banner/Banner;->a(Lcom/to/aboomy/pager2banner/a;)Lcom/to/aboomy/pager2banner/Banner;

    move-result-object v0

    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1}, Lcom/to/aboomy/pager2banner/Banner;->a(Z)Lcom/to/aboomy/pager2banner/Banner;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner$1;-><init>(Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;)V

    .line 75
    invoke-virtual {v0, v1}, Lcom/to/aboomy/pager2banner/Banner;->a(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)Lcom/to/aboomy/pager2banner/Banner;

    return-void
.end method

.method public g()V
    .locals 0

    .line 99
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->h()V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 94
    sget v0, Lbez$f;->layout_kugou_zone_banner_item:I

    return v0
.end method

.method protected h()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->h:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->g:Ljava/util/List;

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->i:Lbho;

    invoke-virtual {v0}, Lbho;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->i:Lbho;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->g:Ljava/util/List;

    invoke-virtual {v0, v2}, Lbho;->a(Ljava/util/List;)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->c:Lcom/to/aboomy/pager2banner/Banner;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->i:Lbho;

    invoke-virtual {v0, v2}, Lcom/to/aboomy/pager2banner/Banner;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->c:Lcom/to/aboomy/pager2banner/Banner;

    invoke-virtual {v0, v1, v1}, Lcom/to/aboomy/pager2banner/Banner;->a(IZ)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->i:Lbho;

    invoke-virtual {v0}, Lbho;->notifyDataSetChanged()V

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->c:Lcom/to/aboomy/pager2banner/Banner;

    invoke-virtual {v0, v1}, Lcom/to/aboomy/pager2banner/Banner;->setVisibility(I)V

    goto :goto_1

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->c:Lcom/to/aboomy/pager2banner/Banner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/to/aboomy/pager2banner/Banner;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setLoadingState(I)V
    .locals 0

    return-void
.end method
