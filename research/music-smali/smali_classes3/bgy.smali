.class public Lbgy;
.super Lme/drakeet/multitype/c;
.source "DolbyZoneBannerBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbgy$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/drakeet/multitype/c<",
        "Lbhd;",
        "Lbgy$a;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lme/drakeet/multitype/c;-><init>()V

    .line 25
    iput-object p1, p0, Lbgy;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbgy$a;
    .locals 3

    const-string p1, "KugouZoneBannerBinder"

    const-string v0, "BannerBinder onCreateViewHolder"

    .line 34
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbez$f;->layout_dolby_zone_banner_binder:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string v0, "BannerBinder get view by create."

    .line 36
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance p1, Lbgy$a;

    invoke-direct {p1, p2}, Lbgy$a;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method protected bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lbgy$a;

    check-cast p2, Lbhd;

    invoke-virtual {p0, p1, p2}, Lbgy;->a(Lbgy$a;Lbhd;)V

    return-void
.end method

.method protected bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 20
    check-cast p1, Lbgy$a;

    check-cast p2, Lbhd;

    invoke-virtual {p0, p1, p2, p3}, Lbgy;->a(Lbgy$a;Lbhd;Ljava/util/List;)V

    return-void
.end method

.method protected a(Lbgy$a;Lbhd;)V
    .locals 2

    const-string v0, "KugouZoneBannerBinder"

    const-string v1, "KugouZoneBannerBinder onBindViewHolder"

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object p1, p1, Lbgy$a;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerLayout;

    invoke-virtual {p2}, Lbhd;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lbhd;->e()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerLayout;->a(Ljava/util/List;I)V

    return-void
.end method

.method protected a(Lbgy$a;Lbhd;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbgy$a;",
            "Lbhd;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-super {p0, p1, p2, p3}, Lme/drakeet/multitype/c;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method protected synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lbgy;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbgy$a;

    move-result-object p1

    return-object p1
.end method
