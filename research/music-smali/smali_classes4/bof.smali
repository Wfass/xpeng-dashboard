.class public Lbof;
.super Lbod;
.source "SingerSearchBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbod<",
        "Lbok;",
        "Lcom/xiaopeng/musicradio/search/result/view/h;",
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

    iput-object p1, p0, Lbof;->d:Lcom/xiaopeng/musicradio/widget/k;

    .line 35
    iput-object p3, p0, Lbof;->c:Landroid/view/View;

    .line 36
    iput p2, p0, Lbof;->b:I

    return-void
.end method

.method static synthetic a(Lbof;)I
    .locals 0

    .line 24
    iget p0, p0, Lbof;->b:I

    return p0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected a(Landroid/content/Context;)Lcom/xiaopeng/musicradio/search/result/view/h;
    .locals 1

    .line 90
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/view/h;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/search/result/view/h;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 91
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/search/result/view/h;->setVisibility(I)V

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;Lboi;)V
    .locals 0

    .line 24
    check-cast p2, Lbok;

    invoke-virtual {p0, p1, p2}, Lbof;->a(Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;Lbok;)V

    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;Lbok;)V
    .locals 10

    .line 97
    invoke-virtual {p2}, Lbok;->b()Ljava/util/List;

    move-result-object v0

    .line 98
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

    .line 99
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nex3z/flowlayout/FlowLayout;->getChildCount()I

    move-result v1

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-virtual {p0}, Lbof;->b()I

    move-result v4

    invoke-virtual {p0}, Lbof;->a()I

    move-result v5

    div-int/2addr v4, v5

    .line 102
    invoke-virtual {p1, v4}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->setColumn(I)V

    .line 104
    invoke-virtual {p0}, Lbof;->b()I

    move-result v4

    const/4 v5, 0x0

    if-ge v1, v4, :cond_2

    move v4, v5

    .line 105
    :goto_0
    invoke-virtual {p0}, Lbof;->b()I

    move-result v6

    if-ge v4, v6, :cond_3

    if-ge v4, v1, :cond_0

    .line 107
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v1, -0x1

    if-le v4, v6, :cond_1

    .line 110
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0, v6}, Lbof;->a(Landroid/content/Context;)Lcom/xiaopeng/musicradio/search/result/view/h;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v1, v5

    .line 114
    :goto_1
    invoke-virtual {p0}, Lbof;->b()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 115
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 118
    :cond_3
    invoke-virtual {p0}, Lbof;->f()I

    move-result v1

    invoke-virtual {p0}, Lbof;->e()I

    move-result v4

    invoke-virtual {p1, v3, v1, v4}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a(Ljava/util/List;II)V

    .line 119
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nex3z/flowlayout/FlowLayout;->getChildCount()I

    move-result v1

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindViewChild: ChildCount is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget v2, Lcom/xiaopeng/musicradio/search/a$f;->tab_search_singer:I

    invoke-virtual {p2}, Lbok;->c()Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a(ILcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;I)V

    .line 122
    iget v2, p0, Lbof;->b:I

    const-string v3, "/search/fragment/result/singer"

    invoke-virtual {p1, v3, v2}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a(Ljava/lang/String;I)V

    move v2, v5

    :goto_2
    if-ge v2, v1, :cond_7

    .line 124
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 125
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 126
    instance-of v6, v3, Lcom/xiaopeng/musicradio/search/result/view/h;

    if-eqz v6, :cond_5

    .line 127
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 128
    check-cast v3, Lcom/xiaopeng/musicradio/search/result/view/h;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->getLogo()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/xiaopeng/musicradio/search/result/view/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Lbok;->a()I

    move-result v6

    add-int/2addr v6, v2

    add-int/2addr v6, v4

    .line 131
    iget-object v7, p0, Lbof;->a:Lbnn;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;

    invoke-virtual {v9}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lbnn;->isMusicSingerPlaying(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x2

    .line 132
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v6, v8}, Lcom/xiaopeng/musicradio/search/result/view/h;->a(IILjava/lang/String;)V

    move v7, v4

    goto :goto_3

    :cond_4
    const/4 v7, 0x3

    .line 135
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v6, v8}, Lcom/xiaopeng/musicradio/search/result/view/h;->a(IILjava/lang/String;)V

    move v7, v5

    .line 137
    :goto_3
    invoke-virtual {v3, v6}, Lcom/xiaopeng/musicradio/search/result/view/h;->setPosition(I)V

    .line 139
    new-instance v8, Lbof$1;

    invoke-direct {v8, p0, v0, v2}, Lbof$1;-><init>(Lbof;Ljava/util/List;I)V

    invoke-virtual {v3, v8}, Lcom/xiaopeng/musicradio/search/result/view/h;->setOnPlayControlListener(Landroid/view/View$OnClickListener;)V

    .line 149
    new-instance v8, Lbof$2;

    invoke-direct {v8, p0, v0, v2}, Lbof$2;-><init>(Lbof;Ljava/util/List;I)V

    invoke-virtual {v3, v8}, Lcom/xiaopeng/musicradio/search/result/view/h;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-virtual {p2}, Lbok;->c()Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/xiaopeng/musicradio/search/result/view/h;->setRecycleView(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    .line 161
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v8, v7}, Lcom/xiaopeng/musicradio/search/result/view/h;->a(ILjava/lang/String;Z)V

    .line 162
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/xiaopeng/musicradio/search/result/view/h;->setItemTitle(Ljava/lang/String;)V

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

    .line 24
    invoke-virtual {p0, p1}, Lbof;->a(Landroid/content/Context;)Lcom/xiaopeng/musicradio/search/result/view/h;

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
    iget-object v0, p0, Lbof;->d:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 71
    iget-object v0, p0, Lbof;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 72
    iget-object v1, p0, Lbof;->d:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lbof;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 74
    :cond_0
    iget-object v1, p0, Lbof;->d:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {p0}, Lbof;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lbof;->c()I

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
