.class public Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;
.super Lcom/xiaopeng/lib_xpbt/BaseManager;
.source "XHidManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib_xpbt/hid/XHidManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl$HidStateChangedHandler;
    }
.end annotation


# instance fields
.field bluetoothHidHost:Landroid/bluetooth/BluetoothHidHost;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field xHidListener:Lcom/xiaopeng/lib_xpbt/hid/XHidListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/hid/XHidListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xHidListener"    # Lcom/xiaopeng/lib_xpbt/hid/XHidListener;

    .line 26
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/BaseManager;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p2, p0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;->xHidListener:Lcom/xiaopeng/lib_xpbt/hid/XHidListener;

    .line 28
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl$1;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl$1;-><init>(Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;Lcom/xiaopeng/lib_xpbt/hid/XHidListener;)V

    .line 49
    .local v0, "mHfpListener":Landroid/bluetooth/BluetoothProfile$ServiceListener;
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 52
    .end local v0    # "mHfpListener":Landroid/bluetooth/BluetoothProfile$ServiceListener;
    :cond_0
    const-string v0, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    new-instance v1, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl$HidStateChangedHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl$HidStateChangedHandler;-><init>(Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;->addHandler(Ljava/lang/String;Lcom/xiaopeng/lib_xpbt/CallBackHandler;)V

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;->register()V

    .line 54
    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;->bluetoothHidHost:Landroid/bluetooth/BluetoothHidHost;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 59
    const-string v0, "bluetoothHidHost is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 60
    return v1

    .line 63
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const-string v0, "address is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 65
    return v1

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 69
    .local v0, "targetDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_2

    .line 70
    const-string v2, "targetDevice is NULL"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 71
    return v1

    .line 74
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;->bluetoothHidHost:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHidHost;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 75
    .local v1, "result":Z
    const-string v2, "finish"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 76
    return v1
.end method

.method public disconnect(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;->bluetoothHidHost:Landroid/bluetooth/BluetoothHidHost;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 82
    const-string v0, "bluetoothHidHost is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 83
    return v1

    .line 86
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    const-string v0, "address is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 88
    return v1

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 92
    .local v0, "targetDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_2

    .line 93
    const-string v2, "targetDevice is NULL"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 94
    return v1

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;->bluetoothHidHost:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHidHost;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 98
    .local v1, "result":Z
    const-string v2, "finish"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 99
    return v1
.end method

.method public getHidConnectionState()I
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;->bluetoothHidHost:Landroid/bluetooth/BluetoothHidHost;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 105
    const-string v0, "bluetoothA2dpSink is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 106
    return v1

    .line 108
    :cond_0
    const/4 v0, 0x0

    .line 109
    .local v0, "state":I
    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;->bluetoothHidHost:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHidHost;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 110
    .local v2, "connectedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 111
    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;->bluetoothHidHost:Landroid/bluetooth/BluetoothHidHost;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothHidHost;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 113
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 114
    return v0
.end method

.method public getHidConnectionState(Ljava/lang/String;)I
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;->bluetoothHidHost:Landroid/bluetooth/BluetoothHidHost;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 120
    const-string v0, "bluetoothHidHost is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 121
    return v1

    .line 124
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    const-string v0, "address is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 126
    return v1

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 130
    .local v0, "targetDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_2

    .line 131
    const-string v2, "targetDevice is NULL"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 132
    return v1

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;->bluetoothHidHost:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHidHost;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 135
    .local v1, "hidState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a2dpState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 136
    return v1
.end method
