.class public Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyDetailActivity;
.super Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;
.source "MsDailyDetailActivity.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/music/activity/daily_detail"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyDetailActivity;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;
    .locals 1

    .line 67
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyDetailActivity;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method public findView()V
    .locals 0

    .line 29
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->findView()V

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 34
    sget v0, Lbez$f;->music_activity_daily_detail:I

    return v0
.end method

.method public getData()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyDetailActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->d()V

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyDetailActivity;->showLoadingView()V

    .line 47
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/aj;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyDetailActivity;->mId:Ljava/lang/String;

    .line 48
    invoke-static {}, Lbie;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyDetailActivity;->mTitle:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyDetailActivity;->mMsTopLayout:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyDetailActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getData(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyDetailActivity;->mLogo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyDetailActivity;->mLogo:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    :cond_0
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyDetailActivity;->mLogo:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyDetailActivity;->mLogo:Ljava/lang/String;

    sget v2, Lbez$c;->pic_covers_music_220:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyDetailActivity;->mMsLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 61
    :cond_1
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->getData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getListSignBean()Lcom/xiaopeng/musicradio/bean/ListSignBean;
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyDetailActivity;->mId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyDetailActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbxn;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bd;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 82
    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyDetailActivity;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadMoreListener()V
    .locals 0

    return-void
.end method

.method public setView()V
    .locals 2

    .line 39
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->setView()V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyDetailActivity;->mMsCollectLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    return-void
.end method
