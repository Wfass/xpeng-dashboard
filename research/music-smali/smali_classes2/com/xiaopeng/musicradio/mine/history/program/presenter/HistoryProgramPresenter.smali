.class public Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;
.super Lcom/xiaopeng/musicradio/mine/common/presenter/ReadDataBasePresenter;
.source "HistoryProgramPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/presenter/ReadDataBasePresenter<",
        "Lcom/xiaopeng/musicradio/mine/history/program/view/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/presenter/ReadDataBasePresenter;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->a(Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;)Z
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->i()Z

    move-result p0

    return p0
.end method

.method private y()Z
    .locals 4

    .line 121
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    .line 122
    invoke-static {}, Laxw;->d()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {}, Laxw;->a()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 125
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v2, :cond_0

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

    .line 60
    invoke-static {p1}, Laxw;->b(Lcom/xiaopeng/musicradio/datalist/f;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter$1;-><init>(Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/s;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->y()Z

    move-result v0

    .line 135
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

    const-string v1, "HistoryProgramPresenter"

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 138
    invoke-static {}, Laxw;->a()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object p1

    .line 139
    new-instance v0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;-><init>()V

    .line 140
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setId(J)V

    .line 141
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/history/program/view/a;

    const/4 v1, 0x1

    new-instance v2, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter$2;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter$2;-><init>(Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    invoke-interface {p1, v1, v2}, Lcom/xiaopeng/musicradio/mine/history/program/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/history/program/view/a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/mine/history/program/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 2

    .line 76
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ai;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ai;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/history/program/view/a;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->v()V

    .line 80
    iget-object v1, p1, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->b(Ljava/util/List;)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/musicradio/mine/history/program/view/a;->onDataListLoaded(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/ReadDataBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 47
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->h()V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/ReadDataBasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "HistoryProgramPresenter"

    const-string v0, "onDestroy"

    .line 54
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lawk;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->v()V

    .line 108
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/history/program/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/history/program/view/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "Info"

    .line 96
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$i;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "ListSignRefresh"

    .line 101
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "PlayState"

    .line 86
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "ChangeAudioType"

    .line 91
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onMineShowEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$u;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->h()V

    return-void
.end method

.method public onProgramHistoryUpdateEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aj;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->h()V

    return-void
.end method

.method public onSpeechShow(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->v()V

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/history/program/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/history/program/view/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public r()Lcom/xiaopeng/musicradio/datalist/b;
    .locals 2

    .line 157
    invoke-static {}, Lawl;->a()Lawl;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lawl;->c(Ljava/lang/String;)Lawt;

    move-result-object v0

    return-object v0
.end method
