.class public Lcom/xiaopeng/musicradio/music/detail/DailyDetailFragment;
.super Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;
.source "DailyDetailFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/music/detail/daily_detail"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/DailyDetailFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;
    .locals 1

    .line 29
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/DailyDetailFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getData()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/DailyDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->d()V

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/DailyDetailFragment;->showLoadingView()V

    .line 37
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/aj;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/DailyDetailFragment;->mId:Ljava/lang/String;

    .line 38
    invoke-static {}, Lbie;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/DailyDetailFragment;->mTitle:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/DailyDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/DailyDetailFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setTitle(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/DailyDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    sget v1, Lbez$g;->daily_txt:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/detail/DailyDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setTipsText(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/DailyDetailFragment;->mCommonTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/DailyDetailFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public getData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/DailyDetailFragment;->mLogo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/DailyDetailFragment;->mLogo:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    :cond_0
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/DailyDetailFragment;->mLogo:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/DailyDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/DailyDetailFragment;->mLogo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setLogo(Ljava/lang/String;)V

    .line 53
    :cond_1
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getListSignBean()Lcom/xiaopeng/musicradio/bean/ListSignBean;
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/DailyDetailFragment;->mId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/detail/DailyDetailFragment;->mTitle:Ljava/lang/String;

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

.method protected getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_Special_SubPage_Recommend"

    return-object v0
.end method

.method protected getSubPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_Special_SubPage_Recommend"

    return-object v0
.end method

.method public isPlayCurrentCollect()Z
    .locals 2

    .line 84
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v1

    invoke-virtual {v1}, Lbid;->s()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/aj;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public loadMoreListener()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 78
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->onPause()V

    .line 79
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_RECOMMEND"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 72
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->onResume()V

    .line 73
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_RECOMMEND"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setTotalSong(I)V
    .locals 0

    return-void
.end method
