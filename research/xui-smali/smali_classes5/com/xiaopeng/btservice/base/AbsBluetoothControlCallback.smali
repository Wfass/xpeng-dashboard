.class public abstract Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;
.super Ljava/lang/Object;
.source "AbsBluetoothControlCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onA2dpStateChanged(Ljava/lang/String;II)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 69
    return-void
.end method

.method public onAdapterDiscoverableModeChanged(II)V
    .locals 0
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .line 26
    return-void
.end method

.method public onAdapterDiscoveryFinished()V
    .locals 0

    .line 34
    return-void
.end method

.method public onAdapterDiscoveryStarted()V
    .locals 0

    .line 30
    return-void
.end method

.method public onAdapterStateChanged(II)V
    .locals 0
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .line 22
    return-void
.end method

.method public onAvrcpStateChanged(Ljava/lang/String;II)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 72
    return-void
.end method

.method public onBluetoothServiceReady()V
    .locals 0

    .line 10
    return-void
.end method

.method public onBtAutoConnectStateChanged(Ljava/lang/String;II)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 62
    return-void
.end method

.method public onBtRoleModeChanged(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 58
    return-void
.end method

.method public onDeviceAclDisconnected(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .line 54
    return-void
.end method

.method public onDeviceBondStateChanged(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "prevState"    # I
    .param p4, "newState"    # I

    .line 38
    return-void
.end method

.method public onDeviceFound(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "category"    # B

    .line 17
    return-void
.end method

.method public onDeviceOutOfRange(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .line 50
    return-void
.end method

.method public onDeviceUuidsUpdated(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "supportProfile"    # I

    .line 42
    return-void
.end method

.method public onHfpStateChanged(Ljava/lang/String;II)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 66
    return-void
.end method

.method public onLocalAdapterNameChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 46
    return-void
.end method

.method public retPairedDevices(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V
    .locals 0
    .param p1, "elements"    # I
    .param p2, "address"    # [Ljava/lang/String;
    .param p3, "name"    # [Ljava/lang/String;
    .param p4, "supportProfile"    # [I
    .param p5, "category"    # [B

    .line 13
    return-void
.end method
