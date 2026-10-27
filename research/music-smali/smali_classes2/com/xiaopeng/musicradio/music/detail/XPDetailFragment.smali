.class public Lcom/xiaopeng/musicradio/music/detail/XPDetailFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "XPDetailFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/music/detail/xp_detail"
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
.field private mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

.field protected mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/XPDetailFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayActPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayActPresenter;
    .locals 1

    .line 37
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayActPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayActPresenter;-><init>()V

    return-object v0
.end method

.method public findView()V
    .locals 3

    .line 47
    sget v0, Lbez$d;->title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/XPDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/XPDetailFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    .line 48
    sget v0, Lbez$d;->xp_play_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/XPDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/XPDetailFragment;->mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/XPDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/XPDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "rm_category_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/XPDetailFragment;->mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->setmType(I)V

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/XPDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "rm_category_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/detail/XPDetailFragment;->mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->setmId(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/XPDetailFragment;->mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->setmName(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/XPDetailFragment;->mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->h()V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/XPDetailFragment;->initVuiAttr()V

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 42
    sget v0, Lbez$f;->fragment_xp_detail:I

    return v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/XPDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arguments"

    .line 78
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 83
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/XPDetailFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSubPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_Special_SubPage_XiaoP"

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

    .line 88
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/XPDetailFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/XPDetailFragment;->mMenuIndex:I

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

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/XPDetailFragment;->mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/XPDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbyb;->LEVEL1:Lbyb;

    const-string v3, ""

    invoke-virtual {v0, v1, v3, v2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->a(Ljava/lang/String;Ljava/lang/String;Lbyb;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 98
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    return-void
.end method

.method public setListener()V
    .locals 0

    return-void
.end method

.method public setView()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/XPDetailFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/XPDetailFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v1, Lbez$g;->music_main_selection_xpplay_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    return-void
.end method
