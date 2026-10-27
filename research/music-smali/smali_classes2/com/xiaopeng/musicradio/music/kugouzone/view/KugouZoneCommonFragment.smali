.class public Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "KugouZoneCommonFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/kugouzone/view/b;
.implements Lcom/xiaopeng/musicradio/music/kugouzone/view/c;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/music/fragment/kugoo_zone"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Lcom/xiaopeng/musicradio/music/kugouzone/view/c;",
        "Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/kugouzone/view/b;",
        "Lcom/xiaopeng/musicradio/music/kugouzone/view/c;"
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

.field mItemClickListener:Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;

.field private mModelType:I

.field private mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

.field private mQuality:I

.field protected mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

.field private mRootView:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field private mTitle:Ljava/lang/String;

.field private mTitleLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

.field private mZoneId:I

.field private mZoneName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->items:Ljava/util/List;

    const-string v0, ""

    .line 75
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mZoneId:I

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->toPlay(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->toOpenDetail(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->toOpenAlbumList(I)V

    return-void
.end method

.method private initMultiType()V
    .locals 4

    .line 169
    new-instance v0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment$4;-><init>(Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mItemClickListener:Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;

    .line 187
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v1, Lbhy;

    new-instance v2, Lbhs;

    invoke-direct {v2, p0}, Lbhs;-><init>(Lcom/xiaopeng/musicradio/music/kugouzone/view/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v1, Lbhx;

    new-instance v2, Lbhr;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRootView:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-direct {v2, p0, v3}, Lbhr;-><init>(Lcom/xiaopeng/musicradio/music/kugouzone/view/b;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v1, Lbia;

    new-instance v2, Lbhu;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRootView:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-direct {v2, p0, v3}, Lbhu;-><init>(Lcom/xiaopeng/musicradio/music/kugouzone/view/b;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v1, Lbib;

    new-instance v2, Lbhv;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRootView:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-direct {v2, p0, v3}, Lbhv;-><init>(Lcom/xiaopeng/musicradio/music/kugouzone/view/b;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v1, Lbhz;

    new-instance v2, Lbht;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRootView:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-direct {v2, p0, v3}, Lbht;-><init>(Lcom/xiaopeng/musicradio/music/kugouzone/view/b;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mItemClickListener:Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;)V

    .line 194
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 195
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

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

    .line 438
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;
    .locals 1

    .line 155
    new-instance v0, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 2

    .line 98
    sget v0, Lbez$d;->root_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRootView:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 99
    sget v0, Lbez$d;->rv_kugou_zone:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    .line 100
    sget v0, Lbez$d;->layout_kugou_zone_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mTitleLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    .line 101
    sget v0, Lbez$d;->configuration_changed_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    .line 102
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment$1;-><init>(Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected getCollectMaxCount()I
    .locals 1

    .line 460
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    .line 463
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

    .line 93
    sget v0, Lbez$f;->fragment_kugou_zone_main:I

    return v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .line 454
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arguments"

    .line 455
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

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 160
    iget v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->R(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSubPageName()Ljava/lang/String;
    .locals 3

    .line 472
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mZoneName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Music_Zong_KUGOU"

    if-eqz v0, :cond_0

    return-object v1

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mZoneName:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "hi-res"

    .line 476
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Music_Hires_SubPage_KUGOU"

    return-object v0

    :cond_1
    return-object v1
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

    .line 165
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mMenuIndex:I

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

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->g(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public hasData()Z
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

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

.method public isMusicAlbumPlaying(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isMusicCollectPlaying(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 310
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 311
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public openCategory(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public openCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    .line 220
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    iget v5, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mQuality:I

    const-string v4, ""

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lbjp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method public openMusicAlbumDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    .line 216
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    iget v5, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mQuality:I

    const-string v4, ""

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lbjp;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method public playAllMusic(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
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

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lbez$g;->bt_play_all:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 228
    invoke-static {p4}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 230
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/bd;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 234
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v2

    .line 235
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;

    const/4 v3, 0x0

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iget v5, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mQuality:I

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->a(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    goto :goto_1

    .line 236
    :cond_2
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    sget p1, Lbez$g;->bt_pause:I

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 237
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->p()V

    goto :goto_1

    .line 238
    :cond_3
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    sget p1, Lbez$g;->bt_continue_all:I

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 239
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->o()V

    :cond_4
    :goto_1
    return-void
.end method

.method public playControlMusicAlbumListSign(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    .line 246
    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/bd;->l(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 247
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mQuality:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Laso;->a(Ljava/lang/String;IIZLjava/util/List;II)V

    .line 249
    invoke-static {p3}, Lbjl;->z(I)V

    .line 250
    invoke-static {p3, p4}, Lbjl;->e(II)V

    return-void
.end method

.method public playControlMusicCollectListSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    .line 265
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;-><init>()V

    const-string v1, "listsign_recommend_music"

    .line 266
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, p3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 271
    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/bd;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 272
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result v2

    iget v3, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mQuality:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Laso;->a(Ljava/lang/String;IIZLjava/util/List;II)V

    .line 274
    invoke-static {}, Lbak;->a()Lbak;

    move-result-object p1

    invoke-virtual {p1}, Lbak;->b()Lbaj;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbaj;->b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    .line 275
    invoke-static {p4}, Lbjl;->z(I)V

    .line 276
    invoke-static {p4, p5}, Lbjl;->e(II)V

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

    .line 281
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 282
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 283
    invoke-static {p2}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 285
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 288
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/xiaopeng/musicradio/utils/bd;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 289
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v2

    .line 290
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iget v5, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mQuality:I

    move v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->a(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    return-void
.end method

.method public refreshData()V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public resetData()V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/util/List;)V

    return-void
.end method

.method protected reviewOnScreenChange()V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    new-instance v1, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment$3;-><init>(Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setOnTipsViewClick(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 10

    .line 113
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setView()V

    .line 114
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v1, v2}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v2, v3}, Lapf;->a(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(III)V

    .line 115
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 116
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->initMultiType()V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    sget v1, Lbez$g;->common_tips_no_result:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setNoRecordTipText(I)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 119
    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iget v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->R(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x137

    const-string v4, "zone_id"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mZoneId:I

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "zone_quality"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mQuality:I

    .line 125
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "zone_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mZoneName:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "zone_model_type"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mModelType:I

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;

    iget v2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mZoneId:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->a(I)V

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setView: KugouZongCommonFragment: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mZoneName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KugouZoneCommonFragment"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mTitleLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mZoneName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mTitleLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mTitleLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment$2;-><init>(Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setCloseListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showLoading(ZII)V
    .locals 0

    if-eqz p1, :cond_0

    .line 327
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    goto :goto_0

    .line 329
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    :goto_0
    return-void
.end method

.method public showLoadingFailed(Ljava/lang/String;I)V
    .locals 0

    .line 341
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipViewClickable(Z)V

    .line 342
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    return-void
.end method

.method public showNoData()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipViewClickable(Z)V

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    return-void
.end method

.method public updateData(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean;II)V
    .locals 16

    move-object/from16 v0, p0

    .line 347
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 349
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean;->getZoneModuleDtoList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean;->getZoneModuleDtoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 350
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean;->getZoneModuleDtoList()Ljava/util/List;

    move-result-object v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 351
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v13, v4, :cond_e

    .line 352
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    if-eqz v15, :cond_d

    .line 353
    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getStyleType()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 354
    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getStyleType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_b

    const/4 v5, 0x1

    if-eq v4, v5, :cond_9

    const/4 v6, 0x2

    if-eq v4, v6, :cond_7

    const/4 v6, 0x3

    if-eq v4, v6, :cond_6

    const/4 v6, 0x4

    if-eq v4, v6, :cond_0

    goto/16 :goto_5

    .line 386
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 387
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 388
    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getAlbumList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getAlbumList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 389
    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getAlbumList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    const-string v8, "listsign_album"

    .line 390
    invoke-virtual {v7, v8}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    goto :goto_1

    .line 392
    :cond_1
    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getAlbumList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 394
    :cond_2
    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getCollectList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getCollectList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 395
    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getCollectList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    const-string v8, "listsign_recommend_music"

    .line 396
    invoke-virtual {v7, v8}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    goto :goto_2

    .line 398
    :cond_3
    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getCollectList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 400
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_5

    .line 401
    new-instance v12, Lbhy;

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getModuleId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, v0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mQuality:I

    const/4 v10, 0x0

    iget v15, v0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mModelType:I

    const-string v7, "banner"

    move-object v4, v12

    move-object v5, v6

    move v6, v14

    move v11, v13

    move-object v3, v12

    move v12, v15

    invoke-direct/range {v4 .. v12}, Lbhy;-><init>(Ljava/util/List;ILjava/lang/String;IIIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_5
    const-string v3, "KugouZoneCommonFragment"

    const-string v4, "updateData: tempList size is less than 2"

    .line 403
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 381
    :cond_6
    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getLabelResourceBoList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getLabelResourceBoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 382
    new-instance v3, Lbhz;

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getLabelResourceBoList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getModuleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getModuleId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, v0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mQuality:I

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getIsMore()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v12, v0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mModelType:I

    move-object v4, v3

    move v6, v14

    move v11, v13

    invoke-direct/range {v4 .. v12}, Lbhz;-><init>(Ljava/util/List;ILjava/lang/String;IIIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 372
    :cond_7
    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getAlbumList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getAlbumList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 374
    new-instance v3, Lbhx;

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getAlbumList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getModuleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getModuleId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, v0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mQuality:I

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getIsMore()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v12, v0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mModelType:I

    move-object v4, v3

    move v6, v14

    move v11, v13

    invoke-direct/range {v4 .. v12}, Lbhx;-><init>(Ljava/util/List;ILjava/lang/String;IIIII)V

    .line 375
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lbhx;->a(I)V

    .line 376
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getAlbumList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->getCollectMaxCount()I

    move-result v4

    if-le v3, v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->getCollectMaxCount()I

    move-result v3

    goto :goto_3

    :cond_8
    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getAlbumList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_3

    .line 364
    :cond_9
    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getCollectList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getCollectList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 365
    new-instance v3, Lbia;

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getCollectList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getModuleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getModuleId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, v0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mQuality:I

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getIsMore()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v12, v0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mModelType:I

    move-object v4, v3

    move v6, v14

    move v11, v13

    invoke-direct/range {v4 .. v12}, Lbia;-><init>(Ljava/util/List;ILjava/lang/String;IIIII)V

    .line 366
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lbia;->a(I)V

    .line 367
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getCollectList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->getCollectMaxCount()I

    move-result v4

    if-le v3, v4, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->getCollectMaxCount()I

    move-result v3

    goto :goto_3

    :cond_a
    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getCollectList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_3
    add-int/2addr v14, v3

    goto :goto_5

    .line 356
    :cond_b
    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getSongList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getSongList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 357
    new-instance v3, Lbib;

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getSongList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getModuleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getModuleId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, v0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mQuality:I

    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getIsMore()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v12, v0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mModelType:I

    move-object v4, v3

    move v6, v14

    move v11, v13

    invoke-direct/range {v4 .. v12}, Lbib;-><init>(Ljava/util/List;ILjava/lang/String;IIIII)V

    .line 358
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lbib;->a(I)V

    .line 359
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getSongList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getSongList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_4
    add-int/2addr v14, v4

    :cond_d
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 414
    :cond_e
    iget-object v2, v0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/util/List;)V

    .line 415
    iget-object v2, v0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mMultiTypeAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->notifyDataSetChanged()V

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->getSceneId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 417
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_f

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->showNoData()V

    goto :goto_6

    .line 420
    :cond_f
    iget-object v1, v0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    .line 423
    :cond_10
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->onBuildScene()V

    return-void
.end method
