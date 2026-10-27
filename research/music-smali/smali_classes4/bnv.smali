.class public Lbnv;
.super Lbnm;
.source "SearchSongItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbnv$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbnm<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
        "Lbnv$a;",
        ">;"
    }
.end annotation


# instance fields
.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILbnn;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lbnm;-><init>(Landroid/content/Context;ILbnn;)V

    .line 28
    iput p4, p0, Lbnv;->j:I

    .line 29
    new-instance p1, Lbnv$1;

    invoke-direct {p1, p0}, Lbnv$1;-><init>(Lbnv;)V

    invoke-virtual {p0, p1}, Lbnv;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lbnv;->b(Landroid/view/View;)Lbnv$a;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 48
    invoke-super {p0, p1, p2}, Lbnm;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of p2, p2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    if-eqz p2, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    const/4 v0, 0x0

    iput v0, p2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->topMargin:I

    :cond_0
    return-object p1
.end method

.method protected b(Landroid/view/View;)Lbnv$a;
    .locals 1

    .line 57
    new-instance v0, Lbnv$a;

    invoke-direct {v0, p0, p1}, Lbnv$a;-><init>(Lbnv;Landroid/view/View;)V

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 62
    invoke-virtual {p0, p2}, Lbnv;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lbnv$a;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0, p2}, Lbnv;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    if-eqz v0, :cond_0

    .line 65
    check-cast p1, Lbnv$a;

    .line 66
    iget-object v1, p1, Lbnv$a;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;

    const/4 v2, 0x1

    iget v3, p0, Lbnv;->j:I

    invoke-virtual {v1, v0, p2, v2, v3}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;IZI)V

    .line 68
    iget-object v1, p0, Lbnv;->h:Lbnn;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getAlbum()Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lbnn;->getMusicPlayState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 69
    iget-object v1, p1, Lbnv$a;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;->setPlayState(I)V

    .line 71
    invoke-static {p1}, Lbnv$a;->a(Lbnv$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->a(I)V

    .line 72
    iget-object p1, p1, Lbnv$a;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;->b()V

    :cond_0
    return-void
.end method
