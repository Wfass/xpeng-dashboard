.class public Lcom/xiaopeng/musicradio/usblogic/single/UsbGetMusicInfoList;
.super Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;
.source "UsbGetMusicInfoList.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    exported = true
    label = "USB\u6a21\u5757\u57fa\u672c\u529f\u80fd"
    name = "logic://music.usb.server.main/usb_getUsbMusicInfos"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/logic/bean/EmptyInputParams;",
        "Ljava/util/ArrayList<",
        "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;-><init>()V

    return-void
.end method


# virtual methods
.method protected doSync(Lcom/xiaopeng/musicradio/logic/bean/EmptyInputParams;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 1

    .line 20
    invoke-static {}, Lcom/xiaopeng/musicradio/usb/model/b;->a()Lcom/xiaopeng/musicradio/usb/model/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/model/b;->g()Ljava/util/List;

    move-result-object p1

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usblogic/single/UsbGetMusicInfoList;->buildSuccessResp(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 16
    check-cast p1, Lcom/xiaopeng/musicradio/logic/bean/EmptyInputParams;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usblogic/single/UsbGetMusicInfoList;->doSync(Lcom/xiaopeng/musicradio/logic/bean/EmptyInputParams;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method
