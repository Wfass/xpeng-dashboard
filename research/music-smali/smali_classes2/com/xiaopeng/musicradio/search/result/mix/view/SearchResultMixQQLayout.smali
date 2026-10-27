.class public Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;
.source "SearchResultMixQQLayout.java"

# interfaces
.implements Lbnn;
.implements Lcom/xiaopeng/musicradio/search/result/mix/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout<",
        "Lcom/xiaopeng/musicradio/search/result/mix/view/a;",
        "Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;",
        ">;",
        "Lbnn;",
        "Lcom/xiaopeng/musicradio/search/result/mix/view/a;"
    }
.end annotation


# instance fields
.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field protected e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

.field protected f:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

.field protected g:Landroid/view/View;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Lcom/xiaopeng/musicradio/widget/k;

.field private l:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->k:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->k:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->k:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private setListView(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;)V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->removeAllViews()V

    .line 242
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getSongList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getSongList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 243
    new-instance v0, Lbol;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getSongList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lbol;-><init>(Ljava/util/List;I)V

    .line 244
    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0, v2}, Lbol;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    .line 245
    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getSongList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x6

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getSongList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    .line 247
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getSongList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getAccountType()I

    move-result v2

    invoke-static {v0, v2}, Lboq;->a(Ljava/util/List;I)V

    .line 250
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getArtistList()Ljava/util/List;

    move-result-object v0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getArtistList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 251
    new-instance v0, Lbok;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getArtistList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lbok;-><init>(Ljava/util/List;I)V

    .line 252
    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0, v3}, Lbok;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    .line 253
    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getArtistList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getArtistList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    .line 257
    :cond_3
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getAlbumList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getAlbumList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 258
    new-instance v0, Lboh;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getAlbumList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lboh;-><init>(Ljava/util/List;I)V

    .line 259
    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0, v3}, Lboh;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    .line 260
    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getAlbumList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getAlbumList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    .line 263
    :cond_5
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getCollectList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getCollectList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 264
    new-instance v0, Lboj;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getCollectList()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lboj;-><init>(Ljava/util/List;I)V

    .line 265
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0, p1}, Lboj;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    .line 266
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/util/List;)V

    .line 269
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->notifyDataSetChanged()V

    .line 270
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_7

    .line 271
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->j()V

    .line 274
    :cond_7
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 275
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->g()Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .locals 1

    .line 111
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->root_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->d:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 112
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->mix_recyclerview:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    return-void
.end method

