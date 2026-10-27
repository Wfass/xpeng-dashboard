.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "USBTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$2;->HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 88
    const-string p2, "USBTestActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    const-string p2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$2;->HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)V

    .line 92
    :cond_0
    return-void
.end method
