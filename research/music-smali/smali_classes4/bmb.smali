.class public Lbmb;
.super Lcom/xiaopeng/musicradio/commonui/adapter/h;
.source "ChoiceBannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbmb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/adapter/h<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    sget v0, Lcom/xiaopeng/musicradio/program/b$f;->item_banner_wrapper:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;I)V

    .line 22
    iput-object p1, p0, Lbmb;->g:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbmb$a;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lbmb;->c()Landroid/view/View;

    move-result-object p1

    .line 34
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    new-instance p2, Lbmb$a;

    invoke-direct {p2, p0, p1}, Lbmb$a;-><init>(Lbmb;Landroid/view/View;)V

    return-object p2
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 41
    check-cast p1, Lbmb$a;

    .line 42
    invoke-virtual {p0, p2}, Lbmb;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;

    .line 43
    iget-object v1, p1, Lbmb$a;->b:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-virtual {v1, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->a(I)V

    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p1, Lbmb$a;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;

    invoke-virtual {v1, p2}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->setPagerIndex(I)V

    .line 47
    iget-object p1, p1, Lbmb$a;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->a(Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;)V

    :cond_0
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lbmb;->a(Landroid/view/ViewGroup;I)Lbmb$a;

    move-result-object p1

    return-object p1
.end method
