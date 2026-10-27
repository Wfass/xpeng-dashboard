.class Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;
.super Ljava/lang/Object;
.source "XPengBleManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothCallback"
.end annotation


# instance fields
.field private mXPengBleManager:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)V
    .locals 0
    .param p2, "manager"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->mXPengBleManager:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    .line 110
    return-void
.end method

.method public static synthetic lambda$onAdapterStatusChanged$0(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;)V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->unRegisterCallback(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->access$800(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)V

    .line 204
    return-void
.end method

.method public static synthetic lambda$onManagerInit$1(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->unRegisterCallback(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public static synthetic lambda$onManagerInit$2(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->access$800(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)V

    .line 224
    return-void
.end method


# virtual methods
.method public onAdapterStatusChanged(I)V
    .locals 3
    .param p1, "status"    # I

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdapterStatusChanged,status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->access$600(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 201
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$XPengBleManager$BluetoothCallback$56eJpgNPQnYCwh1SHMHVmgD92TQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$XPengBleManager$BluetoothCallback$56eJpgNPQnYCwh1SHMHVmgD92TQ;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    const-string v1, "0"

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mConnectState:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    const-string v1, "connect_state"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->access$500(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)V

    .line 197
    nop

    .line 211
    :cond_2
    :goto_0
    return-void
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 5
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 168
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 169
    .local v0, "data":[B
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCharacteristicChanged,data len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->mXPengBleManager:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->onNotify([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    goto :goto_0

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNotify e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "status"    # I

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicRead,ch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "status"    # I

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicWrite, ch=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public onConnectionStateChange(II)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "newState"    # I

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionStateChange, newState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const/4 v2, 0x2

    if-ne v2, p2, :cond_0

    const-string v3, "connected"

    goto :goto_0

    :cond_0
    const-string v3, "disconnected"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "bChanged":Z
    if-eqz p2, :cond_1

    if-eq p2, v2, :cond_1

    goto :goto_2

    .line 125
    :cond_1
    const/4 v1, 0x0

    .line 126
    .local v1, "curVal":Ljava/lang/String;
    if-ne v2, p2, :cond_2

    .line 127
    const-string v1, "1"

    goto :goto_1

    .line 129
    :cond_2
    const-string v1, "0"

    .line 130
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)V

    .line 132
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mConnectState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 133
    const/4 v0, 0x1

    .line 134
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    iput-object v1, v2, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mConnectState:Ljava/lang/String;

    .line 136
    :cond_3
    if-eqz v0, :cond_4

    .line 137
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    const-string v3, "connect_state"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v1    # "curVal":Ljava/lang/String;
    :cond_4
    nop

    .line 143
    :goto_2
    return-void
.end method

.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLeScan, addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",rssi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public onManagerInit()V
    .locals 4

    .line 215
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$XPengBleManager$BluetoothCallback$ahV7XY6VqIT71YORc7NVweTri40;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$XPengBleManager$BluetoothCallback$ahV7XY6VqIT71YORc7NVweTri40;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->access$600(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device is null,get again"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->access$700(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)V

    .line 222
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$XPengBleManager$BluetoothCallback$vdN1ptcLVB6L_mtZkHp8CpkgL6A;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$XPengBleManager$BluetoothCallback$vdN1ptcLVB6L_mtZkHp8CpkgL6A;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    return-void
.end method

.method public onMtuChanged(II)V
    .locals 3
    .param p1, "mtu"    # I
    .param p2, "status"    # I

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMtuChanged, mtu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServicesDiscovered,status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    if-nez p2, :cond_0

    const-string v2, "success"

    goto :goto_0

    :cond_0
    const-string v2, "fail"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    if-nez p2, :cond_2

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->requestMtu(Ljava/lang/String;I)V

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    const-string v1, "100"

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->mConnectState:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->access$400(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;Landroid/bluetooth/BluetoothGatt;)V

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    const-string v1, "connect_state"

    const-string v2, "100"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_2
    return-void
.end method
