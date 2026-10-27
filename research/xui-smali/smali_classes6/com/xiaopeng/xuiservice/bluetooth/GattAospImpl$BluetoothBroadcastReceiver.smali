.class Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BluetoothBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GattAospImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)V
    .locals 0

    .line 1448
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BluetoothBroadcastReceiver;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;

    .line 1448
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BluetoothBroadcastReceiver;-><init>(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1451
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1453
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5b36f014

    const/4 v3, -0x1

    if-eq v1, v2, :cond_2

    const v2, 0x5c2e3976

    if-eq v1, v2, :cond_1

    const v2, 0x6278b88e

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.bluetooth.adapter.action.BLE_ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const-string v1, "android.bluetooth.adapter.action.BLE_ACL_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v3

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 1475
    :pswitch_0
    const-string v1, "GattAospImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bluetooth broadcast,intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    goto :goto_3

    .line 1455
    :pswitch_1
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1457
    .local v1, "state":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BluetoothBroadcastReceiver;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$900(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x72

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1459
    const/16 v2, 0xa

    if-eq v1, v2, :cond_5

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4

    .end local v1    # "state":I
    goto :goto_2

    .line 1461
    .restart local v1    # "state":I
    :cond_4
    const-string v2, "GattAospImpl"

    const-string v3, "##adapter state->on"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BluetoothBroadcastReceiver;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$1002(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;J)J

    .line 1463
    goto :goto_2

    .line 1465
    :cond_5
    const-string v2, "GattAospImpl"

    const-string v3, "##adapter state->off"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BluetoothBroadcastReceiver;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$2302(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/bluetooth/le/BluetoothLeScanner;

    .line 1468
    nop

    .line 1472
    .end local v1    # "state":I
    :goto_2
    nop

    .line 1480
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
