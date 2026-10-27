.class Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "GattAospImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XuiBluetoothGattCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)V
    .locals 0

    .line 1165
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;

    .line 1165
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;-><init>(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 1290
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$700(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 1291
    .local v0, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mCallback:Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    if-eqz v1, :cond_0

    .line 1292
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mCallback:Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    invoke-interface {v1, p2}, Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 1295
    :cond_0
    const-string v1, ""

    .line 1296
    .local v1, "appendInfo":Ljava/lang/String;
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mCallback:Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    if-nez v2, :cond_1

    .line 1298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->byte2hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1300
    :cond_1
    const-string v2, "GattAospImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCharacteristicChanged, uuid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",prop="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1300
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .line 1269
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$900(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$700(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1271
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$700(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 1272
    .local v0, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mCallback:Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    if-eqz v1, :cond_0

    .line 1273
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mCallback:Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    invoke-interface {v1, p2, p3}, Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 1275
    :cond_0
    const-string v1, "GattAospImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCharacteristicRead, status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",uuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",prop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",cached val="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->byte2hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1275
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    nop

    .line 1285
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .line 1310
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$900(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$700(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1312
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$700(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 1313
    .local v0, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mCallback:Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    if-eqz v1, :cond_0

    .line 1314
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mCallback:Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    invoke-interface {v1, p2, p3}, Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 1317
    :cond_0
    const-string v1, "GattAospImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCharacteristicWrite, status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",uuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",prop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",cached val="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    const/16 v4, 0x14

    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->byte2hex([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1317
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .line 1168
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1169
    .local v0, "address":Ljava/lang/String;
    const-string v1, "GattAospImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnectionStateChange,device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",newState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$700(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 1172
    .local v1, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mCallback:Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    if-eqz v2, :cond_2

    .line 1173
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mCallback:Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    invoke-interface {v2, p2, p3}, Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;->onConnectionStateChange(II)V

    .line 1174
    if-nez p3, :cond_2

    .line 1175
    const-string v2, "GattAospImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",op size before:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$800(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$800(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 1177
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$800(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1178
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1179
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;

    .line 1180
    .local v4, "record":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;
    iget-object v5, v4, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mAddr:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1181
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1182
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mData:[B

    .line 1183
    nop

    .line 1185
    .end local v4    # "record":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;
    :cond_0
    goto :goto_0

    .line 1186
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;>;"
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1187
    const-string v2, "GattAospImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",op size after:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$800(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1186
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1190
    :cond_2
    :goto_1
    const/4 v2, 0x2

    if-ne p3, v2, :cond_5

    .line 1192
    if-eqz v1, :cond_3

    .line 1193
    iput p3, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mConnectState:I

    .line 1197
    :cond_3
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$900(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x6d

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1200
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$800(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1201
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$1000(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 1202
    .local v2, "tickAfterAdapterOn":J
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1216
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$900(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1220
    .end local v2    # "tickAfterAdapterOn":J
    :cond_4
    const-string v2, "GattAospImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##Connected to GATT server@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",holder gatt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1220
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1224
    :cond_5
    if-nez p3, :cond_9

    .line 1225
    iput p3, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mConnectState:I

    .line 1226
    const/16 v2, 0x12c

    iget v3, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mManageState:I

    if-ne v2, v3, :cond_7

    .line 1227
    iget v2, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mLastOpCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    monitor-enter v2

    .line 1228
    const/16 v3, 0xcc

    :try_start_2
    iget v4, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mLastOpCode:I

    if-eq v3, v4, :cond_6

    iget v3, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mLastOpCode:I

    .line 1232
    :cond_6
    monitor-exit v2

    goto :goto_2

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 1236
    :cond_7
    :goto_2
    const-string v2, "GattAospImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##disconnected from GATT server@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",holder gatt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",equal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mGatt:Landroid/bluetooth/BluetoothGatt;

    if-ne p1, v4, :cond_8

    const/4 v4, 0x1

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1236
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    :cond_9
    :goto_4
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "mtu"    # I
    .param p3, "status"    # I

    .line 1327
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$700(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 1328
    .local v0, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    if-nez p3, :cond_0

    .line 1329
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mCallback:Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    if-eqz v1, :cond_0

    .line 1330
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mCallback:Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    invoke-interface {v1, p2, p3}, Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;->onMtuChanged(II)V

    .line 1331
    iput p2, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mMTU:I

    .line 1334
    :cond_0
    const-string v1, "GattAospImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMtuChanged,mtu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .line 1245
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$700(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 1246
    .local v0, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mCallback:Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    if-eqz v1, :cond_0

    .line 1247
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mCallback:Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 1253
    :cond_0
    const-string v1, "GattAospImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServicesDiscovered received,status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1253
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    if-nez p2, :cond_1

    .line 1256
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$800(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1257
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiBluetoothGattCallback;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$900(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1262
    :cond_1
    return-void
.end method
