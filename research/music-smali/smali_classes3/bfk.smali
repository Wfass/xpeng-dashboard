.class public Lbfk;
.super Lbqo;
.source "KugouTopBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbfk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbqo<",
        "Lbfn;",
        "Lbfk$a;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/xiaopeng/musicradio/widget/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lbqo;-><init>()V

    .line 29
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lbfk;->b:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbfk$a;
    .locals 3

    .line 37
    sget v0, Lbez$f;->music_item_kugou_top:I

    invoke-virtual {p0, p1, v0}, Lbfk;->a(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    const-string v0, "MsTopBinder"

    if-nez p1, :cond_0

    .line 39
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lbez$f;->music_item_kugou_top:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "get view by create."

    .line 40
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p2, "get view from cache."

    .line 42
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :goto_0
    new-instance p2, Lbfk$a;

    invoke-direct {p2, p1}, Lbfk$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method protected bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lbfk$a;

    check-cast p2, Lbfn;

    invoke-virtual {p0, p1, p2}, Lbfk;->a(Lbfk$a;Lbfn;)V

    return-void
.end method

.method protected a(Lbfk$a;Lbfn;)V
    .locals 5

    .line 50
    iget-object v0, p0, Lbfk;->b:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 51
    invoke-static {p1}, Lbfk$a;->a(Lbfk$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 52
    invoke-static {p1}, Lbfk$a;->b(Lbfk$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 53
    invoke-static {p1}, Lbfk$a;->c(Lbfk$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 55
    invoke-static {p1}, Lbfk$a;->d(Lbfk$a;)Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->setVipSaleType(I)V

    .line 56
    invoke-static {p1}, Lbfk$a;->b(Lbfk$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;

    move-result-object v3

    invoke-virtual {p2}, Lbfn;->b()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->setContext(Landroid/content/Context;)V

    .line 57
    invoke-static {p1}, Lbfk$a;->b(Lbfk$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;

    move-result-object v3

    invoke-virtual {p2}, Lbfn;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->setMusicAccountResouce(I)V

    .line 58
    invoke-static {p1}, Lbfk$a;->a(Lbfk$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->setMusicAccountResource()V

    .line 59
    invoke-static {p1}, Lbfk$a;->c(Lbfk$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;

    move-result-object v3

    invoke-virtual {p2}, Lbfn;->b()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->setContext(Landroid/content/Context;)V

    .line 60
    invoke-static {p1}, Lbfk$a;->c(Lbfk$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;

    move-result-object v3

    invoke-virtual {p2}, Lbfn;->a()I

    move-result p2

    invoke-virtual {v3, p2}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->setMusicAccountResouce(I)V

    .line 61
    iget-object p2, p0, Lbfk;->b:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result p2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    const/high16 p2, 0x40000000    # 2.0f

    .line 62
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 63
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 64
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 66
    :cond_0
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 67
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 68
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 70
    :goto_0
    invoke-static {p1}, Lbfk$a;->a(Lbfk$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-static {p1}, Lbfk$a;->b(Lbfk$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    invoke-static {p1}, Lbfk$a;->c(Lbfk$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lbfk;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbfk$a;

    move-result-object p1

    return-object p1
.end method
