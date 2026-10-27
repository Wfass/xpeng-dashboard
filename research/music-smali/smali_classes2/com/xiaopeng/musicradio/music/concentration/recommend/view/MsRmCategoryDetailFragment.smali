.class public Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailFragment;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;
.source "MsRmCategoryDetailFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/music/activity/rm_category_detail"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment<",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryDetailPresenter;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MsRmCategoryDetailFragment"


# instance fields
.field private mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryDetailPresenter;
    .locals 1

    .line 52
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryDetailPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryDetailPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 3

    .line 30
    sget v0, Lbez$d;->rm_category_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailFragment;->mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailFragment;->mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    if-eqz v1, :cond_0

    const-string v2, "rm_category_id"

    .line 34
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->setmId(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailFragment;->mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    const-string v2, "rm_category_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->setmType(I)V

    .line 36
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailFragment;->mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    const-string v2, "rm_category_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->setmName(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailFragment;->mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    const-string v2, "rm_category_sort"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->setmSort(I)V

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailFragment;->mMsRmCategoryDetailLayout:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->h()V

    :cond_0
    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 25
    sget v0, Lbez$f;->music_fragment_rm_category:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method
