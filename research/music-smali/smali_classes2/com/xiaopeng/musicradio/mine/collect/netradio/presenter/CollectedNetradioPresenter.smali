.class public Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;
.super Lcom/xiaopeng/musicradio/mine/common/presenter/ReadDataBasePresenter;
.source "CollectedNetradioPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/presenter/ReadDataBasePresenter<",
        "Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/presenter/ReadDataBasePresenter;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->a(Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;)Z
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->i()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/datalist/f;)V
    .locals 1

    .line 55
    invoke-static {p1}, Laxv;->a(Lcom/xiaopeng/musicradio/datalist/f;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 56
    new-instance v0, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter$1;-><init>(Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/s;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    invoke-static {}, Laxv;->c()Z

    move-result v0

    .line 115
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

    const-string v1, "CollectedNetradioPresenter"

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 118
    invoke-static {}, Laxv;->a()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object p1

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;

    const/4 v1, 0x1

    new-instance v2, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter$2;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter$2;-><init>(Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->v()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 74
    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;->onDataListLoaded(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/ReadDataBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 42
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->h()V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/ReadDataBasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "CollectedNetradioPresenter"

    const-string v0, "onDestroy"

    .line 49
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lasy;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->v()V

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "Info"

    .line 90
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "PlayState"

    .line 80
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "ChangeAudioType"

    .line 85
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onGlobalNetRadioEvent(Lbju$b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 145
    invoke-virtual {p1}, Lbju$b;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->h()V

    :cond_0
    return-void
.end method

.method public onLoveChanged(Lcom/xiaopeng/musicradio/event/common/CommonEvent$r;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 152
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$r;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$r;->c()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;->addLoveNetradio(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$r;->c()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;->removeLoveNetradio(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMineShowEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$u;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->h()V

    return-void
.end method

.method public onSpeechShow(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->v()V

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public r()Lcom/xiaopeng/musicradio/datalist/b;
    .locals 2

    .line 135
    invoke-static {}, Lata;->a()Lata;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lata;->d(Ljava/lang/String;)Latf;

    move-result-object v0

    return-object v0
.end method
