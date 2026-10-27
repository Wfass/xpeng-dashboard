.class public abstract Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter;
.super Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;
.source "NrBasePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter<",
        "TUIInterface;>;"
    }
.end annotation


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter;->b:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public dealAudioInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter;->e()V

    return-void
.end method

.method public dealMusicEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 54
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter;->b:Z

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter;->b:Z

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter;->a(Z)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter;->f()V

    .line 26
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter;->b:Z

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter;->a(Z)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 32
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    .line 35
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/netradio/logic/a;->d()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 40
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter;->b:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter;->b:Z

    goto :goto_0

    .line 44
    :cond_1
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter;->b:Z

    goto :goto_0

    .line 47
    :cond_2
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter;->b:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public g()V
    .locals 0

    .line 73
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->g()V

    return-void
.end method

.method public onChangeAudioType(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter;->e()V

    return-void
.end method

.method public onSpeechStateChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter;->d()V

    return-void
.end method
