.class public Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;
.super Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout;
.source "CollectedProgramView.java"

# interfaces
.implements Lbxt;
.implements Lcom/xiaopeng/musicradio/mine/collect/program/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout<",
        "Lcom/xiaopeng/musicradio/mine/collect/program/view/a;",
        "Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;",
        ">;",
        "Lbxt;",
        "Lcom/xiaopeng/musicradio/mine/collect/program/view/a;"
    }
.end annotation


# static fields
.field private static final MAX_DATA_LIST_SIZE:I = 0x6

.field public static final TAG:Ljava/lang/String; = "CollectedProgramView"


# instance fields
.field private mAdapter:Latg;

.field private mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public addLoveProgram(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;->createPresenter()Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;
    .locals 3

    .line 65
    new-instance v0, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;

    const/4 v1, 0x6

    const-string v2, "FROM_MAIN"

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout;->findView()V

    .line 71
    new-instance v0, Lcom/xiaopeng/musicradio/mine/widget/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/mine/widget/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 113
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->mine_category_view:I

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .line 118
    invoke-static {}, Lawv;->a()Lawv;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;->mMeunIndex:I

    invoke-virtual {v0, v1}, Lawv;->a(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;->mAdapter:Latg;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Latg;->notifyDataSetChanged()V

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

    .line 133
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;->mAdapter:Latg;

    invoke-virtual {p1}, Latg;->getItemCount()I

    move-result p1

    if-gtz p1, :cond_0

    const/16 p1, 0x8

    .line 134
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/ak;->a(Landroid/view/ViewGroup;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 136
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/ak;->a(Landroid/view/ViewGroup;I)V

    :goto_0
    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public removeLoveProgram(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 0

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;->mAdapter:Latg;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView$1;-><init>(Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;)V

    invoke-virtual {v0, v1}, Latg;->a(Lcom/xiaopeng/musicradio/datalist/d$b;)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView$2;-><init>(Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/a;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 6

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->title_collected_program:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/xiaopeng/musicradio/mine/widget/a;->a(III)V

    .line 77
    new-instance v0, Latg;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Latg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;->mAdapter:Latg;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;->mAdapter:Latg;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v1, Latk;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/xiaopeng/musicradio/mine/a$a;->mine_album_view_item_margin_left:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v1, v4}, Latk;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/16 v0, 0x8

    .line 80
    invoke-static {p0, v0}, Lcom/xiaopeng/musicradio/utils/ak;->a(Landroid/view/ViewGroup;I)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/xiaopeng/musicradio/mine/a$e;->title_collected_program:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "title_collected_program"

    invoke-static {v0, v1, v4}, Laxt;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->o(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "collect_program_list"

    invoke-static {v0, v1, v3, v2, v4}, Laxt;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 83
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;->mAdapter:Latg;

    .line 84
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 85
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 86
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 87
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    move-result-object v0

    const-string v1, "FROM_MAIN"

    .line 89
    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/musicradio/datalist/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;->mAdapter:Latg;

    invoke-virtual {v0, p1, p2}, Latg;->a(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    return-void
.end method
