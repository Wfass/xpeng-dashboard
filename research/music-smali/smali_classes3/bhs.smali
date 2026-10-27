.class public Lbhs;
.super Lme/drakeet/multitype/c;
.source "KugouZoneBannerBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbhs$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/drakeet/multitype/c<",
        "Lbhy;",
        "Lbhs$a;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/music/kugouzone/view/b;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lme/drakeet/multitype/c;-><init>()V

    .line 23
    iput-object p1, p0, Lbhs;->a:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbhs$a;
    .locals 3

    const-string p1, "KugouZoneBannerBinder"

    const-string v0, "BannerBinder onCreateViewHolder"

    .line 32
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbez$f;->layout_kugou_zone_banner_binder:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string v0, "BannerBinder get view by create."

    .line 34
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance p1, Lbhs$a;

    invoke-direct {p1, p2}, Lbhs$a;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method protected bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lbhs$a;

    check-cast p2, Lbhy;

    invoke-virtual {p0, p1, p2}, Lbhs;->a(Lbhs$a;Lbhy;)V

    return-void
.end method

.method protected a(Lbhs$a;Lbhy;)V
    .locals 3

    const-string v0, "KugouZoneBannerBinder"

    const-string v1, "KugouZoneBannerBinder onBindViewHolder"

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object p1, p1, Lbhs$a;->a:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;

    invoke-virtual {p2}, Lbhy;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lbhy;->e()I

    move-result v1

    invoke-virtual {p2}, Lbhy;->i()I

    move-result v2

    invoke-virtual {p2}, Lbhy;->h()I

    move-result p2

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;->a(Ljava/util/List;III)V

    return-void
.end method

.method protected synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lbhs;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbhs$a;

    move-result-object p1

    return-object p1
.end method
