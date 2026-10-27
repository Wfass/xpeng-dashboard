.class Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager$2;
.super Landroid/content/BroadcastReceiver;
.source "OsBluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;

    .line 251
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 254
    const-string v0, "XuiOsBluetoothManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mProfileReceiver action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 257
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 258
    .local v2, "newState":I
    const-string v4, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 259
    .local v4, "oldState":I
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x3f9a5976

    if-eq v5, v6, :cond_2

    const v6, 0x264968e

    if-eq v5, v6, :cond_1

    const v3, 0x1ab8cab8

    if-eq v5, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const-string v5, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_2
    const-string v3, "android.bluetooth.headsetclient.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, -0x1

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 266
    :pswitch_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;

    invoke-static {v3, v1, v4, v2}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->access$200(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_2

    .line 261
    :pswitch_1
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;

    invoke-static {v3, v1, v4, v2}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;Landroid/bluetooth/BluetoothDevice;II)V

    .line 262
    nop

    .line 270
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
