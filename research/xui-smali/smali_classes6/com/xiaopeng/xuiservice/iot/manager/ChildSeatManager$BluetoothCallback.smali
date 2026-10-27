.class Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;
.super Ljava/lang/Object;
.source "ChildSeatManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$1;

    .line 293
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;)V

    return-void
.end method

.method public static synthetic lambda$onAdapterStatusChanged$0(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;)V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$500(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$1000(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public static synthetic lambda$onAdapterStatusChanged$1(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;)V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$500(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$900(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public static synthetic lambda$onManagerInit$2(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;)V
    .locals 4

    .line 397
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$700()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    const-string v0, "ChildSeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify device add:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$700()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$800(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;)Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$700()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceAdd(Ljava/util/List;)V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$500(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$900(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;Ljava/lang/String;)V

    .line 402
    return-void
.end method


# virtual methods
.method public onAdapterStatusChanged(I)V
    .locals 3
    .param p1, "status"    # I

    .line 366
    const-string v0, "ChildSeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdapterStatusChanged, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$500(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 380
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$ChildSeatManager$BluetoothCallback$dauFi7H55eadj8Cg6zePqjVWwrc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$ChildSeatManager$BluetoothCallback$dauFi7H55eadj8Cg6zePqjVWwrc;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$002(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;Ljava/lang/String;)Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    const-string v1, "connect_state"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$500(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 373
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$ChildSeatManager$BluetoothCallback$SLqwunPTdFOwOd0p93cvKxYRp5o;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$ChildSeatManager$BluetoothCallback$SLqwunPTdFOwOd0p93cvKxYRp5o;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 386
    :cond_2
    :goto_0
    return-void
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4
    .param p1, "chara"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 342
    const-string v0, "ChildSeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicChanged, chara="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$400(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;J[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ChildSeatManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotify failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3
    .param p1, "chara"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "status"    # I

    .line 337
    const-string v0, "ChildSeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicRead, chara="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 5
    .param p1, "chara"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "status"    # I

    .line 353
    const-string v0, "ChildSeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicWrite, uuid: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 353
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public onConnectionStateChange(II)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "newState"    # I

    .line 301
    const-string v0, "ChildSeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionStateChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const/4 v2, 0x2

    if-ne v2, p2, :cond_0

    const-string v3, "connected"

    goto :goto_0

    :cond_0
    const-string v3, "disconnected"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    if-eqz p2, :cond_1

    if-eq p2, v2, :cond_1

    goto :goto_2

    .line 308
    :cond_1
    if-ne v2, p2, :cond_2

    .line 309
    const-string v0, "1"

    goto :goto_1

    :cond_2
    const-string v0, "0"

    .line 311
    .local v0, "state":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 312
    const-string v1, "0"

    if-ne v0, v1, :cond_3

    .line 313
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;)V

    .line 315
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    const-string v2, "connect_state"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$002(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .end local v0    # "state":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void
.end method

.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .line 296
    const-string v0, "ChildSeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLeScan, addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rssi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public onManagerInit()V
    .locals 4

    .line 390
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v1

    const-string v2, "key_child_seat_address"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$502(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    const-string v0, "ChildSeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onManagerInit, address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$500(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$500(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$500(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$600(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$ChildSeatManager$BluetoothCallback$y3hOETg54oe5F9A4pDSuuHxMXXU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$ChildSeatManager$BluetoothCallback$y3hOETg54oe5F9A4pDSuuHxMXXU;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 404
    :cond_0
    return-void
.end method

.method public onMtuChanged(II)V
    .locals 3
    .param p1, "mtu"    # I
    .param p2, "status"    # I

    .line 361
    const-string v0, "ChildSeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMtuChanged, mtu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .line 324
    const-string v0, "ChildSeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServicesDiscovered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    if-nez p2, :cond_0

    const-string v2, "succeed"

    goto :goto_0

    :cond_0
    const-string v2, "failed"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    if-nez p2, :cond_1

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    const-string v1, "100"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$002(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;Ljava/lang/String;)Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;Landroid/bluetooth/BluetoothGatt;)V

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    const-string v1, "connect_state"

    const-string v2, "100"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_1
    return-void
.end method
