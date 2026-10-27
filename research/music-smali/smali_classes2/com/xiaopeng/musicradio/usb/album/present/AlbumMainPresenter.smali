.class public Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "AlbumMainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/usb/album/view/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;",
            ">;)V"
        }
    .end annotation

    .line 127
    new-instance v0, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter$1;-><init>(Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private c()V
    .locals 4

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 105
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object v0

    invoke-virtual {v0}, Lbne;->a()Z

    move-result v0

    .line 106
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object v1

    invoke-virtual {v1}, Lbne;->f()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;

    .line 111
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->c(Ljava/lang/String;)V

    .line 112
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->a(Ljava/util/List;)V

    .line 115
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/usb/album/view/b;

    invoke-interface {v1, v0}, Lcom/xiaopeng/musicradio/usb/album/view/b;->showData(Ljava/util/List;)V

    goto :goto_1

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/usb/album/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/usb/album/view/b;->showNoDataView()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public dealAudioInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/album/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/album/view/b;->updatePlayState()V

    :cond_0
    return-void
.end method

.method public dealMusicEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/album/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/album/view/b;->updatePlayState()V

    :cond_0
    return-void
.end method

.method public dealParseState(Lcom/xiaopeng/musicradio/usb/event/UsbEvent$ParseState;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->c()V

    return-void
.end method

.method public dealUpdateAlbumLogo(Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateAlbumLogo;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/album/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/album/view/b;->updateLogo()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "SingerMainPresenter"

    const-string v0, "onCreateView"

    .line 36
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 38
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object p1

    invoke-virtual {p1}, Lbne;->b()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 40
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object p1

    invoke-virtual {p1}, Lbne;->c()Ljava/util/ArrayList;

    move-result-object p1

    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 42
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object p1

    invoke-virtual {p1}, Lbne;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->c()V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/album/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/album/view/b;->showLoadingView()V

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/album/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/album/view/b;->showNoDataView()V

    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/album/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/album/view/b;->showNoDataView()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onSpeechStateChangeEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/album/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/album/view/b;->notifySpeechChange()V

    :cond_0
    return-void
.end method

.method public onUsbMusicLoading(Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$c;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/album/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/album/view/b;->showLoadingView()V

    :cond_0
    return-void
.end method

.method public onUsbMusicReleased(Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$d;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/album/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/album/view/b;->showNoDataView()V

    :cond_0
    return-void
.end method
