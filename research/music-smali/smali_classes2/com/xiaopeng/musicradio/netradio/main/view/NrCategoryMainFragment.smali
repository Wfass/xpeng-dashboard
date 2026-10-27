.class public Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryMainFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "NrCategoryMainFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/netradio/fragment/category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/musicradio/netradio/category/main/presenter/NrCategoryMainPresenter;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NrCategoryMainFragment"


# instance fields
.field private mTvTitle:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryMainFragment;->createPresenter()Lcom/xiaopeng/musicradio/netradio/category/main/presenter/NrCategoryMainPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/netradio/category/main/presenter/NrCategoryMainPresenter;
    .locals 1

    .line 50
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/category/main/presenter/NrCategoryMainPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/netradio/category/main/presenter/NrCategoryMainPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 34
    sget v0, Lbuc$d;->title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryMainFragment;->mTvTitle:Lcom/xiaopeng/xui/widget/XTextView;

    .line 35
    sget v0, Lbuc$d;->configuration_changed_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryMainFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 29
    sget v0, Lbuc$f;->netradio_fragment_category:I

    return v0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_NetRadio_Category"

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 55
    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryMainFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->aj(I)Ljava/lang/String;

    move-result-object v0

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

    .line 60
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryMainFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->ak(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryMainFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected needSetRootView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public reviewOnScreenChange()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryMainFragment;->mTvTitle:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryMainFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setView()V

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryMainFragment;->reviewOnScreenChange()V

    return-void
.end method

.method protected shouldHandleBackPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
