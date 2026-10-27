.class public Lcom/xiaopeng/musicradio/usblogic/single/UsbGetSinger;
.super Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;
.source "UsbGetSinger.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    exported = true
    label = "USB\u6a21\u5757\u57fa\u672c\u529f\u80fd"
    name = "logic://music.usb.server.main/usb_getUsbSinger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/bean/common/StringParam;",
        "Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;-><init>()V

    return-void
.end method


# virtual methods
.method protected doSync(Lcom/xiaopeng/musicradio/bean/common/StringParam;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 1

    .line 18
    invoke-static {}, Lcom/xiaopeng/musicradio/usb/model/b;->a()Lcom/xiaopeng/musicradio/usb/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/model/b;->i()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/StringParam;->getParam()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;

    .line 19
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usblogic/single/UsbGetSinger;->buildSuccessResp(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 13
    check-cast p1, Lcom/xiaopeng/musicradio/bean/common/StringParam;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usblogic/single/UsbGetSinger;->doSync(Lcom/xiaopeng/musicradio/bean/common/StringParam;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method
