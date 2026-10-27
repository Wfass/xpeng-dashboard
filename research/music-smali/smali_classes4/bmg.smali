.class public Lbmg;
.super Lme/drakeet/multitype/c;
.source "RankBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbmg$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/drakeet/multitype/c<",
        "Lbmk;",
        "Lbmg$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lme/drakeet/multitype/c;-><init>()V

    .line 30
    iput-object p1, p0, Lbmg;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbmg$a;
    .locals 3

    const-string v0, "RankBinder"

    const-string v1, "RankBinder onCreateViewHolder "

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {}, Laqx;->a()Laqx;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$f;->layout_rank_binder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Laqx;->a(Landroid/view/LayoutInflater;Ljava/lang/Integer;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    .line 39
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/xiaopeng/musicradio/program/b$f;->layout_rank_binder:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "RankBinder get view by create."

    .line 40
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p2, "RankBinder get view from cache."

    .line 42
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :goto_0
    new-instance p2, Lbmg$a;

    iget-object v0, p0, Lbmg;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;

    invoke-direct {p2, p1, v0}, Lbmg$a;-><init>(Landroid/view/View;Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;)V

    return-object p2
.end method

.method protected bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lbmg$a;

    check-cast p2, Lbmk;

    invoke-virtual {p0, p1, p2}, Lbmg;->a(Lbmg$a;Lbmk;)V

    return-void
.end method

.method protected a(Lbmg$a;Lbmk;)V
    .locals 8

    .line 50
    invoke-virtual {p2}, Lbmk;->d()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p1, Lbmg$a;->a:Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->setVisibility(I)V

    .line 52
    iget-object v2, p1, Lbmg$a;->a:Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;

    invoke-virtual {p2}, Lbmk;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lbmk;->d()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v4

    invoke-virtual {p2}, Lbmk;->a()I

    move-result v5

    invoke-virtual {p2}, Lbmk;->c()I

    move-result v6

    invoke-virtual {p2}, Lbmk;->e()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->a(Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;III)V

    .line 53
    iget-object p2, p1, Lbmg$a;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;

    invoke-virtual {p0, p1}, Lbmg;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;->a(I)V

    .line 54
    iget-object p2, p1, Lbmg$a;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;->b(I)V

    .line 55
    iget-object p2, p1, Lbmg$a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;

    invoke-virtual {p0, p1}, Lbmg;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;->a(I)V

    .line 56
    iget-object p1, p1, Lbmg$a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;->b(I)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p1, Lbmg$a;->a:Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lbmg;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbmg$a;

    move-result-object p1

    return-object p1
.end method
