.class public Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "ZoneCategoryFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/music/detail/zone_category_detail"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayActPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;

.field protected mQuality:I

.field protected mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->mQuality:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayActPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayActPresenter;
    .locals 1

    .line 38
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayActPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayActPresenter;-><init>()V

    return-object v0
.end method

.method public findView()V
    .locals 5

    .line 48
    sget v0, Lbez$d;->title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    .line 49
    sget v0, Lbez$d;->xp_play_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "rm_category_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "rm_category_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "zone_quality"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->mQuality:I

    .line 56
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;

    iget v3, p0, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->mQuality:I

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->setQuality(I)V

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->setmId(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->setmName(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->h()V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->initVuiAttr()V

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 43
    sget v0, Lbez$f;->fragment_zone_category_detail:I

    return v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arguments"

    .line 81
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 86
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->S(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSubPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_Zong_KUGOU"

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

    .line 91
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->W(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected initVuiAttr()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbyb;->LEVEL1:Lbyb;

    const-string v3, ""

    invoke-virtual {v0, v1, v3, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->a(Ljava/lang/String;Ljava/lang/String;Lbyb;)V

    return-void
.end method

.method public setListener()V
    .locals 0

    return-void
.end method

.method public setView()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/ZoneCategoryFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    return-void
.end method
