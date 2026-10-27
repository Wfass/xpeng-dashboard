.class public Lcom/xiaopeng/musicradio/usblogic/single/UsbGetAlbumByName;
.super Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;
.source "UsbGetAlbumByName.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    exported = true
    label = "USB\u6a21\u5757\u57fa\u672c\u529f\u80fd"
    name = "logic://music.usb.server.main/usb_getAlbumByName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/bean/common/StringParam;",
        "Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;-><init>()V

    return-void
.end method


# virtual methods
.method protected doSync(Lcom/xiaopeng/musicradio/bean/common/StringParam;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 1

    .line 20
    invoke-static {}, Lcom/xiaopeng/musicradio/usb/model/b;->a()Lcom/xiaopeng/musicradio/usb/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/model/b;->j()Ljava/util/Map;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/StringParam;->getParam()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usblogic/single/UsbGetAlbumByName;->buildSuccessResp(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usblogic/single/UsbGetAlbumByName;->buildParamsFailResp()Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 15
    check-cast p1, Lcom/xiaopeng/musicradio/bean/common/StringParam;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usblogic/single/UsbGetAlbumByName;->doSync(Lcom/xiaopeng/musicradio/bean/common/StringParam;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method