.method protected c()V
    .locals 10

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->c:Ljava/util/List;

    .line 118
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v1, v2}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v2, v3}, Lapf;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v3, v4}, Lapf;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(III)V

    .line 119
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->h()V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    new-instance v1, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout$1;-><init>(Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    new-instance v1, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout$2;-><init>(Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setOnTipsViewClick(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    sget v1, Lcom/xiaopeng/musicradio/search/a$f;->no_search_result_hint:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setNoRecordTipText(I)V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 v1, 0x1

    new-array v1, v1, [Lbxx;

    sget-object v2, Lbxx;->SCROLLBYY:Lbxx;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lbxp;->a(Landroid/view/View;[Lbxx;)V

    .line 142
    iget-object v4, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iget v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->h:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->ab(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method public favOrNot(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->b(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V

    return-void
.end method

.method protected g()Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;
    .locals 1

    .line 93
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;-><init>()V

    return-object v0
.end method

.method protected getAccountType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getContentViewId()I
    .locals 1

    .line 106
    sget v0, Lcom/xiaopeng/musicradio/search/a$e;->fragment_search_result_mix:I

    return v0
.end method

.method public getMusicPlayState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected h()V
    .locals 5

    .line 151
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v1, Lbol;

    new-instance v2, Lbog;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getAccountType()I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->d:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-direct {v2, p0, v3, v4}, Lbog;-><init>(Lbnn;ILandroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v1, Lbok;

    new-instance v2, Lbof;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getAccountType()I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->d:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-direct {v2, p0, v3, v4}, Lbof;-><init>(Lbnn;ILandroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v1, Lboh;

    new-instance v2, Lboc;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getAccountType()I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->d:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-direct {v2, p0, v3, v4}, Lboc;-><init>(Lbnn;ILandroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v1, Lboj;

    new-instance v2, Lboe;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getAccountType()I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->d:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-direct {v2, p0, v3, v4}, Lboe;-><init>(Lbnn;ILandroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 156
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 157
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public hasData()Z
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getTipsState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    return v1

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public i()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->f()V

    return-void
.end method

.method public isLove(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Z
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->c(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Z

    move-result p1

    return p1
.end method

.method public isMusicAlbumPlaying(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isMusicCollectPlaying(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isMusicSingerPlaying(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isNetRadioPlaying(I)Z
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->b(I)Z

    move-result p1

    return p1
.end method

.method public isProgramPlaying(J)Z
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->b(J)Z

    move-result p1

    return p1
.end method

.method public j()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipViewClickable(Z)V

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    return-void
.end method

.method public l()V
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 489
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/util/List;)V

    .line 490
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->notifyDataSetChanged()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 480
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 481
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    if-eqz p1, :cond_0

    .line 482
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 426
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "SearchResultMixQQLayout"

    const-string v0, "onCreate: ========"

    .line 427
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 433
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "SearchResultMixQQLayout"

    const-string v0, "onDestroy: ================"

    .line 434
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public openCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 407
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getAccountType()I

    move-result v1

    invoke-static {v0, p1, p2, p3, v1}, Lboo;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public openMusicAlbumDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 397
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getAccountType()I

    move-result v1

    invoke-static {v0, p1, p2, p3, v1}, Lboo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public openMusicSingerDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 402
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getAccountType()I

    move-result v5

    const/4 v4, 0x3

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lboo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public openProgramDetail(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 2

    .line 413
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 414
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/program/fragment/sub/detail"

    invoke-static {v0, v1, p1}, Lboo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public playAllMusic(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;I)V"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getAccountType()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;Ljava/util/List;II)V

    .line 421
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getAccountType()I

    move-result p1

    invoke-static {p1}, Lbom;->d(I)V

    return-void
.end method

.method public playControlMusicAlbumListSign(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getAccountType()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public playControlMusicCollectListSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getAccountType()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public playControlMusicSingerListSign(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getAccountType()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->b(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public playMusic(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getAccountType()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;I)V

    .line 382
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getAccountType()I

    move-result p1

    invoke-static {p1}, Lbom;->e(I)V

    return-void
.end method

.method public playNetRadio(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    return-void
.end method

.method public playProgram(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    return-void
.end method

.method public refreshData()V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public resetData()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/util/List;)V

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 461
    iput p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->i:I

    .line 462
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iget v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->i:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setVuiPosition(I)V

    return-void
.end method

.method public setRecyclerState(Lbya;)V
    .locals 1

    .line 466
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->setVuiMode(Lbya;)V

    .line 467
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setVuiMode(Lbya;)V

    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->j:Ljava/lang/String;

    return-void
.end method

.method public showAlbumLoading(ZII)V
    .locals 0

    return-void
.end method

.method public showCollectLoading(ZII)V
    .locals 0

    return-void
.end method

.method public showLoading(ZII)V
    .locals 0

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    :goto_0
    return-void
.end method

.method public showLoadingFailed(Ljava/lang/String;I)V
    .locals 0

    .line 226
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipViewClickable(Z)V

    .line 227
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    return-void
.end method

.method public showMusicLoading(ZII)V
    .locals 0

    return-void
.end method

.method public showRadioLoading(ZII)V
    .locals 0

    return-void
.end method

.method public showReadLoading(ZII)V
    .locals 0

    return-void
.end method

.method public t_()V
    .locals 3

    .line 175
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getAccountType()I

    move-result v0

    .line 176
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbdm;->a(I)Lbeg;

    move-result-object v1

    invoke-interface {v1}, Lbeg;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->g:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    .line 178
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 181
    :cond_0
    sget v1, Lcom/xiaopeng/musicradio/search/a$d;->stub_auth:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :cond_1
    sget v1, Lcom/xiaopeng/musicradio/search/a$d;->search_auth_qq_netease:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->g:Landroid/view/View;

    .line 186
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->g:Landroid/view/View;

    instance-of v2, v1, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;

    if-eqz v2, :cond_2

    .line 188
    check-cast v1, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->setAccountType(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateAlbumData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V
    .locals 0

    return-void
.end method

.method public updateCollectData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V
    .locals 0

    return-void
.end method

.method public updateData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->l:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    .line 233
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->l:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->setListView(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;)V

    return-void
.end method

.method public updateMusicData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V
    .locals 0

    return-void
.end method

.method public updateMusicLove(Lasj$r;)V
    .locals 4

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    if-eqz v0, :cond_2

    .line 440
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 442
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 443
    instance-of v2, v1, Lbol;

    if-eqz v2, :cond_0

    .line 444
    check-cast v1, Lbol;

    .line 445
    invoke-virtual {v1}, Lbol;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 447
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 448
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lasj$r;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    invoke-virtual {p1}, Lasj$r;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->setHot(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateRadioData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V
    .locals 0

    return-void
.end method

.method public updateReadData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V
    .locals 0

    return-void
.end method
