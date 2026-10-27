.class public interface abstract Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;
.super Ljava/lang/Object;
.source "XBluetoothListener.java"


# virtual methods
.method public onAdapterDiscoveryFinished(I)V
    .locals 0
    .param p1, "moduleType"    # I

    .line 32
    return-void
.end method

.method public onAdapterDiscoveryStarted(I)V
    .locals 0
    .param p1, "moduleType"    # I

    .line 27
    return-void
.end method

.method public onAdapterStateChanged(III)V
    .locals 0
    .param p1, "prevState"    # I
    .param p2, "newState"    # I
    .param p3, "moduleType"    # I

    .line 22
    return-void
.end method

.method public onBondListChanged(I)V
    .locals 0
    .param p1, "moduleType"    # I

    .line 56
    return-void
.end method

.method public onConnectionStateChanged(Lcom/xiaopeng/lib_xpbt/XpBtDevice;III)V
    .locals 0
    .param p1, "xpBtDevice"    # Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I
    .param p4, "moduleType"    # I

    .line 48
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/xiaopeng/lib_xpbt/XpBtDevice;III)V
    .locals 0
    .param p1, "xpBtDevice"    # Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I
    .param p4, "moduleType"    # I

    .line 40
    return-void
.end method

.method public onDeviceFound(Lcom/xiaopeng/lib_xpbt/XpBtDevice;I)V
    .locals 0
    .param p1, "xpBtDevice"    # Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    .param p2, "moduleType"    # I

    .line 15
    return-void
.end method

.method public onDeviceNameChanged(Lcom/xiaopeng/lib_xpbt/XpBtDevice;I)V
    .locals 0
    .param p1, "xpBtDevice"    # Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    .param p2, "moduleType"    # I

    .line 69
    return-void
.end method

.method public onPairingRequest(Lcom/xiaopeng/lib_xpbt/XpBtDevice;ZI)V
    .locals 0
    .param p1, "xpBtDevice"    # Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    .param p2, "isFromRemote"    # Z
    .param p3, "moduleType"    # I

    .line 63
    return-void
.end method

.method public onReady()V
    .locals 0

    .line 9
    return-void
.end method
