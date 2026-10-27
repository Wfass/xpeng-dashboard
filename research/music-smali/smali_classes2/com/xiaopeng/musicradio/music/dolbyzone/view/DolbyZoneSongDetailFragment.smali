.class public Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneSongDetailFragment;
.super Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;
.source "DolbyZoneSongDetailFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/music/detail/dolby_zone_song_detail"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneSongDetailFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneSongDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneSongDetailPresenter;
    .locals 1

    .line 28
    new-instance v0, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneSongDetailPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneSongDetailPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneSongDetailFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneSongDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getData()V
    .locals 3

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneSongDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "-1006"

    .line 35
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneSongDetailFragment;->mId:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneSongDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detail_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneSongDetailFragment;->mTitle:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneSongDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "zone_quality"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneSongDetailFragment;->mQuality:I

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneSongDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneSongDetailFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setTitle(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneSongDetailFragment;->showLoadingView()V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneSongDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->d()V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneSongDetailFragment;->mCommonTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneSongDetailFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    :cond_0
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

    .line 47
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneSongDetailFragment;->mLogo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneSongDetailFragment;->mLogo:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    :cond_0
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneSongDetailFragment;->mLogo:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneSongDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneSongDetailFragment;->mLogo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setLogo(Ljava/lang/String;)V

    .line 54
    :cond_1
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getListSignBean()Lcom/xiaopeng/musicradio/bean/ListSignBean;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneSongDetailFragment;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneSongDetailFragment;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bd;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    return-object v0
.end method

.method protected getSubPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_Special_SubPage_Dolby_Detail"

    return-object v0
.end method

.method public recordItem()V
    .locals 0

    return-void
.end method
