.class Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;
.super Ljava/lang/Object;
.source "XpAssistManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$1;

    .line 64
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;)V

    return-void
.end method

.method public static synthetic lambda$onAdapterStatusChanged$1(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;)Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    move-result-object v0

    const-string v1, "XpAssistManager"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->unRegisterCallback(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->access$800(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;)V

    .line 150
    return-void
.end method

.method public static synthetic lambda$onConnectionStateChange$0(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->access$600(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;)V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->access$800(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;)V

    .line 80
    return-void
.end method


# virtual methods
.method public onAdapterStatusChanged(I)V
    .locals 3
    .param p1, "status"    # I

    .line 137
    const-string v0, "XpAssistManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdapterStatusChanged,status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->access$700(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 147
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/-$$Lambda$XpAssistManager$BluetoothCallback$mGzP025S0eb2Rihg0XilJHMmLzQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/-$$Lambda$XpAssistManager$BluetoothCallback$mGzP025S0eb2Rihg0XilJHMmLzQ;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->access$102(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->access$600(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;)V

    .line 143
    nop

    .line 157
    :cond_2
    :goto_0
    return-void
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 5
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 108
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 109
    .local v0, "data":[B
    const-string v1, "XpAssistManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCharacteristicChanged,data len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->dataAssemble([B)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "validData":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 113
    const-string v2, "XpAssistManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get valid data,len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->reset()V

    .line 115
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    const-string v3, "validData"

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "status"    # I

    .line 101
    const-string v0, "XpAssistManager"

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

    .line 103
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "status"    # I

    .line 121
    const-string v0, "XpAssistManager"

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

    .line 123
    return-void
.end method

.method public onConnectionStateChange(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "newState"    # I

    .line 73
    const-string v0, "XpAssistManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionStateChange, newState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const/4 v2, 0x2

    if-ne v2, p2, :cond_0

    const-string v2, "connected"

    goto :goto_0

    :cond_0
    const-string v2, "disconnected"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    if-nez p2, :cond_1

    .line 76
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/-$$Lambda$XpAssistManager$BluetoothCallback$jd8vNLrUDZNKtge2hOTMCHtPIsQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/-$$Lambda$XpAssistManager$BluetoothCallback$jd8vNLrUDZNKtge2hOTMCHtPIsQ;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 81
    :cond_1
    nop

    .line 84
    :goto_1
    return-void
.end method

.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .line 68
    const-string v0, "XpAssistManager"

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

    .line 69
    return-void
.end method

.method public onManagerInit()V
    .locals 0

    .line 162
    return-void
.end method

.method public onMtuChanged(II)V
    .locals 3
    .param p1, "mtu"    # I
    .param p2, "status"    # I

    .line 127
    const-string v0, "XpAssistManager"

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

    .line 128
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->access$402(I)I

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->access$400()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->access$502(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;I)I

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->access$500(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;)I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->access$502(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;I)I

    .line 133
    :cond_0
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .line 88
    const-string v0, "XpAssistManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServicesDiscovered,status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    if-nez p2, :cond_0

    const-string v2, "success"

    goto :goto_0

    :cond_0
    const-string v2, "fail"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    if-nez p2, :cond_1

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;)Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->requestMtu(Ljava/lang/String;I)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    const-string v1, "100"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->access$102(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;Landroid/bluetooth/BluetoothGatt;)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    const-string v1, "connect_state"

    const-string v2, "100"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_1
    return-void
.end method
