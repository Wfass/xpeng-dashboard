.class public Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;
.super Lcom/xiaopeng/lib_xpbt/BaseManager;
.source "XBluetoothManagerImpl.java"

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
        Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$DeviceNameChangeHandler;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$ConnectionStateChangeHandler;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$BondStateChangeHandler;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$DiscoveryEndHandler;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$DiscoveryStartHandler;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$AdapterStateChangeHandler;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$DeviceFoundHandler;
    }
.end annotation


# instance fields
.field bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xBluetoothListener"    # Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/BaseManager;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    .line 34
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 35
    invoke-static {p0}, Lcom/xiaopeng/lib_xpbt/bluetooth/PairReceiver;->addBluetoothManager(Lcom/xiaopeng/lib_xpbt/bluetooth/XPairListener;)V

    .line 36
    const-string v0, "android.bluetooth.device.action.FOUND"

    new-instance v1, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$DeviceFoundHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$DeviceFoundHandler;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->addHandler(Ljava/lang/String;Lcom/xiaopeng/lib_xpbt/CallBackHandler;)V

    .line 37
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    new-instance v1, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$AdapterStateChangeHandler;

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$AdapterStateChangeHandler;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->addHandler(Ljava/lang/String;Lcom/xiaopeng/lib_xpbt/CallBackHandler;)V

    .line 38
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    new-instance v1, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$DiscoveryStartHandler;

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$DiscoveryStartHandler;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->addHandler(Ljava/lang/String;Lcom/xiaopeng/lib_xpbt/CallBackHandler;)V

    .line 39
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    new-instance v1, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$DiscoveryEndHandler;

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$DiscoveryEndHandler;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->addHandler(Ljava/lang/String;Lcom/xiaopeng/lib_xpbt/CallBackHandler;)V

    .line 40
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    new-instance v1, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$BondStateChangeHandler;

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$BondStateChangeHandler;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->addHandler(Ljava/lang/String;Lcom/xiaopeng/lib_xpbt/CallBackHandler;)V

    .line 41
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    new-instance v1, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$ConnectionStateChangeHandler;

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$ConnectionStateChangeHandler;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->addHandler(Ljava/lang/String;Lcom/xiaopeng/lib_xpbt/CallBackHandler;)V

    .line 42
    const-string v0, "android.bluetooth.device.action.NAME_CHANGED"

    new-instance v1, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$DeviceNameChangeHandler;

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$DeviceNameChangeHandler;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->addHandler(Ljava/lang/String;Lcom/xiaopeng/lib_xpbt/CallBackHandler;)V

    .line 43
    const-string v0, "android.bluetooth.device.action.ALIAS_CHANGED"

    new-instance v1, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$DeviceNameChangeHandler;

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$DeviceNameChangeHandler;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->addHandler(Ljava/lang/String;Lcom/xiaopeng/lib_xpbt/CallBackHandler;)V

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->register()V

    .line 45
    return-void
.end method

