.class public Lboe;
.super Lbod;
.source "CollectionSearchBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbod<",
        "Lboj;",
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

    .line 34
    invoke-direct {p0, p1}, Lbod;-><init>(Lbnn;)V

    .line 31
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lboe;->d:Lcom/xiaopeng/musicradio/widget/k;

    .line 35
    iput-object p3, p0, Lboe;->c:Landroid/view/View;

    .line 36
    iput p2, p0, Lboe;->b:I

    return-void
.end method

.method static synthetic a(Lboe;)I
    .locals 0

    .line 25
    iget p0, p0, Lboe;->b:I

    return p0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected a(Landroid/content/Context;)Lcom/xiaopeng/musicradio/search/result/view/g;
    .locals 1

    .line 85
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/view/g;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/search/result/view/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;Lboi;)V
    .locals 0

    .line 25
    check-cast p2, Lboj;

    invoke-virtual {p0, p1, p2}, Lboe;->a(Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;Lboj;)V

    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;Lboj;)V
    .locals 10

    .line 90
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nex3z/flowlayout/FlowLayout;->getChildCount()I

    move-result v0

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-virtual {p0}, Lboe;->b()I

    move-result v2

    invoke-virtual {p0}, Lboe;->a()I

    move-result v3

    div-int/2addr v2, v3

    .line 93
    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->setColumn(I)V

    .line 95
    invoke-virtual {p0}, Lboe;->b()I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_2

    move v2, v3

    .line 96
    :goto_0
    invoke-virtual {p0}, Lboe;->b()I

    move-result v4

    if-ge v2, v4, :cond_3

    if-ge v2, v0, :cond_0

    .line 98
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v0, -0x1

    if-le v2, v4, :cond_1

    .line 101
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4}, Lboe;->a(Landroid/content/Context;)Lcom/xiaopeng/musicradio/search/result/view/g;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    .line 105
    :goto_1
    invoke-virtual {p0}, Lboe;->b()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 106
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    :cond_3
    invoke-virtual {p0}, Lboe;->f()I

    move-result v0

    invoke-virtual {p0}, Lboe;->e()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a(Ljava/util/List;II)V

    .line 110
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nex3z/flowlayout/FlowLayout;->getChildCount()I

    move-result v0

    .line 111
    sget v1, Lcom/xiaopeng/musicradio/search/a$f;->tab_search_song_list:I

    invoke-virtual {p2}, Lboj;->c()Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {p1, v1, v2, v4}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a(ILcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;I)V

    .line 112
    iget v1, p0, Lboe;->b:I

    const-string v2, "/search/fragment/result/song_list"

    invoke-virtual {p1, v2, v1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a(Ljava/lang/String;I)V

    move v1, v3

    :goto_2
    if-ge v1, v0, :cond_7

    .line 114
    invoke-virtual {p2}, Lboj;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 115
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 116
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 117
    invoke-virtual {p2}, Lboj;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;

    .line 118
    instance-of v6, v2, Lcom/xiaopeng/musicradio/search/result/view/g;

    if-eqz v6, :cond_6

    .line 119
    check-cast v2, Lcom/xiaopeng/musicradio/search/result/view/g;

    .line 120
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getLogo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/xiaopeng/musicradio/search/result/view/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v6, p0, Lboe;->a:Lbnn;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lbnn;->isMusicCollectPlaying(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    .line 123
    invoke-virtual {p2}, Lboj;->a()I

    move-result v8

    add-int/2addr v8, v1

    add-int/2addr v8, v7

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v6, v8, v9}, Lcom/xiaopeng/musicradio/search/result/view/g;->a(IILjava/lang/String;)V

    move v6, v7

    goto :goto_3

    .line 126
    :cond_4
    invoke-virtual {p2}, Lboj;->a()I

    move-result v6

    add-int/2addr v6, v1

    add-int/2addr v6, v7

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v4, v6, v8}, Lcom/xiaopeng/musicradio/search/result/view/g;->a(IILjava/lang/String;)V

    move v6, v3

    .line 128
    :goto_3
    invoke-virtual {p2}, Lboj;->a()I

    move-result v8

    add-int/2addr v8, v1

    add-int/2addr v8, v7

    invoke-virtual {v2, v8}, Lcom/xiaopeng/musicradio/search/result/view/g;->setPosition(I)V

    .line 129
    new-instance v8, Lboe$1;

    invoke-direct {v8, p0, v5}, Lboe$1;-><init>(Lboe;Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;)V

    invoke-virtual {v2, v8}, Lcom/xiaopeng/musicradio/search/result/view/g;->setOnPlayControlListener(Landroid/view/View$OnClickListener;)V

    .line 138
    new-instance v8, Lboe$2;

    invoke-direct {v8, p0, v5}, Lboe$2;-><init>(Lboe;Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;)V

    invoke-virtual {v2, v8}, Lcom/xiaopeng/musicradio/search/result/view/g;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {p2}, Lboj;->a()I

    move-result v8

    add-int/2addr v8, v1

    add-int/2addr v8, v7

    .line 148
    invoke-virtual {p2}, Lboj;->c()Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/xiaopeng/musicradio/search/result/view/g;->setRecycleView(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    .line 149
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v8, v7, v6}, Lcom/xiaopeng/musicradio/search/result/view/g;->a(ILjava/lang/String;Z)V

    .line 150
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/xiaopeng/musicradio/search/result/view/g;->setItemTitle(Ljava/lang/String;)V

    goto :goto_4

    .line 153
    :cond_5
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_7
    return-void
.end method

.method protected b()I
    .locals 1

    .line 47
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    .line 50
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

    .line 25
    invoke-virtual {p0, p1}, Lboe;->a(Landroid/content/Context;)Lcom/xiaopeng/musicradio/search/result/view/g;

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

    .line 69
    iget-object v0, p0, Lboe;->d:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 71
    iget-object v0, p0, Lboe;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 72
    iget-object v1, p0, Lboe;->d:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lboe;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 74
    :cond_0
    iget-object v1, p0, Lboe;->d:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {p0}, Lboe;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lboe;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x6

    :goto_0
    return v0
.end method
