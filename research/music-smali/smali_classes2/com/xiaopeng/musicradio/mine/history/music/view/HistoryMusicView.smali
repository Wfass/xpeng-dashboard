.class public Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;
.super Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout;
.source "HistoryMusicView.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/history/music/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout<",
        "Lcom/xiaopeng/musicradio/mine/history/music/view/a;",
        "Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/history/music/view/a;"
    }
.end annotation


# static fields
.field protected static final MAX_DATA_LIST_SIZE:I = 0x6

.field public static final TAG:Ljava/lang/String; = "HistoryMusicView"


# instance fields
.field protected mAdapter:Lawn;

.field private mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->createPresenter()Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;
    .locals 3

    .line 80
    new-instance v0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;

    const/4 v1, 0x6

    const-string v2, "FROM_MAIN"

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout;->findView()V

    .line 86
    new-instance v0, Lcom/xiaopeng/musicradio/mine/widget/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/mine/widget/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 152
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->mine_category_view:I

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .line 157
    invoke-static {}, Lawv;->a()Lawv;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mMeunIndex:I

    invoke-virtual {v0, v1}, Lawv;->a(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mAdapter:Lawn;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lawn;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onDataListLoaded(Ljava/util/List;I)V
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->isShowing()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 165
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDataListLoaded:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "null"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HistoryMusicView"

    invoke-static {v0, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mAdapter:Lawn;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lawn;->a(Ljava/util/List;)V

    .line 167
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mAdapter:Lawn;

    invoke-virtual {p1}, Lawn;->getItemCount()I

    move-result p1

    if-gtz p1, :cond_2

    const/16 p1, 0x8

    .line 168
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/ak;->a(Landroid/view/ViewGroup;I)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 170
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/ak;->a(Landroid/view/ViewGroup;I)V

    .line 172
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/16 p2, 0x320

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->updateVuiScene(I)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/widget/a;->b()V

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mAdapter:Lawn;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView$2;-><init>(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;)V

    invoke-virtual {v0, v1}, Lawn;->a(Lcom/xiaopeng/musicradio/datalist/d$b;)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->g:Lcom/xiaopeng/xui/widget/XImageButton;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView$3;-><init>(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView$4;-><init>(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/a;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 204
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mPosition:I

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setVuiPosition(I)V

    return-void
.end method

.method public setRecyclerState(Lbya;)V
    .locals 1

    .line 209
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->setVuiMode(Lbya;)V

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setVuiMode(Lbya;)V

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->g:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiMode(Lbya;)V

    return-void
.end method

.method protected setView()V
    .locals 8

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/widget/a;->a()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Laxu;->b(II)Lfe;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->title_history_music:I

    iget-object v3, v0, Lfe;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v0, Lfe;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/xiaopeng/musicradio/mine/widget/a;->a(IIII)V

    .line 93
    new-instance v1, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView$1;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-direct {v1, p0, v2, v3}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView$1;-><init>(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;Landroid/content/Context;Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mAdapter:Lawn;

    .line 99
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mAdapter:Lawn;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lawn;->b(Z)V

    .line 100
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mAdapter:Lawn;

    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 101
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 102
    new-instance v1, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v3, v4}, Lapf;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v5, v3, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    .line 103
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(I)V

    .line 104
    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/16 v1, 0x8

    .line 105
    invoke-static {p0, v1}, Lcom/xiaopeng/musicradio/utils/ak;->a(Landroid/view/ViewGroup;I)V

    .line 106
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v2, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->n(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    .line 107
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const-string v2, "history_music_list"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setVuiLabel(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->g:Lcom/xiaopeng/xui/widget/XImageButton;

    iget-object v0, v0, Lfe;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "his_ms_play_all"

    invoke-static {v1, v0, v2}, Laxt;->a(Landroid/view/View;ILjava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->title_history_music:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title_history_music"

    invoke-static {v0, v1, v2}, Laxt;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mAdapter:Lawn;

    .line 112
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 113
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 114
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 115
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    move-result-object v0

    const-string v1, "FROM_MAIN"

    .line 117
    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/musicradio/datalist/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public updateCollectedStatus(Lcom/xiaopeng/musicradio/datalist/d$a;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mAdapter:Lawn;

    invoke-virtual {v0, p1}, Lawn;->a(Lcom/xiaopeng/musicradio/datalist/d$a;)Z

    return-void
.end method

.method public updateHistoryInfo()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->h()V

    :cond_0
    return-void
.end method

.method public updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mAdapter:Lawn;

    invoke-virtual {v0, p1, p2}, Lawn;->a(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    .line 178
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->updateTitlePlayingState()V

    return-void
.end method

.method public updateTitlePlayingState()V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/widget/a;->a()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Laxu;->b(II)Lfe;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v2, v0, Lfe;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Lfe;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/musicradio/mine/widget/a;->a(II)V

    .line 185
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->g:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XImageButton;->getVuiMode()Lbya;

    move-result-object v1

    sget-object v2, Lbya;->NORMAL:Lbya;

    if-ne v1, v2, :cond_0

    .line 186
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->g:Lcom/xiaopeng/xui/widget/XImageButton;

    iget-object v0, v0, Lfe;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "his_ms_play_all"

    invoke-static {v1, v0, v2}, Laxt;->a(Landroid/view/View;ILjava/lang/String;)V

    .line 187
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->n(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->g:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-static {v0, v1}, Laxt;->a(Ljava/lang/String;Landroid/view/View;)V

    :cond_0
    return-void
.end method
