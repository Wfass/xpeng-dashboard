.class public Lbfv;
.super Lbqo;
.source "RankItemLayoutBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbfv$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbqo<",
        "Lbfx;",
        "Lbfv$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lbqo;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbfv$a;
    .locals 3

    .line 27
    sget v0, Lbez$f;->music_item_rank_layout:I

    invoke-virtual {p0, p1, v0}, Lbfv;->a(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    const-string v0, "MsRankItemLayoutBinder"

    if-nez p1, :cond_0

    .line 29
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lbez$f;->music_item_rank_layout:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "get view by create."

    .line 30
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p2, "get view from cache."

    .line 32
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_0
    new-instance p2, Lbfv$a;

    invoke-direct {p2, p1}, Lbfv$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method protected bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lbfv$a;

    check-cast p2, Lbfx;

    invoke-virtual {p0, p1, p2}, Lbfv;->a(Lbfv$a;Lbfx;)V

    return-void
.end method

.method protected a(Lbfv$a;Lbfx;)V
    .locals 2

    .line 40
    invoke-virtual {p2}, Lbfx;->a()Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 41
    invoke-static {p1}, Lbfv$a;->a(Lbfv$a;)Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->setVisibility(I)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p1}, Lbfv$a;->a(Lbfv$a;)Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->setVisibility(I)V

    .line 44
    invoke-static {p1}, Lbfv$a;->a(Lbfv$a;)Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;

    move-result-object v0

    invoke-virtual {p2}, Lbfx;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->setContext(Landroid/content/Context;)V

    .line 45
    invoke-static {p1}, Lbfv$a;->a(Lbfv$a;)Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;

    move-result-object p1

    invoke-virtual {p2}, Lbfx;->a()Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    move-result-object v0

    invoke-virtual {p2}, Lbfx;->b()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->setData(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;I)V

    :goto_0
    return-void
.end method

.method protected synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lbfv;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbfv$a;

    move-result-object p1

    return-object p1
.end method
