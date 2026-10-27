.class public Lbfl;
.super Lbqo;
.source "MsTopLowBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbfl$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbqo<",
        "Lbfq;",
        "Lbfl$a;",
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

    iput-object v0, p0, Lbfl;->b:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbfl$a;
    .locals 3

    .line 37
    sget v0, Lbez$f;->music_item_selection_top_low:I

    invoke-virtual {p0, p1, v0}, Lbfl;->a(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    const-string v0, "MsTopBinder"

    if-nez p1, :cond_0

    .line 39
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lbez$f;->music_item_selection_top_low:I

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
    new-instance p2, Lbfl$a;

    invoke-direct {p2, p1}, Lbfl$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method protected bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lbfl$a;

    check-cast p2, Lbfq;

    invoke-virtual {p0, p1, p2}, Lbfl;->a(Lbfl$a;Lbfq;)V

    return-void
.end method

.method protected a(Lbfl$a;Lbfq;)V
    .locals 4

    .line 50
    iget-object v0, p0, Lbfl;->b:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 51
    invoke-static {p1}, Lbfl$a;->a(Lbfl$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 52
    invoke-static {p1}, Lbfl$a;->b(Lbfl$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 54
    iget-object v2, p0, Lbfl;->b:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    .line 55
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/high16 v2, 0x40000000    # 2.0f

    .line 56
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 58
    :cond_0
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 59
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 62
    :goto_0
    invoke-static {p1}, Lbfl$a;->b(Lbfl$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;

    move-result-object v2

    invoke-virtual {p2}, Lbfq;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->setMusicAccountResouce(I)V

    .line 63
    invoke-static {p1}, Lbfl$a;->b(Lbfl$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;

    move-result-object v2

    invoke-virtual {p2}, Lbfq;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->setContext(Landroid/content/Context;)V

    .line 64
    invoke-static {p1}, Lbfl$a;->a(Lbfl$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;

    move-result-object v2

    invoke-virtual {p2}, Lbfq;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->setMusicAccountResource(I)V

    .line 65
    invoke-virtual {p2}, Lbfq;->a()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 67
    invoke-static {p1}, Lbfl$a;->c(Lbfl$a;)Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->setVipSaleType(I)V

    goto :goto_1

    .line 69
    :cond_1
    invoke-static {p1}, Lbfl$a;->c(Lbfl$a;)Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->setVipSaleType(I)V

    .line 72
    :goto_1
    invoke-static {p1}, Lbfl$a;->a(Lbfl$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-static {p1}, Lbfl$a;->b(Lbfl$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lbfl;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbfl$a;

    move-result-object p1

    return-object p1
.end method
