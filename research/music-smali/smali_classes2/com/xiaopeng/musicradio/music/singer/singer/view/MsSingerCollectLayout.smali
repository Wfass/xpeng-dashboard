.class public Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "MsSingerCollectLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbxt;
.implements Lcom/xiaopeng/musicradio/music/singer/singer/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/singer/singer/view/a;",
        "Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lbxt;",
        "Lcom/xiaopeng/musicradio/music/singer/singer/view/a;"
    }
.end annotation


# static fields
.field private static final COUNT:I = 0xf

.field private static final TAG:Ljava/lang/String; = "MsRmCategoryDetailLayout"


# instance fields
.field private mAccountType:I

.field private mAdapter:Lbjk;

.field private mContext:Landroid/content/Context;

.field private mItemTipView:Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;

.field private mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)Lbjk;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mAdapter:Lbjk;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mAccountType:I

    return p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->refreshLoadMoreState(I)V

    return-void
.end method

.method private refreshAll()V
    .locals 4

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$6;-><init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mAdapter:Lbjk;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbjk;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mAdapter:Lbjk;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lbjk;->getItemCount()I

    move-result v2

    const-string v3, "payload"

    invoke-virtual {v0, v1, v2, v3}, Lbjk;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private refreshLoadMoreState(I)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$5;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$5;-><init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mAdapter:Lbjk;

    invoke-virtual {v0, p1}, Lbjk;->b(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    .line 230
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x3

    .line 231
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->refreshLoadMoreState(I)V

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mAdapter:Lbjk;

    invoke-virtual {v0, p1, v1}, Lbjk;->b(Ljava/util/List;Z)V

    .line 233
    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 235
    :cond_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->refreshLoadMoreState(I)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;
    .locals 1

    .line 92
    new-instance v0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 2

    .line 97
    sget v0, Lbez$d;->loading_item:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;->setAutoClickLoadingEnable(Z)V

    .line 99
    sget v0, Lbez$d;->rm_category_rv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 196
    sget v0, Lbez$f;->music_layout_singer_collect:I

    return v0
.end method

.method public getData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->showLoadingTip(I)V

    .line 216
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 217
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mAdapter:Lbjk;

    invoke-virtual {v1}, Lbjk;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 218
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mAdapter:Lbjk;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lbjk;->a(Ljava/util/List;Z)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mAdapter:Lbjk;

    invoke-virtual {v1, p1, v0}, Lbjk;->a(Ljava/util/List;Z)V

    .line 222
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mAdapter:Lbjk;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "payload"

    invoke-virtual {v1, v0, v2, v3}, Lbjk;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 224
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x3

    .line 225
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->refreshLoadMoreState(I)V

    return-void
.end method

.method public isPlayIng(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "listsign_singer_single_music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"collectId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public loadData()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->e()V

    return-void
.end method

.method public notifySpeechChange()V
    .locals 0

    .line 310
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->refreshAll()V

    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 343
    sget v0, Lbez$d;->rm_category_loading:I

    if-ne p1, v0, :cond_0

    .line 344
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->e()V

    :cond_0
    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setAccountType(I)V
    .locals 1

    .line 360
    iput p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mAccountType:I

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->a(I)V

    return-void
.end method

.method public setIsVisible(Z)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mAdapter:Lbjk;

    invoke-virtual {v0}, Lbjk;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 355
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x12c

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->updateVuiScene(I)V

    :cond_1
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mAdapter:Lbjk;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$3;-><init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)V

    invoke-virtual {v0, v1}, Lbjk;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$4;-><init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;->setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V

    return-void
.end method

.method protected setView()V
    .locals 8

    .line 104
    new-instance v0, Lbjk;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbjk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mAdapter:Lbjk;

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    sget v2, Lbez$b;->music_rm_spacing:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    .line 108
    sget v2, Lbez$b;->music_rm_row:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(I)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    invoke-direct {v1, v4, v4, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 111
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setHasFixedSize(Z)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mAdapter:Lbjk;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 123
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->k(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    return-void
.end method

.method public setmId(Ljava/lang/String;)V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->i()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 261
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 262
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->showLoadingTip(I)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 266
    :goto_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->refreshLoadMoreState(I)V

    return-void
.end method

.method public showLoadingTip(I)V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;->setState(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;->setClickable(Z)V

    goto :goto_1

    .line 333
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;->setClickable(Z)V

    :goto_1
    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 255
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->showLoadingTip(I)V

    return-void
.end method

.method public showNoDataView(Ljava/lang/String;)V
    .locals 1

    .line 271
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 p1, 0x3

    .line 272
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->showLoadingTip(I)V

    const/4 p1, 0x2

    .line 273
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->refreshLoadMoreState(I)V

    return-void
.end method

.method public updatePlayState(Z)V
    .locals 4

    const-string v0, "payload_playstate"

    const/4 v1, -0x1

    if-eqz p1, :cond_2

    .line 279
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mAdapter:Lbjk;

    invoke-virtual {p1}, Lbjk;->j()I

    move-result p1

    if-eq p1, v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mAdapter:Lbjk;

    invoke-virtual {v1, p1}, Lbjk;->notifyItemChanged(I)V

    .line 283
    :cond_0
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->g()Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 285
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mAdapter:Lbjk;

    invoke-virtual {v1}, Lbjk;->k()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 286
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 287
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->isPlayIng(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mAdapter:Lbjk;

    invoke-virtual {v3, v2, v0}, Lbjk;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 293
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mAdapter:Lbjk;

    invoke-virtual {p1}, Lbjk;->j()I

    move-result p1

    if-eq p1, v1, :cond_3

    .line 295
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mAdapter:Lbjk;

    invoke-virtual {v2, p1, v0}, Lbjk;->notifyItemChanged(ILjava/lang/Object;)V

    .line 296
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->mAdapter:Lbjk;

    invoke-virtual {p1, v1}, Lbjk;->d(I)V

    :cond_3
    return-void
.end method
