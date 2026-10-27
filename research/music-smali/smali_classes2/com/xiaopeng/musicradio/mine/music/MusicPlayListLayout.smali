.class public Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;
.source "MusicPlayListLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/datalist/i;
.implements Lcom/xiaopeng/musicradio/datalist/j;
.implements Lcom/xiaopeng/musicradio/mine/playlist/main/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/mine/playlist/main/view/a;",
        "Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/datalist/i;",
        "Lcom/xiaopeng/musicradio/datalist/j;",
        "Lcom/xiaopeng/musicradio/mine/playlist/main/view/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicPlayListLayout"


# instance fields
.field private mAdapter:Laxk;

.field private mBtnImport:Lcom/xiaopeng/xui/widget/XTextView;

.field private mDataHolder:Lcom/xiaopeng/musicradio/datalist/c;

.field private mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

.field private mLastStatus:I

.field private mLoadingTipsView:Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;

.field protected mMeunIndex:I

.field private mPosition:I

.field private mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

.field private mTvTips:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 69
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mLastStatus:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 69
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mLastStatus:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 69
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mLastStatus:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->showImportCustomDialog()V

    return-void
.end method

.method private showImportCustomDialog()V
    .locals 2

    .line 287
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/u;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 290
    :cond_0
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-static {v0}, Latv;->b(I)V

    .line 291
    new-instance v0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/c;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mBtnImport:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/mine/playlist/user/view/c;-><init>(Landroid/content/Context;)V

    .line 292
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/playlist/user/view/c;->b()V

    return-void
.end method

.method private updateTitleIfLogin()V
    .locals 2

    .line 267
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 269
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->d()Z

    goto :goto_0

    .line 271
    :cond_0
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->e()Z

    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->createPresenter()Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;
    .locals 3

    .line 94
    new-instance v0, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected findView()V
    .locals 2

    const-string v0, "MusicPlayListLayout"

    const-string v1, "findView: "

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->m()I

    move-result v0

    const-string v1, "SELECT_MENU_INDEX"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mMeunIndex:I

    .line 101
    new-instance v0, Lcom/xiaopeng/musicradio/mine/widget/d;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    .line 102
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->rv_list:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 103
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->loading_tips_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;

    .line 104
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->btn_import:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mBtnImport:Lcom/xiaopeng/xui/widget/XTextView;

    .line 105
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->tv_tips:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mTvTips:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 199
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->music_playlist_layout:I

    return v0
.end method

.method public getDataHolder()Lcom/xiaopeng/musicradio/datalist/c;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mDataHolder:Lcom/xiaopeng/musicradio/datalist/c;

    return-object v0
.end method

.method public getPlayListCount()I
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mAdapter:Laxk;

    invoke-virtual {v0}, Laxk;->getItemCount()I

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .line 244
    invoke-static {}, Lawv;->a()Lawv;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mMeunIndex:I

    invoke-virtual {v0, v1}, Lawv;->a(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mAdapter:Laxk;

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Laxk;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 297
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 298
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mAdapter:Laxk;

    invoke-virtual {p1}, Laxk;->getItemCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 299
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mAdapter:Laxk;

    invoke-virtual {p1}, Laxk;->notifyDataSetChanged()V

    .line 300
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;->w()V

    :cond_0
    return-void
.end method

.method public onDataListLoaded(Ljava/util/List;I)V
    .locals 0

    .line 210
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->updateLoadingTips()V

    return-void
.end method

.method public onPreGetDataList()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mAdapter:Laxk;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Laxk;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 216
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->updateLoadingStatus(I)V

    :cond_1
    return-void
.end method

.method public setDataHolder(Lcom/xiaopeng/musicradio/datalist/c;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mDataHolder:Lcom/xiaopeng/musicradio/datalist/c;

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mAdapter:Laxk;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout$3;-><init>(Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;)V

    invoke-virtual {v0, v1}, Laxk;->a(Lcom/xiaopeng/musicradio/datalist/d$b;)V

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mBtnImport:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout$4;-><init>(Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42e00000    # 112.0f

    invoke-static {v1, v2}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->a(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;I)V

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 305
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mPosition:I

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setVuiPosition(I)V

    return-void
.end method

.method public setRecyclerState(Lbya;)V
    .locals 1

    .line 310
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->setVuiMode(Lbya;)V

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setVuiMode(Lbya;)V

    return-void
.end method

.method public setTips(I)V
    .locals 1

    .line 204
    sget p1, Lcom/xiaopeng/musicradio/mine/a$e;->tips_playlist_custom:I

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mTvTips:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    return-void
.end method

.method protected setView()V
    .locals 10

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mBtnImport:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->title_playlist_custom_import_vui:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "import_phone"

    invoke-static {v0, v1, v2}, Laxt;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout$1;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v3, v2}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout$1;-><init>(Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;Landroid/content/Context;ZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mAdapter:Laxk;

    .line 119
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->empty_no_playlist:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/mine/widget/d;->a(I)V

    .line 120
    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mMeunIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->n(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    .line 121
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const-string v2, "play_list"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setVuiLabel(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->enableVuiInvisibleFeature(I)V

    .line 124
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 125
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 126
    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v5, Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->getSpanCount()I

    move-result v6

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/xiaopeng/musicradio/mine/a$a;->mine_data_list_item_margin_bottom:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v8, Lcom/xiaopeng/musicradio/mine/a$a;->item_space_36:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v5, v6, v3, v7, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/a;-><init>(IZII)V

    .line 126
    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 128
    new-instance v1, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-direct {v1, v0}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mAdapter:Laxk;

    .line 129
    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 130
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 131
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 132
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Z)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->goto_login_playlist:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->setGotoLoginText(I)V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout$2;-><init>(Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->setGotoLoginCallback(Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView$a;)V

    .line 151
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsi;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsi;

    .line 152
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v1

    invoke-virtual {v1}, Lbdu;->d()I

    move-result v1

    .line 153
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    invoke-interface {v0}, Lbsi;->getKugouUserMain()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 162
    :cond_1
    invoke-interface {v0}, Lbsi;->getNeteaseUserMain()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 156
    :cond_2
    invoke-interface {v0}, Lbsi;->getQqUserMain()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method public updateLoadingStatus(I)V
    .locals 1

    .line 248
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 251
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mLastStatus:I

    if-ne v0, p1, :cond_1

    return-void

    .line 254
    :cond_1
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mLastStatus:I

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/widget/d;->b(I)V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 260
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setVisibility(I)V

    goto :goto_1

    .line 257
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->updateTitleIfLogin()V

    .line 258
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setVisibility(I)V

    .line 262
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;

    const-string v0, ""

    invoke-static {v0, p1}, Laqy;->a(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method protected updateLoadingTips()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mAdapter:Laxk;

    invoke-virtual {v0}, Laxk;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->updateLoadingStatus(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 224
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->updateLoadingStatus(I)V

    :goto_0
    return-void
.end method

.method public updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->mAdapter:Laxk;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0, p1, p2}, Laxk;->a(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    :cond_0
    return-void
.end method
