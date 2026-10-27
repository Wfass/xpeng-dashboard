.class public Lcom/xiaopeng/musicradio/usblogic/single/SingleAlbumRequestManager;
.super Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;
.source "SingleAlbumRequestManager.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    exported = true
    label = "\u83b7\u53d6\u4e13\u8f91\u7684\u8be6\u7ec6\u4fe1\u606f"
    name = "logic://music.usb.album.main/album_single"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;",
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
.method protected doSync(Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 1

    .line 17
    invoke-static {}, Lbqz;->a()Lbqz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbqz;->d(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usblogic/single/SingleAlbumRequestManager;->buildCommonSuccessResp()Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 11
    check-cast p1, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usblogic/single/SingleAlbumRequestManager;->doSync(Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method
