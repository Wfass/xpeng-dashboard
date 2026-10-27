.class public Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;
.super Ljava/lang/Object;
.source "BluetoothModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothModel"


# instance fields
.field private final mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-direct {v0, p1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->registerCallback(Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;)V

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->registerReceiver()V

    .line 24
    return-void
.end method


# virtual methods
.method public connectDevice(Ljava/lang/String;I)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "profile"    # I

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->connectProfile(Landroid/bluetooth/BluetoothDevice;I)V

    .line 90
    return-void
.end method

.method public disconnectDevice(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->disconnectDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 94
    return-void
.end method

.method public disconnectDevice(Ljava/lang/String;I)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "profile"    # I

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->disconnectProfile(Landroid/bluetooth/BluetoothDevice;I)V

    .line 98
    return-void
.end method

.method public enterBtTestMode()Z
    .locals 1

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getBluetoothAddr()Ljava/lang/String;
    .locals 4

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "str":Ljava/lang/String;
    const-string v1, "BluetoothModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBluetoothAddr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    return-object v0
.end method

.method public getBtPowerStatus()I
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->getState()I

    move-result v0

    .line 61
    .local v0, "status":I
    const-string v1, "BluetoothModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBtPowerStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    return v0
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getProfileProxy(I)V
    .locals 2
    .param p1, "profile"    # I

    .line 36
    const-string v0, "BluetoothModel"

    const-string v1, "getProfileProxy"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->getProfileProxy(I)V

    .line 38
    return-void
.end method

.method public isBtScanning()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->isDiscovering()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->isConnected()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->unregisterReceiver()V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->releaseCallback()V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->closeProfileProxy()V

    .line 112
    return-void
.end method

.method public onInit()V
    .locals 0

    .line 27
    return-void
.end method

.method public pairDevice(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 80
    const-string v0, "BluetoothModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pairDevice address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->pairOrAcceptPair(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 82
    return-void
.end method

.method public pairDeviceWithoutScan(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->pairOrAcceptPair(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 86
    return-void
.end method

.method public powerOffBluetooth()V
    .locals 2

    .line 51
    const-string v0, "BluetoothModel"

    const-string v1, "powerOffBluetooth"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->disable()Z

    .line 53
    return-void
.end method

.method public powerOnBluetooth()V
    .locals 2

    .line 46
    const-string v0, "BluetoothModel"

    const-string v1, "powerOnBluetooth"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->enable()Z

    .line 48
    return-void
.end method

.method public startScan()V
    .locals 2

    .line 41
    const-string v0, "BluetoothModel"

    const-string v1, "startScan"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->startDiscovery()Z

    .line 43
    return-void
.end method

.method public stopScan()V
    .locals 2

    .line 66
    const-string v0, "BluetoothModel"

    const-string v1, "stopScan"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->cancelDiscovery()Z

    .line 68
    return-void
.end method

.method public unPairDevice(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 75
    const-string v0, "BluetoothModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unPairDevice address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/BluetoothModel;->mBluetoothTest:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->unpair(Landroid/bluetooth/BluetoothDevice;)V

    .line 77
    return-void
.end method
