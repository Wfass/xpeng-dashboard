.class public Lcom/xiaopeng/musicradio/usb/dir/present/DirItemPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "DirItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/usb/dir/view/a;",
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

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/dir/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/dir/view/a;->updatePlayState()V

    :cond_0
    return-void
.end method

.method public dealMusicEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/dir/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/dir/view/a;->updatePlayState()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 22
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "MsRmItemPresenter"

    const-string v0, "onCreateView"

    .line 23
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/dir/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/dir/view/a;->updatePlayState()V

    :cond_0
    return-void
.end method

.method public onSpeechStateChangeEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/dir/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/dir/view/a;->notifySpeechChange()V

    :cond_0
    return-void
.end method
