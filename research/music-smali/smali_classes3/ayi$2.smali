.class Layi$2;
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

    .line 121
    iput-object p1, p0, Layi$2;->a:Layi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "avrcp onServiceConnected:bind success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth_Manager"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 126
    check-cast p2, Landroid/bluetooth/BluetoothAvrcpController;

    .line 127
    iget-object p1, p0, Layi$2;->a:Layi;

    invoke-static {p1, p2}, Layi;->a(Layi;Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothAvrcpController;

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "avrcp onServiceConnected: success :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 130
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAvrcpController;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "avrcp onServiceConnected: bluetoothDeviceList :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 132
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 133
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, v2}, Landroid/bluetooth/BluetoothAvrcpController;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    .line 134
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "avrcp onServiceConnected: state :"

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

    .line 137
    iget-object v0, p0, Layi$2;->a:Layi;

    invoke-virtual {v0, p2}, Layi;->a(I)I

    move-result p2

    .line 138
    iget-object v0, p0, Layi$2;->a:Layi;

    invoke-static {v0}, Layi;->b(Layi;)Layk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Layi$2;->a:Layi;

    invoke-static {v0}, Layi;->b(Layi;)Layk;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v2, p1, v1, p2}, Layk;->c(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 3

    const-string p1, "Bluetooth_Manager"

    const-string v0, "avrcp onServiceDisconnected: AVRCP_CONTROLLER"

    .line 148
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Layi$2;->a:Layi;

    invoke-static {p1}, Layi;->b(Layi;)Layk;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Layi$2;->a:Layi;

    invoke-static {p1}, Layi;->b(Layi;)Layk;

    move-result-object p1

    const/4 v0, -0x1

    const/16 v1, 0x64

    const-string v2, ""

    invoke-interface {p1, v2, v2, v0, v1}, Layk;->c(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
