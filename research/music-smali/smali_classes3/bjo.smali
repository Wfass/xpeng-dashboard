.class public Lbjo;
.super Lcom/xiaopeng/musicradio/widget/lifecycle/a;
.source "SingleSongQualityPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/lifecycle/a<",
        "Lcom/xiaopeng/musicradio/music/tone/view/b;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lbjo;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-void
.end method

.method public d()Z
    .locals 2

    .line 144
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->s()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 2

    .line 148
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->s()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h_()V
    .locals 2

    .line 38
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->h_()V

    const-string v0, "SingleSongQualityPresenter"

    const-string v1, "onSupportVisible.."

    .line 39
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsh;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh;

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0}, Lbsh;->fetchUserInfo()V

    .line 44
    :cond_0
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public j_()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->j_()V

    return-void
.end method

.method public onChangeAudioType(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 136
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    invoke-virtual {p1}, Lbqp;->b()I

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p0}, Lbjo;->g()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p0}, Lbjo;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/tone/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/tone/view/b;->onDismiss()V

    :cond_0
    return-void
.end method

.method public onMusicInfoEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 105
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    invoke-virtual {p1}, Lbqp;->b()I

    move-result p1

    if-nez p1, :cond_0

    .line 106
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lbqp;->b(I)Lbqn;

    move-result-object p1

    invoke-interface {p1}, Lbqn;->i()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p0}, Lbjo;->g()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lbjo;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/tone/view/b;

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/music/tone/view/b;->onRefreshCurMusicInfo(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_0
    return-void
.end method

.method public onQualityRefreshEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$ad;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 121
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    invoke-virtual {p1}, Lbqp;->b()I

    move-result p1

    if-nez p1, :cond_1

    .line 122
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lbqp;->b(I)Lbqn;

    move-result-object p1

    invoke-interface {p1}, Lbqn;->i()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 124
    iget-object v0, p0, Lbjo;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbjo;->g()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 126
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result p1

    .line 127
    :goto_0
    invoke-virtual {p0}, Lbjo;->g()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lbjo;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/tone/view/b;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/music/tone/view/b;->onRefreshSelected(I)V

    :cond_1
    return-void
.end method

.method public onSongQualityChangeEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ba;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 93
    invoke-virtual {p0}, Lbjo;->g()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ba;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lbjo;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/tone/view/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ba;->b()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/music/tone/view/b;->onRefreshSelected(I)V

    :cond_0
    return-void
.end method
