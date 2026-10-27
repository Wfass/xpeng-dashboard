.class public Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;
.super Lcom/xiaopeng/lib_xpbt/BaseManager;
.source "XExternalBluetoothManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$ConnectionStateChangeHandler;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$BondListChangedHandler;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$BondStateChangeHandler;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$DiscoveryEndHandler;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$DiscoveryStartHandler;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$AdapterStateChangeHandler;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$DeviceFoundHandler;
    }
.end annotation


# instance fields
.field mBtBoxesUtil:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

.field mExternalBluetoothControl:Lcom/xiaopeng/btservice/external/XPBluetoothControl;

.field private mIsRegisterNF:Z

.field xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xBluetoothListener"    # Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    .line 33
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/BaseManager;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    .line 35
    invoke-static {p1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->mBtBoxesUtil:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->mBtBoxesUtil:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->getXPBluetoothControl(I)Lcom/xiaopeng/btservice/external/XPBluetoothControl;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->mExternalBluetoothControl:Lcom/xiaopeng/btservice/external/XPBluetoothControl;

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->mExternalBluetoothControl:Lcom/xiaopeng/btservice/external/XPBluetoothControl;

    iget-object v0, v0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->mConnection:Lcom/xiaopeng/btservice/base/AbstractConnection;

    new-instance v1, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$1;

    invoke-direct {v1, p0, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$1;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/btservice/base/AbstractConnection;->registerConnecteCompletedCallback(Lcom/xiaopeng/btservice/base/AbstractConnection$ConnecteCompletedCallback;)V

    .line 44
    iget-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->mIsRegisterNF:Z

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->mBtBoxesUtil:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->mExternalBluetoothControl:Lcom/xiaopeng/btservice/external/XPBluetoothControl;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->registerCallback(Lcom/xiaopeng/btservice/base/AbsControl;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->mIsRegisterNF:Z

    .line 48
    :cond_0
    const-string v0, "xiaopeng.bluetooth.action.FOUND"

    new-instance v1, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$DeviceFoundHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$DeviceFoundHandler;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->addHandler(Ljava/lang/String;Lcom/xiaopeng/lib_xpbt/CallBackHandler;)V

    .line 49
    const-string v0, "xiaopeng.bluetooth.action.ACTION_STATE_CHANGED"

    new-instance v1, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$AdapterStateChangeHandler;

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$AdapterStateChangeHandler;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->addHandler(Ljava/lang/String;Lcom/xiaopeng/lib_xpbt/CallBackHandler;)V

    .line 50
    const-string v0, "xiaopeng.bluetooth.action.DISCOVERY_STARTED"

    new-instance v1, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$DiscoveryStartHandler;

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$DiscoveryStartHandler;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->addHandler(Ljava/lang/String;Lcom/xiaopeng/lib_xpbt/CallBackHandler;)V

    .line 51
    const-string v0, "xiaopeng.bluetooth.action.DISCOVERY_FINISHED"

    new-instance v1, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$DiscoveryEndHandler;

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$DiscoveryEndHandler;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->addHandler(Ljava/lang/String;Lcom/xiaopeng/lib_xpbt/CallBackHandler;)V

    .line 52
    const-string v0, "xiaopeng.bluetooth.action.BOND_STATE_CHANGED"

    new-instance v1, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$BondStateChangeHandler;

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$BondStateChangeHandler;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->addHandler(Ljava/lang/String;Lcom/xiaopeng/lib_xpbt/CallBackHandler;)V

    .line 53
    const-string v0, "xiaopeng.bluetooth.action.BOND_LIST_CHANGED"

    new-instance v1, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$BondListChangedHandler;

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$BondListChangedHandler;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->addHandler(Ljava/lang/String;Lcom/xiaopeng/lib_xpbt/CallBackHandler;)V

    .line 54
    const-string v0, "xiaopeng.bluetooth.action.CONNECTION_STATE_CHANGED"

    new-instance v1, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$ConnectionStateChangeHandler;

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$ConnectionStateChangeHandler;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->addHandler(Ljava/lang/String;Lcom/xiaopeng/lib_xpbt/CallBackHandler;)V

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->register()V

    .line 56
    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->stopDiscovery()Z

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->mExternalBluetoothControl:Lcom/xiaopeng/btservice/external/XPBluetoothControl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->connectDevice(Ljava/lang/String;)Z

    move-result v0

    .line 123
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 124
    return v0
.end method

.method public disconnect(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->stopDiscovery()Z

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->mExternalBluetoothControl:Lcom/xiaopeng/btservice/external/XPBluetoothControl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->disConnectDevice(Ljava/lang/String;)Z

    move-result v0

    .line 133
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 134
    return v0
.end method

.method public getBondState(Ljava/lang/String;)I
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public getBtLocalName()Ljava/lang/String;
    .locals 1

    .line 167
    const-string v0, "external can\'t support this interface!"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 168
    const-string v0, ""

    return-object v0
.end method

.method public getConnectedAddress()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->mExternalBluetoothControl:Lcom/xiaopeng/btservice/external/XPBluetoothControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->getConnectedDevice()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 189
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    return-object v1
.end method

.method public getConnectionState(Ljava/lang/String;)I
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->mExternalBluetoothControl:Lcom/xiaopeng/btservice/external/XPBluetoothControl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->getConnectionState(Ljava/lang/String;)I

    move-result v0

    .line 155
    .local v0, "state":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 156
    return v0
.end method

.method public getPairedDevices()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib_xpbt/XpBtDevice;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v0, "bondDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/lib_xpbt/XpBtDevice;>;"
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->mExternalBluetoothControl:Lcom/xiaopeng/btservice/external/XPBluetoothControl;

    invoke-virtual {v1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->reqXpBtPairedDevices()Ljava/util/List;

    move-result-object v1

    .line 141
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/aidl/XpBluetoothDevice;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 142
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nforetek/bt/aidl/XpBluetoothDevice;

    .line 143
    .local v3, "bluetoothDevice":Lcom/nforetek/bt/aidl/XpBluetoothDevice;
    new-instance v4, Lcom/xiaopeng/lib_xpbt/XpBtDevice;

    invoke-direct {v4}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;-><init>()V

    .line 144
    .local v4, "xpBtDevice":Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    invoke-virtual {v3}, Lcom/nforetek/bt/aidl/XpBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->setName(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v3}, Lcom/nforetek/bt/aidl/XpBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->setAddress(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v3    # "bluetoothDevice":Lcom/nforetek/bt/aidl/XpBluetoothDevice;
    .end local v4    # "xpBtDevice":Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    goto :goto_0

    .line 149
    :cond_0
    return-object v0
.end method

.method public isBtDiscoverable()Z
    .locals 1

    .line 173
    const-string v0, "external can\'t support this interface!"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public isDiscovering()Z
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->mExternalBluetoothControl:Lcom/xiaopeng/btservice/external/XPBluetoothControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->isDiscovering()Z

    move-result v0

    .line 81
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 82
    return v0
.end method

.method public isEnabled()Z
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->mExternalBluetoothControl:Lcom/xiaopeng/btservice/external/XPBluetoothControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->isDeviceEnabled()Z

    move-result v0

    .line 61
    .local v0, "enable":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 62
    return v0
.end method

.method public reqBtPair(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 101
    const-string v0, "external can\'t support this interface! you can use connect interface"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public reqUnpair(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->mExternalBluetoothControl:Lcom/xiaopeng/btservice/external/XPBluetoothControl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->unpair(Ljava/lang/String;)Z

    move-result v0

    .line 108
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 109
    return v0
.end method

.method public setBtDiscoverable(Z)Z
    .locals 1
    .param p1, "discoverable"    # Z

    .line 179
    const-string v0, "external can\'t support this interface!"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public setBtLocalName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 161
    const-string v0, "external can\'t support this interface!"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public setEnable(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 67
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$2;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    const-string v0, "setEnable end"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public startDiscovery()Z
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->mExternalBluetoothControl:Lcom/xiaopeng/btservice/external/XPBluetoothControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->startSearch()Z

    move-result v0

    .line 88
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 89
    return v0
.end method

.method public stopDiscovery()Z
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->mExternalBluetoothControl:Lcom/xiaopeng/btservice/external/XPBluetoothControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->stopSearch()Z

    move-result v0

    .line 95
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 96
    return v0
.end method
