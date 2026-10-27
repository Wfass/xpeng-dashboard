.class public Lcom/xiaopeng/lib_xpbt/bluetooth/PairReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PairReceiver.java"


# static fields
.field public static xPairListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib_xpbt/bluetooth/XPairListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib_xpbt/bluetooth/PairReceiver;->xPairListeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static addBluetoothManager(Lcom/xiaopeng/lib_xpbt/bluetooth/XPairListener;)V
    .locals 1
    .param p0, "xBluetoothManager"    # Lcom/xiaopeng/lib_xpbt/bluetooth/XPairListener;

    .line 34
    sget-object v0, Lcom/xiaopeng/lib_xpbt/bluetooth/PairReceiver;->xPairListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 22
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 23
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isBondingInitiatedLocally()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 24
    .local v1, "isFromRemote":Z
    new-instance v2, Lcom/xiaopeng/lib_xpbt/XpBtDevice;

    invoke-direct {v2}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;-><init>()V

    .line 25
    .local v2, "xpBtDevice":Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->setAddress(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->setName(Ljava/lang/String;)V

    .line 27
    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->getCategory(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->setCategory(I)V

    .line 28
    sget-object v3, Lcom/xiaopeng/lib_xpbt/bluetooth/PairReceiver;->xPairListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/lib_xpbt/bluetooth/XPairListener;

    .line 29
    .local v4, "listener":Lcom/xiaopeng/lib_xpbt/bluetooth/XPairListener;
    const/4 v5, 0x0

    invoke-interface {v4, v2, v1, v5}, Lcom/xiaopeng/lib_xpbt/bluetooth/XPairListener;->onPairRequest(Lcom/xiaopeng/lib_xpbt/XpBtDevice;ZI)V

    .line 30
    .end local v4    # "listener":Lcom/xiaopeng/lib_xpbt/bluetooth/XPairListener;
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method
