.class Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;
.super Ljava/lang/Object;
.source "ChildSaftySeatManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$1;

    .line 86
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)V

    return-void
.end method

.method public static synthetic lambda$onAdapterStatusChanged$0(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->access$1000(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    move-result-object v0

    const-string v1, "ChildSaftySeatManager"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->unRegisterCallback(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->access$900(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)V

    .line 177
    return-void
.end method

.method public static synthetic lambda$onManagerInit$1(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->access$1000(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    move-result-object v0

    const-string v1, "ChildSaftySeatManager"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->unRegisterCallback(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public static synthetic lambda$onManagerInit$2(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->access$900(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)V

    .line 197
    return-void
.end method


# virtual methods
.method public onAdapterStatusChanged(I)V
    .locals 3
    .param p1, "status"    # I

    .line 163
    const-string v0, "ChildSaftySeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdapterStatusChanged,status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->access$700(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 174
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSaftySeatManager$BluetoothCallback$fkRSXu_gMYgj8xp4fsPc7cYY2Bk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSaftySeatManager$BluetoothCallback$fkRSXu_gMYgj8xp4fsPc7cYY2Bk;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->access$202(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    const-string v1, "connect_state"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->access$600(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)V

    .line 170
    nop

    .line 184
    :cond_2
    :goto_0
    return-void
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 5
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 141
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 142
    .local v0, "data":[B
    const-string v1, "ChildSaftySeatManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCharacteristicChanged,data len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->access$500(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ChildSaftySeatManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNotify e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "status"    # I

    .line 134
    const-string v0, "ChildSaftySeatManager"

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

    .line 136
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "status"    # I

    .line 152
    const-string v0, "ChildSaftySeatManager"

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

    .line 154
    return-void
.end method

.method public onConnectionStateChange(II)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "newState"    # I

    .line 95
    const-string v0, "ChildSaftySeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionStateChange, newState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
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

    .line 95
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "bChanged":Z
    if-eqz p2, :cond_1

    if-eq p2, v2, :cond_1

    goto :goto_2

    .line 101
    :cond_1
    const/4 v1, 0x0

    .line 102
    .local v1, "curVal":Ljava/lang/String;
    if-ne v2, p2, :cond_2

    .line 103
    const-string v1, "1"

    goto :goto_1

    .line 105
    :cond_2
    const-string v1, "0"

    .line 106
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)V

    .line 108
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 109
    const/4 v0, 0x1

    .line 110
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->access$202(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    :cond_3
    if-eqz v0, :cond_4

    .line 113
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    const-string v3, "connect_state"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v1    # "curVal":Ljava/lang/String;
    :cond_4
    nop

    .line 119
    :goto_2
    return-void
.end method

.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .line 90
    const-string v0, "ChildSaftySeatManager"

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

    .line 91
    return-void
.end method

.method public onManagerInit()V
    .locals 4

    .line 188
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSaftySeatManager$BluetoothCallback$vPibKNRNHmYqPXMI6Fz90HCywno;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSaftySeatManager$BluetoothCallback$vPibKNRNHmYqPXMI6Fz90HCywno;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->access$700(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 192
    const-string v0, "ChildSaftySeatManager"

    const-string v1, "device is null,get again"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->access$800(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;)V

    .line 195
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSaftySeatManager$BluetoothCallback$mbwLvZqDNUKURqn5nGnaKs6MFF8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSaftySeatManager$BluetoothCallback$mbwLvZqDNUKURqn5nGnaKs6MFF8;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 198
    return-void
.end method

.method public onMtuChanged(II)V
    .locals 3
    .param p1, "mtu"    # I
    .param p2, "status"    # I

    .line 158
    const-string v0, "ChildSaftySeatManager"

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

    .line 159
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .line 123
    const-string v0, "ChildSaftySeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServicesDiscovered,status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    if-nez p2, :cond_0

    const-string v2, "success"

    goto :goto_0

    :cond_0
    const-string v2, "fail"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    if-nez p2, :cond_1

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    const-string v1, "100"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->access$202(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->access$400(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;Landroid/bluetooth/BluetoothGatt;)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    const-string v1, "connect_state"

    const-string v2, "100"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_1
    return-void
.end method
