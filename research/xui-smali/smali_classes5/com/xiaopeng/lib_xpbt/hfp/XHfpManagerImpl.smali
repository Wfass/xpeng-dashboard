.class public Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;
.super Lcom/xiaopeng/lib_xpbt/BaseManager;
.source "XHfpManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib_xpbt/hfp/XHfpManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;,
        Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$InBondRingChangedHandler;,
        Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$HfpAudioChangedHandler;,
        Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$HfpStateChangedHandler;
    }
.end annotation


# static fields
.field private static mIsSupportInBondRing:Z

.field public static final phoneNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

.field private final mLastStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->phoneNumber:Ljava/util/Map;

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mIsSupportInBondRing:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xHfpListener"    # Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/BaseManager;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mLastStateMap:Ljava/util/HashMap;

    .line 49
    iput-object p2, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    .line 50
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$1;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$1;-><init>(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;)V

    .line 71
    .local v0, "mHfpListener":Landroid/bluetooth/BluetoothProfile$ServiceListener;
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 73
    .end local v0    # "mHfpListener":Landroid/bluetooth/BluetoothProfile$ServiceListener;
    :cond_0
    const-string v0, "android.bluetooth.headsetclient.profile.action.AUDIO_STATE_CHANGED"

    new-instance v1, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$HfpAudioChangedHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$HfpAudioChangedHandler;-><init>(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->addHandler(Ljava/lang/String;Lcom/xiaopeng/lib_xpbt/CallBackHandler;)V

    .line 74
    const-string v0, "android.bluetooth.headsetclient.profile.action.AG_CALL_CHANGED"

    new-instance v1, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;-><init>(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->addHandler(Ljava/lang/String;Lcom/xiaopeng/lib_xpbt/CallBackHandler;)V

    .line 75
    const-string v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    new-instance v1, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$InBondRingChangedHandler;

    invoke-direct {v1, v2}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$InBondRingChangedHandler;-><init>(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->addHandler(Ljava/lang/String;Lcom/xiaopeng/lib_xpbt/CallBackHandler;)V

    .line 76
    const-string v0, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    new-instance v1, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$HfpStateChangedHandler;

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$HfpStateChangedHandler;-><init>(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->addHandler(Ljava/lang/String;Lcom/xiaopeng/lib_xpbt/CallBackHandler;)V

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->register()V

    .line 78
    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadsetClient;

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object p1
.end method

.method static synthetic access$500(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mLastStateMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 36
    sget-boolean v0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mIsSupportInBondRing:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 36
    sput-boolean p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mIsSupportInBondRing:Z

    return p0
.end method

.method private getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 362
    .local v0, "connectedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v1, 0x0

    .line 363
    .local v1, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 364
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 366
    :cond_0
    return-object v1
.end method


# virtual methods
.method public acceptCall()Z
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 188
    const-string v0, "acceptCall mBluetoothHeadsetClient is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 189
    return v1

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 192
    .local v0, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_1

    .line 193
    const-string v2, "ConnectedDevices is empty"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 194
    return v1

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v2, v0, v1}, Landroid/bluetooth/BluetoothHeadsetClient;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    .line 199
    .local v1, "result":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 200
    return v1
.end method

.method public connect(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 84
    const-string v0, "mBluetoothHeadsetClient is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 85
    return v1

    .line 88
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    const-string v0, "address is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 90
    return v1

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 94
    .local v0, "targetDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_2

    .line 95
    const-string v2, "targetDevice is NULL"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 96
    return v1

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadsetClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 100
    .local v1, "result":Z
    const-string v2, "finish"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 101
    return v1
.end method

.method public dialNumber(Ljava/lang/String;)Z
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 168
    const-string v0, "number is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 169
    return v1

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez v0, :cond_1

    .line 172
    const-string v0, "dialNumber mBluetoothHeadsetClient is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 173
    return v1

    .line 175
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 176
    .local v0, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_2

    .line 177
    const-string v2, "ConnectedDevices is empty"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 178
    return v1

    .line 180
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v2, v0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    nop

    .line 181
    .local v1, "result":Z
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 182
    return v1
.end method

.method public disconnect(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 107
    const-string v0, "mBluetoothHeadsetClient is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 108
    return v1

    .line 111
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    const-string v0, "address is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 113
    return v1

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 117
    .local v0, "targetDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_2

    .line 118
    const-string v2, "targetDevice is NULL"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 119
    return v1

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadsetClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 123
    .local v1, "result":Z
    const-string v2, "finish"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 124
    return v1
.end method

.method public getAudioSource()I
    .locals 5

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 130
    const-string v0, "mBluetoothHeadsetClient is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 131
    return v1

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 135
    .local v0, "connectedDevices":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_1

    .line 136
    const-string v2, "ConnectedDevices is empty"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothHeadsetClient;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 139
    .local v2, "audioState":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audioState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 140
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v1, 0x3

    nop

    .line 141
    .local v1, "state":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 142
    return v1
.end method

.method public getHfpConnectedAddress()Ljava/lang/String;
    .locals 6

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 304
    const-string v0, "mBluetoothAdapter is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 305
    return-object v1

    .line 307
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 308
    .local v0, "connectedDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_1

    .line 309
    const-string v2, "ConnectedDevices is empty"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 310
    return-object v1

    .line 312
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    .line 313
    .local v1, "type":I
    const/16 v2, 0x200

    if-ne v1, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 314
    .local v2, "isPhone":Z
    :goto_0
    if-nez v2, :cond_3

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectedDevice isn\'t phone :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 317
    :cond_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "address":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finish: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 319
    return-object v3
.end method

.method public getHfpConnectionState()I
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez v0, :cond_0

    .line 325
    const-string v0, "mBluetoothHeadsetClient is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 326
    const/4 v0, 0x0

    return v0

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 330
    .local v0, "connectedDevices":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_1

    .line 331
    const-string v1, "ConnectedDevices is empty"

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 334
    .local v1, "state":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HfpConnectionState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 335
    return v1
.end method

.method public getHfpConnectionState(Ljava/lang/String;)I
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 341
    const-string v0, "mBluetoothHeadsetClient is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 342
    return v1

    .line 345
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    const-string v0, "address is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 347
    return v1

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 351
    .local v0, "targetDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_2

    .line 352
    const-string v2, "targetDevice is NULL"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 353
    return v1

    .line 355
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 356
    .local v1, "hfpState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hfpstate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 357
    return v1
.end method

.method public getRemotePhoneBattery()I
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 282
    const-string v0, "mBluetoothAdapter is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 283
    return v1

    .line 285
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 286
    .local v0, "connectedDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_1

    .line 287
    const-string v2, "ConnectedDevices is empty"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 288
    return v1

    .line 290
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v1

    .line 291
    .local v1, "battery":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 292
    return v1
.end method

.method public getRemotePhoneNumber()Ljava/lang/String;
    .locals 6

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez v0, :cond_0

    .line 256
    const-string v0, "mBluetoothAdapter is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 257
    const-string v0, ""

    return-object v0

    .line 259
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->phoneNumber:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->getHfpConnectedAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    .local v0, "number":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 261
    invoke-direct {p0}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 262
    .local v1, "connectedDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v1, :cond_1

    .line 263
    const-string v2, "ConnectedDevices is empty"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 264
    const-string v2, ""

    return-object v2

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothHeadsetClient;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v2

    .line 267
    .local v2, "currentAgEvents":Landroid/os/Bundle;
    const-string v3, "android.bluetooth.headsetclient.extra.SUBSCRIBER_INFO"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "subscriberInfo":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 269
    const-string v0, ""

    goto :goto_0

    .line 271
    :cond_2
    sget-object v4, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->phoneNumber:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    move-object v0, v3

    .line 275
    .end local v1    # "connectedDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "currentAgEvents":Landroid/os/Bundle;
    .end local v3    # "subscriberInfo":Ljava/lang/String;
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 276
    return-object v0
.end method

.method public isHfpInBandRingtoneSupport()Z
    .locals 2

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsSupportInBondRing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mIsSupportInBondRing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 298
    sget-boolean v0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mIsSupportInBondRing:Z

    return v0
.end method

.method public reqHfpSendDtmf(Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 235
    const-string v0, "mBluetoothAdapter is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 236
    return v1

    .line 238
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    const-string v0, "key is empty"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 240
    return v1

    .line 242
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 243
    .local v0, "connectedDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_2

    .line 244
    const-string v2, "ConnectedDevices is empty"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 245
    return v1

    .line 247
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    aget-char v1, v2, v1

    int-to-byte v1, v1

    .line 248
    .local v1, "code":B
    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v2, v0, v1}, Landroid/bluetooth/BluetoothHeadsetClient;->sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z

    move-result v2

    .line 249
    .local v2, "result":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " finish: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 250
    return v2
.end method

.method public setAudioSource(I)Z
    .locals 3
    .param p1, "audioSource"    # I

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 148
    const-string v0, "mBluetoothHeadsetClient is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 149
    return v1

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 152
    .local v0, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_1

    .line 153
    const-string v2, "bluetoothDevice is NULL"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 154
    return v1

    .line 156
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 157
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadsetClient;->disconnectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadsetClient;->connectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    .line 161
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 162
    const/4 v1, 0x1

    return v1
.end method

.method public terminateCall(I)Z
    .locals 4
    .param p1, "callState"    # I

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 206
    const-string v0, "terminateCall mBluetoothHeadsetClient is NULL"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 207
    return v1

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 210
    .local v0, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_1

    .line 211
    const-string v2, "ConnectedDevices is empty"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 212
    return v1

    .line 214
    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    .line 216
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadsetClient;->rejectCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 217
    .local v1, "reject":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "terminateCall reject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->v(Ljava/lang/String;)V

    .line 218
    return v1

    .line 219
    .end local v1    # "reject":Z
    :cond_2
    if-eqz p1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    goto :goto_0

    .line 228
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t cover call State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 229
    return v1

    .line 224
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/bluetooth/BluetoothHeadsetClient;->terminateCall(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClientCall;)Z

    move-result v1

    .line 225
    .local v1, "terminate":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "terminateCall terminate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->v(Ljava/lang/String;)V

    .line 226
    return v1
.end method
