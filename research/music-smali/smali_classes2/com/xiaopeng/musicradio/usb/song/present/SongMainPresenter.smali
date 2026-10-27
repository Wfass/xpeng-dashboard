.class public Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "SongMainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/usb/song/view/a;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 143
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 144
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object v0

    invoke-virtual {v0}, Lbne;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 146
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object v0

    invoke-virtual {v0}, Lbne;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadData: getUsbInfoSizeSongMain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SongMainPresenter"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->b:Ljava/util/List;

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/usb/song/view/a;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/usb/song/view/a;->showData(Ljava/util/List;)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/usb/song/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/usb/song/view/a;->showNoDataView()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->b:Ljava/util/List;

    return-object v0
.end method

.method public dealAudioInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/song/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/song/view/a;->updatePlayState()V

    :cond_0
    return-void
.end method

.method public dealDelNoAudio(Lcom/xiaopeng/musicradio/usb/event/UsbEvent$DelNoAudio;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_3

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 117
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$DelNoAudio;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 118
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 119
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 120
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$DelNoAudio;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/usb/song/view/a;

    invoke-interface {v1, v0}, Lcom/xiaopeng/musicradio/usb/song/view/a;->removeMusicInfo(I)V

    .line 123
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 125
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealDelNoAudio: dealSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; needDeleteHash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$DelNoAudio;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SongMainPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public dealMusicEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/song/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/song/view/a;->updatePlayState()V

    :cond_0
    return-void
.end method

.method public dealUpdateSongLogo(Lcom/xiaopeng/musicradio/event/common/CommonEvent$UpdateSongLogo;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/song/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/song/view/a;->updateLogo()V

    :cond_0
    return-void
.end method

.method public dealUsbInfo(Lcom/xiaopeng/musicradio/usb/event/UsbEvent$Info;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 91
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$Info;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->b:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 95
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$Info;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 99
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 100
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 101
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$Info;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 102
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$Info;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSong(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/song/view/a;

    invoke-interface {p1, v1, v2}, Lcom/xiaopeng/musicradio/usb/song/view/a;->updateMusicInfo(ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "SongMainPresenter"

    const-string v0, "onCreateView"

    .line 37
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 39
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object p1

    invoke-virtual {p1}, Lbne;->b()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->d()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/song/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/song/view/a;->showNoDataView()V

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/song/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/song/view/a;->showLoadingView()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSpeechStateChangeEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/song/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/song/view/a;->notifySpeechChange()V

    :cond_0
    return-void
.end method

.method public onUsbMusicLoaded(Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 72
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->d()V

    return-void
.end method

.method public onUsbMusicLoading(Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$c;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/song/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/song/view/a;->showLoadingView()V

    :cond_0
    return-void
.end method

.method public onUsbMusicReleased(Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$d;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 55
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->b:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 56
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/song/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/usb/song/view/a;->showNoDataView()V

    :cond_1
    return-void
.end method
