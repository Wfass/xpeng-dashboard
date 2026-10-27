.class public Lcom/xiaopeng/musicradio/service/UsbService;
.super Lcom/xiaopeng/musicradio/service/a;
.source "UsbService.java"

# interfaces
.implements Lbqr;


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/service/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public addRebootPlayTask()V
    .locals 1

    .line 70
    new-instance v0, Lcom/xiaopeng/musicradio/service/UsbService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/service/UsbService$1;-><init>(Lcom/xiaopeng/musicradio/service/UsbService;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getUsbState4XiaoP()I
    .locals 1

    .line 65
    invoke-static {}, Lcom/xiaopeng/musicradio/usb/model/b;->a()Lcom/xiaopeng/musicradio/usb/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/model/b;->k()I

    move-result v0

    return v0
.end method

.method public hasMountedUsbDisk()Z
    .locals 1

    .line 80
    invoke-static {}, Lcom/xiaopeng/musicradio/usb/model/b;->a()Lcom/xiaopeng/musicradio/usb/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/model/b;->b()Z

    move-result v0

    return v0
.end method

.method public playUsbMusic()V
    .locals 4

    .line 85
    invoke-static {}, Lcom/xiaopeng/musicradio/usb/model/b;->a()Lcom/xiaopeng/musicradio/usb/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/model/b;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 87
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/aj;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 91
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->play()V

    goto :goto_0

    .line 94
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 97
    :cond_1
    sget-object v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;->USB_MUSIC_TITLE:Ljava/lang/String;

    const-string v2, "3000"

    invoke-static {v2, v1}, Lcom/xiaopeng/musicradio/utils/aj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v1

    .line 98
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/xiaopeng/musicradio/model/music/i;->a(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string v0, "UsbService"

    const-string v1, "getUsbMusicInfos:null"

    .line 101
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public requestMusicDuration(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 53
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 56
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 58
    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {}, Lbrb;->a()Lbrb;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbrb;->a(Ljava/util/List;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public requestMusicInfos(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 39
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 44
    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {}, Lcom/xiaopeng/musicradio/usb/model/b;->a()Lcom/xiaopeng/musicradio/usb/model/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/usb/model/b;->a(Ljava/util/List;)V

    .line 47
    invoke-static {}, Lbrc;->a()Lbrc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbrc;->c(Ljava/util/List;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/service/UsbService;->requestMusicDuration(Ljava/util/List;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public startUsbMain()V
    .locals 2

    .line 32
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    const-string v1, "/usbview/usbmainview"

    .line 33
    invoke-virtual {v0, v1}, Lpp;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    return-void
.end method
