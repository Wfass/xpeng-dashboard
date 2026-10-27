.class public Lcom/xiaopeng/musicradio/program/category/adapter/view/ProgramCategoryFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "ProgramCategoryFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/program/fragment/category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/musicradio/program/category/presenter/ProgramCategoryPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private mTvTitle:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/adapter/view/ProgramCategoryFragment;->createPresenter()Lcom/xiaopeng/musicradio/program/category/presenter/ProgramCategoryPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/program/category/presenter/ProgramCategoryPresenter;
    .locals 1

    .line 67
    new-instance v0, Lcom/xiaopeng/musicradio/program/category/presenter/ProgramCategoryPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/ProgramCategoryPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 40
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/category/adapter/view/ProgramCategoryFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/ProgramCategoryFragment;->mTvTitle:Lcom/xiaopeng/xui/widget/XTextView;

    .line 41
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->configuration_changed_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/category/adapter/view/ProgramCategoryFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/ProgramCategoryFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 35
    sget v0, Lcom/xiaopeng/musicradio/program/b$f;->fragment_category:I

    return v0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_Program_Category"

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->bt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    .line 62
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/ProgramCategoryFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->an(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/ProgramCategoryFragment;->mMenuIndex:I

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

    .line 82
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public reviewOnScreenChange()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/ProgramCategoryFragment;->mTvTitle:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/ProgramCategoryFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

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

    .line 46
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setView()V

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/adapter/view/ProgramCategoryFragment;->reviewOnScreenChange()V

    return-void
.end method

.method protected shouldHandleBackPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
