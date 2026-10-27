.class Lcom/xiaopeng/lib_xpbt/BaseManager$BluetoothBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib_xpbt/BaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib_xpbt/BaseManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib_xpbt/BaseManager;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/BaseManager$BluetoothBroadcastReceiver;->this$0:Lcom/xiaopeng/lib_xpbt/BaseManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib_xpbt/BaseManager;Lcom/xiaopeng/lib_xpbt/BaseManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib_xpbt/BaseManager;
    .param p2, "x1"    # Lcom/xiaopeng/lib_xpbt/BaseManager$1;

    .line 35
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/BaseManager$BluetoothBroadcastReceiver;-><init>(Lcom/xiaopeng/lib_xpbt/BaseManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    .line 40
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 42
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/BaseManager$BluetoothBroadcastReceiver;->this$0:Lcom/xiaopeng/lib_xpbt/BaseManager;

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/BaseManager;->access$100(Lcom/xiaopeng/lib_xpbt/BaseManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/lib_xpbt/CallBackHandler;

    .line 43
    .local v2, "handler":Lcom/xiaopeng/lib_xpbt/CallBackHandler;
    new-instance v3, Lcom/xiaopeng/lib_xpbt/XpBtDevice;

    invoke-direct {v3}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;-><init>()V

    .line 44
    .local v3, "xpBtDevice":Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->setAddress(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->setName(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 48
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->setCategory(I)V

    .line 51
    :cond_0
    if-eqz v2, :cond_1

    .line 52
    invoke-interface {v2, p1, p2, v3}, Lcom/xiaopeng/lib_xpbt/CallBackHandler;->onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/xiaopeng/lib_xpbt/XpBtDevice;)V

    .line 54
    :cond_1
    return-void
.end method
