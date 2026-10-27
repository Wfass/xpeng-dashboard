.class Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$1;
.super Ljava/lang/Object;
.source "XpBluetoothManager.java"

# interfaces
.implements Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;


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

    .line 188
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onA2dpStateChanged(Lcom/xiaopeng/lib_xpbt/XpBtDevice;III)V
    .locals 3
    .param p1, "xpBtDevice"    # Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I
    .param p4, "moduleType"    # I

    .line 197
    const-string v0, "XpBluetoothManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onA2dpStateChanged address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &prevState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &newState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;

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

    .line 200
    .local v1, "callback":Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;
    invoke-virtual {p1}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;->onA2dpStateChanged(Ljava/lang/String;II)V

    .line 201
    .end local v1    # "callback":Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;
    goto :goto_0

    .line 203
    :cond_0
    return-void
.end method

.method public onReady()V
    .locals 0

    .line 192
    return-void
.end method
