.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity$1;
.super Ljava/lang/Object;
.source "BluetoothTestActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$a;


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

.field final synthetic wL:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;Ljava/lang/String;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity$1;->II:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;

    iput-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity$1;->wL:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iU()V
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity$1;->II:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;)Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity$1;->wL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->bB(Ljava/lang/String;)V

    .line 435
    return-void
.end method
