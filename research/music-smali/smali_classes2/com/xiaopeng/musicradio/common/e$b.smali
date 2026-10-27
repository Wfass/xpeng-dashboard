.class Lcom/xiaopeng/musicradio/common/e$b;
.super Landroid/content/BroadcastReceiver;
.source "ExternalStorageMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/common/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/common/e;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/musicradio/common/e;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/xiaopeng/musicradio/common/e$b;->a:Lcom/xiaopeng/musicradio/common/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/common/e;Lcom/xiaopeng/musicradio/common/e$1;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/common/e$b;-><init>(Lcom/xiaopeng/musicradio/common/e;)V

    return-void
.end method

.method private a(Landroid/hardware/usb/UsbDevice;)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 193
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 195
    invoke-virtual {p1, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUsbDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ExternalStorageMonitor"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ExternalStorageMonitor"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "device"

    .line 150
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 151
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/common/e$b;->a(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 154
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x7e02a835

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v4, v5, :cond_3

    const v5, -0x5fdc9a67

    if-eq v4, v5, :cond_2

    const v5, -0x54155685

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v3, v7

    goto :goto_0

    :cond_2
    const-string v4, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v3, v8

    goto :goto_0

    :cond_3
    const-string v4, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v3, v6

    :cond_4
    :goto_0
    if-eqz v3, :cond_c

    if-eq v3, v8, :cond_a

    if-eq v3, v7, :cond_5

    goto/16 :goto_1

    :cond_5
    const-string v2, "android.os.storage.extra.VOLUME_STATE"

    .line 171
    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.os.storage.extra.FS_UUID"

    .line 172
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v7, :cond_6

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/e$b;->a:Lcom/xiaopeng/musicradio/common/e;

    invoke-static {v0, p2}, Lcom/xiaopeng/musicradio/common/e;->a(Lcom/xiaopeng/musicradio/common/e;Ljava/lang/String;)V

    :cond_6
    const/4 v0, 0x5

    if-ne v2, v0, :cond_7

    .line 177
    iget-object p1, p0, Lcom/xiaopeng/musicradio/common/e$b;->a:Lcom/xiaopeng/musicradio/common/e;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/common/e;->b(Lcom/xiaopeng/musicradio/common/e;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const/4 p2, 0x6

    if-ne v2, p2, :cond_8

    .line 179
    iget-object p1, p0, Lcom/xiaopeng/musicradio/common/e$b;->a:Lcom/xiaopeng/musicradio/common/e;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/common/e;->b(Lcom/xiaopeng/musicradio/common/e;)V

    goto :goto_1

    :cond_8
    const/16 p2, 0x8

    if-ne v2, p2, :cond_e

    .line 181
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/common/e$b;->a(Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 184
    :cond_9
    iget-object p1, p0, Lcom/xiaopeng/musicradio/common/e$b;->a:Lcom/xiaopeng/musicradio/common/e;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/common/e;->a(Lcom/xiaopeng/musicradio/common/e;)V

    goto :goto_1

    :cond_a
    const-string p2, "U\u76d8\u62d4\u51fa"

    .line 164
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/common/e$b;->a(Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 168
    :cond_b
    iget-object p1, p0, Lcom/xiaopeng/musicradio/common/e$b;->a:Lcom/xiaopeng/musicradio/common/e;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/common/e;->a(Lcom/xiaopeng/musicradio/common/e;)V

    goto :goto_1

    :cond_c
    const-string p1, "U\u76d8\u63d2\u5165 "

    .line 156
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result p1

    and-int/2addr p1, v8

    if-nez p1, :cond_d

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/musicradio/common/e$b;->a:Lcom/xiaopeng/musicradio/common/e;

    invoke-static {p1, v6}, Lcom/xiaopeng/musicradio/common/e;->a(Lcom/xiaopeng/musicradio/common/e;Z)V

    goto :goto_1

    .line 160
    :cond_d
    iget-object p1, p0, Lcom/xiaopeng/musicradio/common/e$b;->a:Lcom/xiaopeng/musicradio/common/e;

    invoke-static {p1, v8}, Lcom/xiaopeng/musicradio/common/e;->a(Lcom/xiaopeng/musicradio/common/e;Z)V

    :cond_e
    :goto_1
    return-void
.end method
