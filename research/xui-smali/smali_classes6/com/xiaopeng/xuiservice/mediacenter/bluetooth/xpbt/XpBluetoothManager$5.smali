.class Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$5;
.super Ljava/lang/Object;
.source "XpBluetoothManager.java"

# interfaces
.implements Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;

    .line 242
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$5;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdapterDiscoveryFinished(I)V
    .locals 0
    .param p1, "moduleType"    # I

    .line 266
    return-void
.end method

.method public onAdapterDiscoveryStarted(I)V
    .locals 0
    .param p1, "moduleType"    # I

    .line 261
    return-void
.end method

.method public onAdapterStateChanged(III)V
    .locals 3
    .param p1, "prevState"    # I
    .param p2, "newState"    # I
    .param p3, "moduleType"    # I

    .line 250
    const-string v0, "XpBluetoothManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdapterStateChanged prevState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &newState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$5;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$5;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$5;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;

    .line 253
    .local v1, "callback":Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;->onAdapterStateChanged(II)V

    .line 254
    .end local v1    # "callback":Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;
    goto :goto_0

    .line 256
    :cond_0
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/xiaopeng/lib_xpbt/XpBtDevice;III)V
    .locals 0
    .param p1, "xpBtDevice"    # Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I
    .param p4, "moduleType"    # I

    .line 272
    return-void
.end method

.method public onDeviceFound(Lcom/xiaopeng/lib_xpbt/XpBtDevice;I)V
    .locals 0
    .param p1, "xpBtDevice"    # Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    .param p2, "moduleType"    # I

    .line 246
    return-void
.end method

.method public onPairingRequest(Lcom/xiaopeng/lib_xpbt/XpBtDevice;ZI)V
    .locals 0
    .param p1, "xpBtDevice"    # Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    .param p2, "isFromRemote"    # Z
    .param p3, "moduleType"    # I

    .line 277
    return-void
.end method
