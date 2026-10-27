.class Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiLeScanCallback;
.super Landroid/bluetooth/le/ScanCallback;
.source "GattAospImpl.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XuiLeScanCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)V
    .locals 0

    .line 1143
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiLeScanCallback;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;

    .line 1143
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiLeScanCallback;-><init>(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1156
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    const-string v0, "GattAospImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBatchScanResults,size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    return-void
.end method

.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .line 1146
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiLeScanCallback;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$500(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Landroid/bluetooth/BluetoothDevice;I[B)V

    .line 1147
    return-void
.end method

.method public onScanFailed(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .line 1161
    const-string v0, "GattAospImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanFailed,errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 1
    .param p1, "callbackType"    # I
    .param p2, "result"    # Landroid/bluetooth/le/ScanResult;

    .line 1151
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$XuiLeScanCallback;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$600(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;ILandroid/bluetooth/le/ScanResult;)V

    .line 1152
    return-void
.end method
