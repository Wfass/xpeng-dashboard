.class public Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;
.super Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;
.source "MsSingerCollectDetailActivity.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/music/activity/singer_collect_detail"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;->createPresenter()Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;->createPresenter()Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;
    .locals 1

    .line 54
    new-instance v0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;-><init>()V

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 23
    sget v0, Lbez$f;->music_activity_singer_album_detail:I

    return v0
.end method

.method public getData()V
    .locals 4

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detail_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;->mId:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detail_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;->mTitle:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detail_LOGO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;->mLogo:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->d()V

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;->showLoadingView()V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;->mMsTopLayout:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;->mLogo:Ljava/lang/String;

    sget v2, Lbez$c;->pic_covers_music_220:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;->mMsLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public getListSignBean()Lcom/xiaopeng/musicradio/bean/ListSignBean;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bd;->l(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    return-object v0
.end method

.method public loadMoreListener()V
    .locals 0

    return-void
.end method

.method public recordItem()V
    .locals 0

    return-void
.end method

.method public setView()V
    .locals 2

    .line 28
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->setView()V

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;->mMsCollectLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    sget v1, Lbez$g;->copyright_restrict_hint:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setNoResultText(I)V

    return-void
.end method
