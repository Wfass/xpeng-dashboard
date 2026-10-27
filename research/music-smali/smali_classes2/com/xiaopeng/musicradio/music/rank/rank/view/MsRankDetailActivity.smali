.class public Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;
.super Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;
.source "MsRankDetailActivity.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/music/activity/rank_detail"
.end annotation


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->createPresenter()Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->createPresenter()Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;
    .locals 1

    .line 84
    new-instance v0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;-><init>()V

    return-object v0
.end method

.method public getData()V
    .locals 3

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detail_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mId:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detail_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mTitle:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "detail_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mType:I

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    instance-of v0, v0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mType:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;->c(I)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->d()V

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->showLoadingView()V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mMsTopLayout:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mMsLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    sget v1, Lbez$c;->pic_covers_music_220:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->setImageResource(I)V

    :cond_1
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

    .line 58
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mLogo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mLogo:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 61
    :cond_0
    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mLogo:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mMsLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->setImageResource(I)V

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mLogo:Ljava/lang/String;

    sget v2, Lbez$c;->pic_covers_music_220:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mMsLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 66
    :cond_1
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->getData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getListSignBean()Lcom/xiaopeng/musicradio/bean/ListSignBean;
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mTitle:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mType:I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/utils/bd;->b(Ljava/lang/String;Ljava/lang/String;I)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 111
    iget v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->h(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public recordItem()V
    .locals 2

    .line 89
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;-><init>()V

    const-string v1, "listsign_rank_music"

    .line 90
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setRankName(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setRankId(Ljava/lang/String;)V

    .line 95
    iget v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mType:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setRankType(I)V

    .line 96
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mLogo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mLogo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setImgUrl(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mLogo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogo(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lbak;->a()Lbak;

    move-result-object v1

    invoke-virtual {v1}, Lbak;->b()Lbaj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbaj;->b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    return-void
.end method

.method public setAdapter()V
    .locals 5

    .line 71
    new-instance v0, Lbiv;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lbez$f;->music_item_rank_detail_list:I

    new-instance v3, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity$1;-><init>(Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;)V

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v4, v3}, Lbiv;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mAdapter:Lbii;

    return-void
.end method

.method public setView()V
    .locals 2

    .line 35
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->setView()V

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mMsCollectLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    return-void
.end method
