.class Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;
.super Ljava/lang/Object;
.source "RemoteManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$1;

    .line 405
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)V

    return-void
.end method

.method public static synthetic lambda$onServicesDiscovered$0(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;)V
    .locals 3

    .line 457
    const-string v0, "telink"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/OtaManagerFactory;->getManager(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/AbstractOtaManager;

    move-result-object v0

    .line 459
    .local v0, "manager":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/AbstractOtaManager;
    if-eqz v0, :cond_0

    .line 460
    const-string v1, "RemoteManager"

    const-string v2, "check and upgrade firmware..."

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$1800(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/IOtaStatusRegistry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/AbstractOtaManager;->registerOtaStatusListener(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/IOtaStatusRegistry;)V

    .line 463
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/AbstractOtaManager;->upgrade(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    const-string v1, "RemoteManager"

    const-string v2, "upgrde firmware failed!"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_0
    return-void
.end method


# virtual methods
.method public onAdapterStatusChanged(I)V
    .locals 4
    .param p1, "status"    # I

    .line 515
    const-string v0, "RemoteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdapterStatusChanged, state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const/16 v2, 0xa

    if-ne p1, v2, :cond_0

    const-string v3, "off"

    goto :goto_0

    :cond_0
    const-string v3, "on"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 515
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const/4 v0, 0x1

    if-eq p1, v2, :cond_5

    const/16 v1, 0xc

    if-eq p1, v1, :cond_1

    goto :goto_3

    .line 521
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Landroid/bluetooth/BluetoothHidHost;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$1500(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    nop

    .line 522
    .local v0, "res":Z
    :cond_3
    :goto_1
    const-string v1, "RemoteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHidProfileProxy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    const-string v3, "succeed"

    goto :goto_2

    :cond_4
    const-string v3, "failed"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    goto :goto_3

    .line 525
    .end local v0    # "res":Z
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$500(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 527
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f0e008f

    .line 526
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 531
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$1202(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;)Ljava/lang/String;

    .line 532
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$1600(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$202(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Landroid/bluetooth/BluetoothHidHost;)Landroid/bluetooth/BluetoothHidHost;

    .line 534
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    const-string v1, "device_status"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$400(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :goto_3
    return-void
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 5
    .param p1, "chara"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 488
    const-string v0, "RemoteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicChanged, uuid: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    .line 490
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$1400(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    goto :goto_0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RemoteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotify failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 5
    .param p1, "chara"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "status"    # I

    .line 474
    const-string v0, "RemoteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicRead, uuid: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    .line 476
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$1400(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    goto :goto_0

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RemoteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotify failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 5
    .param p1, "chara"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "status"    # I

    .line 502
    const-string v0, "RemoteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicWrite, uuid: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    .line 504
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method public onConnectionStateChange(II)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "newState"    # I

    .line 430
    const-string v0, "RemoteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionStateChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
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

    .line 430
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    if-eqz p2, :cond_2

    if-eq p2, v2, :cond_1

    goto :goto_1

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$1202(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;)Ljava/lang/String;

    .line 437
    goto :goto_1

    .line 439
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$1202(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;)Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$002(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Z)Z

    .line 443
    :goto_1
    return-void
.end method

.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .line 408
    const-string v0, "RemoteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLeScan, name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rssi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$800(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$900(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->stopLeScan()V

    .line 414
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$1000(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$1100(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 417
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Lcom/xiaopeng/xuimanager/iot/devices/ScanDevice;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/iot/devices/ScanDevice;-><init>()V

    .line 419
    .local v1, "scanDevice":Lcom/xiaopeng/xuimanager/iot/devices/ScanDevice;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/iot/devices/ScanDevice;->setDeviceName(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 420
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/iot/devices/ScanDevice;->setDeviceId(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 421
    const/4 v2, 0x0

    iput v2, v0, Landroid/os/Message;->what:I

    .line 422
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 424
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$1100(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 426
    .end local v0    # "message":Landroid/os/Message;
    .end local v1    # "scanDevice":Lcom/xiaopeng/xuimanager/iot/devices/ScanDevice;
    :cond_0
    return-void
.end method

.method public onManagerInit()V
    .locals 4

    .line 541
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "address":Ljava/lang/String;
    const-string v1, "RemoteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onManagerInit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$1700(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;Z)V

    .line 546
    return-void
.end method

.method public onMtuChanged(II)V
    .locals 3
    .param p1, "mtu"    # I
    .param p2, "status"    # I

    .line 510
    const-string v0, "RemoteManager"

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

    .line 511
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .line 447
    const-string v0, "RemoteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServicesDiscovered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    if-nez p2, :cond_0

    const-string v2, "succeed"

    goto :goto_0

    :cond_0
    const-string v2, "failed"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 447
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    if-nez p2, :cond_1

    .line 452
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    const-string v1, "100"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$1202(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;)Ljava/lang/String;

    .line 453
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$1300(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Landroid/bluetooth/BluetoothGatt;)V

    .line 455
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 456
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$BluetoothCallback$pYM3nL7OenVpdRCqj7f7M1OdI7k;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$BluetoothCallback$pYM3nL7OenVpdRCqj7f7M1OdI7k;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 470
    :cond_1
    return-void
.end method
