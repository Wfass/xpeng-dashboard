.class Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;
.super Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub;
.source "BluetoothControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-direct {p0}, Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onA2dpStateChanged(Ljava/lang/String;II)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;->onA2dpStateChanged(Ljava/lang/String;II)V

    .line 161
    :cond_0
    return-void
.end method

.method public onAdapterDiscoverableModeChanged(II)V
    .locals 1
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;->onAdapterDiscoverableModeChanged(II)V

    .line 70
    :cond_0
    return-void
.end method

.method public onAdapterDiscoveryFinished()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;->onAdapterDiscoveryFinished()V

    .line 84
    :cond_0
    return-void
.end method

.method public onAdapterDiscoveryStarted()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;->onAdapterDiscoveryStarted()V

    .line 77
    :cond_0
    return-void
.end method

.method public onAdapterStateChanged(II)V
    .locals 3
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .line 59
    const-string v0, "BluetoothControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdapterStateChanged newState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;->onAdapterStateChanged(II)V

    .line 63
    :cond_0
    return-void
.end method

.method public onAvrcpStateChanged(Ljava/lang/String;II)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;->onAvrcpStateChanged(Ljava/lang/String;II)V

    .line 168
    :cond_0
    return-void
.end method

.method public onBluetoothServiceReady()V
    .locals 2

    .line 51
    const-string v0, "BluetoothControl"

    const-string v1, "onBluetoothServiceReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;->onBluetoothServiceReady()V

    .line 55
    :cond_0
    return-void
.end method

.method public onBtAutoConnectStateChanged(Ljava/lang/String;II)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;->onBtAutoConnectStateChanged(Ljava/lang/String;II)V

    .line 147
    :cond_0
    return-void
.end method

.method public onBtRoleModeChanged(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;->onBtRoleModeChanged(I)V

    .line 140
    :cond_0
    return-void
.end method

.method public onDeviceAclDisconnected(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;->onDeviceAclDisconnected(Ljava/lang/String;)V

    .line 133
    :cond_0
    return-void
.end method

.method public onDeviceBondStateChanged(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "prevState"    # I
    .param p4, "newState"    # I

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;->onDeviceBondStateChanged(Ljava/lang/String;Ljava/lang/String;II)V

    .line 105
    :cond_0
    return-void
.end method

.method public onDeviceFound(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "category"    # B

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;->onDeviceFound(Ljava/lang/String;Ljava/lang/String;B)V

    .line 98
    :cond_0
    return-void
.end method

.method public onDeviceOutOfRange(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;->onDeviceOutOfRange(Ljava/lang/String;)V

    .line 126
    :cond_0
    return-void
.end method

.method public onDeviceUuidsUpdated(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "supportProfile"    # I

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;->onDeviceUuidsUpdated(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    :cond_0
    return-void
.end method

.method public onHfpStateChanged(Ljava/lang/String;II)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;->onHfpStateChanged(Ljava/lang/String;II)V

    .line 154
    :cond_0
    return-void
.end method

.method public onLocalAdapterNameChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;->onLocalAdapterNameChanged(Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method public retPairedDevices(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V
    .locals 7
    .param p1, "elements"    # I
    .param p2, "address"    # [Ljava/lang/String;
    .param p3, "name"    # [Ljava/lang/String;
    .param p4, "supportProfile"    # [I
    .param p5, "category"    # [B

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;->this$0:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;->retPairedDevices(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V

    .line 91
    :cond_0
    return-void
.end method
