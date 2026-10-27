.class public Lcom/xiaopeng/musicradio/usblogic/single/UsbGetTreeByPath;
.super Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;
.source "UsbGetTreeByPath.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    exported = true
    label = "USB\u6a21\u5757\u57fa\u672c\u529f\u80fd"
    name = "logic://music.usb.server.main/usb_getTreeFromPath"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/bean/common/StringParam;",
        "Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;",
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

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/StringParam;->getParam()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-static {}, Lcom/xiaopeng/musicradio/usb/model/b;->a()Lcom/xiaopeng/musicradio/usb/model/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/StringParam;->getParam()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/usb/model/b;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usblogic/single/UsbGetTreeByPath;->buildSuccessResp(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usblogic/single/UsbGetTreeByPath;->buildCommonSuccessResp()Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 13
    check-cast p1, Lcom/xiaopeng/musicradio/bean/common/StringParam;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usblogic/single/UsbGetTreeByPath;->doSync(Lcom/xiaopeng/musicradio/bean/common/StringParam;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method