.method public static getCategory(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p0, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 379
    const/16 v0, 0x1f00

    if-eqz p0, :cond_1

    .line 380
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 381
    .local v1, "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    if-nez v1, :cond_0

    .line 382
    return v0

    .line 384
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    return v0

    .line 386
    .end local v1    # "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    :cond_1
    return v0
.end method

.method private isPhone(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 368
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 369
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 370
    .local v1, "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v1, :cond_1

    .line 371
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    .line 372
    .local v2, "category":I
    const/16 v3, 0x200

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 375
    .end local v1    # "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    .end local v2    # "category":I
    :cond_1
    return v0
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Z
    .locals 9
    .param p1, "address"    # Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 186
    const-string v0, "bluetoothAdapter is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 187
    return v1

    .line 189
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    const-string v0, "address is empty"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 191
    return v1

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 195
    .local v0, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_2

    .line 196
    const-string v2, "remoteDevice is null"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 197
    return v1

    .line 199
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 200
    .local v2, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 201
    .local v4, "bondedDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 202
    goto :goto_0

    .line 204
    :cond_3
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, v4}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->isPhone(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 205
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->disconnect(Ljava/lang/String;)Z

    .line 207
    .end local v4    # "bondedDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_4
    goto :goto_0

    .line 208
    :cond_5
    const/4 v3, 0x0

    .line 209
    .local v3, "result":Z
    iget-object v4, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v5, "connectAllEnabledProfiles"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/bluetooth/BluetoothDevice;

    aput-object v8, v7, v1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v1

    invoke-static {v4, v5, v7, v6}, Lcom/xiaopeng/lib_xpbt/utils/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 210
    .local v1, "value":Ljava/lang/Object;
    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_6

    .line 211
    move-object v4, v1

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 213
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect finish "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 214
    return v3
.end method

.method public disconnect(Ljava/lang/String;)Z
    .locals 8
    .param p1, "address"    # Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 220
    const-string v0, "bluetoothAdapter is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 221
    return v1

    .line 223
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    const-string v0, "address is empty"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 225
    return v1

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 229
    .local v0, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_2

    .line 230
    const-string v2, "remoteDevice is null"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 231
    return v1

    .line 233
    :cond_2
    const/4 v2, 0x0

    .line 234
    .local v2, "result":Z
    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v4, "disconnectAllEnabledProfiles"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/bluetooth/BluetoothDevice;

    aput-object v7, v6, v1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v3, v4, v6, v5}, Lcom/xiaopeng/lib_xpbt/utils/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 235
    .local v1, "value":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    .line 236
    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 238
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect finish: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 239
    return v2
.end method

.method public getBondState(Ljava/lang/String;)I
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0xa

    if-nez v0, :cond_0

    .line 165
    const-string v0, "bluetoothAdapter is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 166
    return v1

    .line 168
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    const-string v0, "address is empty"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 170
    return v1

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 174
    .local v0, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_2

    .line 175
    const-string v2, "remoteDevice is null"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 176
    return v1

    .line 178
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    .line 179
    .local v1, "bondState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bondState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 180
    const/4 v2, 0x0

    return v2
.end method

.method public getBtLocalName()Ljava/lang/String;
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 306
    const-string v0, "bluetoothAdapter is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 307
    const-string v0, ""

    return-object v0

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "xpbt_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    const-string v0, "\u5c0f\u9e4f\u6c7d\u8f66"

    .line 317
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 318
    return-object v0
.end method

.method public getConnectedAddress()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 353
    const-string v0, "bluetoothAdapter is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 357
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 359
    .local v3, "bondedDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 360
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bondedAddress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 363
    .end local v3    # "bondedDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    goto :goto_0

    .line 364
    :cond_2
    return-object v1
.end method

.method public getConnectionState(Ljava/lang/String;)I
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 268
    const-string v0, "bluetoothAdapter is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 269
    return v1

    .line 271
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    const-string v0, "address is empty"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 273
    return v1

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 277
    .local v0, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_2

    .line 278
    const-string v2, "remoteDevice is null"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 279
    return v1

    .line 281
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 282
    const/4 v1, 0x2

    return v1

    .line 284
    :cond_3
    return v1
.end method

.method public getPairedDevices()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib_xpbt/XpBtDevice;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 245
    const-string v0, "bluetoothAdapter is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 249
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 253
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v1, "xpBtDevices":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/lib_xpbt/XpBtDevice;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 255
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v4, Lcom/xiaopeng/lib_xpbt/XpBtDevice;

    invoke-direct {v4}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;-><init>()V

    .line 256
    .local v4, "xpBtDevice":Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->setAddress(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->setName(Ljava/lang/String;)V

    .line 258
    invoke-static {v3}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->getCategory(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->setCategory(I)V

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xpBtDevice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 260
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "xpBtDevice":Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    goto :goto_0

    .line 262
    :cond_2
    return-object v1

    .line 250
    .end local v1    # "xpBtDevices":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/lib_xpbt/XpBtDevice;>;"
    :cond_3
    :goto_1
    const-string v1, "bondedDevices is empty"

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 251
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public isBtDiscoverable()Z
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 324
    const-string v0, "bluetoothAdapter is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 325
    return v1

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    .line 328
    .local v0, "scanMode":I
    const/16 v2, 0x17

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    .line 329
    .local v1, "discoverable":Z
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish scanMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " discoverable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 330
    return v1
.end method

.method public isDiscovering()Z
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 77
    const-string v0, "bluetoothAdapter is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    return v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    .line 81
    .local v0, "isDiscovering":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDiscovering: "

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

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 50
    const-string v0, "bluetoothAdapter is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    return v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    .line 54
    .local v0, "isEnable":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 55
    return v0
.end method

.method public onPairRequest(Lcom/xiaopeng/lib_xpbt/XpBtDevice;ZI)V
    .locals 1
    .param p1, "xpBtDevice"    # Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    .param p2, "isFromRemote"    # Z
    .param p3, "moduleType"    # I

    .line 391
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;->onPairingRequest(Lcom/xiaopeng/lib_xpbt/XpBtDevice;ZI)V

    .line 394
    :cond_0
    return-void
.end method

.method public reqBtPair(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 113
    const-string v0, "bluetoothAdapter is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 114
    return v1

    .line 116
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const-string v0, "address is empty"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->stopDiscovery()Z

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 122
    .local v0, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_2

    .line 123
    const-string v2, "remoteDevice is null"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 124
    return v1

    .line 126
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v1

    .line 127
    .local v1, "result":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 128
    return v1
.end method

.method public reqUnpair(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 134
    const-string v0, "bluetoothAdapter is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 135
    return v1

    .line 137
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    const-string v0, "address is empty"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 139
    return v1

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 143
    .local v0, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_2

    .line 144
    const-string v2, "remoteDevice is null"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 145
    return v1

    .line 147
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    .line 148
    .local v1, "state":I
    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    .line 149
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "is bonding, cancelBondProcess finish"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 153
    :cond_3
    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    .line 154
    const-string v2, "already unpaired"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 155
    const/4 v2, 0x1

    return v2

    .line 157
    :cond_4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v2

    .line 158
    .local v2, "result":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 159
    return v2
.end method

.method public setBtDiscoverable(Z)Z
    .locals 3
    .param p1, "discoverable"    # Z

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 336
    const-string v0, "bluetoothAdapter is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 337
    return v1

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 341
    if-eqz p1, :cond_1

    .line 342
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0

    .line 344
    .end local v0    # "result":Z
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    move-result v0

    .line 346
    .restart local v0    # "result":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 347
    return v0
.end method

.method public setBtLocalName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 291
    const-string v0, "bluetoothAdapter is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 292
    const/4 v0, 0x0

    return v0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    move-result v0

    .line 295
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 296
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "xpbt_name"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 299
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 300
    return v0
.end method

.method public setEnable(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 61
    const-string v0, "bluetoothAdapter is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x0

    return v0

    .line 65
    :cond_0
    if-eqz p1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0

    .line 68
    .end local v0    # "result":Z
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    .line 70
    .restart local v0    # "result":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 71
    return v0
.end method

.method public startDiscovery()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 88
    const-string v0, "bluetoothAdapter is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x0

    return v0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v0

    return v0

    .line 94
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public stopDiscovery()Z
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 101
    const-string v0, "bluetoothAdapter is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 102
    return v1

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 107
    :cond_1
    return v1
.end method
