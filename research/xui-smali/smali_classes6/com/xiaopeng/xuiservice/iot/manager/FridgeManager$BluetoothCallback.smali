.class Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;
.super Ljava/lang/Object;
.source "FridgeManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$1;

    .line 127
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V

    return-void
.end method

.method public static synthetic lambda$onAdapterStatusChanged$0(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;)V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$1500(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    move-result-object v0

    const-string v1, "FridgeManager##"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->unRegisterCallback(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$1400(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V

    .line 257
    return-void
.end method

.method public static synthetic lambda$onManagerInit$1(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;)V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$1500(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    move-result-object v0

    const-string v1, "FridgeManager##"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->unRegisterCallback(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public static synthetic lambda$onManagerInit$2(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$1400(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V

    .line 278
    return-void
.end method


# virtual methods
.method public onAdapterStatusChanged(I)V
    .locals 3
    .param p1, "status"    # I

    .line 242
    const-string v0, "FridgeManager##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdapterStatusChanged, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$1200(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 254
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$BluetoothCallback$CIk_4xHrdYw62tJpDjMjQIJnhgA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$BluetoothCallback$CIk_4xHrdYw62tJpDjMjQIJnhgA;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$702(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    const-string v1, "connect_state"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$800(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$1100(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$402(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;J)J

    .line 250
    nop

    .line 264
    :cond_2
    :goto_0
    return-void
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 6
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 219
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 220
    .local v0, "valueStr":Ljava/lang/String;
    const-string v1, "FridgeManager##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCharacteristicChanged,value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    nop

    .line 223
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "split":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 225
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 226
    .local v4, "s":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v5, v4}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$1000(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;Ljava/lang/String;)V

    .line 225
    .end local v4    # "s":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 229
    :cond_0
    const-string v2, "FridgeManager##"

    const-string v3, "split string fail"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .end local v1    # "split":[Ljava/lang/String;
    :cond_1
    nop

    .line 234
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "status"    # I

    .line 215
    const-string v0, "FridgeManager##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicRead,status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "status"    # I

    .line 237
    const-string v0, "FridgeManager##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicWrite,status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public onConnectionStateChange(II)V
    .locals 10
    .param p1, "status"    # I
    .param p2, "newState"    # I

    .line 142
    const-string v0, "FridgeManager##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionStateChange,newState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V

    .line 145
    const-string v2, "sys.xiaopeng.fridge.dis"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 146
    .local v2, "count":I
    add-int/2addr v2, v0

    .line 147
    const-string v3, "sys.xiaopeng.fridge.dis"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .end local v2    # "count":I
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)[Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;

    move-result-object v2

    monitor-enter v2

    .line 151
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)[Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;

    move-result-object v4

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 152
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v3, v1}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$202(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;I)I

    .line 154
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)[Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)I

    move-result v4

    aget-object v3, v3, v4

    if-nez v3, :cond_2

    .line 155
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)[Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)I

    move-result v4

    new-instance v5, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$1;)V

    aput-object v5, v3, v4

    .line 157
    :cond_2
    const/4 v3, 0x2

    if-nez p2, :cond_3

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$402(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;J)J

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)[Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;

    move-result-object v0

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)I

    move-result v4

    aget-object v0, v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;->tick:J

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)[Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;

    move-result-object v0

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)I

    move-result v4

    aget-object v0, v0, v4

    iput-boolean v1, v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;->connected:Z

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$208(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)I

    goto/16 :goto_1

    .line 162
    :cond_3
    if-ne v3, p2, :cond_6

    .line 163
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)[Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;

    move-result-object v1

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)I

    move-result v4

    aget-object v1, v1, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;->tick:J

    .line 164
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)[Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;

    move-result-object v1

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)I

    move-result v4

    aget-object v1, v1, v4

    iput-boolean v0, v1, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;->connected:Z

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$400(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_4

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)[Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$400(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;->disconnectTime:J

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)[Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)I

    move-result v1

    aget-object v0, v0, v1

    iput-wide v4, v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;->connectTime:J

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v0, v4, v5}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$402(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;J)J

    goto :goto_0

    .line 169
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$500(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_5

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)[Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$500(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;->connectTime:J

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)[Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)I

    move-result v1

    aget-object v0, v0, v1

    iput-wide v4, v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;->disconnectTime:J

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v0, v4, v5}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$502(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;J)J

    goto :goto_0

    .line 174
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)[Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)I

    move-result v1

    aget-object v0, v0, v1

    iput-wide v4, v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;->connectTime:J

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$208(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)I

    .line 178
    :cond_6
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "bChanged":Z
    if-eqz p2, :cond_7

    if-eq p2, v3, :cond_7

    goto :goto_3

    .line 184
    :cond_7
    const/4 v1, 0x0

    .line 185
    .local v1, "curVal":Ljava/lang/String;
    if-ne v3, p2, :cond_8

    .line 186
    const-string v1, "1"

    goto :goto_2

    .line 188
    :cond_8
    const-string v1, "0"

    .line 189
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$600(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V

    .line 191
    :goto_2
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$700(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 192
    const/4 v0, 0x1

    .line 193
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$702(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    :cond_9
    if-eqz v0, :cond_a

    .line 196
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    const-string v3, "connect_state"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$800(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .end local v1    # "curVal":Ljava/lang/String;
    :cond_a
    nop

    .line 202
    :goto_3
    return-void

    .line 178
    .end local v0    # "bChanged":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .line 129
    const/4 v0, 0x0

    .line 131
    .local v0, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 135
    nop

    .line 136
    const-string v1, "FridgeManager##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLeScan,device addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",rssi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",adv="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-static {p3}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->byte2hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FridgeManager##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get name e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public onManagerInit()V
    .locals 4

    .line 267
    const-string v0, "FridgeManager##"

    const-string v1, "onManagerInit"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$BluetoothCallback$pm7jIGexJfp5cnqN2RcHoeb77k0;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$BluetoothCallback$pm7jIGexJfp5cnqN2RcHoeb77k0;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$1200(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 273
    const-string v0, "FridgeManager##"

    const-string v1, "device is null,get again"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$1300(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V

    .line 276
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$BluetoothCallback$x-gIz7P7bKKInovT3Gnjxoxgr2Q;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$BluetoothCallback$x-gIz7P7bKKInovT3Gnjxoxgr2Q;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 279
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .line 205
    const-string v0, "FridgeManager##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServicesDiscovered,status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    if-nez p2, :cond_0

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    const-string v1, "100"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$702(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$900(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;Landroid/bluetooth/BluetoothGatt;)V

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$BluetoothCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    const-string v1, "connect_state"

    const-string v2, "100"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->access$800(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_0
    return-void
.end method
