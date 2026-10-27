.class public Lbfj;
.super Lme/drakeet/multitype/c;
.source "DolbyTopBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbfj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/drakeet/multitype/c<",
        "Lbfn;",
        "Lbfj$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/widget/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lme/drakeet/multitype/c;-><init>()V

    .line 30
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lbfj;->a:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbfj$a;
    .locals 3

    .line 38
    invoke-static {}, Laqx;->a()Laqx;

    move-result-object v0

    sget v1, Lbez$f;->music_item_dolby_top:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Laqx;->a(Landroid/view/LayoutInflater;Ljava/lang/Integer;)Landroid/view/View;

    move-result-object p1

    const-string v0, "MsTopBinder"

    if-nez p1, :cond_0

    .line 40
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lbez$f;->music_item_dolby_top:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "get view by create."

    .line 41
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p2, "get view from cache."

    .line 43
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_0
    new-instance p2, Lbfj$a;

    invoke-direct {p2, p1}, Lbfj$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method protected bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lbfj$a;

    check-cast p2, Lbfn;

    invoke-virtual {p0, p1, p2}, Lbfj;->a(Lbfj$a;Lbfn;)V

    return-void
.end method

.method protected a(Lbfj$a;Lbfn;)V
    .locals 5

    .line 51
    iget-object v0, p0, Lbfj;->a:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 52
    invoke-static {p1}, Lbfj$a;->a(Lbfj$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbyPersonalLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbyPersonalLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 53
    invoke-static {p1}, Lbfj$a;->b(Lbfj$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 54
    invoke-static {p1}, Lbfj$a;->c(Lbfj$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 56
    invoke-static {p1}, Lbfj$a;->d(Lbfj$a;)Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->setVipSaleType(I)V

    .line 57
    invoke-static {p1}, Lbfj$a;->b(Lbfj$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;

    move-result-object v3

    invoke-virtual {p2}, Lbfn;->b()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->setContext(Landroid/content/Context;)V

    .line 58
    invoke-static {p1}, Lbfj$a;->a(Lbfj$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbyPersonalLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbyPersonalLayout;->setMusicAccountResource()V

    .line 59
    invoke-static {p1}, Lbfj$a;->c(Lbfj$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;

    move-result-object v3

    invoke-virtual {p2}, Lbfn;->b()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;->setContext(Landroid/content/Context;)V

    .line 60
    invoke-static {p1}, Lbfj$a;->b(Lbfj$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;

    move-result-object v3

    invoke-virtual {p2}, Lbfn;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->setMusicAccountResouce(I)V

    .line 61
    invoke-static {p1}, Lbfj$a;->c(Lbfj$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;

    move-result-object v3

    invoke-virtual {p2}, Lbfn;->a()I

    move-result p2

    invoke-virtual {v3, p2}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;->setMusicAccountResouce(I)V

    .line 62
    iget-object p2, p0, Lbfj;->a:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result p2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    const/high16 p2, 0x40000000    # 2.0f

    .line 63
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 64
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 65
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 67
    :cond_0
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 68
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 69
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 71
    :goto_0
    invoke-static {p1}, Lbfj$a;->a(Lbfj$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbyPersonalLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbyPersonalLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    invoke-static {p1}, Lbfj$a;->b(Lbfj$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-static {p1}, Lbfj$a;->c(Lbfj$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lbfj;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbfj$a;

    move-result-object p1

    return-object p1
.end method
