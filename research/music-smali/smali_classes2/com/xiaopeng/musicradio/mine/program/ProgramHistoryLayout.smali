.class public Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;
.super Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;
.source "ProgramHistoryLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/history/program/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout<",
        "Lavy;",
        "Lcom/xiaopeng/musicradio/mine/history/program/view/a;",
        "Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/history/program/view/a;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ProgramHistoryLayout"


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

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->delete(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    return-void
.end method

.method private delete(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 1

    .line 143
    invoke-static {p1}, Laxw;->c(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/datalist/d;->d(Ljava/lang/Object;)V

    .line 145
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->updateLoadingTips()V

    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/xiaopeng/musicradio/datalist/d;
    .locals 8

    .line 73
    new-instance v7, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout$1;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavy;

    iget-object v6, v0, Lavy;->d:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    const/16 v3, 0xf

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout$1;-><init>(Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;ZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    return-object v7
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->createPresenter()Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;
    .locals 3

    .line 68
    new-instance v0, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public getContentViewId()I
    .locals 1

    .line 83
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->program_history_layout:I

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .line 171
    invoke-static {}, Lawv;->a()Lawv;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->mMenuIndex:I

    invoke-virtual {v0, v1}, Lawv;->a(I)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->onCreate(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onDataListLoaded(Ljava/util/List;I)V
    .locals 3

    .line 150
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->onDataListLoaded(Ljava/util/List;I)V

    .line 151
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class p2, Lblo;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lblo;

    .line 152
    invoke-interface {p1}, Lblo;->getHistoryCount()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string p1, ""

    .line 154
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->program_history:I

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

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setListener()V
    .locals 2

    .line 127
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->setListener()V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout$2;-><init>(Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Lcom/xiaopeng/musicradio/datalist/d$b;)V

    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->setMode(I)V

    if-nez p1, :cond_0

    .line 90
    invoke-static {}, Latu;->h()V

    :cond_0
    return-void
.end method

.method public setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavy;

    iget-object v0, v0, Lavy;->c:Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavy;

    iget-object v0, v0, Lavy;->d:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->setVuiPosition(I)V

    return-void
.end method

.method public setRecyclerState(Lbya;)V
    .locals 1

    .line 165
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->setVuiMode(Lbya;)V

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavy;

    iget-object v0, v0, Lavy;->d:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->setVuiMode(Lbya;)V

    return-void
.end method

.method public setView()V
    .locals 7

    .line 96
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->setView()V

    const-string v0, ""

    .line 97
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavy;

    iget-object v0, v0, Lavy;->e:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$b;->ic_32_setting:I

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->management:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->a(IIZ)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavy;

    iget-object v0, v0, Lavy;->e:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->setSceneId(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lavy;

    iget-object v1, v1, Lavy;->d:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    new-instance v2, Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v4, Lavy;

    iget-object v4, v4, Lavy;->d:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->getSpanCount()I

    move-result v4

    sget v5, Lcom/xiaopeng/musicradio/mine/a$a;->item_space_50:I

    .line 105
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Lcom/xiaopeng/musicradio/mine/a$a;->item_space_36:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v6, 0x0

    invoke-direct {v2, v4, v6, v5, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/a;-><init>(IZII)V

    .line 104
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavy;

    iget-object v0, v0, Lavy;->d:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->o(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "history_program_list"

    invoke-static {v0, v1, v3, v3, v2}, Laxt;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavy;

    iget-object v0, v0, Lavy;->d:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    new-array v1, v3, [Lbxx;

    sget-object v2, Lbxx;->SCROLLBYY:Lbxx;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Laxt;->a(Landroid/view/View;[Lbxx;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/datalist/d;->b(Z)V

    .line 109
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    .line 110
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 111
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lavy;

    iget-object v1, v1, Lavy;->d:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    .line 112
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 113
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Z)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavy;

    iget-object v0, v0, Lavy;->d:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 117
    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->empty_no_history:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->setEmptyTips(Ljava/lang/String;)V

    return-void
.end method
