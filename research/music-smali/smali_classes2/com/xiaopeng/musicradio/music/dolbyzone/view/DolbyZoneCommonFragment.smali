.class public Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "DolbyZoneCommonFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;
.implements Lcom/xiaopeng/musicradio/music/dolbyzone/view/f;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/music/fragment/dolby_zone"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Lcom/xiaopeng/musicradio/music/dolbyzone/view/f;",
        "Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;",
        "Lcom/xiaopeng/musicradio/music/dolbyzone/view/f;"
    }
.end annotation


# static fields
.field private static final ITEM_TYPE_ALBUM:I = 0x2

.field private static final ITEM_TYPE_BANNER:I = 0x4

.field private static final ITEM_TYPE_CATEGORY:I = 0x3

.field private static final ITEM_TYPE_COLLECT:I = 0x1

.field private static final ITEM_TYPE_SONG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KugouZoneCommonFragment"


# instance fields
.field itemDecoration:Lcom/xiaopeng/musicradio/widget/recyclerview/h;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDolbyResult:Lcom/xiaopeng/musicradio/bean/music/DolbyResult;

.field private mFreeTime:Lcom/xiaopeng/xui/widget/XTextView;

.field mItemClickListener:Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;

.field private mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

.field private mQuality:I

.field protected mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

.field private mRootView:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field private mTitle:Ljava/lang/String;

