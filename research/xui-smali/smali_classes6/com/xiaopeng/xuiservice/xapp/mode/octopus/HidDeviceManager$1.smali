.class Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "HidDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    .line 91
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 92
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v2, "HidDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HidDeviceReceiver receive action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 94
    .local v2, "newState":I
    const-string v4, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 95
    .local v3, "oldState":I
    if-nez v1, :cond_0

    .line 96
    return-void

    .line 98
    :cond_0
    const-string v4, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 99
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v4

    .line 100
    .local v4, "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v5

    const/16 v6, 0x500

    if-ne v5, v6, :cond_1

    .line 101
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v5

    const/16 v6, 0x580

    if-eq v5, v6, :cond_1

    .line 102
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;

    invoke-static {v5, v3, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;II)V

    .line 104
    :cond_1
    const-string v5, "HidDeviceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hid device oldState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " newState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .end local v4    # "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    :cond_2
    return-void
.end method
