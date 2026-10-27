.class Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$3;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothTestUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->disable(Landroid/bluetooth/BluetoothAdapter;)V
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

    .line 523
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$3;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;

    iput-object p2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$3;->val$completionSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 526
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 528
    return-void

    .line 530
    :cond_0
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 532
    .local v1, "state":I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 533
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$3;->val$completionSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 535
    :cond_1
    return-void
.end method
