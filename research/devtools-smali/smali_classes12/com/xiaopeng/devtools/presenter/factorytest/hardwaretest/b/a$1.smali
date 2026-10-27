.class Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;
.super Ljava/lang/Object;
.source "BluetoothPresenter.java"

# interfaces
.implements Lcom/xpeng/test/callback/BluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic wK:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;->wK:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic J(Z)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;->wK:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/b;->as(Z)V

    return-void
.end method

.method private synthetic a(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;->wK:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/b;->c(Ljava/lang/String;III)V

    return-void
.end method

.method private synthetic b(ILjava/lang/String;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;->wK:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/b;->c(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic b(Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;->wK:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;)Lcom/xiaopeng/devtools/model/c/a/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/b/b;->a(Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;)V

    .line 80
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;->wK:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;->wK:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;)Lcom/xiaopeng/devtools/model/c/a/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/b/b;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->setScanDeviceItem(Ljava/util/List;)V

    .line 81
    return-void
.end method

.method public static synthetic lambda$VtuZKvYS76O-ZMJsyhKi4X6RsDA(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;Landroid/bluetooth/BluetoothDevice;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;->a(Landroid/bluetooth/BluetoothDevice;III)V

    return-void
.end method

.method public static synthetic lambda$ezqRvTdkovjjOjl_Ip74NKoeQWo(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;->b(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$piO8azTVmrNDYqhDhvh83mB5bWo(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;->b(Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;)V

    return-void
.end method

.method public static synthetic lambda$sBJ_IiOyzLiO00nEqqQsYktJvW0(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;->J(Z)V

    return-void
.end method


# virtual methods
.method public onBindSuccess()V
    .locals 2

    .line 100
    const-string v0, "BluetoothPresenter"

    const-string v1, "onBindSuccess "

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public onBtConnectStatus(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 7

    .line 61
    const-string v0, "BluetoothPresenter"

    const-string v1, "onBtConnectStatus status[%d] preState[%d] profileType[%d] mBluetoothModel.isConnected()[%s]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 62
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;->wK:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-static {v3}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;)Lcom/xiaopeng/devtools/model/c/a/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/devtools/model/c/a/b/a;->isConnected()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v2, v5

    .line 61
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/utils/c;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;->wK:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;)Lcom/xiaopeng/devtools/model/c/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/b/a;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eq p2, v4, :cond_0

    .line 64
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;->wK:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/-$$Lambda$a$1$VtuZKvYS76O-ZMJsyhKi4X6RsDA;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/-$$Lambda$a$1$VtuZKvYS76O-ZMJsyhKi4X6RsDA;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;Landroid/bluetooth/BluetoothDevice;III)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 69
    :cond_1
    return-void
.end method

.method public onBtPairStatus(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 42
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    .line 43
    const-string v0, "BluetoothPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBtPairStatus status ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;->wK:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/-$$Lambda$a$1$ezqRvTdkovjjOjl_Ip74NKoeQWo;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/-$$Lambda$a$1$ezqRvTdkovjjOjl_Ip74NKoeQWo;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 47
    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 48
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;->wK:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->getProfileProxy(I)V

    .line 49
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;->wK:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->getProfileProxy(I)V

    .line 50
    const/4 p1, 0x0

    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1$1;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1$1;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;Ljava/lang/String;)V

    const-wide/16 v1, 0x1388

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/lib/utils/j;->b(ILjava/lang/Runnable;J)V

    .line 57
    :cond_1
    return-void
.end method

.method public onBtPower(Z)V
    .locals 3

    .line 34
    const-string v0, "BluetoothPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBtPower isOn ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;->wK:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/-$$Lambda$a$1$sBJ_IiOyzLiO00nEqqQsYktJvW0;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/-$$Lambda$a$1$sBJ_IiOyzLiO00nEqqQsYktJvW0;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;Z)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 38
    :cond_0
    return-void
.end method

.method public onPairRequest(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3

    .line 105
    const-string v0, "BluetoothPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPairRequest variant = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " passkey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 119
    :pswitch_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->setRemoteOutOfBandData()Z

    goto :goto_0

    .line 116
    :pswitch_2
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    .line 117
    goto :goto_0

    .line 112
    :pswitch_3
    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothDevice;->setPasskey(I)Z

    .line 113
    goto :goto_0

    .line 109
    :pswitch_4
    invoke-static {}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->iT()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    .line 110
    nop

    .line 122
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public onScanCallback(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    .line 73
    const-string v0, "BluetoothPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanCallback device ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rssi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;->wK:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;)Lcom/xiaopeng/devtools/model/c/a/b/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/c/a/b/b;->bD(Ljava/lang/String;)Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    return-void

    .line 77
    :cond_0
    new-instance v0, Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v2, "0000"

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    new-instance p1, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/-$$Lambda$a$1$piO8azTVmrNDYqhDhvh83mB5bWo;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/-$$Lambda$a$1$piO8azTVmrNDYqhDhvh83mB5bWo;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;)V

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method public onScanStatus(Z)V
    .locals 3

    .line 86
    const-string v0, "BluetoothPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanStatus isDiscovering ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;->wK:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    if-nez p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;->wK:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/b;->mC()V

    .line 93
    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;->wK:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->d(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;)Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;->wK:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->d(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;)Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$a;->iU()V

    .line 96
    :cond_1
    return-void
.end method
