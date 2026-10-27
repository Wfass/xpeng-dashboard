.class public Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;
.super Ljava/lang/Object;
.source "OsBluetoothManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "XuiOsBluetoothManager"

.field private static mInstance:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;


# instance fields
.field private mA2dpSinkProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;

.field private mAdapterIntentFilter:Landroid/content/IntentFilter;

.field private mAdapterReceiver:Landroid/content/BroadcastReceiver;

.field private mAvrcpProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHfpClientProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;

.field private mProfileIntentFilter:Landroid/content/IntentFilter;

.field private mProfileReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mCallbackList:Ljava/util/List;

    .line 231
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mAdapterReceiver:Landroid/content/BroadcastReceiver;

    .line 251
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager$2;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mProfileReceiver:Landroid/content/BroadcastReceiver;

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->registerBluetoothBroadcast()V

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->updateBluetoothProfile()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->onAdapterStateChanged(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->onA2dpStateChanged(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->onHfpStateChanged(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;
    .locals 3

    .line 42
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getInstance()Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;

    return-object v0
.end method

.method private onA2dpStateChanged(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 206
    if-nez p1, :cond_0

    .line 207
    return-void

    .line 209
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;

    .line 211
    .local v2, "callback":Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;
    invoke-interface {v2, v0, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;->onA2dpStateChanged(Ljava/lang/String;II)V

    .line 212
    .end local v2    # "callback":Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;
    goto :goto_0

    .line 213
    :cond_1
    return-void
.end method

.method private onAdapterStateChanged(II)V
    .locals 2
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;

    .line 227
    .local v1, "callback":Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;->onAdapterStateChanged(II)V

    .line 228
    .end local v1    # "callback":Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;
    goto :goto_0

    .line 229
    :cond_0
    return-void
.end method

.method private onHfpStateChanged(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 216
    if-nez p1, :cond_0

    .line 217
    return-void

    .line 219
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;

    .line 221
    .local v2, "callback":Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;
    invoke-interface {v2, v0, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;->onHfpStateChanged(Ljava/lang/String;II)V

    .line 222
    .end local v2    # "callback":Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;
    goto :goto_0

    .line 223
    :cond_1
    return-void
.end method

.method private registerBluetoothBroadcast()V
    .locals 3

    .line 175
    const-string v0, "XuiOsBluetoothManager"

    const-string v1, "registerBluetoothBroadcast"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mAdapterReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    return-void
.end method

.method private updateBluetoothProfile()V
    .locals 4

    .line 182
    const-string v0, "XuiOsBluetoothManager"

    const-string v1, "updateBluetoothProfile"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getSupportedProfiles()Ljava/util/List;

    move-result-object v0

    .line 185
    .local v0, "supportProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const-string v1, "XuiOsBluetoothManager"

    const-string v2, "updateBluetoothProfile supportProfiles a2dp sink"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mA2dpSinkProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;

    .line 188
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    :cond_0
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    const-string v1, "XuiOsBluetoothManager"

    const-string v2, "updateBluetoothProfile supportProfiles headset client"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mHfpClientProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;

    .line 193
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.headsetclient.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    :cond_1
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    const-string v1, "XuiOsBluetoothManager"

    const-string v2, "updateBluetoothProfile supportProfiles avrcp"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mAvrcpProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;

    .line 202
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mProfileReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    return-void
.end method


# virtual methods
.method public getA2dpConnectState(Ljava/lang/String;)I
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mA2dpSinkProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->getA2dpStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getA2dpConnectedAddress()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mA2dpSinkProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mA2dpSinkProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->getA2dpConnectedAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 121
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getHfpConnectState(Ljava/lang/String;)I
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mHfpClientProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;->getConnectState(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getHfpConnectedAddress()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mHfpClientProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mHfpClientProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;->getConnectedAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getMeteData()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mAvrcpProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;->getMeteData()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;

    move-result-object v0

    return-object v0
.end method

.method public getPlayState()I
    .locals 1

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public getPosition()[J
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mAvrcpProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;->getPosition()[J

    move-result-object v0

    return-object v0
.end method

.method public isA2dpConnected(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mA2dpSinkProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->isA2dpConnected(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHfpConnected(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mHfpClientProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;->isConnected(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public next()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mAvrcpProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;->next()V

    .line 152
    return-void
.end method

.method public pause()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mAvrcpProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;->pause()V

    .line 147
    return-void
.end method

.method public pauseRender()Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mA2dpSinkProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mA2dpSinkProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->pauseRender()Z

    move-result v0

    return v0

    .line 129
    :cond_0
    const-string v0, "XuiOsBluetoothManager"

    const-string v1, "pauseRender A2dpSinkProfile is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public play()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mAvrcpProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;->play()V

    .line 142
    return-void
.end method

.method public previous()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mAvrcpProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;->previous()V

    .line 157
    return-void
.end method

.method public registerCallback(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    return-void
.end method

.method public requestA2dpConnect(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mA2dpSinkProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mA2dpSinkProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->requestConnectedA2dp(Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method

.method public requestA2dpDisconnect(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mA2dpSinkProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->disconnectedA2dp(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public setLocalVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mA2dpSinkProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->setLocalVolume(F)V

    .line 137
    return-void
.end method

.method public startRender()Z
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mA2dpSinkProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mA2dpSinkProfile:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/A2dpSinkProfile;->startRender()Z

    move-result v0

    return v0

    .line 103
    :cond_0
    const-string v0, "XuiOsBluetoothManager"

    const-string v1, "startRender A2dpSinkProfile is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterCallback(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/OsBluetoothManager;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    return-void
.end method
