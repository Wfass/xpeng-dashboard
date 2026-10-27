.class public Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;
.super Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;
.source "AlbumDetailFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/music/detail/album_detail"
.end annotation


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;
    .locals 1

    .line 27
    new-instance v0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;-><init>()V

    return-object v0
.end method

.method public getData()V
    .locals 4

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->setType(I)V

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "SINGER_FROM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mAlbumFrom:I

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "ZONE_FROM_TYPE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mZoneFrom:I

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "detail_id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mId:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "detail_title"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mTitle:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "detail_LOGO"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mLogo:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "zone_model_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mZoneModelType:I

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "zone_model_source"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mZoneModelSource:I

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "detail_account_type"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mAccountType:I

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detail_quality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mQuality:I

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mAccountType:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->b(I)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mZoneFrom:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setZoneFrom(I)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mAlbumFrom:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setAlbumFrom(I)V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setTitle(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mLogo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setLogo(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->d()V

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->showLoadingView()V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mCommonTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->setLogo()V

    :cond_2
    return-void
.end method

.method public getListSignBean()Lcom/xiaopeng/musicradio/bean/ListSignBean;
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bd;->l(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    .line 64
    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mQuality:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/AlbumDetailFragment;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bd;->m(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public recordItem()V
    .locals 0

    return-void
.end method