.field private mTitleLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->items:Ljava/util/List;

    const-string v0, ""

    .line 83
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->toPlay(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->toOpenDetail(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->toOpenAlbumList(I)V

    return-void
.end method

.method private initMultiType()V
    .locals 4

    .line 212
    new-instance v0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment$5;-><init>(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mItemClickListener:Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;

    .line 230
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v1, Lbhd;

    new-instance v2, Lbgy;

    invoke-direct {v2, p0}, Lbgy;-><init>(Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v1, Lbhc;

    new-instance v2, Lbgx;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mRootView:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-direct {v2, p0, v3}, Lbgx;-><init>(Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v1, Lbhe;

    new-instance v2, Lbgz;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mRootView:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-direct {v2, p0, v3}, Lbgz;-><init>(Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v1, Lbhf;

    new-instance v2, Lbha;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mRootView:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-direct {v2, p0, v3}, Lbha;-><init>(Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mItemClickListener:Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;)V

    .line 236
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 237
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private toOpenAlbumList(I)V
    .locals 0

    return-void
.end method

.method private toOpenDetail(I)V
    .locals 0

    return-void
.end method

.method private toPlay(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public changeBtnClick(I)V
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;
    .locals 1

    .line 193
    new-instance v0, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;-><init>()V

    return-object v0
.end method

.method protected createViewFirst()V
    .locals 1

    .line 175
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->createViewFirst()V

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->d()V

    return-void
.end method

.method protected findView()V
    .locals 2

    .line 106
    sget v0, Lbez$d;->root_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mRootView:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 107
    sget v0, Lbez$d;->rv_dolby_zone:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    .line 108
    sget v0, Lbez$d;->layout_dolby_zone_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mTitleLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    .line 109
    sget v0, Lbez$d;->free_time:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mFreeTime:Lcom/xiaopeng/xui/widget/XTextView;

    .line 110
    sget v0, Lbez$d;->configuration_changed_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    .line 111
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment$1;-><init>(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected getCollectMaxCount()I
    .locals 1

    .line 505
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    .line 508
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    :goto_0
    return v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 101
    sget v0, Lbez$f;->fragment_dolby_zone_main:I

    return v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .line 499
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arguments"

    .line 500
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getModuleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public getMusicPlayState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 198
    iget v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->V(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSubPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_Special_SubPage_Dolby"

    return-object v0
.end method

.method public getSubSceneList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 208
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->W(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getZoneSongPlayState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->g(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public hasData()Z
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMainScene()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isMusicAlbumPlaying(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isMusicCollectPlaying(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 380
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 381
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    if-eqz p1, :cond_0

    .line 382
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 156
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onDestroy()V

    .line 157
    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbgr;->a(Z)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 162
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    .line 163
    new-instance v0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment$3;-><init>(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public openCategory(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public openCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 262
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    iget v5, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mQuality:I

    const-string v4, ""

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lbjp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public openMusicAlbumDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 258
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    iget v5, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mQuality:I

    const-string v4, ""

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lbjp;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public playAllMusic(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 267
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lbgs;->a(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 270
    :cond_0
    invoke-static {}, Lbjl;->n()V

    .line 271
    invoke-static {}, Lbjl;->l()V

    const/4 p3, 0x0

    .line 273
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 274
    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v0

    invoke-virtual {v0}, Lbgr;->b()Ljava/util/List;

    move-result-object v0

    .line 275
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 276
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    sget v1, Lbez$g;->bt_play_all:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v4, p3

    .line 277
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_3

    .line 278
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 279
    invoke-static {p4}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 281
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    move v4, p3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    const-string p1, "-1006"

    .line 287
    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/bd;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 288
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v3

    .line 289
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-object v1, p1

    check-cast v1, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iget v6, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mQuality:I

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->a(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    goto :goto_1

    .line 290
    :cond_4
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    sget p1, Lbez$g;->bt_pause:I

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 291
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->p()V

    goto :goto_1

    .line 292
    :cond_5
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    sget p1, Lbez$g;->bt_continue_all:I

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 293
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->o()V

    :cond_6
    :goto_1
    return-void
.end method

.method public playControlMusicAlbumListSign(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 300
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbgs;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 303
    :cond_0
    invoke-static {}, Lbjl;->p()V

    .line 304
    invoke-static {}, Lbjl;->l()V

    .line 305
    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/bd;->m(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 306
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mQuality:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Laso;->a(Ljava/lang/String;IIZLjava/util/List;II)V

    return-void
.end method

.method public playControlMusicCollectListSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 322
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbgs;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 325
    :cond_0
    invoke-static {}, Lbjl;->o()V

    .line 326
    invoke-static {}, Lbjl;->l()V

    .line 327
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;-><init>()V

    const-string v1, "listsign_recommend_music"

    .line 328
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, p3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 333
    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/bd;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 334
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result v2

    iget v3, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mQuality:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Laso;->a(Ljava/lang/String;IIZLjava/util/List;II)V

    .line 336
    invoke-static {}, Lbak;->a()Lbak;

    move-result-object p1

    invoke-virtual {p1}, Lbak;->b()Lbaj;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbaj;->b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    return-void
.end method

.method public playMusic(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 341
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbgs;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 344
    :cond_0
    invoke-static {}, Lbjl;->n()V

    .line 345
    invoke-static {}, Lbjl;->l()V

    .line 346
    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object p1

    invoke-virtual {p1}, Lbgr;->b()Ljava/util/List;

    move-result-object p1

    .line 347
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 p4, 0x0

    move v3, p5

    .line 348
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p5

    if-ge p4, p5, :cond_3

    .line 349
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 350
    invoke-static {p5}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p5

    if-eqz p5, :cond_1

    .line 352
    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_1
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_2

    move v3, p4

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    const-string p1, "-1006"

    .line 358
    invoke-static {p1, p3}, Lcom/xiaopeng/musicradio/utils/bd;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 359
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v2

    .line 360
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iget v5, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mQuality:I

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->a(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    return-void
.end method

.method public refreshData()V
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->notifyItemRangeChanged(II)V

    :cond_0
    return-void
.end method

.method public resetData()V
    .locals 2

    .line 495
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/util/List;)V

    return-void
.end method

.method protected reviewOnScreenChange()V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    new-instance v1, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment$4;-><init>(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setOnTipsViewClick(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 10

    .line 122
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setView()V

    .line 123
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v1, v2}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v2, v3}, Lapf;->a(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(III)V

    .line 124
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 125
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->initMultiType()V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    sget v1, Lbez$g;->common_tips_no_result:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setNoRecordTipText(I)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 128
    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iget v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->V(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    const/4 v0, 0x4

    .line 130
    iput v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mQuality:I

    .line 131
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mTitleLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v2, Lbez$g;->dolby_zone_title:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(I)V

    .line 132
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mTitleLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    .line 133
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mTitleLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    new-instance v2, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment$2;-><init>(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setCloseListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v1

    const-class v2, Lbsg;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbsg;

    .line 142
    invoke-interface {v1}, Lbsg;->getVipDetial()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 143
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 144
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/VipDetail;

    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/VipDetail;->getVipType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 147
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mFreeTime:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lbez$g;->dolby_free_time:I

    invoke-static {v5}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/VipDetail;->getExpireTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lbtf;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public showLoading(ZII)V
    .locals 0

    if-eqz p1, :cond_0

    .line 396
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    goto :goto_0

    .line 398
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    :goto_0
    return-void
.end method

.method public showLoadingFailed(Ljava/lang/String;I)V
    .locals 0

    .line 410
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipViewClickable(Z)V

    .line 411
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    return-void
.end method

.method public showNoData()V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipViewClickable(Z)V

    .line 405
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    return-void
.end method

.method public updateData(Lcom/xiaopeng/musicradio/bean/music/DolbyResult;II)V
    .locals 10

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 417
    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mDolbyResult:Lcom/xiaopeng/musicradio/bean/music/DolbyResult;

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/DolbyResult;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mDolbyResult:Lcom/xiaopeng/musicradio/bean/music/DolbyResult;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/DolbyResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p1, "KugouZoneCommonFragment"

    const-string p3, "updateData: dolbyResult == mDolbyResult"

    .line 418
    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 425
    :cond_1
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mDolbyResult:Lcom/xiaopeng/musicradio/bean/music/DolbyResult;

    .line 427
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 428
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/DolbyResult;->getMusicCollectSongListBean()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 429
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 430
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 431
    new-instance v1, Lbhd;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    iget v7, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mQuality:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lbhd;-><init>(Ljava/util/List;ILjava/lang/String;IIII)V

    .line 432
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Lbhd;->a(I)V

    .line 433
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/DolbyResult;->getNeteaseZoneDolbyBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 438
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getSongDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getSongDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 439
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getSongDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 440
    new-instance v0, Lbhf;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getSongDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;->getList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getSongDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;->getDesc()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget v6, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mQuality:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v3, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lbhf;-><init>(Ljava/util/List;ILjava/lang/String;IIII)V

    .line 441
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lbhf;->a(I)V

    .line 442
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getSongDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getSongDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v0, v1, 0x0

    goto :goto_1

    :cond_4
    move v0, p2

    :goto_1
    if-eqz p1, :cond_6

    .line 446
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getCollectDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getCollectDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 447
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getCollectDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 449
    new-instance v9, Lbhe;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getCollectDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;->getList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getCollectDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;->getDesc()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget v6, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mQuality:I

    const/4 v7, 0x1

    const/4 v8, 0x2

    move-object v1, v9

    move v3, v0

    invoke-direct/range {v1 .. v8}, Lbhe;-><init>(Ljava/util/List;ILjava/lang/String;IIII)V

    .line 450
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v9, v1}, Lbhe;->a(I)V

    .line 451
    invoke-interface {p3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getCollectDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->getCollectMaxCount()I

    move-result v2

    if-le v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->getCollectMaxCount()I

    move-result v1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getCollectDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    :cond_6
    move v3, v0

    if-eqz p1, :cond_7

    .line 455
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getAlbumDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getAlbumDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 456
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getAlbumDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 457
    new-instance v0, Lbhc;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getAlbumDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;->getList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getAlbumDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;->getDesc()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget v6, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mQuality:I

    const/4 v7, 0x1

    const/4 v8, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lbhc;-><init>(Ljava/util/List;ILjava/lang/String;IIII)V

    .line 458
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Lbhc;->a(I)V

    .line 459
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/util/List;)V

    .line 463
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->notifyDataSetChanged()V

    .line 464
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 465
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_8

    .line 466
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->showNoData()V

    goto :goto_3

    .line 468
    :cond_8
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    .line 470
    :goto_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->onBuildScene()V

    return-void
.end method
