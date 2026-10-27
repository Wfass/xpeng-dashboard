.class Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;
.super Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth$Stub;
.source "UsbBluetoothControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    invoke-direct {p0}, Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsbA2dpStateChanged(Ljava/lang/String;II)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->access$000(Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;)Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->access$000(Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;)Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;->onUsbA2dpStateChanged(Ljava/lang/String;II)V

    .line 106
    :cond_0
    return-void
.end method

.method public onUsbAdapterDiscoveryFinished()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->access$000(Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;)Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->access$000(Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;)Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;->onUsbAdapterDiscoveryFinished()V

    .line 85
    :cond_0
    return-void
.end method

.method public onUsbAdapterDiscoveryStarted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->access$000(Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;)Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->access$000(Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;)Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;->onUsbAdapterDiscoveryStarted()V

    .line 78
    :cond_0
    return-void
.end method

.method public onUsbAdapterStateChanged(II)V
    .locals 1
    .param p1, "prevState"    # I
    .param p2, "newState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->access$000(Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;)Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->access$000(Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;)Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;->onUsbAdapterStateChanged(II)V

    .line 71
    :cond_0
    return-void
.end method

.method public onUsbAvrcpStateChanged(Ljava/lang/String;II)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->access$000(Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;)Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->access$000(Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;)Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;->onUsbAvrcpStateChanged(Ljava/lang/String;II)V

    .line 113
    :cond_0
    return-void
.end method

.method public onUsbConnectionStateChanged(Ljava/lang/String;II)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->access$000(Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;)Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->access$000(Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;)Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;->onUsbConnectionStateChanged(Ljava/lang/String;II)V

    .line 127
    :cond_0
    return-void
.end method

.method public onUsbDeviceBondStateChanged(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "prevState"    # I
    .param p4, "newState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->access$000(Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;)Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->access$000(Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;)Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;->onUsbDeviceBondStateChanged(Ljava/lang/String;Ljava/lang/String;II)V

    .line 92
    :cond_0
    return-void
.end method

.method public onUsbDeviceFound(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "category"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->access$000(Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;)Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->access$000(Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;)Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;->onUsbDeviceFound(Ljava/lang/String;Ljava/lang/String;B)V

    .line 64
    :cond_0
    return-void
.end method

.method public onUsbDeviceState(I)V
    .locals 1
    .param p1, "newState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->access$000(Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;)Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->access$000(Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;)Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;->onUsbDeviceState(I)V

    .line 120
    :cond_0
    return-void
.end method

.method public onUsbHfpStateChanged(Ljava/lang/String;II)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->access$000(Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;)Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->access$000(Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;)Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;->onUsbHfpStateChanged(Ljava/lang/String;II)V

    .line 99
    :cond_0
    return-void
.end method

.method public onUsbPairedDevices(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->access$000(Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;)Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->access$000(Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;)Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;->onUsbPairedDevices(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method
