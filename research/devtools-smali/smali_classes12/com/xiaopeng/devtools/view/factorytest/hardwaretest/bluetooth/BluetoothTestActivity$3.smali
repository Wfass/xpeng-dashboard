.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity$3;
.super Ljava/lang/Object;
.source "BluetoothTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic II:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity$3;->II:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity$3;->II:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;)Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity$3;->II:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->bA(Ljava/lang/String;)V

    .line 457
    return-void
.end method
