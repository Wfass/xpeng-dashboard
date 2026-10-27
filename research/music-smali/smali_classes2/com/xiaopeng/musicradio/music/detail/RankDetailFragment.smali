.class public Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;
.super Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;
.source "RankDetailFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/music/detail/rank_detail"
.end annotation


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;
    .locals 1

    .line 32
    new-instance v0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;-><init>()V

    return-object v0
.end method

.method public getData()V
    .locals 3

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "RANK_FROM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mRankFrom:I

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "detail_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mId:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "detail_title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mTitle:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "detail_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mType:I

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detail_LOGO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mLogo:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    instance-of v0, v0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mType:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;->c(I)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mRankFrom:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setRankFrom(I)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setTitle(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 51
    invoke-static {}, Lbit;->a()Lbit;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbit;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    invoke-static {}, Lbit;->a()Lbit;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbit;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mLogo:Ljava/lang/String;

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mLogo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setLogo(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->d()V

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->showLoadingView()V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lbez$g;->update_txt:I

    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbxn;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setTipsText(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mCommonTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    :cond_2
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

    .line 66
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 67
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mLogo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mLogo:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    :cond_0
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mLogo:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mLogo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setLogo(Ljava/lang/String;)V

    .line 75
    :cond_1
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getListSignBean()Lcom/xiaopeng/musicradio/bean/ListSignBean;
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mTitle:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mType:I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/utils/bd;->b(Ljava/lang/String;Ljava/lang/String;I)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    return-object v0
.end method

.method protected getSubPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_Rank_SubPage_Detail"

    return-object v0
.end method

.method public recordItem()V
    .locals 2

    .line 90
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;-><init>()V

    const-string v1, "listsign_rank_music"

    .line 91
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setRankName(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setRankId(Ljava/lang/String;)V

    .line 96
    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mType:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setRankType(I)V

    .line 97
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mLogo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mLogo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setImgUrl(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mLogo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogo(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/RankDetailFragment;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lbak;->a()Lbak;

    move-result-object v1

    invoke-virtual {v1}, Lbak;->b()Lbaj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbaj;->b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    return-void
.end method

.method public setTotalSong(I)V
    .locals 0

    return-void
.end method
