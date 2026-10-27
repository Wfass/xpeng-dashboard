.class public Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;
.super Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;
.source "GattConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;
    }
.end annotation


# static fields
.field private static final TAG_GENERAL_ENABLE_NOTIFICATION:I = 0xe

.field private static final TAG_GENERAL_READ:I = 0xb

.field private static final TAG_GENERAL_READ_DESCRIPTOR:I = 0xd

.field private static final TAG_GENERAL_WRITE:I = 0xc

.field private static final TAG_OTA_ENABLE_NOTIFICATION:I = 0xa


# instance fields
.field private mConnectionCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .locals 3
    .param p1, "serviceUUID"    # Ljava/util/UUID;

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->mServices:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 133
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    return-object v1

    .line 136
    .end local v1    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_0
    goto :goto_0

    .line 139
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public clearAll(Z)V
    .locals 1
    .param p1, "disconnect"    # Z

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->mConnectionCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->clear()V

    .line 91
    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->forceDisconnect()V

    .line 94
    :cond_0
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 33
    invoke-super {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->connect(Landroid/bluetooth/BluetoothDevice;)V

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->mConnectionCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->mConnectionCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-interface {v0, v1, p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;->onConnectionStateChange(ILcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;I)V

    .line 38
    :cond_0
    return-void
.end method

.method public enableNotification(Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 6
    .param p1, "serviceUUID"    # Ljava/util/UUID;
    .param p2, "characteristicUUID"    # Ljava/util/UUID;

    .line 103
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->newInstance()Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;

    move-result-object v0

    .line 105
    .local v0, "cmd":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;
    iput-object p1, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->serviceUUID:Ljava/util/UUID;

    .line 106
    iput-object p2, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->characteristicUUID:Ljava/util/UUID;

    .line 107
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->ENABLE_NOTIFY:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->type:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    .line 108
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->tag:Ljava/lang/Object;

    .line 109
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->sendCommand(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;)Z

    .line 111
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 113
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v2, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {v2, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    .line 117
    .local v3, "gattCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    sget-object v4, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/UuidInfo;->CFG_DESCRIPTOR_UUID:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 118
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->newInstance()Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;

    move-result-object v4

    .line 120
    .local v4, "cccCmd":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;
    iput-object p1, v4, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->serviceUUID:Ljava/util/UUID;

    .line 121
    iput-object p2, v4, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->characteristicUUID:Ljava/util/UUID;

    .line 122
    sget-object v5, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/UuidInfo;->CFG_DESCRIPTOR_UUID:Ljava/util/UUID;

    iput-object v5, v4, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->descriptorUUID:Ljava/util/UUID;

    .line 123
    sget-object v5, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->WRITE_DESCRIPTOR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    iput-object v5, v4, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->type:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    .line 124
    const/4 v5, 0x2

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    iput-object v5, v4, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->data:[B

    .line 126
    invoke-virtual {p0, v1, v4}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->sendCommand(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;)Z

    .line 128
    .end local v4    # "cccCmd":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;
    :cond_1
    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method

.method public isNotificationEnable(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 2
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 97
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->generateHashKey(Ljava/util/UUID;Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->mNotificationCallbacks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected onConnect()V
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->onConnect()V

    .line 43
    return-void
.end method

.method protected onDisconnect(I)V
    .locals 2
    .param p1, "statusCode"    # I

    .line 47
    invoke-super {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->onDisconnect(I)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->isConnectWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->connect()V

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->mConnectionCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->mConnectionCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;->onConnectionStateChange(ILcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;I)V

    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "mtu"    # I
    .param p3, "status"    # I

    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    .line 78
    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->mConnectionCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->mConnectionCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;

    invoke-interface {v0, p2, p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;->onMtuChanged(ILcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;)V

    .line 81
    :cond_0
    return-void
.end method

.method protected onNotify([BLjava/util/UUID;Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "serviceUUID"    # Ljava/util/UUID;
    .param p3, "characteristicUUID"    # Ljava/util/UUID;
    .param p4, "tag"    # Ljava/lang/Object;

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->onNotify([BLjava/util/UUID;Ljava/util/UUID;Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->mConnectionCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->mConnectionCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;

    invoke-interface {v0, p1, p2, p3, p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;->onNotify([BLjava/util/UUID;Ljava/util/UUID;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;)V

    .line 72
    :cond_0
    return-void
.end method

.method protected onServicesDiscovered(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    invoke-super {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->onServicesDiscovered(Ljava/util/List;)V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->mConnectionCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->mConnectionCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;->onConnectionStateChange(ILcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;I)V

    .line 63
    :cond_0
    return-void
.end method

.method public setConnectionCallback(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->mConnectionCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;

    .line 85
    return-void
.end method
