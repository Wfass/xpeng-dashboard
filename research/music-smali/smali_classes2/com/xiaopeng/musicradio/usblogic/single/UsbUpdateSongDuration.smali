.class public Lcom/xiaopeng/musicradio/usblogic/single/UsbUpdateSongDuration;
.super Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;
.source "UsbUpdateSongDuration.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    exported = true
    label = "USB\u6a21\u5757\u57fa\u672c\u529f\u80fd"
    name = "logic://music.usb.server.main/usb_updateSongDuration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
        "Lcom/xiaopeng/aicabin/DataResp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;-><init>()V

    return-void
.end method


# virtual methods
.method protected doSync(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 1

    .line 17
    invoke-static {}, Lcom/xiaopeng/musicradio/usb/model/b;->a()Lcom/xiaopeng/musicradio/usb/model/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/usb/model/b;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 18
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usblogic/single/UsbUpdateSongDuration;->buildCommonSuccessResp()Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 12
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usblogic/single/UsbUpdateSongDuration;->doSync(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method
