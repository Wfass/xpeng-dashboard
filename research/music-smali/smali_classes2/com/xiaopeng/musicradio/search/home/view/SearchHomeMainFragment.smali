.class public Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "SearchHomeMainFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/search/home/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/search/fragment/home/main"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Lcom/xiaopeng/musicradio/search/home/view/a;",
        "Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/search/home/view/a;"
    }
.end annotation


# instance fields
.field private mHistoryWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchHistoryLayout:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method


# virtual methods
.method public closeClearSearchHistoryDialog()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;->mSearchHistoryLayout:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->b()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;->createPresenter()Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;
    .locals 1

    .line 75
    new-instance v0, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 39
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->search_history_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;->mSearchHistoryLayout:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 34
    sget v0, Lcom/xiaopeng/musicradio/search/a$e;->layout_search_history_hot:I

    return v0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_Search_Page"

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 97
    iget v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->Z(I)Ljava/lang/String;

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

    .line 102
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->W(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasHotword()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;->mHistoryWords:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;->updateSearchHistory(Ljava/util/List;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;->mSearchHistoryLayout:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->a()V

    return-void
.end method

.method public refreshData()V
    .locals 0

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;->mSearchHistoryLayout:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment$1;-><init>(Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->setCallback(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$a;)V

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method

.method protected shouldHandleBackPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showAlbumLoading(ZII)V
    .locals 0

    return-void
.end method

.method public showCollectLoading(ZII)V
    .locals 0

    return-void
.end method

.method public showLoading(ZII)V
    .locals 0

    return-void
.end method

.method public showLoadingFailed(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public showMusicLoading(ZII)V
    .locals 0

    return-void
.end method

.method public showNoData()V
    .locals 0

    return-void
.end method

.method public showRadioLoading(ZII)V
    .locals 0

    return-void
.end method

.method public showReadLoading(ZII)V
    .locals 0

    return-void
.end method

.method public updateHotMusic(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public updateMusicLove(Lasj$r;)V
    .locals 0

    return-void
.end method

.method public updatePlayState(II)V
    .locals 0

    return-void
.end method

.method public updateSearchHistory(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;->mSearchHistoryLayout:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    if-nez v0, :cond_0

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;->mHistoryWords:Ljava/util/List;

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 85
    iput-object v1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;->mHistoryWords:Ljava/util/List;

    .line 86
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->a(Ljava/util/List;)V

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;->mSearchHistoryLayout:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
