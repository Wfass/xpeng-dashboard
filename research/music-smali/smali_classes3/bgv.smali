.class public Lbgv;
.super Lcom/xiaopeng/musicradio/commonui/adapter/h;
.source "DolbyZoneFullBannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbgv$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/adapter/h<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneFullBannerBean;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Landroid/content/Context;

.field private h:I

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 26
    sget v0, Lbez$f;->item_dolby_zone_banner_full:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;I)V

    .line 27
    iput-object p1, p0, Lbgv;->g:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lbgv;->i:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbgv$a;
    .locals 1

    .line 39
    invoke-static {}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->a()Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;

    move-result-object p1

    sget p2, Lbez$f;->item_dolby_zone_banner_full:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->b(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lbgv;->c()Landroid/view/View;

    move-result-object p1

    .line 43
    :cond_0
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    new-instance p2, Lbgv$a;

    invoke-direct {p2, p0, p1}, Lbgv$a;-><init>(Lbgv;Landroid/view/View;)V

    return-object p2
.end method

.method public b(I)V
    .locals 0

    .line 98
    iput p1, p0, Lbgv;->h:I

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 50
    check-cast p1, Lbgv$a;

    .line 51
    invoke-virtual {p0, p2}, Lbgv;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneFullBannerBean;

    .line 52
    iget-object v0, p1, Lbgv$a;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->setAlpha(F)V

    .line 53
    iget-object v0, p1, Lbgv$a;->b:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->setAlpha(F)V

    .line 54
    iget-object v0, p1, Lbgv$a;->c:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->setAlpha(F)V

    .line 55
    iget-object v0, p1, Lbgv$a;->d:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->setAlpha(F)V

    .line 56
    iget-object v0, p1, Lbgv$a;->e:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->setAlpha(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneFullBannerBean;->getOneItem()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p1, Lbgv$a;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->setAlpha(F)V

    .line 59
    iget-object v1, p1, Lbgv$a;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneFullBannerBean;->getOneItem()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v2

    iget v3, p0, Lbgv;->h:I

    iget-object v4, p0, Lbgv;->i:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ILandroid/view/View;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 61
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneFullBannerBean;->getTowItem()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p1, Lbgv$a;->b:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->setAlpha(F)V

    .line 63
    iget-object v1, p1, Lbgv$a;->b:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneFullBannerBean;->getTowItem()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v2

    iget v3, p0, Lbgv;->h:I

    iget-object v4, p0, Lbgv;->i:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ILandroid/view/View;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 65
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneFullBannerBean;->getThreeItem()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p1, Lbgv$a;->c:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->setAlpha(F)V

    .line 67
    iget-object v1, p1, Lbgv$a;->c:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneFullBannerBean;->getThreeItem()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v2

    iget v3, p0, Lbgv;->h:I

    iget-object v4, p0, Lbgv;->i:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ILandroid/view/View;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 69
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneFullBannerBean;->getFourItem()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 70
    iget-object v1, p1, Lbgv$a;->d:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->setAlpha(F)V

    .line 71
    iget-object v1, p1, Lbgv$a;->d:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneFullBannerBean;->getFourItem()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v2

    iget v3, p0, Lbgv;->h:I

    iget-object v4, p0, Lbgv;->i:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ILandroid/view/View;)V

    :cond_3
    if-eqz p2, :cond_4

    .line 73
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneFullBannerBean;->getFiveItem()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 74
    iget-object v1, p1, Lbgv$a;->e:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->setAlpha(F)V

    .line 75
    iget-object p1, p1, Lbgv$a;->e:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneFullBannerBean;->getFiveItem()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p2

    iget v0, p0, Lbgv;->h:I

    iget-object v1, p0, Lbgv;->i:Landroid/view/View;

    invoke-virtual {p1, p2, v0, v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ILandroid/view/View;)V

    :cond_4
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lbgv;->a(Landroid/view/ViewGroup;I)Lbgv$a;

    move-result-object p1

    return-object p1
.end method
