.class Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$6;
.super Ljava/lang/Object;
.source "RemoteManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->getHidProfileProxy()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    .line 232
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$6;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 235
    const-string v0, "RemoteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected, profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$6;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$6;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 239
    .local v0, "hasBond":Z
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$6;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    move-object v2, p2

    check-cast v2, Landroid/bluetooth/BluetoothHidHost;

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$202(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Landroid/bluetooth/BluetoothHidHost;)Landroid/bluetooth/BluetoothHidHost;

    .line 241
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$6;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$500(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 242
    const-string v1, "RemoteManager"

    const-string v2, "connect hid profile ..."

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$6;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Landroid/bluetooth/BluetoothHidHost;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$6;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHidHost;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 247
    .end local v0    # "hasBond":Z
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 3
    .param p1, "profile"    # I

    .line 251
    const-string v0, "RemoteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected, profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method
