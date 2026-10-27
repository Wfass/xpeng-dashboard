.class Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$1;
.super Ljava/lang/Object;
.source "AccessoryBluetoothManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    .line 80
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "xiaopeng.bluetooth.a2dp.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 86
    .local v1, "status":I
    const-string v3, "PassengerBluetoothManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive ACTION_XPENG_A2DP_STATE_CHANGED state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    invoke-static {v3, v2}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->access$002(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;Z)Z

    .line 88
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->access$000(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;Z)V

    .line 90
    .end local v1    # "status":I
    :cond_1
    return-void
.end method
