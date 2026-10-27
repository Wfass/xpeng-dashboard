.class public Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "MusicLrcPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/music/player/view/d;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->b:Z

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;)V
    .locals 2

    .line 140
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->c()Lcom/xiaopeng/musicradio/model/bluetooth/k;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSinger()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 142
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a(Ljava/lang/String;)V

    return-void

    .line 147
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 166
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/d;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/music/player/view/d;->refreshTitle(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .line 204
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/d;

    invoke-static {}, Layh;->a()Layh;

    move-result-object v1

    invoke-virtual {v1}, Layh;->f()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/d;->refreshBgColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 171
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->c()Lbqn;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, ""

    .line 179
    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->c:Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/player/view/d;

    invoke-interface {v0}, Lbqn;->m()I

    move-result v2

    invoke-interface {v0}, Lbqn;->n()I

    move-result v0

    add-int/2addr v2, v0

    invoke-interface {v1, p1, v2}, Lcom/xiaopeng/musicradio/music/player/view/d;->refreshLrcView(Ljava/lang/String;I)V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->c:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/view/d;

    invoke-interface {v0}, Lbqn;->m()I

    move-result v1

    invoke-interface {v0}, Lbqn;->n()I

    move-result v0

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/xiaopeng/musicradio/music/player/view/d;->updateIndex(I)V

    goto :goto_0

    .line 186
    :cond_2
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->c:Ljava/lang/String;

    .line 187
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/player/view/d;

    invoke-interface {v0}, Lbqn;->m()I

    move-result v2

    invoke-interface {v0}, Lbqn;->n()I

    move-result v0

    add-int/2addr v2, v0

    invoke-interface {v1, p1, v2}, Lcom/xiaopeng/musicradio/music/player/view/d;->refreshLrcView(Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    const-string v0, "MusicLrcPresenter"

    const-string v1, "refreshCurrentInfo: ======"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    if-nez v0, :cond_2

    .line 99
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 103
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 104
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    const-string v1, "local_usb_prefix_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    const-string v1, "local_prefix_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 105
    :cond_0
    invoke-static {}, Layc;->a()Layc;

    move-result-object p1

    invoke-virtual {p1, v0}, Layc;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_0

    .line 108
    :cond_1
    iput-object v2, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->c:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/view/d;

    invoke-interface {p1, v2, v1}, Lcom/xiaopeng/musicradio/music/player/view/d;->refreshLrcView(Ljava/lang/String;I)V

    goto :goto_0

    .line 113
    :cond_2
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    invoke-virtual {p1}, Lbqp;->b()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 114
    invoke-static {}, Lbic;->a()Lbic;

    move-result-object p1

    invoke-virtual {p1}, Lbic;->p_()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 118
    :cond_3
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getLrcContent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 121
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a(Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;)V

    goto :goto_0

    .line 123
    :cond_4
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_5
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    invoke-virtual {p1}, Lbqp;->b()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    .line 126
    iput-object v2, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->c:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 128
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/view/d;

    invoke-interface {p1, v2, v1}, Lcom/xiaopeng/musicradio/music/player/view/d;->refreshLrcView(Ljava/lang/String;I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a(Z)V

    return-void
.end method

.method public dealBtMusicPos(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/d;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;->c()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;->d()I

    move-result p1

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/d;->updateIndex(I)V

    :cond_1
    return-void
.end method

.method public dealInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x1

    .line 89
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a(Z)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 42
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->d()V

    return-void
.end method

.method public onRefreshLogoColor(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aq;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 198
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$aq;->a()I

    move-result p1

    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->d()V

    :cond_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onResume(Landroidx/lifecycle/n;)V

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->b:Z

    const-string p1, "MusicLrcPresenter"

    const-string v0, "onResume: ======"

    .line 51
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 52
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a(Z)V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/n;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onStop(Landroidx/lifecycle/n;)V

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->b:Z

    const-string p1, "MusicLrcPresenter"

    const-string v0, "onStop: "

    .line 59
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public refreshLrc(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$l;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x0

    .line 82
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a(Z)V

    return-void
.end method
