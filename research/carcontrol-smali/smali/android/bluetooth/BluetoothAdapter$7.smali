.class Landroid/bluetooth/BluetoothAdapter$7;
.super Landroid/bluetooth/le/ScanCallback;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field final synthetic val$serviceUuids:[Ljava/util/UUID;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;[Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 0

    .line 3976
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$7;->val$serviceUuids:[Ljava/util/UUID;

    iput-object p3, p0, Landroid/bluetooth/BluetoothAdapter$7;->val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 7

    const-string v0, "BluetoothAdapter"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const-string p1, "LE Scan has already started"

    .line 3981
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3984
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3988
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->val$serviceUuids:[Ljava/util/UUID;

    if-eqz v1, :cond_4

    .line 3989
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3990
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$7;->val$serviceUuids:[Ljava/util/UUID;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 3991
    new-instance v6, Landroid/os/ParcelUuid;

    invoke-direct {v6, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3993
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3994
    invoke-interface {v2, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const-string/jumbo p1, "uuids does not match"

    .line 3996
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4001
    :cond_4
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$7;->val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result p2

    .line 4002
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object p1

    .line 4001
    invoke-interface {v0, v1, p2, p1}, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V

    return-void
.end method
