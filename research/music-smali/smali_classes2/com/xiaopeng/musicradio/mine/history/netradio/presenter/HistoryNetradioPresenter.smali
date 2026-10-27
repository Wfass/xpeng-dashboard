.class public Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;
.super Lcom/xiaopeng/musicradio/mine/common/presenter/ReadDataBasePresenter;
.source "HistoryNetradioPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/presenter/ReadDataBasePresenter<",
        "Lcom/xiaopeng/musicradio/mine/history/netradio/view/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/presenter/ReadDataBasePresenter;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->a(Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;)Z
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->i()Z

    move-result p0

    return p0
.end method

.method private y()Z
    .locals 3

    .line 111
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    .line 112
    invoke-static {}, Laxv;->a()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/datalist/f;)V
    .locals 1

    .line 56
    invoke-static {p1}, Laxv;->b(Lcom/xiaopeng/musicradio/datalist/f;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 57
    new-instance v0, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter$1;-><init>(Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/s;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .line 117
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->y()Z

    move-result v0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePlayingStatus:playing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HistoryNetradioPresenter"

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 125
    invoke-static {}, Laxv;->a()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object p1

    .line 126
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/history/netradio/view/a;

    const/4 v1, 0x1

    new-instance v2, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter$2;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter$2;-><init>(Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/history/netradio/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/history/netradio/view/a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/mine/history/netradio/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/history/netradio/view/a;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->v()V

    .line 75
    iget-object v1, p1, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->b(Ljava/util/List;)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/musicradio/mine/history/netradio/view/a;->onDataListLoaded(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/ReadDataBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 43
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->h()V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/ReadDataBasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "HistoryNetradioPresenter"

    const-string v0, "onDestroy"

    .line 50
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lawk;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->v()V

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/history/netradio/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/history/netradio/view/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "Info"

    .line 91
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "PlayState"

    .line 81
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "ChangeAudioType"

    .line 86
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onMineShowEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$u;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->h()V

    return-void
.end method

.method public onRadioHistoryUpdateEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$al;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 152
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->h()V

    return-void
.end method

.method public onSpeechShow(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->v()V

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/history/netradio/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/history/netradio/view/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public r()Lcom/xiaopeng/musicradio/datalist/b;
    .locals 2

    .line 142
    invoke-static {}, Lawl;->a()Lawl;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lawl;->d(Ljava/lang/String;)Lawr;

    move-result-object v0

    return-object v0
.end method
