.class public Lcom/xiaopeng/factory/model/factorytest/hardwaretest/USBModel;
.super Ljava/lang/Object;
.source "USBModel.java"


# static fields
.field private static final BASE_DIR:Ljava/lang/String; = "/sys/bus/usb/devices/"

.field private static final DEVICE_PRODUCT_NAME:Ljava/lang/String; = "product"

.field public static final INDEX_USB_HUB_1_1:I = 0x1

.field public static final INDEX_USB_HUB_1_2:I = 0x2

.field public static final INDEX_USB_HUB_1_3:I = 0x3

.field public static final INDEX_USB_HUB_2_1:I = 0x4

.field private static final TAG:Ljava/lang/String; = "USBModel"

.field public static final TBOX_PRODUCT_ID:I = 0x435

.field public static final TBOX_VENDOR_ID:I = 0x2c7c

.field private static final USB_HUB_1_1:Ljava/lang/String; = "/sys/bus/usb/devices/1-1.3/"

.field private static final USB_HUB_1_2:Ljava/lang/String; = "/sys/bus/usb/devices/1-1.4/"

.field private static final USB_HUB_1_3:Ljava/lang/String; = "/sys/bus/usb/devices/1-1.2/"

.field private static final USB_HUB_2_1:Ljava/lang/String; = "/sys/bus/usb/devices/3-1/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private getPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "usbIndex"    # I

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "path":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 66
    :pswitch_0
    const-string v0, "/sys/bus/usb/devices/3-1/"

    .line 67
    goto :goto_0

    .line 63
    :pswitch_1
    const-string v0, "/sys/bus/usb/devices/1-1.2/"

    .line 64
    goto :goto_0

    .line 60
    :pswitch_2
    const-string v0, "/sys/bus/usb/devices/1-1.4/"

    .line 61
    goto :goto_0

    .line 57
    :pswitch_3
    const-string v0, "/sys/bus/usb/devices/1-1.3/"

    .line 58
    nop

    .line 71
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDeviceProductName(I)Ljava/lang/String;
    .locals 5
    .param p1, "usbIndex"    # I

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "productName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/USBModel;->getPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "product"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 39
    invoke-static {v1}, Lcom/xiaopeng/factory/utils/FileUtil;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    :cond_0
    const-string v2, "USBModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceProductName productName("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    return-object v0
.end method

.method public isInserted(I)Z
    .locals 5
    .param p1, "usbIndex"    # I

    .line 46
    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/USBModel;->getPath(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaopeng/factory/utils/FileUtil;->isExistFilePath(Ljava/lang/String;)Z

    move-result v1

    .line 49
    .local v1, "isinserted":Z
    const-string v2, "USBModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "isInserted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    return v1
.end method

.method public isTboxAttached()Z
    .locals 3

    .line 75
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x2c7c

    const/16 v2, 0x435

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/factory/utils/FileUtil;->isUsbDeviceAttached(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method
