.class public Lcom/xiaopeng/devtools/model/c/a/b/a;
.super Ljava/lang/Object;
.source "BluetoothModel.java"


# instance fields
.field private sP:Lcom/xpeng/test/BluetoothTest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xpeng/test/callback/BluetoothCallback;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/xpeng/test/BluetoothTest;

    invoke-direct {v0, p1}, Lcom/xpeng/test/BluetoothTest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b/a;->sP:Lcom/xpeng/test/BluetoothTest;

    .line 22
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/b/a;->sP:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {p1, p2}, Lcom/xpeng/test/BluetoothTest;->registerCallback(Lcom/xpeng/test/callback/BluetoothCallback;)V

    .line 23
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/b/a;->sP:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {p1}, Lcom/xpeng/test/BluetoothTest;->registerReceiver()V

    .line 25
    return-void
.end method


# virtual methods
.method public bA(Ljava/lang/String;)V
    .locals 3

    .line 76
    const-string v0, "BluetoothModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unPairDevice address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b/a;->sP:Lcom/xpeng/test/BluetoothTest;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/b/a;->sP:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v1, p1}, Lcom/xpeng/test/BluetoothTest;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xpeng/test/BluetoothTest;->unpair(Landroid/bluetooth/BluetoothDevice;)V

    .line 78
    return-void
.end method

.method public bB(Ljava/lang/String;)V
    .locals 3

    .line 81
    const-string v0, "BluetoothModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pairDevice address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b/a;->sP:Lcom/xpeng/test/BluetoothTest;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/b/a;->sP:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v1, p1}, Lcom/xpeng/test/BluetoothTest;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xpeng/test/BluetoothTest;->pairOrAcceptPair(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 83
    return-void
.end method

.method public bC(Ljava/lang/String;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b/a;->sP:Lcom/xpeng/test/BluetoothTest;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/b/a;->sP:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v1, p1}, Lcom/xpeng/test/BluetoothTest;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xpeng/test/BluetoothTest;->disconnectDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 99
    return-void
.end method

.method public dK()V
    .locals 2

    .line 47
    const-string v0, "BluetoothModel"

    const-string v1, "powerOnBluetooth"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b/a;->sP:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->enable()Z

    .line 49
    return-void
.end method

.method public dL()V
    .locals 2

    .line 52
    const-string v0, "BluetoothModel"

    const-string v1, "powerOffBluetooth"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b/a;->sP:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->disable()Z

    .line 54
    return-void
.end method

.method public dM()I
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b/a;->sP:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->getState()I

    move-result v0

    .line 62
    const-string v1, "BluetoothModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBtPowerStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    return v0
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b/a;->sP:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getProfileProxy(I)V
    .locals 2

    .line 37
    const-string v0, "BluetoothModel"

    const-string v1, "getProfileProxy"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b/a;->sP:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0, p1}, Lcom/xpeng/test/BluetoothTest;->getProfileProxy(I)V

    .line 39
    return-void
.end method

.method public gj()Ljava/lang/String;
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b/a;->sP:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string v1, "BluetoothModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBluetoothAddr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    return-object v0
.end method

.method public gk()V
    .locals 2

    .line 42
    const-string v0, "BluetoothModel"

    const-string v1, "startScan"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b/a;->sP:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->startDiscovery()Z

    .line 44
    return-void
.end method

.method public gl()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b/a;->sP:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->isDiscovering()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b/a;->sP:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->isConnected()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b/a;->sP:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->unregisterReceiver()V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b/a;->sP:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->releaseCallback()V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b/a;->sP:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->closeProfileProxy()V

    .line 113
    return-void
.end method

.method public onInit()V
    .locals 0

    .line 28
    return-void
.end method

.method public q(Ljava/lang/String;I)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b/a;->sP:Lcom/xpeng/test/BluetoothTest;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/b/a;->sP:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v1, p1}, Lcom/xpeng/test/BluetoothTest;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/xpeng/test/BluetoothTest;->connectProfile(Landroid/bluetooth/BluetoothDevice;I)V

    .line 91
    return-void
.end method

.method public stopScan()V
    .locals 2

    .line 67
    const-string v0, "BluetoothModel"

    const-string v1, "stopScan"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b/a;->sP:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->cancelDiscovery()Z

    .line 69
    return-void
.end method
