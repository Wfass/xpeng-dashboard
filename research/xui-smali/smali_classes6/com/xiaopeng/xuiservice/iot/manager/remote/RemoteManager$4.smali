.class Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;
.super Landroid/content/BroadcastReceiver;
.source "RemoteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onReceive$0(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 125
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 126
    const-string v0, "RemoteManager"

    const-string v1, "onBondChange: unbond!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    const-string v1, "device_status"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$400(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onReceive$1(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$600(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;)V

    .line 149
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 102
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 103
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "action":Ljava/lang/String;
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 107
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x3ce0ba4b

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_2

    const v4, 0x7e2cc189

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v6

    goto :goto_0

    :cond_2
    const-string v3, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v5

    :cond_3
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 135
    :pswitch_0
    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 136
    .local v2, "newState":I
    const-string v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 138
    .local v3, "oldState":I
    const-string v4, "RemoteManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive, hid connection state change, newState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", oldState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    if-eqz v2, :cond_5

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4

    .end local v2    # "newState":I
    .end local v3    # "oldState":I
    goto/16 :goto_2

    .line 144
    .restart local v2    # "newState":I
    .restart local v3    # "oldState":I
    :cond_4
    const-string v4, "RemoteManager"

    const-string v6, "onHidChange: connected! connect ble device..."

    invoke-static {v4, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    const-string v6, "device_status"

    const-string v7, "1"

    invoke-static {v4, v6, v7}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$400(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v4

    new-instance v6, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$4$69MfmUa4ZFTuRAwu_qkVj12fq9c;

    invoke-direct {v6, p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$4$69MfmUa4ZFTuRAwu_qkVj12fq9c;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;)V

    invoke-virtual {v4, v6}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 150
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v4, v5}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$502(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Z)Z

    .line 151
    goto/16 :goto_2

    .line 153
    :cond_5
    const-string v4, "RemoteManager"

    const-string v5, "onHidChange: disconnected"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$500(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 156
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    const-string v5, "device_status"

    const-string v6, "0"

    invoke-static {v4, v5, v6}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$400(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "newState":I
    .end local v3    # "oldState":I
    goto :goto_2

    .line 109
    :pswitch_1
    const-string v2, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 113
    .local v2, "state":I
    const-string v3, "RemoteManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive, bond state change: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/16 v3, 0xa

    if-eq v2, v3, :cond_7

    const/16 v3, 0xc

    if-eq v2, v3, :cond_6

    goto :goto_1

    .line 117
    :cond_6
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Landroid/bluetooth/BluetoothHidHost;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 118
    const-string v3, "RemoteManager"

    const-string v4, "onBondChange: bonded! connect hid profile..."

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Landroid/bluetooth/BluetoothHidHost;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothHidHost;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 124
    :cond_7
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v3

    new-instance v4, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$4$AOqwNtVNdRl2DE05Vl9duJHePTo;

    invoke-direct {v4, p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$4$AOqwNtVNdRl2DE05Vl9duJHePTo;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;Landroid/bluetooth/BluetoothDevice;)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    :cond_8
    :goto_1
    nop

    .line 162
    .end local v2    # "state":I
    :cond_9
    :goto_2
    return-void

    .line 105
    :cond_a
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
