.class Lcom/xiaopeng/xuiservice/utils/BluetoothUtils$1;
.super Ljava/lang/Object;
.source "BluetoothUtils.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils$1;->this$0:Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 110
    .local v1, "state":I
    const-string v2, "BluetoothUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive android.bluetooth.adapter.action.STATE_CHANGED, state :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils$1;->this$0:Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;->access$000(Lcom/xiaopeng/xuiservice/utils/BluetoothUtils;)V

    .line 115
    .end local v1    # "state":I
    :cond_0
    return-void
.end method
