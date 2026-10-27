.class public interface abstract Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;
.super Ljava/lang/Object;
.source "AbstractGattManager.java"


# virtual methods
.method public allowRepeatCommand(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "allow"    # Z

    .line 36
    return-void
.end method

.method public abstract close(Ljava/lang/String;)V
.end method

.method public abstract closeAll()V
.end method

.method public abstract connect(Ljava/lang/String;)V
.end method

.method public abstract connect(Ljava/lang/String;Z)V
.end method

.method public abstract disconnect(Ljava/lang/String;)V
.end method

.method public abstract dumpX(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getAdapterState()Z
.end method

.method public abstract getSupportedGattServices(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end method

.method public abstract init()Z
.end method

.method public abstract readCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
.end method

.method public abstract registerCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V
.end method

.method public abstract registerScanCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V
.end method

.method public abstract requestConnectionPriority(Ljava/lang/String;I)V
.end method

.method public abstract requestMtu(Ljava/lang/String;I)V
.end method

.method public abstract setCharacteristicNotification(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
.end method

.method public abstract startLeScan(I)V
.end method

.method public abstract stopLeScan()V
.end method

.method public abstract unRegisterCallback(Ljava/lang/String;)V
.end method

.method public abstract unRegisterScanCallback(Ljava/lang/String;)V
.end method

.method public abstract writeCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
.end method
