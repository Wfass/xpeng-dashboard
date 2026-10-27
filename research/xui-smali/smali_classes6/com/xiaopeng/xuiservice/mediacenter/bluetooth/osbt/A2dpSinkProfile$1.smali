.class Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile$1;
.super Ljava/lang/Object;
.source "A2dpSinkProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;

    .line 114
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->access$002(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->access$000(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;)Landroid/bluetooth/BluetoothA2dpSink;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 119
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->access$102(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;Z)Z

    .line 120
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->access$102(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;Z)Z

    .line 125
    return-void
.end method
