.class public abstract Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;
.super Ljava/lang/Object;
.source "AbsUsbBluetoothCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsbA2dpStateChanged(Ljava/lang/String;II)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 34
    return-void
.end method

.method public onUsbAdapterDiscoveryFinished()V
    .locals 0

    .line 23
    return-void
.end method

.method public onUsbAdapterDiscoveryStarted()V
    .locals 0

    .line 19
    return-void
.end method

.method public onUsbAdapterStateChanged(II)V
    .locals 0
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .line 15
    return-void
.end method

.method public onUsbAvrcpStateChanged(Ljava/lang/String;II)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 37
    return-void
.end method

.method public onUsbConnectionStateChanged(Ljava/lang/String;II)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 44
    return-void
.end method

.method public onUsbDeviceBondStateChanged(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "prevState"    # I
    .param p4, "newState"    # I

    .line 27
    return-void
.end method

.method public onUsbDeviceFound(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "category"    # B

    .line 10
    return-void
.end method

.method public onUsbDeviceState(I)V
    .locals 0
    .param p1, "newState"    # I

    .line 41
    return-void
.end method

.method public onUsbHfpStateChanged(Ljava/lang/String;II)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 31
    return-void
.end method

.method public onUsbPairedDevices(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 6
    return-void
.end method
