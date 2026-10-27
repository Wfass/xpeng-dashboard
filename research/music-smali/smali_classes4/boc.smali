.class public Lboc;
.super Lbod;
.source "AlbumSearchBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbod<",
        "Lboh;",
        "Lcom/xiaopeng/musicradio/search/result/view/g;",
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

    .line 37
    invoke-direct {p0, p1}, Lbod;-><init>(Lbnn;)V

    .line 34
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lboc;->d:Lcom/xiaopeng/musicradio/widget/k;

    .line 38
    iput-object p3, p0, Lboc;->c:Landroid/view/View;

    .line 39
    iput p2, p0, Lboc;->b:I

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected a(Landroid/content/Context;)Lcom/xiaopeng/musicradio/search/result/view/g;
    .locals 1

    .line 93
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/view/g;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/search/result/view/g;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 94
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/search/result/view/g;->setVisibility(I)V

    return-object v0
.end method

.method protected a(Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;Lboh;)V
    .locals 11

    .line 100
    invoke-virtual {p2}, Lboh;->b()Ljava/util/List;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewChild: listsize is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlbumSearchBinder:"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nex3z/flowlayout/FlowLayout;->getChildCount()I

    move-result v1

    .line 103
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-virtual {p0}, Lboc;->b()I

    move-result v4

    invoke-virtual {p0}, Lboc;->a()I

    move-result v5

    div-int/2addr v4, v5

    .line 105
    invoke-virtual {p1, v4}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->setColumn(I)V

    .line 107
    invoke-virtual {p0}, Lboc;->b()I

    move-result v4

    const/4 v5, 0x0

    if-ge v1, v4, :cond_2

    move v4, v5

    .line 108
    :goto_0
    invoke-virtual {p0}, Lboc;->b()I

    move-result v6

    if-ge v4, v6, :cond_3

    if-ge v4, v1, :cond_0

    .line 110
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v1, -0x1

    if-le v4, v6, :cond_1

    .line 113
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0, v6}, Lboc;->a(Landroid/content/Context;)Lcom/xiaopeng/musicradio/search/result/view/g;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v1, v5

    .line 117
    :goto_1
    invoke-virtual {p0}, Lboc;->b()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 118
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 121
    :cond_3
    invoke-virtual {p0}, Lboc;->f()I

    move-result v1

    invoke-virtual {p0}, Lboc;->e()I

    move-result v4

    invoke-virtual {p1, v3, v1, v4}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a(Ljava/util/List;II)V

    .line 122
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nex3z/flowlayout/FlowLayout;->getChildCount()I

    move-result v1

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindViewChild: ChildCount is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget v2, Lcom/xiaopeng/musicradio/search/a$f;->tab_search_album:I

    invoke-virtual {p2}, Lboh;->c()Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p1, v2, v3, v4}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a(ILcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;I)V

    .line 125
    iget v2, p0, Lboc;->b:I

    const-string v3, "/search/fragment/result/album"

    invoke-virtual {p1, v3, v2}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a(Ljava/lang/String;I)V

    move v2, v5

    :goto_2
    if-ge v2, v1, :cond_7

    .line 127
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 129
    instance-of v6, v3, Lcom/xiaopeng/musicradio/search/result/view/g;

    if-eqz v6, :cond_5

    .line 130
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 131
    check-cast v3, Lcom/xiaopeng/musicradio/search/result/view/g;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getLogo()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/xiaopeng/musicradio/search/result/view/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Lboh;->a()I

    move-result v6

    add-int/2addr v6, v2

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 134
    iget-object v8, p0, Lboc;->a:Lbnn;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    invoke-virtual {v9}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    invoke-virtual {v10}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lbnn;->isMusicAlbumPlaying(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 135
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v6, v8}, Lcom/xiaopeng/musicradio/search/result/view/g;->a(IILjava/lang/String;)V

    goto :goto_3

    :cond_4
    const/4 v7, 0x3

    .line 138
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v6, v8}, Lcom/xiaopeng/musicradio/search/result/view/g;->a(IILjava/lang/String;)V

    move v7, v5

    .line 140
    :goto_3
    invoke-virtual {v3, v6}, Lcom/xiaopeng/musicradio/search/result/view/g;->setPosition(I)V

    .line 142
    new-instance v8, Lboc$1;

    invoke-direct {v8, p0, v0, v2}, Lboc$1;-><init>(Lboc;Ljava/util/List;I)V

    invoke-virtual {v3, v8}, Lcom/xiaopeng/musicradio/search/result/view/g;->setOnPlayControlListener(Landroid/view/View$OnClickListener;)V

    .line 151
    new-instance v8, Lboc$2;

    invoke-direct {v8, p0, v0, v2}, Lboc$2;-><init>(Lboc;Ljava/util/List;I)V

    invoke-virtual {v3, v8}, Lcom/xiaopeng/musicradio/search/result/view/g;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-virtual {p2}, Lboh;->c()Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/xiaopeng/musicradio/search/result/view/g;->setRecycleView(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    .line 161
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v8, v7}, Lcom/xiaopeng/musicradio/search/result/view/g;->a(ILjava/lang/String;Z)V

    .line 162
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/xiaopeng/musicradio/search/result/view/g;->setItemTitle(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_6

    const/16 v6, 0x8

    .line 165
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_7
    return-void
.end method

.method protected bridge synthetic a(Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;Lboi;)V
    .locals 0

    .line 27
    check-cast p2, Lboh;

    invoke-virtual {p0, p1, p2}, Lboc;->a(Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;Lboh;)V

    return-void
.end method

.method protected b()I
    .locals 1

    .line 50
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    :goto_0
    return v0
.end method

.method protected synthetic b(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lboc;->a(Landroid/content/Context;)Lcom/xiaopeng/musicradio/search/result/view/g;

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

    .line 72
    iget-object v0, p0, Lboc;->d:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 74
    iget-object v0, p0, Lboc;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 75
    iget-object v1, p0, Lboc;->d:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lboc;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 77
    :cond_0
    iget-object v1, p0, Lboc;->d:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {p0}, Lboc;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lboc;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x6

    :goto_0
    return v0
.end method

.method protected f()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method
