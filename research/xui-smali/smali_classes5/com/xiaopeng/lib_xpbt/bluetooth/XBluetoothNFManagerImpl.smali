.class public Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;
.super Lcom/xiaopeng/lib_xpbt/BaseManager;
.source "XBluetoothNFManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManager;
.implements Lcom/xiaopeng/lib_xpbt/bluetooth/XPairListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$DeviceNameChangeHandler;
    }
.end annotation


# instance fields
.field volatile getPairedDevices:Z

.field mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

.field mBluetoothControlCallback:Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

.field mBtBoxesUtil:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

.field pairedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib_xpbt/XpBtDevice;",
            ">;"
        }
    .end annotation
.end field

.field xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xBluetoothListener"    # Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    .line 42
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/BaseManager;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->pairedDevices:Ljava/util/List;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->getPairedDevices:Z

    .line 318
    new-instance v0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;)V

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBluetoothControlCallback:Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    .line 43
    iput-object p2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    .line 44
    invoke-static {}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->getInstance()Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBtBoxesUtil:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBtBoxesUtil:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBluetoothControlCallback:Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->getBluetoothControl(Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;)Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBtBoxesUtil:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->registerCallback(Lcom/xiaopeng/btservice/base/AbsControl;)V

    .line 47
    invoke-static {p0}, Lcom/xiaopeng/lib_xpbt/bluetooth/PairReceiver;->addBluetoothManager(Lcom/xiaopeng/lib_xpbt/bluetooth/XPairListener;)V

    .line 48
    const-string v0, "android.bluetooth.device.action.NAME_CHANGED"

    new-instance v1, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$DeviceNameChangeHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$DeviceNameChangeHandler;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->addHandler(Ljava/lang/String;Lcom/xiaopeng/lib_xpbt/CallBackHandler;)V

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->register()V

    .line 50
    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;BLjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;
    .param p1, "x1"    # B
    .param p2, "x2"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->getBluetoothCategory(BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getBluetoothCategory(BLjava/lang/String;)I
    .locals 5
    .param p1, "category"    # B
    .param p2, "address"    # Ljava/lang/String;

    .line 249
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 250
    const/16 v0, 0x200

    return v0

    .line 252
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 253
    .local v0, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    const/16 v1, 0x1f00

    if-eqz v0, :cond_2

    .line 254
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 255
    .local v2, "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    if-nez v2, :cond_1

    .line 256
    return v1

    .line 258
    :cond_1
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    .line 259
    .local v1, "coverCategory":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBluetoothCategory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 260
    return v1

    .line 262
    .end local v1    # "coverCategory":I
    .end local v2    # "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    :cond_2
    return v1
.end method

.method public static synthetic lambda$getPairedDevices$0(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;)V
    .locals 1

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->getPairedDevices:Z

    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->reqBtConnectHfpA2dp(Ljava/lang/String;)I

    move-result v0

    .line 125
    .local v0, "planedProfile":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 126
    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public coverBTState(I)I
    .locals 3
    .param p1, "nfState"    # I

    .line 268
    packed-switch p1, :pswitch_data_0

    .line 279
    const/16 v0, 0xa

    goto :goto_0

    .line 276
    :pswitch_0
    const/16 v0, 0xd

    .line 277
    .local v0, "state":I
    goto :goto_0

    .line 270
    .end local v0    # "state":I
    :pswitch_1
    const/16 v0, 0xc

    .line 271
    .restart local v0    # "state":I
    goto :goto_0

    .line 273
    .end local v0    # "state":I
    :pswitch_2
    const/16 v0, 0xb

    .line 274
    .restart local v0    # "state":I
    nop

    .line 279
    :goto_0
    nop

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nfState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 282
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public coverBondState(I)I
    .locals 1
    .param p1, "nfState"    # I

    .line 287
    packed-switch p1, :pswitch_data_0

    .line 295
    const/16 v0, 0xa

    goto :goto_0

    .line 292
    :pswitch_0
    const/16 v0, 0xc

    .line 293
    .local v0, "state":I
    goto :goto_0

    .line 289
    .end local v0    # "state":I
    :pswitch_1
    const/16 v0, 0xb

    .line 290
    .restart local v0    # "state":I
    nop

    .line 295
    :goto_0
    nop

    .line 297
    return v0

    :pswitch_data_0
    .packed-switch 0x14b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public coverConnectionState(I)I
    .locals 1
    .param p1, "nfState"    # I

    .line 302
    const/16 v0, 0x78

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8c

    if-eq p1, v0, :cond_0

    .line 313
    const/4 v0, 0x0

    goto :goto_0

    .line 304
    :cond_0
    const/4 v0, 0x2

    .line 305
    .local v0, "state":I
    goto :goto_0

    .line 310
    .end local v0    # "state":I
    :cond_1
    const/4 v0, 0x3

    .line 311
    .restart local v0    # "state":I
    goto :goto_0

    .line 307
    .end local v0    # "state":I
    :cond_2
    const/4 v0, 0x1

    .line 308
    .restart local v0    # "state":I
    nop

    .line 313
    :goto_0
    nop

    .line 315
    return v0
.end method

.method public disconnect(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->reqBtDisconnectAll()I

    move-result v0

    .line 133
    .local v0, "profile":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 134
    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getBondState(Ljava/lang/String;)I
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0xa

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "address is empty"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 109
    return v1

    .line 112
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 113
    .local v0, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_1

    .line 114
    const-string v2, "remoteDevice is null"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 115
    return v1

    .line 117
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    .line 118
    .local v1, "bondState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bondState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 119
    const/4 v2, 0x0

    return v2
.end method

.method public getBtLocalName()Ljava/lang/String;
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->getBtLocalName()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "nfName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "osName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "osName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 178
    return-object v1

    .line 180
    .end local v1    # "osName":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nfName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 181
    return-object v0
.end method

.method public getConnectedAddress()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v0, "connectedAddress":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-virtual {v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->getHfpConnectedAddress()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "hfpAddress":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-virtual {v2}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->getA2dpConnectedAddress()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "a2dpAddress":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 212
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedAddress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 215
    return-object v0
.end method

.method public getConnectionState(Ljava/lang/String;)I
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 159
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->isA2dpConnected(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->isHfpConnected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 160
    :cond_1
    :goto_0
    const/4 v0, 0x2

    return v0
.end method

.method public getPairedDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib_xpbt/XpBtDevice;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->pairedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->getPairedDevices:Z

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->reqBtPairedDevices()Z

    .line 142
    const-string v0, "getPairedDevices start"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 144
    .local v0, "timeoutHandler":Landroid/os/Handler;
    new-instance v1, Lcom/xiaopeng/lib_xpbt/bluetooth/-$$Lambda$XBluetoothNFManagerImpl$QxYOK4VMiEsqU_abLDoVkvYr0FA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib_xpbt/bluetooth/-$$Lambda$XBluetoothNFManagerImpl$QxYOK4VMiEsqU_abLDoVkvYr0FA;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    :goto_0
    iget-boolean v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->getPairedDevices:Z

    if-nez v1, :cond_0

    .line 147
    const-wide/16 v1, 0x14

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_1
    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 152
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPairedDevices end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->pairedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->pairedDevices:Ljava/util/List;

    return-object v1
.end method

.method public isA2dpConnected(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->getA2dpConnectedAddress()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "a2dpAddress":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xpbluetooth nf isA2dpConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " a2dpAddress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 237
    return v2

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-virtual {v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->getA2dpConnectionState()I

    move-result v1

    .line 240
    .local v1, "a2dpState":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xpbluetooth nf address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isA2dpConnected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 241
    const/16 v3, 0x8c

    if-lt v1, v3, :cond_1

    .line 242
    const/4 v2, 0x1

    return v2

    .line 244
    :cond_1
    return v2
.end method

.method public isBtDiscoverable()Z
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->isBtDiscoverable()Z

    move-result v0

    .line 187
    .local v0, "discoverable":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBtDiscoverable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 188
    return v0
.end method

.method public isDiscovering()Z
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->isBtDiscovering()Z

    move-result v0

    .line 69
    .local v0, "discovering":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDiscovering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 70
    return v0
.end method

.method public isEnabled()Z
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->isBtEnabled()Z

    move-result v0

    .line 55
    .local v0, "enable":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 56
    return v0
.end method

.method public isHfpConnected(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->getHfpConnectedAddress()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "hfpAddress":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBtPhoneConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hfpAddress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 222
    return v2

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-virtual {v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->getHfpConnectionState()I

    move-result v1

    .line 225
    .local v1, "hfpState":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xpbluetooth nf address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isBtPhoneConnected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 226
    const/16 v3, 0x8c

    if-lt v1, v3, :cond_1

    .line 227
    const/4 v2, 0x1

    return v2

    .line 229
    :cond_1
    return v2
.end method

.method public onPairRequest(Lcom/xiaopeng/lib_xpbt/XpBtDevice;ZI)V
    .locals 1
    .param p1, "xpBtDevice"    # Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    .param p2, "isFromRemote"    # Z
    .param p3, "moduleType"    # I

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;->onPairingRequest(Lcom/xiaopeng/lib_xpbt/XpBtDevice;ZI)V

    .line 414
    :cond_0
    return-void
.end method

.method public reqBtPair(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->stopDiscovery()Z

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->reqBtPair(Ljava/lang/String;)Z

    move-result v0

    .line 93
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reqBtPair: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 94
    return v0
.end method

.method public reqUnpair(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->reqBtUnpair(Ljava/lang/String;)Z

    move-result v0

    .line 101
    .local v0, "success":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reqUnpair: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 102
    return v0
.end method

.method public setBtDiscoverable(Z)Z
    .locals 3
    .param p1, "discoverable"    # Z

    .line 194
    if-eqz p1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->setBtDiscoverableTimeout(I)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0

    .line 197
    .end local v0    # "result":Z
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->setBtDiscoverableTimeout(I)Z

    move-result v0

    .line 199
    .restart local v0    # "result":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBtDiscoverable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " discoverable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 200
    return v0
.end method

.method public setBtLocalName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->setBtLocalName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setEnable(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->setBtEnabled(Z)Z

    move-result v0

    .line 62
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 63
    return v0
.end method

.method public startDiscovery()Z
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->startBtDiscovery()Z

    move-result v0

    .line 76
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDiscovery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 77
    return v0
.end method

.method public stopDiscovery()Z
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->stopBtDiscovery()Z

    move-result v0

    .line 83
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopDiscovery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 84
    return v0
.end method
