.class public Lcom/xiaopeng/musicradio/music/rank/main/view/MsRankMainFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "MsRankMainFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/rank/main/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/music/fragment/rank"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Lcom/xiaopeng/musicradio/music/rank/main/view/a;",
        "Lcom/xiaopeng/musicradio/music/rank/main/presenter/MsRankMainPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/rank/main/view/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MsRankMainFragment"


# instance fields
.field protected mRankLayout:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/main/view/MsRankMainFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/rank/main/presenter/MsRankMainPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/rank/main/presenter/MsRankMainPresenter;
    .locals 1

    .line 45
    new-instance v0, Lcom/xiaopeng/musicradio/music/rank/main/presenter/MsRankMainPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/rank/main/presenter/MsRankMainPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 2

    .line 30
    sget v0, Lbez$d;->rank_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/rank/main/view/MsRankMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/main/view/MsRankMainFragment;->mRankLayout:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/main/view/MsRankMainFragment;->mRankLayout:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;

    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v1

    invoke-virtual {v1}, Lbdu;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->setAccountType(I)V

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 25
    sget v0, Lbez$f;->music_fragment_rank:I

    return v0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_Rank_Page"

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 51
    iget v0, p0, Lcom/xiaopeng/musicradio/music/rank/main/view/MsRankMainFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->i(I)Ljava/lang/String;

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

    .line 61
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/rank/main/view/MsRankMainFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/music/rank/main/view/MsRankMainFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->W(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isMainScene()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected needSetRootView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMusicAuthCheck(I)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 77
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onPause()V

    .line 78
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_RANK"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    .line 72
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_RANK"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 0

    .line 36
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setView()V

    return-void
.end method

.method protected shouldHandleBackPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
