.class Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$4;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothTestUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->discoverable(Landroid/bluetooth/BluetoothAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;

.field final synthetic val$completionSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;

    .line 578
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$4;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;

    iput-object p2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$4;->val$completionSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 581
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 583
    return-void

    .line 585
    :cond_0
    const-string v1, "android.bluetooth.adapter.extra.SCAN_MODE"

    const/16 v2, 0x14

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 587
    .local v1, "mode":I
    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    .line 588
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$4;->val$completionSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 590
    :cond_1
    return-void
.end method
