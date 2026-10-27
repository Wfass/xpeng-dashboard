.class Layi$1;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layi;->a(Landroid/content/Context;Layk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Layi;


# direct methods
.method constructor <init>(Layi;)V
    .locals 0

    .line 81
    iput-object p1, p0, Layi$1;->a:Layi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a2dp onServiceConnected:bind success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth_Manager"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 86
    iget-object p1, p0, Layi$1;->a:Layi;

    check-cast p2, Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {p1, p2}, Layi;->a(Layi;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "a2dp onServiceConnected: a2dpSink :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Layi$1;->a:Layi;

    invoke-static {p2}, Layi;->a(Layi;)Landroid/bluetooth/BluetoothA2dpSink;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const-string p2, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p1, p2}, Landroidx/core/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "onServiceConnected no permission: "

    .line 89
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "onServiceConnected have permission: "

    .line 92
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Layi$1;->a:Layi;

    invoke-static {p1}, Layi;->a(Layi;)Landroid/bluetooth/BluetoothA2dpSink;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 95
    iget-object p1, p0, Layi$1;->a:Layi;

    invoke-static {p1}, Layi;->a(Layi;)Landroid/bluetooth/BluetoothA2dpSink;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "a2dp onServiceConnected: bluetoothDeviceList :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 97
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 98
    iget-object p2, p0, Layi$1;->a:Layi;

    invoke-static {p2}, Layi;->a(Layi;)Landroid/bluetooth/BluetoothA2dpSink;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, v2}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    .line 99
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a2dp onServiceConnected: state :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",name:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",address:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Layi$1;->a:Layi;

    invoke-virtual {v0, p2}, Layi;->a(I)I

    move-result p2

    .line 103
    iget-object v0, p0, Layi$1;->a:Layi;

    invoke-static {v0, p2}, Layi;->a(Layi;I)I

    .line 104
    iget-object v0, p0, Layi$1;->a:Layi;

    invoke-static {v0}, Layi;->b(Layi;)Layk;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Layi$1;->a:Layi;

    invoke-static {v0}, Layi;->b(Layi;)Layk;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v2, p1, v1, p2}, Layk;->b(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 3

    const-string p1, "Bluetooth_Manager"

    const-string v0, "a2dp onServiceDisconnected: A2DP_SINK"

    .line 114
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Layi$1;->a:Layi;

    invoke-static {p1}, Layi;->b(Layi;)Layk;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Layi$1;->a:Layi;

    invoke-static {p1}, Layi;->b(Layi;)Layk;

    move-result-object p1

    const/4 v0, -0x1

    const/16 v1, 0x64

    const-string v2, ""

    invoke-interface {p1, v2, v2, v0, v1}, Layk;->b(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
