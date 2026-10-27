.class public Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "NrCategoryDetailActivity.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/xpnetradio/activity/category_detail"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryDetailActPresenter;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NrCategoryDetailActivity"


# instance fields
.field private mCategoryDetailTopTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

.field protected mId:I

.field private mNrCategoryOrAreaDetailLayout:Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

.field protected mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    return-void
.end method

.method private BuildCategoryScene()V
    .locals 5

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->getSubSceneList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->isMainScene()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->BuildCategoryScene()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->createPresenter()Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryDetailActPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryDetailActPresenter;
    .locals 1

    .line 45
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryDetailActPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryDetailActPresenter;-><init>()V

    return-object v0
.end method

.method public findView()V
    .locals 1

    .line 54
    sget v0, Lbuc$d;->category_detail_top_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->mCategoryDetailTopTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    .line 55
    sget v0, Lbuc$d;->category_detail_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->mNrCategoryOrAreaDetailLayout:Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 50
    sget v0, Lbuc$f;->netradio_activity_category_detail:I

    return v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arguments"

    .line 109
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 104
    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->ai(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSubPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_NetRadio_SubPage_Category_Detail"

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

    .line 114
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->ak(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onBuildScene()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setListener()V
    .locals 0

    return-void
.end method

.method public setView()V
    .locals 4

    .line 60
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpp;->a(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "radio_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->mId:I

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "radio_title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->mTitle:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->mCategoryDetailTopTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->mNrCategoryOrAreaDetailLayout:Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    iget v2, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->mId:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->setmId(I)V

    .line 66
    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->mId:I

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->mNrCategoryOrAreaDetailLayout:Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->mTitle:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v0, v3, v2}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->mNrCategoryOrAreaDetailLayout:Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->mTitle:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v0, v3, v2}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->mNrCategoryOrAreaDetailLayout:Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->setVuiElementId(I)V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->mNrCategoryOrAreaDetailLayout:Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    sget-object v1, Lbya;->NORMAL:Lbya;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->setRecyclerState(Lbya;)V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->mNrCategoryOrAreaDetailLayout:Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->h()V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->mNrCategoryOrAreaDetailLayout:Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity$1;-><init>(Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->setDataLoadSuccessListener(Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout$a;)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->mCategoryDetailTopTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity$2;-><init>(Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setCloseListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->mCategoryDetailTopTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    .line 89
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->BuildCategoryScene()V

    return-void
.end method
