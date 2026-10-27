.class public Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "SingleLrcPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/music/player/view/j;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    const-string v0, ""

    .line 39
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->b:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->c:Ljava/util/List;

    return-void
.end method

.method private a(I)V
    .locals 7

    .line 166
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    .line 171
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_4

    .line 172
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;

    .line 173
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 174
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-double v3, v3

    if-eqz p1, :cond_1

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-ltz v3, :cond_2

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/view/j;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/player/view/j;->refreshLrc(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/view/j;

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/player/view/j;->refreshLrc(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;)V
    .locals 2

    .line 103
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->c()Lcom/xiaopeng/musicradio/model/bluetooth/k;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSinger()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 105
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->a(Ljava/lang/String;)V

    return-void

    .line 110
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 134
    :cond_1
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 139
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->c()Lbqn;

    move-result-object v0

    .line 140
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    if-nez v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, ""

    .line 147
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->b:Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/player/view/j;

    if-nez p1, :cond_1

    move-object p1, v0

    :cond_1
    invoke-interface {v1, p1}, Lcom/xiaopeng/musicradio/music/player/view/j;->refreshLrc(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->b:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 152
    invoke-interface {v0}, Lbqn;->m()I

    move-result p1

    invoke-interface {v0}, Lbqn;->n()I

    move-result v0

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->a(I)V

    goto :goto_0

    .line 154
    :cond_3
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->b:Ljava/lang/String;

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;->parseLrc(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 156
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_4

    .line 158
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    :cond_4
    invoke-interface {v0}, Lbqn;->m()I

    move-result p1

    invoke-interface {v0}, Lbqn;->n()I

    move-result v0

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->a(I)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 72
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    if-nez v0, :cond_2

    .line 73
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->a(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 77
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_usb_prefix_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_prefix_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 78
    :cond_0
    invoke-static {}, Layc;->a()Layc;

    move-result-object v1

    invoke-virtual {v1, v0}, Layc;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, ""

    .line 82
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->b:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/player/view/j;

    invoke-interface {v1, v0}, Lcom/xiaopeng/musicradio/music/player/view/j;->refreshLrc(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 88
    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v0

    invoke-virtual {v0}, Lbic;->p_()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 92
    :cond_3
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getLrcContent()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 94
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->a(Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;)V

    goto :goto_0

    .line 96
    :cond_4
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->a(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public dealBtMusicPos(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    .line 53
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;->d()I

    move-result p1

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->a(I)V

    :cond_1
    return-void
.end method

.method public dealInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->c()V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 45
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->c()V

    return-void
.end method

.method public refreshLrc(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$l;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->c()V

    return-void
.end method
