.class public Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;
.super Ljava/lang/Object;
.source "A2dpSinkProfile.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "A2dpSinkProfile"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field private mProfileReady:Z

.field private mService:Landroid/bluetooth/BluetoothA2dpSink;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->mContext:Landroid/content/Context;

    .line 22
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;)Landroid/bluetooth/BluetoothA2dpSink;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;

    .line 13
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    return-object v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dpSink;

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;
    .param p1, "x1"    # Z

    .line 13
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->mProfileReady:Z

    return p1
.end method

.method private getDisconnectedDevice()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dpSink;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 111
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public disconnectedA2dp(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->getConnectedDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 34
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 35
    const-string v1, "A2dpSinkProfile"

    const-string v2, "disconnectedA2dp"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothA2dpSink;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 39
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    return-void
.end method

.method public getA2dpConnectedAddress()Ljava/lang/String;
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "A2dpSinkProfile"

    const-string v1, "getA2dpConnectedAddress"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    const-string v1, "A2dpSinkProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getA2dpConnectedAddress device list not null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 78
    .end local v0    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    const-string v0, "A2dpSinkProfile"

    const-string v1, "getA2dpConnectedAddress end return null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, ""

    return-object v0
.end method

.method public getA2dpStatus(Ljava/lang/String;)I
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 63
    return v1

    .line 65
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->getConnectedDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 66
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    nop

    :cond_1
    return v1
.end method

.method public getConnectedDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 87
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    return-object v2

    .line 90
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    goto :goto_0

    .line 93
    .end local v0    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isA2dpConnected(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->getConnectedDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 28
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public pauseRender()Z
    .locals 1

    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public requestConnectedA2dp(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->getDisconnectedDevice()Ljava/util/List;

    move-result-object v0

    .line 43
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v1, 0x0

    .line 44
    .local v1, "target":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 46
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    move-object v1, v3

    .line 48
    goto :goto_1

    .line 50
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    goto :goto_0

    .line 52
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 53
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothA2dpSink;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 55
    :cond_2
    return-void
.end method

.method public setLocalVolume(F)V
    .locals 0
    .param p1, "volume"    # F

    .line 59
    return-void
.end method

.method public startRender()Z
    .locals 1

    .line 103
    const/4 v0, 0x1

    return v0
.end method
