.class public Lcom/xiaopeng/musicradio/usb/dir/present/DirMainPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "DirMainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/usb/dir/view/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method

.method private c()V
    .locals 4

    .line 93
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 94
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object v0

    invoke-virtual {v0}, Lbne;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 97
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object v0

    invoke-virtual {v0}, Lbne;->d()Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirMainPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/usb/dir/view/b;

    invoke-interface {v1, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/b;->showData(Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;)V

    .line 101
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    if-eqz v1, :cond_0

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "treeBean = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DirMainPresenter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/usb/dir/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/usb/dir/view/b;->showNoDataView()V

    :cond_2
    return-void
.end method


# virtual methods
.method public dealAudioInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/dir/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/dir/view/b;->updatePlayState()V

    :cond_0
    return-void
.end method

.method public dealDelNoAudio(Lcom/xiaopeng/musicradio/usb/event/UsbEvent$DelNoAudio;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$DelNoAudio;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirMainPresenter;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method public dealMusicEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/dir/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/dir/view/b;->updatePlayState()V

    :cond_0
    return-void
.end method

.method public dealUpdateSongLogo(Lcom/xiaopeng/musicradio/event/common/CommonEvent$UpdateSongLogo;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/dir/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/dir/view/b;->updateLogo()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "DirMainPresenter"

    const-string v0, "onCreateView"

    .line 32
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 34
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object p1

    invoke-virtual {p1}, Lbne;->b()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirMainPresenter;->c()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/dir/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/dir/view/b;->showNoDataView()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUsbMusicLoaded(Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirMainPresenter;->c()V

    return-void
.end method

.method public onUsbMusicLoading(Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$c;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/dir/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/dir/view/b;->showLoadingView()V

    :cond_0
    return-void
.end method

.method public onUsbMusicReleased(Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$d;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/dir/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/dir/view/b;->showNoDataView()V

    :cond_0
    return-void
.end method
