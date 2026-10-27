.class Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$1;
.super Ljava/lang/Object;
.source "Peripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->refreshCache()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    .line 286
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 290
    return-void
.end method
