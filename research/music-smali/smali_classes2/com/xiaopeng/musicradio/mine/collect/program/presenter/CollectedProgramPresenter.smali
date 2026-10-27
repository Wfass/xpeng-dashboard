.class public Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;
.super Lcom/xiaopeng/musicradio/mine/common/presenter/ReadDataBasePresenter;
.source "CollectedProgramPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/presenter/ReadDataBasePresenter<",
        "Lcom/xiaopeng/musicradio/mine/collect/program/view/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/presenter/ReadDataBasePresenter;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->a(Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;)Z
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->i()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/datalist/f;)V
    .locals 1

    .line 59
    invoke-static {p1}, Laxw;->a(Lcom/xiaopeng/musicradio/datalist/f;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 60
    new-instance v0, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter$1;-><init>(Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/s;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {}, Laxw;->c()Z

    move-result v0

    .line 125
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

    const-string v1, "CollectedProgramPresenter"

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 128
    invoke-static {}, Laxw;->a()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object p1

    .line 129
    new-instance v0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;-><init>()V

    .line 130
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setId(J)V

    .line 131
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/program/view/a;

    const/4 v1, 0x1

    new-instance v2, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter$2;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter$2;-><init>(Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    invoke-interface {p1, v1, v2}, Lcom/xiaopeng/musicradio/mine/collect/program/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/program/view/a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/mine/collect/program/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 2

    .line 75
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ai;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ai;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/program/view/a;

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->v()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 79
    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/mine/collect/program/view/a;->onDataListLoaded(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/ReadDataBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 46
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->h()V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/ReadDataBasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "CollectedProgramPresenter"

    const-string v0, "onDestroy"

    .line 53
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lasj$x;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p1}, Lasj$x;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/collect/program/view/a;

    invoke-virtual {p1}, Lasj$x;->c()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/mine/collect/program/view/a;->addLoveProgram(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/collect/program/view/a;

    invoke-virtual {p1}, Lasj$x;->c()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/mine/collect/program/view/a;->removeLoveProgram(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEvent(Lasy;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->v()V

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/program/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/collect/program/view/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "Info"

    .line 95
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$i;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "ListSignRefresh"

    .line 100
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "PlayState"

    .line 85
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "ChangeAudioType"

    .line 90
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onMineShowEvent(Lblv$a;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 157
    invoke-virtual {p1}, Lblv$a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->h()V

    :cond_0
    return-void
.end method

.method public onMineShowEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$u;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 152
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->h()V

    return-void
.end method

.method public onSpeechShow(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->v()V

    .line 115
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/program/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/collect/program/view/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public r()Lcom/xiaopeng/musicradio/datalist/b;
    .locals 2

    .line 147
    invoke-static {}, Lata;->a()Lata;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lata;->c(Ljava/lang/String;)Lath;

    move-result-object v0

    return-object v0
.end method
