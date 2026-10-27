.class public Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "MsSingerHotLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/singer/singer/view/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/singer/singer/view/b;",
        "Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/singer/singer/view/b;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MsSingerHotLayout"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasLoadData:Z

.field private mHotLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mHotRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field private mHotSingerAdapter:Lbjj;

.field private mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field private mQuickSideBarBig:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;

.field private mQuickSideBarSmall:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;

.field private mSingerSelectLayout:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;

.field private mThemeViewModel:Lapr;

.field private mTopMargin:I

.field private oldY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 75
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHasLoadData:Z

    const/16 v0, 0xd2

    .line 66
    iput v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mTopMargin:I

    .line 67
    iput v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->oldY:I

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHasLoadData:Z

    const/16 v0, 0xd2

    .line 66
    iput v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mTopMargin:I

    .line 67
    iput v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->oldY:I

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 64
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHasLoadData:Z

    const/16 p3, 0xd2

    .line 66
    iput p3, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mTopMargin:I

    .line 67
    iput p3, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->oldY:I

    .line 87
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHasLoadData:Z

    return p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->oldY:I

    return p0
.end method

.method static synthetic access$202(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->oldY:I

    return p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mTopMargin:I

    return p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mSingerSelectLayout:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)Lbjj;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotSingerAdapter:Lbjj;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-object p0
.end method

.method private refreshAll()V
    .locals 4

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$5;-><init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotSingerAdapter:Lbjj;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbjj;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotSingerAdapter:Lbjj;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lbjj;->getItemCount()I

    move-result v2

    const-string v3, "payload"

    invoke-virtual {v0, v1, v2, v3}, Lbjj;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showLoadingTip(I)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    goto :goto_1

    .line 235
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->i()V

    return-void
.end method

.method public clearDataExceptCurrent()V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->h()V

    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;
    .locals 1

    .line 94
    new-instance v0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 2

    .line 105
    sget v0, Lbez$d;->loading_item:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    .line 107
    sget v0, Lbez$d;->hot_recycleview:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 99
    sget v0, Lbez$f;->music_layout_singer_hot:I

    return v0
.end method

.method public getHotData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;)V"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mQuickSideBarSmall:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->setVisibility(I)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mQuickSideBarBig:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->setVisibility(I)V

    .line 217
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 218
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->showLoadingTip(I)V

    .line 219
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 220
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotSingerAdapter:Lbjj;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lbjj;->a(Ljava/util/List;Z)V

    .line 221
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mSingerSelectLayout:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->isBig()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 222
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 224
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    const/16 v1, -0x7e

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    .line 226
    :goto_0
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHasLoadData:Z

    goto :goto_1

    :cond_3
    const-string p1, ""

    .line 228
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->showNoDataView(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public isPlayIng(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "listsign_artist_radio"

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

.method public notifySpeechChange()V
    .locals 0

    .line 319
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->refreshAll()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 362
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onAttachedToWindow()V

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->a(Landroid/view/View;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 354
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0, p1}, Lapr;->a(Landroid/view/View;Landroid/content/res/Configuration;)V

    .line 356
    invoke-static {p1}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 357
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotSingerAdapter:Lbjj;

    invoke-virtual {p1}, Lbjj;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 367
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onDetachedFromWindow()V

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->b(Landroid/view/View;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 324
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public setData(I)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->a(I)V

    .line 304
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->e()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotSingerAdapter:Lbjj;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$3;-><init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)V

    invoke-virtual {v0, v1}, Lbjj;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    return-void
.end method

.method public setQuickSideBarBig(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mQuickSideBarBig:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;

    return-void
.end method

.method public setQuickSideBarSmall(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mQuickSideBarSmall:Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;

    return-void
.end method

.method public setSingerSelectLayout(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;)V
    .locals 2

    .line 275
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mSingerSelectLayout:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;

    .line 276
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mSingerSelectLayout:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;

    new-instance v0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4;-><init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)V

    const-string v1, "hot"

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setClickCloseListener(Ljava/lang/String;Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$a;)V

    return-void
.end method

.method protected setView()V
    .locals 8

    .line 112
    new-instance v0, Lbjj;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbjj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotSingerAdapter:Lbjj;

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 114
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/16 v3, 0x5f

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    const/16 v3, 0x32

    .line 115
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(I)V

    .line 116
    iget v3, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mTopMargin:I

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->b(I)V

    .line 117
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v3, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    const/16 v4, 0x64

    invoke-direct {v3, v2, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 119
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setHasFixedSize(Z)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotSingerAdapter:Lbjj;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 125
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->j(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x0

    .line 197
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHasLoadData:Z

    .line 198
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 p1, 0x2

    .line 199
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->showLoadingTip(I)V

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHasLoadData:Z

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 192
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->showLoadingTip(I)V

    return-void
.end method

.method public showNoDataView(Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x0

    .line 204
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHasLoadData:Z

    .line 205
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 p1, 0x3

    .line 206
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->showLoadingTip(I)V

    return-void
.end method

.method public updatePlayState(Z)V
    .locals 3

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 244
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotSingerAdapter:Lbjj;

    invoke-virtual {p1}, Lbjj;->g()I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotSingerAdapter:Lbjj;

    invoke-virtual {v0, p1}, Lbjj;->notifyItemChanged(I)V

    .line 248
    :cond_0
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->g()Ljava/lang/String;

    move-result-object p1

    .line 249
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotSingerAdapter:Lbjj;

    invoke-virtual {v0}, Lbjj;->j()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 251
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 252
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->isPlayIng(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotSingerAdapter:Lbjj;

    invoke-virtual {v2, v1}, Lbjj;->notifyItemChanged(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotSingerAdapter:Lbjj;

    invoke-virtual {p1}, Lbjj;->g()I

    move-result p1

    if-eq p1, v0, :cond_3

    .line 260
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotSingerAdapter:Lbjj;

    invoke-virtual {v1, p1}, Lbjj;->notifyItemChanged(I)V

    .line 261
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->mHotSingerAdapter:Lbjj;

    invoke-virtual {p1, v0}, Lbjj;->b(I)V

    :cond_3
    return-void
.end method
