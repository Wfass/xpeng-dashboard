.class public Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseLinearLayout;
.source "KugouZoneBannerLayout.java"


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
.field private c:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;

.field private d:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;

.field private e:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerFull;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/xiaopeng/musicradio/widget/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseLinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->f:Ljava/util/List;

    .line 31
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->g:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->f:Ljava/util/List;

    .line 31
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->g:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->f:Ljava/util/List;

    .line 31
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->g:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method private g()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->g:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->d:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->c:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->e:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerFull;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerFull;->setVisibility(I)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->g:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->d:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->c:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->e:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerFull;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerFull;->setVisibility(I)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->d:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->c:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->e:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerFull;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerFull;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private h()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->g:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->g:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->c:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->h()V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->g:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->d:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->h()V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->e:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerFull;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerFull;->h()V

    .line 125
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->g()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->e()Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;III)V"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->g:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->f:Ljava/util/List;

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->d:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;->a(Ljava/util/List;III)V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->c:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;->a(Ljava/util/List;III)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->e:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerFull;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerFull;->a(Ljava/util/List;III)V

    .line 113
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->f()V

    return-void
.end method

.method protected b()V
    .locals 1

    .line 53
    sget v0, Lbez$d;->kugou_zone_banner13:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->d:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner13;

    .line 54
    sget v0, Lbez$d;->kugou_zone_banner:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->c:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBanner;

    .line 55
    sget v0, Lbez$d;->kugou_zone_banner_full:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerFull;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->e:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerFull;

    return-void
.end method

.method protected c()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->g:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 77
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->g()V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected e()Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerPresenter;
    .locals 1

    .line 48
    new-instance v0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerPresenter;-><init>()V

    return-object v0
.end method

.method public f()V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->h()V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 88
    sget v0, Lbez$f;->layout_kugou_zone_banner:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 130
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 131
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->g:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->g:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 133
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->g()V

    :cond_0
    return-void
.end method

.method public setLoadingState(I)V
    .locals 0

    return-void
.end method
