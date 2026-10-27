.class public Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;
.super Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout;
.source "CollectedMusicView.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/collect/music/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout<",
        "Lcom/xiaopeng/musicradio/mine/collect/music/view/a;",
        "Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/collect/music/view/a;"
    }
.end annotation


# static fields
.field protected static final MAX_DATA_LIST_SIZE:I = 0x6

.field public static final TAG:Ljava/lang/String; = "CollectedMusicView"


# instance fields
.field protected mAdapter:Latb;

.field private mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

.field private mPage:I

.field private mPosition:I

.field private mTotalPage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 59
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mPage:I

    .line 60
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mTotalPage:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mPage:I

    return p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mTotalPage:I

    return p0
.end method


# virtual methods
.method public addListItem(Ljava/lang/Object;)V
    .locals 0

    .line 233
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->h()V

    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->createPresenter()Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;
    .locals 3

    .line 79
    new-instance v0, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;

    const/4 v1, 0x6

    const-string v2, "FROM_MAIN"

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout;->findView()V

    .line 93
    new-instance v0, Lcom/xiaopeng/musicradio/mine/widget/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/mine/widget/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 168
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->mine_category_view:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mAdapter:Latb;

    invoke-virtual {v0}, Latb;->getItemCount()I

    move-result v0

    return v0
.end method

.method public isHasMore(IZ)V
    .locals 0

    return-void
.end method

.method public isShowing()Z
    .locals 2

    .line 173
    invoke-static {}, Lawv;->a()Lawv;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mMeunIndex:I

    invoke-virtual {v0, v1}, Lawv;->a(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mAdapter:Latb;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Latb;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onDataListLoaded(Ljava/util/List;I)V
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    iput p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mTotalPage:I

    .line 182
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mAdapter:Latb;

    invoke-virtual {p2, p1}, Latb;->a(Ljava/util/List;)V

    .line 183
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mAdapter:Latb;

    invoke-virtual {p1}, Latb;->getItemCount()I

    move-result p1

    if-gtz p1, :cond_1

    const/16 p1, 0x8

    .line 184
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/ak;->a(Landroid/view/ViewGroup;I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 186
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/ak;->a(Landroid/view/ViewGroup;I)V

    .line 188
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/16 p2, 0x320

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->updateVuiScene(I)V

    return-void
.end method

.method public onLoveTotalChanged()V
    .locals 0

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 85
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/widget/a;->b()V

    :cond_0
    return-void
.end method

.method public onUpdatePage(II)V
    .locals 1

    .line 216
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mPage:I

    .line 217
    iput p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mTotalPage:I

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUpdatePage: totalPage = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CollectedMusicView"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeListItem(Ljava/lang/Object;)V
    .locals 0

    .line 228
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->h()V

    return-void
.end method

.method public resetDataList()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mAdapter:Latb;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Latb;->r()V

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mAdapter:Latb;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView$2;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;)V

    invoke-virtual {v0, v1}, Latb;->a(Lcom/xiaopeng/musicradio/datalist/d$b;)V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView$3;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/a;->a(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->g:Lcom/xiaopeng/xui/widget/XImageButton;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView$4;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 242
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mPosition:I

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setVuiPosition(I)V

    return-void
.end method

.method public setRecyclerState(Lbya;)V
    .locals 1

    .line 247
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->setVuiMode(Lbya;)V

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setVuiMode(Lbya;)V

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->g:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiMode(Lbya;)V

    return-void
.end method

.method protected setView()V
    .locals 9

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/widget/a;->a()I

    move-result v0

    const/16 v1, 0x32

    invoke-static {v1, v0}, Laxu;->b(II)Lfe;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->title_collected_music:I

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

    .line 100
    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView$1;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-direct {v1, p0, v2, v3}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView$1;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;Landroid/content/Context;Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mAdapter:Latb;

    .line 106
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mAdapter:Latb;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 107
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 108
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setItemViewCacheSize(I)V

    .line 109
    new-instance v1, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v3, v4}, Lapf;->a(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v5, v3, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    .line 110
    invoke-virtual {v1, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(I)V

    .line 111
    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v3, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/16 v1, 0x8

    .line 112
    invoke-static {p0, v1}, Lcom/xiaopeng/musicradio/utils/ak;->a(Landroid/view/ViewGroup;I)V

    .line 113
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v3, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->n(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    .line 114
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const-string v3, "collect_music_list"

    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setVuiLabel(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/xiaopeng/musicradio/mine/a$e;->title_collected_music:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "title_collected_music"

    invoke-static {v1, v3, v4}, Laxt;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->g:Lcom/xiaopeng/xui/widget/XImageButton;

    iget-object v0, v0, Lfe;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v3, "clt_ms_play_all"

    invoke-static {v1, v0, v3}, Laxt;->a(Landroid/view/View;ILjava/lang/String;)V

    .line 118
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mAdapter:Latb;

    .line 119
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 120
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 121
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    move-result-object v0

    const-string v1, "FROM_MAIN"

    .line 124
    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/musicradio/datalist/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-static {v0, v2}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public updateMusicLove(Z)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->h()V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 256
    invoke-static {p1}, Laxu;->e(I)V

    :cond_0
    return-void
.end method

.method public updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mAdapter:Latb;

    invoke-virtual {v0, p1, p2}, Latb;->a(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    .line 194
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->updateTitlePlayingState()V

    return-void
.end method

.method public updateTitlePlayingState()V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/widget/a;->a()I

    move-result v0

    const/16 v1, 0x32

    invoke-static {v1, v0}, Laxu;->b(II)Lfe;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v2, v0, Lfe;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Lfe;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/musicradio/mine/widget/a;->a(II)V

    .line 201
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->g:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XImageButton;->getVuiMode()Lbya;

    move-result-object v1

    sget-object v2, Lbya;->NORMAL:Lbya;

    if-ne v1, v2, :cond_0

    .line 202
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->g:Lcom/xiaopeng/xui/widget/XImageButton;

    iget-object v0, v0, Lfe;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "clt_ms_play_all"

    invoke-static {v1, v0, v2}, Laxt;->a(Landroid/view/View;ILjava/lang/String;)V

    .line 203
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->n(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->g:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-static {v0, v1}, Laxt;->a(Ljava/lang/String;Landroid/view/View;)V

    :cond_0
    return-void
.end method
