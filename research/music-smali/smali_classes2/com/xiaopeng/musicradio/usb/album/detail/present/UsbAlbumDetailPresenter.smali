.class public Lcom/xiaopeng/musicradio/usb/album/detail/present/UsbAlbumDetailPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "UsbAlbumDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lbqq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public dealAudioInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/detail/present/UsbAlbumDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/detail/present/UsbAlbumDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbqq;

    invoke-interface {p1}, Lbqq;->updatePlayState()V

    :cond_0
    return-void
.end method

.method public dealMusicEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/detail/present/UsbAlbumDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/detail/present/UsbAlbumDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbqq;

    invoke-interface {p1}, Lbqq;->updatePlayState()V

    :cond_0
    return-void
.end method

.method public dealUpdateSongLogo(Lcom/xiaopeng/musicradio/event/common/CommonEvent$UpdateSongLogo;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/detail/present/UsbAlbumDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/detail/present/UsbAlbumDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbqq;

    invoke-interface {p1}, Lbqq;->updateLogo()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 22
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "UsbDirDetailPresenter"

    const-string v0, "onCreateView"

    .line 23
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onSpeechStateChangeEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/detail/present/UsbAlbumDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/detail/present/UsbAlbumDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbqq;

    invoke-interface {p1}, Lbqq;->notifySpeechChange()V

    :cond_0
    return-void
.end method

.method public onUsbMusicReleased(Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$d;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/detail/present/UsbAlbumDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/detail/present/UsbAlbumDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbqq;

    invoke-interface {p1}, Lbqq;->showNoDataView()V

    :cond_0
    return-void
.end method
