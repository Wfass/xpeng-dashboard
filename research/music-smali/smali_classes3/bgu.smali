.class public Lbgu;
.super Lcom/xiaopeng/musicradio/commonui/adapter/h;
.source "DolbyZoneBannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbgu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/adapter/h<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneBannerBean;",
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
    sget v0, Lbez$f;->item_dolby_zone_banner:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;I)V

    .line 27
    iput-object p2, p0, Lbgu;->i:Landroid/view/View;

    .line 28
    iput-object p1, p0, Lbgu;->g:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbgu$a;
    .locals 1

    .line 39
    invoke-static {}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->a()Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;

    move-result-object p1

    sget p2, Lbez$f;->item_dolby_zone_banner:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->b(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lbgu;->c()Landroid/view/View;

    move-result-object p1

    .line 43
    :cond_0
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    new-instance p2, Lbgu$a;

    invoke-direct {p2, p0, p1}, Lbgu$a;-><init>(Lbgu;Landroid/view/View;)V

    return-object p2
.end method

.method public b(I)V
    .locals 0

    .line 84
    iput p1, p0, Lbgu;->h:I

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
    check-cast p1, Lbgu$a;

    .line 51
    invoke-virtual {p0, p2}, Lbgu;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneBannerBean;

    .line 52
    iget-object v0, p1, Lbgu$a;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->setAlpha(F)V

    .line 53
    iget-object v0, p1, Lbgu$a;->b:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->setAlpha(F)V

    .line 54
    iget-object v0, p1, Lbgu$a;->c:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->setAlpha(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneBannerBean;->getOneItem()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p1, Lbgu$a;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->setAlpha(F)V

    .line 57
    iget-object v1, p1, Lbgu$a;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneBannerBean;->getOneItem()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v2

    iget v3, p0, Lbgu;->h:I

    iget-object v4, p0, Lbgu;->i:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ILandroid/view/View;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 59
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneBannerBean;->getTowItem()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p1, Lbgu$a;->b:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->setAlpha(F)V

    .line 61
    iget-object v1, p1, Lbgu$a;->b:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneBannerBean;->getTowItem()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v2

    iget v3, p0, Lbgu;->h:I

    iget-object v4, p0, Lbgu;->i:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ILandroid/view/View;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 63
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneBannerBean;->getThreeItem()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 64
    iget-object v1, p1, Lbgu$a;->c:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->setAlpha(F)V

    .line 65
    iget-object p1, p1, Lbgu$a;->c:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/DolbyZoneBannerBean;->getThreeItem()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p2

    iget v0, p0, Lbgu;->h:I

    iget-object v1, p0, Lbgu;->i:Landroid/view/View;

    invoke-virtual {p1, p2, v0, v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ILandroid/view/View;)V

    :cond_2
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lbgu;->a(Landroid/view/ViewGroup;I)Lbgu$a;

    move-result-object p1

    return-object p1
.end method
