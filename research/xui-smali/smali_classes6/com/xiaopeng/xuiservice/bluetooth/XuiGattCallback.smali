.class public interface abstract Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;
.super Ljava/lang/Object;
.source "XuiGattCallback.java"


# virtual methods
.method public abstract onAdapterStatusChanged(I)V
.end method

.method public abstract onCharacteristicChanged(Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end method

.method public abstract onCharacteristicRead(Landroid/bluetooth/BluetoothGattCharacteristic;I)V
.end method

.method public abstract onCharacteristicWrite(Landroid/bluetooth/BluetoothGattCharacteristic;I)V
.end method

.method public abstract onConnectionStateChange(II)V
.end method

.method public abstract onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
.end method

.method public abstract onManagerInit()V
.end method

.method public onMtuChanged(II)V
    .locals 0
    .param p1, "mtu"    # I
    .param p2, "status"    # I

    .line 25
    return-void
.end method

.method public abstract onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
.end method
