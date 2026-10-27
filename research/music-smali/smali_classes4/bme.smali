.class public Lbme;
.super Lme/drakeet/multitype/c;
.source "BannerBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbme$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/drakeet/multitype/c<",
        "Lbmi;",
        "Lbme$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/widget/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lme/drakeet/multitype/c;-><init>()V

    .line 28
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lbme;->a:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbme$a;
    .locals 3

    const-string v0, "BannerBinder"

    const-string v1, "BannerBinder onCreateViewHolder"

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ae;->a()Lcom/xiaopeng/musicradio/utils/ae;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$f;->layout_banner_binder:I

    invoke-virtual {v1, p1, v2}, Lcom/xiaopeng/musicradio/utils/ae;->a(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    .line 37
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/xiaopeng/musicradio/program/b$f;->layout_banner_binder:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "BannerBinder get view by create."

    .line 38
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p2, "BannerBinder get view from cache."

    .line 40
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_0
    new-instance p2, Lbme$a;

    invoke-direct {p2, p1}, Lbme$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method protected bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lbme$a;

    check-cast p2, Lbmi;

    invoke-virtual {p0, p1, p2}, Lbme;->a(Lbme$a;Lbmi;)V

    return-void
.end method

.method protected a(Lbme$a;Lbmi;)V
    .locals 2

    const-string p2, "BannerBinder"

    const-string v0, "BannerBinder onBindViewHolder"

    .line 48
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object p2

    invoke-virtual {p2}, Lbmm;->i()I

    move-result p2

    .line 50
    iget-object v0, p1, Lbme$a;->b:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;->setBannerIndex(I)V

    .line 51
    iget-object v0, p1, Lbme$a;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->setBannerIndex(I)V

    .line 52
    iget-object p2, p0, Lbme;->a:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 53
    iget-object p2, p0, Lbme;->a:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    .line 54
    iget-object p2, p1, Lbme$a;->b:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;->setVisibility(I)V

    .line 55
    iget-object p1, p1, Lbme$a;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->setVisibility(I)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object p2, p1, Lbme$a;->b:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;

    invoke-virtual {p2, v1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;->setVisibility(I)V

    .line 58
    iget-object p1, p1, Lbme$a;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lbme;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbme$a;

    move-result-object p1

    return-object p1
.end method
