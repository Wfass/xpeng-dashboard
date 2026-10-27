.class public Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;
.super Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout;
.source "CollectedNetradioView.java"

# interfaces
.implements Lbxt;
.implements Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout<",
        "Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;",
        "Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;",
        ">;",
        "Lbxt;",
        "Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;"
    }
.end annotation


# static fields
.field private static final MAX_DATA_LIST_SIZE:I = 0x6

.field public static final TAG:Ljava/lang/String; = "CollectedNetradioView"


# instance fields
.field private mAdapter:Late;

.field private mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public addLoveNetradio(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;->createPresenter()Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;
    .locals 3

    .line 64
    new-instance v0, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;

    const/4 v1, 0x6

    const-string v2, "FROM_MAIN"

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout;->findView()V

    .line 70
    new-instance v0, Lcom/xiaopeng/musicradio/mine/widget/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/mine/widget/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 111
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->mine_category_view:I

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .line 116
    invoke-static {}, Lawv;->a()Lawv;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;->mMeunIndex:I

    invoke-virtual {v0, v1}, Lawv;->a(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;->mAdapter:Late;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Late;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDataListLoaded(Ljava/util/List;I)V
    .locals 0

    .line 131
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;->mAdapter:Late;

    invoke-virtual {p1}, Late;->getItemCount()I

    move-result p1

    if-gtz p1, :cond_0

    const/16 p1, 0x8

    .line 132
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/ak;->a(Landroid/view/ViewGroup;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 134
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/ak;->a(Landroid/view/ViewGroup;I)V

    :goto_0
    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public removeLoveNetradio(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 0

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;->mAdapter:Late;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView$1;-><init>(Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;)V

    invoke-virtual {v0, v1}, Late;->a(Lcom/xiaopeng/musicradio/datalist/d$b;)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView$2;-><init>(Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/a;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->title_collected_netradio:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/xiaopeng/musicradio/mine/widget/a;->a(III)V

    .line 76
    new-instance v0, Late;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Late;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;->mAdapter:Late;

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;->mAdapter:Late;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v1, Latk;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/xiaopeng/musicradio/mine/a$a;->mine_netradio_view_item_margin_left:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v1, v4}, Latk;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/xiaopeng/musicradio/mine/a$e;->title_collected_netradio:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "title_collected_netradio"

    invoke-static {v0, v1, v4}, Laxt;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->p(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "collect_netradio_list"

    invoke-static {v0, v1, v3, v2, v4}, Laxt;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 81
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;->mAdapter:Late;

    .line 82
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 83
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 84
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    move-result-object v0

    const-string v1, "FROM_MAIN"

    .line 87
    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/musicradio/datalist/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;->mAdapter:Late;

    invoke-virtual {v0, p1, p2}, Late;->a(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    return-void
.end method
