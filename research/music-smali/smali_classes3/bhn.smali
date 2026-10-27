.class public Lbhn;
.super Lcom/xiaopeng/musicradio/commonui/adapter/h;
.source "KugouZone13BannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbhn$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/adapter/h<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZone13BannerBean;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Landroid/content/Context;

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 28
    sget v0, Lbez$f;->item_kugou_zone_banner_13:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;I)V

    .line 29
    iput-object p1, p0, Lbhn;->g:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lbhn;->k:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbhn$a;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lbhn;->c()Landroid/view/View;

    move-result-object p1

    .line 42
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    new-instance p2, Lbhn$a;

    invoke-direct {p2, p0, p1}, Lbhn$a;-><init>(Lbhn;Landroid/view/View;)V

    return-object p2
.end method

.method public b(I)V
    .locals 0

    .line 69
    iput p1, p0, Lbhn;->h:I

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 73
    iput p1, p0, Lbhn;->i:I

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 77
    iput p1, p0, Lbhn;->j:I

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 49
    check-cast p1, Lbhn$a;

    .line 50
    invoke-virtual {p0, p2}, Lbhn;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZone13BannerBean;

    .line 51
    iget-object v0, p1, Lbhn$a;->a:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZone13BannerBean;->getItem()Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p1, Lbhn$a;->a:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->setVisibility(I)V

    .line 54
    iget-object v2, p1, Lbhn$a;->a:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZone13BannerBean;->getItem()Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    move-result-object v3

    iget v4, p0, Lbhn;->h:I

    iget v5, p0, Lbhn;->i:I

    iget v6, p0, Lbhn;->j:I

    iget-object v7, p0, Lbhn;->k:Landroid/view/View;

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;IIILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lbhn;->a(Landroid/view/ViewGroup;I)Lbhn$a;

    move-result-object p1

    return-object p1
.end method
