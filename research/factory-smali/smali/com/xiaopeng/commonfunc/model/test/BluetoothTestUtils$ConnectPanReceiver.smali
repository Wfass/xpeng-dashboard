.class Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectPanReceiver;
.super Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;
.source "BluetoothTestUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectPanReceiver"
.end annotation


# instance fields
.field private mRole:I

.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "role"    # I
    .param p4, "expectedFlags"    # I

    .line 305
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectPanReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;

    .line 306
    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;-><init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;Landroid/bluetooth/BluetoothDevice;II)V

    .line 308
    iput p3, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectPanReceiver;->mRole:I

    .line 309
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 313
    iget v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectPanReceiver;->mRole:I

    const-string v1, "android.bluetooth.pan.extra.LOCAL_ROLE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 314
    return-void

    .line 317
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 318
    return-void
.end method
