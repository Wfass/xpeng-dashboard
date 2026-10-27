.class public Lbgd;
.super Lbqo;
.source "MsRmTitleBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbgd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbqo<",
        "Lbfp;",
        "Lbgd$a;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

.field private c:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lbqo;-><init>()V

    .line 24
    iput-object p1, p0, Lbgd;->b:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbgd$a;
    .locals 3

    .line 30
    sget v0, Lbez$f;->music_item_rm_title_layout:I

    invoke-virtual {p0, p1, v0}, Lbgd;->a(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    const-string v0, "MsRmBinder"

    if-nez p1, :cond_0

    .line 32
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lbez$f;->music_item_rm_title_layout:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "get view by create."

    .line 33
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p2, "get view from cache."

    .line 35
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :goto_0
    new-instance p2, Lbgd$a;

    invoke-direct {p2, p1}, Lbgd$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method protected bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lbgd$a;

    check-cast p2, Lbfp;

    invoke-virtual {p0, p1, p2}, Lbgd;->a(Lbgd$a;Lbfp;)V

    return-void
.end method

.method protected a(Lbgd$a;Lbfp;)V
    .locals 2

    .line 43
    invoke-static {p1}, Lbgd$a;->a(Lbgd$a;)Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;

    move-result-object v0

    invoke-virtual {p2}, Lbfp;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->setRmCount(I)V

    .line 44
    invoke-static {p1}, Lbgd$a;->a(Lbgd$a;)Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;

    move-result-object v0

    iget-object v1, p0, Lbgd;->b:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->setFragment(Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;)V

    .line 45
    invoke-static {p1}, Lbgd$a;->a(Lbgd$a;)Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;

    move-result-object v0

    invoke-virtual {p2}, Lbfp;->b()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->setContext(Landroid/content/Context;)V

    .line 46
    invoke-static {p1}, Lbgd$a;->a(Lbgd$a;)Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;

    move-result-object p1

    iput-object p1, p0, Lbgd;->c:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;

    return-void
.end method

.method protected synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lbgd;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbgd$a;

    move-result-object p1

    return-object p1
.end method
