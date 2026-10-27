.class public Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;
.super Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;
.source "RadioHistoryLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/history/netradio/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout<",
        "Lawg;",
        "Lcom/xiaopeng/musicradio/mine/history/netradio/view/a;",
        "Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/history/netradio/view/a;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RadioHistoryLayout"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->delete(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    return-void
.end method

.method private delete(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 1

    .line 145
    invoke-static {p1}, Laxv;->c(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/datalist/d;->d(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->updateLoadingTips()V

    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/xiaopeng/musicradio/datalist/d;
    .locals 8

    .line 74
    new-instance v7, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout$1;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lawg;

    iget-object v6, v0, Lawg;->d:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    const/16 v3, 0xf

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout$1;-><init>(Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;ZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    return-object v7
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->createPresenter()Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;
    .locals 3

    .line 69
    new-instance v0, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public getContentViewId()I
    .locals 1

    .line 84
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->radio_history_layout:I

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .line 173
    invoke-static {}, Lawv;->a()Lawv;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->mMenuIndex:I

    invoke-virtual {v0, v1}, Lawv;->a(I)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->onCreate(Landroidx/lifecycle/n;)V

    .line 63
    invoke-static {}, Laxw;->e()V

    return-void
.end method

.method public onDataListLoaded(Ljava/util/List;I)V
    .locals 3

    .line 161
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->onDataListLoaded(Ljava/util/List;I)V

    .line 162
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class p2, Lbjr;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbjr;

    .line 163
    invoke-interface {p1}, Lbjr;->getHistoryCount()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string p1, ""

    .line 165
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->radio_history:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget p1, Lcom/xiaopeng/musicradio/mine/a$e;->mine_music_ge:I

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setListener()V
    .locals 2

    .line 129
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->setListener()V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout$2;-><init>(Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Lcom/xiaopeng/musicradio/datalist/d$b;)V

    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 121
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->setMode(I)V

    if-nez p1, :cond_0

    .line 123
    invoke-static {}, Latu;->l()V

    :cond_0
    return-void
.end method

.method public setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lawg;

    iget-object v0, v0, Lawg;->c:Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lawg;

    iget-object v0, v0, Lawg;->d:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->setVuiPosition(I)V

    return-void
.end method

.method public setRecyclerState(Lbya;)V
    .locals 1

    .line 155
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->setVuiMode(Lbya;)V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lawg;

    iget-object v0, v0, Lawg;->d:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->setVuiMode(Lbya;)V

    return-void
.end method

.method public setView()V
    .locals 7

    .line 89
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->setView()V

    const-string v0, ""

    .line 90
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lawg;

    iget-object v0, v0, Lawg;->e:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$b;->ic_32_setting:I

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->management:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->a(IIZ)V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lawg;

    iget-object v0, v0, Lawg;->e:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->p(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->setSceneId(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->getResources()Landroid/content/res/Resources;

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lawg;

    iget-object v0, v0, Lawg;->d:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    new-instance v1, Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Lawg;

    iget-object v2, v2, Lawg;->d:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->getSpanCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/xiaopeng/musicradio/mine/a$a;->item_space_50:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/xiaopeng/musicradio/mine/a$a;->item_space_36:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v1, v2, v6, v4, v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/a;-><init>(IZII)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lawg;

    iget-object v0, v0, Lawg;->d:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->p(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "history_netradio_list"

    invoke-static {v0, v1, v6, v3, v2}, Laxt;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/datalist/d;->b(Z)V

    .line 99
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    .line 100
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 101
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lawg;

    iget-object v1, v1, Lawg;->d:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    .line 102
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Z)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lawg;

    iget-object v0, v0, Lawg;->d:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 107
    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->empty_no_history:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->setEmptyTips(Ljava/lang/String;)V

    return-void
.end method
