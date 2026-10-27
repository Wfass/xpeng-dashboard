.class public Lcom/xiaopeng/musicradio/usblogic/single/SingleSingerRequestManager;
.super Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;
.source "SingleSingerRequestManager.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    exported = true
    label = "\u83b7\u53d6\u5f53\u524d\u97f3\u4e50\u7684\u8be6\u7ec6\u4fe1\u606f"
    name = "logic://music.usb.server.main/singer_info_single"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;",
        "Lcom/xiaopeng/aicabin/DataResp;",
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
.method protected doSync(Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 1

    .line 18
    invoke-static {}, Lbrf;->a()Lbrf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbrf;->d(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usblogic/single/SingleSingerRequestManager;->buildCommonSuccessResp()Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 12
    check-cast p1, Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usblogic/single/SingleSingerRequestManager;->doSync(Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method
