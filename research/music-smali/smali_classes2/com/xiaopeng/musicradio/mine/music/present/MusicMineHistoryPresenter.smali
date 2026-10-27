.class public Lcom/xiaopeng/musicradio/mine/music/present/MusicMineHistoryPresenter;
.super Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;
.source "MusicMineHistoryPresenter.java"

# interfaces
.implements Laxs$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter<",
        "Lcom/xiaopeng/musicradio/mine/history/main/view/a;",
        ">;",
        "Laxs$a;"
    }
.end annotation


# instance fields
.field private b:Laxs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;-><init>()V

    .line 29
    invoke-static {}, Laxb;->a()Laxb;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineHistoryPresenter;->b:Laxs;

    .line 30
    invoke-static {}, Lawl;->a()Lawl;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChecked:state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MineHistoryPresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineHistoryPresenter;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 56
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$w;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$w;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineHistoryPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineHistoryPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/history/main/view/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/mine/history/main/view/a;->updateLoadingStatus(I)V

    return-void
.end method

.method public onCollectHistoryUpdateEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$m;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineHistoryPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineHistoryPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/history/main/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/history/main/view/a;->updateHistoryInfo()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 35
    invoke-static {}, Lawl;->a()Lawl;

    move-result-object v0

    invoke-virtual {v0}, Lawl;->c()V

    .line 36
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 37
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 38
    invoke-static {}, Laxb;->a()Laxb;

    move-result-object p1

    invoke-virtual {p1, p0}, Laxb;->a(Laxs$a;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "MineHistoryPresenter"

    const-string v0, "onDestroy"

    .line 44
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    .line 46
    invoke-static {}, Laxb;->a()Laxb;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Laxb;->a(Laxs$a;)V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineHistoryPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineHistoryPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/history/main/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/history/main/view/a;->updateHistoryInfo()V

    :cond_0
    return-void
.end method

.method public onMusicBinded(Lasj$h;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MineHistoryPresenter"

    const-string v0, "onMusicBinded: "

    .line 78
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lawl;->a()Lawl;

    move-result-object p1

    invoke-virtual {p1}, Lawl;->c()V

    return-void
.end method

.method public onMusicBinded(Lasj$m;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MineHistoryPresenter"

    const-string v0, "onMusicBinded: "

    .line 66
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lawl;->a()Lawl;

    move-result-object p1

    invoke-virtual {p1}, Lawl;->c()V

    return-void
.end method

.method public onMusicBinded(Lasj$t;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MineHistoryPresenter"

    const-string v0, "onMusicBinded: "

    .line 72
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lawl;->a()Lawl;

    move-result-object p1

    invoke-virtual {p1}, Lawl;->c()V

    return-void
.end method

.method public onMusicHistoryUpdateEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$x;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineHistoryPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineHistoryPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/history/main/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/history/main/view/a;->updateHistoryInfo()V

    :cond_0
    return-void
.end method
