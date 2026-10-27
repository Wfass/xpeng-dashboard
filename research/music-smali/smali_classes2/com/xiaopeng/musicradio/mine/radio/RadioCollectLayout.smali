.class public Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;
.super Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;
.source "RadioCollectLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout<",
        "Lawe;",
        "Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;",
        "Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RadioCollectLayout"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->delete(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    return-void
.end method

.method private delete(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 162
    invoke-static {p1, v0}, Laxv;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;Z)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/datalist/d;->d(Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->updateLoadingTips()V

    return-void
.end method

.method private setEmptyTips()V
    .locals 1

    .line 120
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->empty_no_collected:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->setEmptyTips(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_0
    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->goto_login_collect_radio:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->setEmptyTips(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setLoveCount()V
    .locals 5

    .line 201
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbjr;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjr;

    .line 202
    invoke-interface {v0}, Lbjr;->getLoveCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 203
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v2

    invoke-virtual {v2}, Lbea;->g()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/xiaopeng/musicradio/mine/a$e;->radio_collect:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->mine_music_ge:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    .line 204
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->setEmptyTips()V

    .line 209
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->updateLoadingTips()V

    return-void
.end method


# virtual methods
.method public addLoveNetradio(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/datalist/d;->a(ILjava/lang/Object;)V

    .line 191
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->setLoveCount()V

    return-void
.end method

.method protected createAdapter()Lcom/xiaopeng/musicradio/datalist/d;
    .locals 8

    .line 75
    new-instance v7, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout$1;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lawe;

    iget-object v6, v0, Lawe;->d:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    const/16 v3, 0xf

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout$1;-><init>(Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;ZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    return-object v7
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->createPresenter()Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;
    .locals 3

    .line 70
    new-instance v0, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public getContentViewId()I
    .locals 1

    .line 85
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->radio_collect_layout:I

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .line 185
    invoke-static {}, Lawv;->a()Lawv;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mMenuIndex:I

    invoke-virtual {v0, v1}, Lawv;->a(I)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 133
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->onCreate(Landroidx/lifecycle/n;)V

    .line 64
    invoke-static {}, Laxv;->d()V

    return-void
.end method

.method public onDataListLoaded(Ljava/util/List;I)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->setEmptyTips()V

    .line 170
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->onDataListLoaded(Ljava/util/List;I)V

    .line 171
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->setLoveCount()V

    return-void
.end method

.method public removeLoveNetradio(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/datalist/d;->d(Ljava/lang/Object;)V

    .line 197
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->setLoveCount()V

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 146
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->setListener()V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout$3;-><init>(Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Lcom/xiaopeng/musicradio/datalist/d$b;)V

    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 138
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->setMode(I)V

    if-nez p1, :cond_0

    .line 140
    invoke-static {}, Latu;->k()V

    :cond_0
    return-void
.end method

.method public setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lawe;

    iget-object v0, v0, Lawe;->c:Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lawe;

    iget-object v0, v0, Lawe;->d:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->setVuiPosition(I)V

    return-void
.end method

.method public setRecyclerState(Lbya;)V
    .locals 1

    .line 179
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->setVuiMode(Lbya;)V

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lawe;

    iget-object v0, v0, Lawe;->d:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->setVuiMode(Lbya;)V

    return-void
.end method

.method public setView()V
    .locals 8

    .line 90
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->setView()V

    const-string v0, ""

    .line 91
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lawe;

    iget-object v1, v1, Lawe;->e:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

    sget v2, Lcom/xiaopeng/musicradio/mine/a$b;->ic_32_setting:I

    sget v3, Lcom/xiaopeng/musicradio/mine/a$e;->management:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->a(IIZ)V

    .line 93
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lawe;

    iget-object v1, v1, Lawe;->e:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

    iget v2, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mMenuIndex:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/vui/c;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->setSceneId(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Lawe;

    iget-object v2, v2, Lawe;->d:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    new-instance v3, Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v5, Lawe;

    iget-object v5, v5, Lawe;->d:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->getSpanCount()I

    move-result v5

    sget v6, Lcom/xiaopeng/musicradio/mine/a$a;->item_space_50:I

    .line 98
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Lcom/xiaopeng/musicradio/mine/a$a;->item_space_36:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v7, 0x0

    invoke-direct {v3, v5, v7, v6, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/a;-><init>(IZII)V

    .line 97
    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 99
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lawe;

    iget-object v1, v1, Lawe;->d:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    iget v2, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mMenuIndex:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/vui/c;->p(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "collect_netradio_list"

    invoke-static {v1, v2, v7, v4, v3}, Laxt;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v1, v4}, Lcom/xiaopeng/musicradio/datalist/d;->b(Z)V

    .line 101
    new-instance v1, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    .line 102
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 103
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Lawe;

    iget-object v2, v2, Lawe;->d:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    .line 104
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v1

    .line 105
    invoke-virtual {v1, v4}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Z)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v1

    .line 106
    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    .line 108
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lawe;

    iget-object v1, v1, Lawe;->d:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    const/16 v2, 0x28

    invoke-static {v1, v2}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 109
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lawe;

    iget-object v1, v1, Lawe;->c:Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->goto_login_collect:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->setGotoLoginText(I)V

    .line 110
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lawe;

    iget-object v1, v1, Lawe;->c:Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;

    new-instance v2, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout$2;-><init>(Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->setGotoLoginCallback(Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView$a;)V

    .line 116
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lawe;

    iget-object v1, v1, Lawe;->c:Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->setBtnGotoLogin(Ljava/lang/String;)V

    return-void
.end method
