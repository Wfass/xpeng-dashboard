.class public Lbmc;
.super Lcom/xiaopeng/musicradio/commonui/adapter/h;
.source "ChoiceBannerAdapter13.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbmc$a;
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

    .line 22
    sget v0, Lcom/xiaopeng/musicradio/program/b$f;->item_banner_wrapper13:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;I)V

    .line 23
    iput-object p1, p0, Lbmc;->g:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbmc$a;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lbmc;->c()Landroid/view/View;

    move-result-object p1

    .line 35
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    new-instance p2, Lbmc$a;

    invoke-direct {p2, p0, p1}, Lbmc$a;-><init>(Lbmc;Landroid/view/View;)V

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

    .line 42
    check-cast p1, Lbmc$a;

    .line 43
    invoke-virtual {p0, p2}, Lbmc;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;

    .line 44
    iget-object v1, p1, Lbmc$a;->b:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-virtual {v1, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->a(I)V

    if-eqz v0, :cond_0

    .line 47
    iget-object v1, p1, Lbmc$a;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout13;

    invoke-virtual {v1, p2}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout13;->setPagerIndex(I)V

    .line 48
    iget-object p1, p1, Lbmc$a;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout13;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout13;->a(Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;)V

    :cond_0
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lbmc;->a(Landroid/view/ViewGroup;I)Lbmc$a;

    move-result-object p1

    return-object p1
.end method
