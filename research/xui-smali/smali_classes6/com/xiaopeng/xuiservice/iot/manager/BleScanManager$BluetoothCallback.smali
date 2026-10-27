.class Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BluetoothCallback;
.super Ljava/lang/Object;
.source "BleScanManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$1;

    .line 66
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BluetoothCallback;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;)V

    return-void
.end method


# virtual methods
.method public onAdapterStatusChanged(I)V
    .locals 3
    .param p1, "status"    # I

    .line 144
    const-string v0, "BleScanManager##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdapterStatusChanged, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    goto :goto_0

    .line 148
    :cond_1
    nop

    .line 154
    :goto_0
    return-void
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 136
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "status"    # I

    .line 132
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "status"    # I

    .line 140
    return-void
.end method

.method public onConnectionStateChange(II)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "newState"    # I

    .line 124
    return-void
.end method

.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 17
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    move-object/from16 v1, p0

    .line 68
    const/4 v2, 0x0

    .line 69
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 70
    .local v3, "address":Ljava/lang/String;
    const/4 v4, 0x0

    .line 71
    .local v4, "manufacturerId":I
    const-string v0, "null"

    move-object v5, v0

    .line 73
    .local v5, "manufactureData":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 74
    invoke-static/range {p3 .. p3}, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->parseFromBytes([B)Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;

    move-result-object v0

    .line 75
    .local v0, "record":Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->getManufacturerId()I

    move-result v6

    move v4, v6

    .line 77
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->getManufacturerSpecificData(I)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    move-object v5, v6

    .line 80
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 83
    .end local v0    # "record":Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 84
    :goto_0
    if-nez v2, :cond_1

    .line 85
    const-string v2, "unknown_device_name"

    .line 87
    :cond_1
    const-string v0, "BleScanManager##"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onLeScan,device addr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",rssi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",manufacturerId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",manufactureData="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mDeviceScanListener:Lcom/xiaopeng/xuiservice/iot/manager/IDeviceScanListener;

    if-eqz v0, :cond_4

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 92
    .local v8, "curTick":J
    new-instance v0, Lcom/xiaopeng/xuimanager/iot/devices/ScanDevice;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/iot/devices/ScanDevice;-><init>()V

    move-object v6, v0

    .line 93
    .local v6, "scanDevice":Lcom/xiaopeng/xuimanager/iot/devices/ScanDevice;
    invoke-virtual {v6, v2}, Lcom/xiaopeng/xuimanager/iot/devices/ScanDevice;->setDeviceName(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 94
    invoke-virtual {v6, v3}, Lcom/xiaopeng/xuimanager/iot/devices/ScanDevice;->setDeviceId(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v10, v0

    .line 96
    .local v10, "propMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "real_type"

    const-string v11, "type_bluetooth_ble"

    invoke-interface {v10, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v0, "bt_rssi"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v0, "ble_manufacturer_id"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v0, "ble_manufacturer_data"

    invoke-interface {v10, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {v6, v10}, Lcom/xiaopeng/xuimanager/iot/devices/ScanDevice;->setPropertyMap(Ljava/util/Map;)Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 101
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->access$100()Ljava/util/List;

    move-result-object v11

    monitor-enter v11

    .line 102
    :try_start_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;

    iget-wide v11, v0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mLastNotifyTickMs:J

    sub-long v11, v8, v11

    .line 105
    .local v11, "delta":J
    const-wide/16 v13, 0x3e8

    cmp-long v0, v11, v13

    const/4 v15, 0x1

    if-ltz v0, :cond_3

    .line 106
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;

    iput-wide v8, v0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mLastNotifyTickMs:J

    .line 107
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 108
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->access$100()Ljava/util/List;

    move-result-object v16

    monitor-enter v16

    .line 109
    :try_start_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mDeviceScanListener:Lcom/xiaopeng/xuiservice/iot/manager/IDeviceScanListener;

    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->access$100()Ljava/util/List;

    move-result-object v13

    iget-object v14, v1, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;

    invoke-static {v14}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;)I

    move-result v14

    invoke-interface {v0, v13, v14}, Lcom/xiaopeng/xuiservice/iot/manager/IDeviceScanListener;->onScan(Ljava/util/List;I)V

    .line 111
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    :cond_2
    monitor-exit v16

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 115
    :cond_3
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 116
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v15, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .end local v6    # "scanDevice":Lcom/xiaopeng/xuimanager/iot/devices/ScanDevice;
    .end local v8    # "curTick":J
    .end local v10    # "propMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "delta":J
    goto :goto_1

    .line 103
    .restart local v6    # "scanDevice":Lcom/xiaopeng/xuimanager/iot/devices/ScanDevice;
    .restart local v8    # "curTick":J
    .restart local v10    # "propMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 119
    .end local v6    # "scanDevice":Lcom/xiaopeng/xuimanager/iot/devices/ScanDevice;
    .end local v8    # "curTick":J
    .end local v10    # "propMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :goto_1
    return-void
.end method

.method public onManagerInit()V
    .locals 0

    .line 157
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .line 128
    return-void
.end method
