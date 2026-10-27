.class public Lcom/xiaopeng/commonfunc/model/test/UsbDeviceTest;
.super Ljava/lang/Object;
.source "UsbDeviceTest.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "UsbDeviceTest"

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/UsbDeviceTest;->TAG:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/UsbDeviceTest;->mContext:Landroid/content/Context;

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/UsbDeviceTest;->mContext:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/UsbDeviceTest;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 22
    return-void
.end method


# virtual methods
.method public getDeviceList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/UsbDeviceTest;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
