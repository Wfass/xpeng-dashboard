.class public Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;
.super Lcom/xiaopeng/lib_xpbt/BaseManager;
.source "XA2dpSinkManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl$A2dpStateChangedHandler;
    }
.end annotation


# instance fields
.field bluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field xa2dpSinkListener:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xa2dpSinkListener"    # Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/BaseManager;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->xa2dpSinkListener:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;

    .line 32
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl$1;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl$1;-><init>(Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;)V

    .line 53
    .local v0, "mHfpListener":Landroid/bluetooth/BluetoothProfile$ServiceListener;
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v2, 0xb

    invoke-virtual {v1, p1, v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 55
    .end local v0    # "mHfpListener":Landroid/bluetooth/BluetoothProfile$ServiceListener;
    :cond_0
    const-string v0, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    new-instance v1, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl$A2dpStateChangedHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl$A2dpStateChangedHandler;-><init>(Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->addHandler(Ljava/lang/String;Lcom/xiaopeng/lib_xpbt/CallBackHandler;)V

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->register()V

    .line 57
    return-void
.end method

.method private getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->bluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 192
    .local v0, "connectedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v1, 0x0

    .line 193
    .local v1, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 196
    :cond_0
    return-object v1
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->bluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 62
    const-string v0, "bluetoothA2dpSink is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 63
    return v1

    .line 66
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const-string v0, "address is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 68
    return v1

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 72
    .local v0, "targetDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_2

    .line 73
    const-string v2, "targetDevice is NULL"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 74
    return v1

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->bluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothA2dpSink;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 78
    .local v1, "result":Z
    const-string v2, "finish"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 79
    return v1
.end method

.method public disconnect(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->bluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 85
    const-string v0, "bluetoothA2dpSink is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 86
    return v1

    .line 89
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    const-string v0, "address is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 91
    return v1

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 95
    .local v0, "targetDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_2

    .line 96
    const-string v2, "targetDevice is NULL"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 97
    return v1

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->bluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothA2dpSink;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 101
    .local v1, "result":Z
    const-string v2, "finish"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 102
    return v1
.end method

.method public getA2dpConnectedAddress()Ljava/lang/String;
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->bluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 141
    const-string v0, "bluetoothA2dpSink is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 142
    return-object v1

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 145
    .local v0, "connectedDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_1

    .line 146
    const-string v2, "ConnectedDevices is empty"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 147
    return-object v1

    .line 149
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "address":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 151
    return-object v1
.end method

.method public getA2dpConnectionState()I
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->bluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 157
    const-string v0, "bluetoothA2dpSink is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 158
    return v1

    .line 160
    :cond_0
    const/4 v0, 0x0

    .line 161
    .local v0, "state":I
    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->bluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 162
    .local v2, "connectedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 163
    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->bluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 165
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 166
    return v0
.end method

.method public getA2dpConnectionState(Ljava/lang/String;)I
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->bluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 172
    const-string v0, "bluetoothA2dpSink is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 173
    return v1

    .line 176
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const-string v0, "address is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 178
    return v1

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 182
    .local v0, "targetDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_2

    .line 183
    const-string v2, "targetDevice is NULL"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 184
    return v1

    .line 186
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->bluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 187
    .local v1, "a2dpState":I
    return v1
.end method

.method public pauseRender()Z
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->bluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 130
    const-string v0, "bluetoothA2dpSink is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 131
    return v1

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->bluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dpSink;->startA2dpRender(Z)V

    .line 134
    const-string v0, "finish"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public setLocalVolume(F)Z
    .locals 7
    .param p1, "volume"    # F

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->bluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 108
    const-string v0, "bluetoothA2dpSink is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 109
    return v1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->bluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    const-string v2, "setA2dplocalVolume"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v2, v4, v5}, Lcom/xiaopeng/lib_xpbt/utils/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v0, "finish"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 113
    return v3
.end method

.method public startRender()Z
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->bluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v0, :cond_0

    .line 119
    const-string v0, "bluetoothA2dpSink is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x0

    return v0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->bluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dpSink;->startA2dpRender(Z)V

    .line 123
    const-string v0, "finish"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 124
    return v1
.end method
