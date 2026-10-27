.class public Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "UsbMainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lbrq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "UsbMainPresenter"

    const-string v0, "onCreateView"

    .line 27
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 2

    .line 33
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object p1

    invoke-virtual {p1}, Lbne;->b()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbrq;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lbrq;->showData(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbrq;

    invoke-interface {v0}, Lbrq;->showNoDataView()V

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbrq;

    invoke-interface {v0}, Lbrq;->showLoadingView()V

    .line 48
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume: state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " this = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UsbMainPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUsbMusicLoaded(Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$b;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "UsbMainPresenter"

    const-string v0, "onUsbMusicLoaded: "

    .line 69
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbrq;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lbrq;->showData(Z)V

    :cond_0
    return-void
.end method

.method public onUsbMusicLoading(Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$c;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "UsbMainPresenter"

    const-string v0, "onUsbMusicLoading: "

    .line 61
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbrq;

    invoke-interface {p1}, Lbrq;->showLoadingView()V

    :cond_0
    return-void
.end method

.method public onUsbMusicReleased(Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$d;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "UsbMainPresenter"

    const-string v0, "onUsbMusicReleased: "

    .line 53
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbrq;

    invoke-interface {p1}, Lbrq;->showNoDataView()V

    :cond_0
    return-void
.end method
