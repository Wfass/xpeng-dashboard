.class public Lcom/xiaopeng/musicradio/usblogic/single/UsbHasMountedDisk;
.super Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;
.source "UsbHasMountedDisk.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    exported = true
    label = "USB\u6a21\u5757\u57fa\u672c\u529f\u80fd"
    name = "logic://music.usb.server.main/usb_hasMountedUsbDisk"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/logic/bean/EmptyInputParams;",
        "Lcom/xiaopeng/musicradio/bean/common/BooleanParam;",
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
.method protected doSync(Lcom/xiaopeng/musicradio/logic/bean/EmptyInputParams;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 1

    .line 18
    new-instance p1, Lcom/xiaopeng/musicradio/bean/common/BooleanParam;

    invoke-static {}, Lcom/xiaopeng/musicradio/usb/model/b;->a()Lcom/xiaopeng/musicradio/usb/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/model/b;->b()Z

    move-result v0

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/bean/common/BooleanParam;-><init>(Z)V

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usblogic/single/UsbHasMountedDisk;->buildSuccessResp(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 13
    check-cast p1, Lcom/xiaopeng/musicradio/logic/bean/EmptyInputParams;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usblogic/single/UsbHasMountedDisk;->doSync(Lcom/xiaopeng/musicradio/logic/bean/EmptyInputParams;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method
