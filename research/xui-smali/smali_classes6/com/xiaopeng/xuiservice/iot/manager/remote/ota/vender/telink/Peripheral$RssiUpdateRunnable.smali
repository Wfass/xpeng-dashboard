.class final Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$RssiUpdateRunnable;
.super Ljava/lang/Object;
.source "Peripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RssiUpdateRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;)V
    .locals 0

    .line 1010
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$RssiUpdateRunnable;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$1;

    .line 1010
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$RssiUpdateRunnable;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1013
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$RssiUpdateRunnable;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    iget-boolean v0, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->monitorRssi:Z

    if-nez v0, :cond_0

    return-void

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$RssiUpdateRunnable;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1016
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$RssiUpdateRunnable;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_2

    .line 1017
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$RssiUpdateRunnable;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    .line 1020
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$RssiUpdateRunnable;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mRssiUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$RssiUpdateRunnable;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mRssiUpdateRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$RssiUpdateRunnable;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    iget v2, v2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->updateIntervalMill:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1021
    return-void
.end method
