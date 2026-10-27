.class public Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/MsXpPlayActivity;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "MsXpPlayActivity.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/music/activity/xp_play"
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

.field private mXpPlayTopTitle:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/MsXpPlayActivity;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayActPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayActPresenter;
    .locals 1

    .line 32
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayActPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayActPresenter;-><init>()V

    return-object v0
.end method

.method public findView()V
    .locals 3

    .line 41
    sget v0, Lbez$d;->xp_play_top_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/MsXpPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/MsXpPlayActivity;->mXpPlayTopTitle:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    .line 42
    sget v0, Lbez$d;->xp_play_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/MsXpPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/MsXpPlayActivity;->mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/MsXpPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/MsXpPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "rm_category_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 46
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/MsXpPlayActivity;->mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->setmType(I)V

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/MsXpPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "rm_category_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/MsXpPlayActivity;->mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->setmId(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/MsXpPlayActivity;->mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->setmName(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/MsXpPlayActivity;->mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->h()V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/MsXpPlayActivity;->initVuiAttr()V

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 37
    sget v0, Lbez$f;->music_activity_xp_play:I

    return v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/MsXpPlayActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arguments"

    .line 82
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 77
    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/MsXpPlayActivity;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initVuiAttr()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/MsXpPlayActivity;->mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/MsXpPlayActivity;->getSceneId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbyb;->LEVEL1:Lbyb;

    const-string v3, ""

    invoke-virtual {v0, v1, v3, v2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->a(Ljava/lang/String;Ljava/lang/String;Lbyb;)V

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/MsXpPlayActivity;->mXpPlayTopTitle:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/MsXpPlayActivity$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/MsXpPlayActivity$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/MsXpPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->setCloseListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setView()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/MsXpPlayActivity;->mXpPlayTopTitle:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->showRtLayout(Z)V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/MsXpPlayActivity;->mXpPlayTopTitle:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    sget v1, Lbez$g;->music_main_selection_xpplay_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
