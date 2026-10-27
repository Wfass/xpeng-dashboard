.class public Lcom/xiaopeng/musicradio/usblogic/single/UsbUpdateSingerLogo;
.super Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;
.source "UsbUpdateSingerLogo.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    exported = true
    label = "USB\u6a21\u5757\u57fa\u672c\u529f\u80fd"
    name = "logic://music.usb.server.main/usb_updateSingerLogo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic<",
        "Ljava/util/ArrayList<",
        "Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;",
        ">;",
        "Lcom/xiaopeng/aicabin/DataResp;",
        ">;"
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
.method protected bridge synthetic doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 16
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usblogic/single/UsbUpdateSingerLogo;->doSync(Ljava/util/ArrayList;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method protected doSync(Ljava/util/ArrayList;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;",
            ">;)",
            "Lcom/xiaopeng/aicabin/DataResp;"
        }
    .end annotation

    .line 21
    invoke-static {}, Lcom/xiaopeng/musicradio/usb/model/b;->a()Lcom/xiaopeng/musicradio/usb/model/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/usb/model/b;->c(Ljava/util/List;)V

    .line 22
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usblogic/single/UsbUpdateSingerLogo;->buildCommonSuccessResp()Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method
