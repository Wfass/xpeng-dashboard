.class public Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;
.super Ljava/lang/Object;
.source "BluetoothModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothModel"


# instance fields
.field private mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

.field private mScanDeviceLab:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/ScanDeviceLab;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xpeng/test/callback/BluetoothCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/xpeng/test/callback/BluetoothCallback;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/xpeng/test/BluetoothTest;

    invoke-direct {v0, p1}, Lcom/xpeng/test/BluetoothTest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0, p2}, Lcom/xpeng/test/BluetoothTest;->registerCallback(Lcom/xpeng/test/callback/BluetoothCallback;)V

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->registerReceiver()V

    .line 25
    return-void
.end method


# virtual methods
.method public connectDevice(Ljava/lang/String;I)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "profile"    # I

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v1, p1}, Lcom/xpeng/test/BluetoothTest;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/xpeng/test/BluetoothTest;->connectProfile(Landroid/bluetooth/BluetoothDevice;I)V

    .line 102
    return-void
.end method

.method public disconnectDevice(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v1, p1}, Lcom/xpeng/test/BluetoothTest;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xpeng/test/BluetoothTest;->disconnectDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 110
    return-void
.end method

.method public disconnectDevice(Ljava/lang/String;I)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "profile"    # I

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v1, p1}, Lcom/xpeng/test/BluetoothTest;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/xpeng/test/BluetoothTest;->disconnectProfile(Landroid/bluetooth/BluetoothDevice;I)V

    .line 114
    return-void
.end method

.method public enterBtTestMode()Z
    .locals 1

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getBluetoothAddr()Ljava/lang/String;
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "str":Ljava/lang/String;
    const-string v1, "BluetoothModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBluetoothAddr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    return-object v0
.end method

.method public getBtPowerStatus()I
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->getState()I

    move-result v0

    .line 62
    .local v0, "status":I
    const-string v1, "BluetoothModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBtPowerStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    return v0
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceBondState(Ljava/lang/String;)I
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0, p1}, Lcom/xpeng/test/BluetoothTest;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method public getProfileProxy(I)V
    .locals 2
    .param p1, "profile"    # I

    .line 37
    const-string v0, "BluetoothModel"

    const-string v1, "getProfileProxy"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0, p1}, Lcom/xpeng/test/BluetoothTest;->getProfileProxy(I)V

    .line 39
    return-void
.end method

.method public isBondedDevice(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "isBonded":Z
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    iget-object v2, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v2, p1}, Lcom/xpeng/test/BluetoothTest;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xpeng/test/BluetoothTest;->isBondedDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 92
    const-string v1, "BluetoothModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBondedDevice address:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isBonded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    return v0
.end method

.method public isBtScanning()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->isDiscovering()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->isConnected()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->unregisterReceiver()V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->releaseCallback()V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->closeProfileProxy()V

    .line 124
    return-void
.end method

.method public onInit()V
    .locals 0

    .line 28
    return-void
.end method

.method public pairDevice(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 81
    const-string v0, "BluetoothModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pairDevice address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v1, p1}, Lcom/xpeng/test/BluetoothTest;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xpeng/test/BluetoothTest;->pairOrAcceptPair(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 83
    return-void
.end method

.method public pairDeviceWithoutScan(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v1, p1}, Lcom/xpeng/test/BluetoothTest;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xpeng/test/BluetoothTest;->pairOrAcceptPair(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 87
    return-void
.end method

.method public powerOffBluetooth()V
    .locals 2

    .line 52
    const-string v0, "BluetoothModel"

    const-string v1, "powerOffBluetooth"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->disable()Z

    .line 54
    return-void
.end method

.method public powerOnBluetooth()V
    .locals 2

    .line 47
    const-string v0, "BluetoothModel"

    const-string v1, "powerOnBluetooth"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->enable()Z

    .line 49
    return-void
.end method

.method public startScan()V
    .locals 2

    .line 42
    const-string v0, "BluetoothModel"

    const-string v1, "startScan"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->startDiscovery()Z

    .line 44
    return-void
.end method

.method public stopScan()V
    .locals 2

    .line 67
    const-string v0, "BluetoothModel"

    const-string v1, "stopScan"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->cancelDiscovery()Z

    .line 69
    return-void
.end method

.method public unPairDevice(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 76
    const-string v0, "BluetoothModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unPairDevice address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/BluetoothModel;->mBluetoothTest:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v1, p1}, Lcom/xpeng/test/BluetoothTest;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xpeng/test/BluetoothTest;->unpair(Landroid/bluetooth/BluetoothDevice;)V

    .line 78
    return-void
.end method
