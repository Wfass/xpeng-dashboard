.class public Lbgt;
.super Lcom/xiaopeng/musicradio/commonui/adapter/h;
.source "DolbyZone13BannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbgt$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/adapter/h<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZone13BannerBean;",
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

    .line 25
    sget v0, Lbez$f;->item_dolby_zone_banner_13:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;I)V

    .line 26
    iput-object p1, p0, Lbgt;->g:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lbgt;->i:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbgt$a;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lbgt;->c()Landroid/view/View;

    move-result-object p1

    .line 39
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    new-instance p2, Lbgt$a;

    invoke-direct {p2, p0, p1}, Lbgt$a;-><init>(Lbgt;Landroid/view/View;)V

    return-object p2
.end method

.method public b(I)V
    .locals 0

    .line 73
    iput p1, p0, Lbgt;->h:I

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

    .line 46
    check-cast p1, Lbgt$a;

    .line 47
    invoke-virtual {p0, p2}, Lbgt;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZone13BannerBean;

    .line 48
    iget-object v0, p1, Lbgt$a;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->setAlpha(F)V

    .line 49
    iget-object v0, p1, Lbgt$a;->b:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->setAlpha(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 50
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZone13BannerBean;->getOneItem()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p1, Lbgt$a;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->setAlpha(F)V

    .line 52
    iget-object v1, p1, Lbgt$a;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZone13BannerBean;->getOneItem()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v2

    iget v3, p0, Lbgt;->h:I

    iget-object v4, p0, Lbgt;->i:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ILandroid/view/View;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 54
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZone13BannerBean;->getTowItem()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p1, Lbgt$a;->b:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->setAlpha(F)V

    .line 56
    iget-object p1, p1, Lbgt$a;->b:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZone13BannerBean;->getTowItem()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p2

    iget v0, p0, Lbgt;->h:I

    iget-object v1, p0, Lbgt;->i:Landroid/view/View;

    invoke-virtual {p1, p2, v0, v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ILandroid/view/View;)V

    :cond_1
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lbgt;->a(Landroid/view/ViewGroup;I)Lbgt$a;

    move-result-object p1

    return-object p1
.end method
