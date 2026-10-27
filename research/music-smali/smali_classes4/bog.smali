.class public Lbog;
.super Lbod;
.source "SongSearchBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbod<",
        "Lbol;",
        "Lcom/xiaopeng/musicradio/search/result/view/i;",
        ">;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:Landroid/view/View;

.field private d:Lcom/xiaopeng/musicradio/widget/k;


# direct methods
.method public constructor <init>(Lbnn;ILandroid/view/View;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lbod;-><init>(Lbnn;)V

    .line 36
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lbog;->d:Lcom/xiaopeng/musicradio/widget/k;

    .line 40
    iput-object p3, p0, Lbog;->c:Landroid/view/View;

    .line 41
    iput p2, p0, Lbog;->b:I

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method protected a(Landroid/content/Context;)Lcom/xiaopeng/musicradio/search/result/view/i;
    .locals 1

    .line 66
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/view/i;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/search/result/view/i;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;Lboi;)V
    .locals 0

    .line 31
    check-cast p2, Lbol;

    invoke-virtual {p0, p1, p2}, Lbog;->a(Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;Lbol;)V

    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;Lbol;)V
    .locals 9

    .line 91
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nex3z/flowlayout/FlowLayout;->getChildCount()I

    move-result v0

    .line 92
    sget v1, Lcom/xiaopeng/musicradio/search/a$f;->tab_search_song:I

    invoke-virtual {p2}, Lbol;->c()Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a(ILcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;I)V

    .line 93
    iget v1, p0, Lbog;->b:I

    const-string v2, "/search/fragment/result/song"

    invoke-virtual {p1, v2, v1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a(Ljava/lang/String;I)V

    .line 94
    new-instance v1, Lbog$1;

    invoke-direct {v1, p0, p2}, Lbog$1;-><init>(Lbog;Lbol;)V

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->setPlayAllListener(Landroid/view/View$OnClickListener;)V

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_7

    .line 103
    invoke-virtual {p2}, Lbol;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 104
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 105
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 106
    invoke-virtual {p2}, Lbol;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 107
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 108
    invoke-virtual {p0}, Lbog;->e()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 109
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    instance-of v5, v2, Lcom/xiaopeng/musicradio/search/result/view/i;

    if-eqz v5, :cond_6

    .line 111
    check-cast v2, Lcom/xiaopeng/musicradio/search/result/view/i;

    .line 114
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;

    move-result-object v5

    .line 115
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getAlbum()Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 117
    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getLogo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 118
    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getLogo()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    const-string v7, ""

    :goto_1
    if-eqz v5, :cond_1

    .line 121
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 122
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;->getLogo()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 123
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;->getLogo()Ljava/lang/String;

    move-result-object v7

    .line 126
    :cond_1
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Lcom/xiaopeng/musicradio/search/result/view/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v1, 0x1

    .line 127
    invoke-virtual {v2, v5}, Lcom/xiaopeng/musicradio/search/result/view/i;->setIndex(I)V

    .line 128
    iget v7, p0, Lbog;->b:I

    invoke-virtual {v2, v4, v7}, Lcom/xiaopeng/musicradio/search/result/view/i;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;I)V

    .line 129
    new-instance v7, Lbog$2;

    invoke-direct {v7, p0, v4}, Lbog$2;-><init>(Lbog;Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V

    invoke-virtual {v2, v7}, Lcom/xiaopeng/musicradio/search/result/view/i;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    new-instance v7, Lbog$3;

    invoke-direct {v7, p0, v4}, Lbog$3;-><init>(Lbog;Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V

    invoke-virtual {v2, v7}, Lcom/xiaopeng/musicradio/search/result/view/i;->setFavClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v6, :cond_3

    .line 146
    iget-object v7, p0, Lbog;->a:Lbnn;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v8, v6}, Lbnn;->getMusicPlayState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 148
    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/search/result/view/i;->setSelected(Z)V

    goto :goto_2

    :cond_2
    const/4 v7, 0x1

    .line 150
    invoke-virtual {v2, v7}, Lcom/xiaopeng/musicradio/search/result/view/i;->setSelected(Z)V

    .line 152
    :goto_2
    invoke-virtual {p2}, Lbol;->c()Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/xiaopeng/musicradio/search/result/view/i;->setRecycleView(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    .line 153
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v5, v7}, Lcom/xiaopeng/musicradio/search/result/view/i;->a(IILjava/lang/String;)V

    .line 155
    :cond_3
    iget-object v5, p0, Lbog;->a:Lbnn;

    invoke-interface {v5, v4}, Lbnn;->isLove(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/xiaopeng/musicradio/search/result/view/i;->setIsLove(Z)V

    goto :goto_3

    :cond_4
    if-nez v1, :cond_5

    .line 159
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 161
    :cond_5
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method protected synthetic b(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lbog;->a(Landroid/content/Context;)Lcom/xiaopeng/musicradio/search/result/view/i;

    move-result-object p1

    return-object p1
.end method

.method protected c()I
    .locals 1

    const/16 v0, 0x24

    return v0
.end method

.method protected d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected e()I
    .locals 2

    .line 71
    iget-object v0, p0, Lbog;->d:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 73
    iget-object v0, p0, Lbog;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 74
    iget-object v1, p0, Lbog;->d:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lbog;->c()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 76
    :cond_0
    iget-object v1, p0, Lbog;->d:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0}, Lbog;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    :goto_0
    return v0
.end method

.method protected f()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method
