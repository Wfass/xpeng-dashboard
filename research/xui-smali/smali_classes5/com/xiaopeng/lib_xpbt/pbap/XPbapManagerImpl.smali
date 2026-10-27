.class public Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;
.super Lcom/xiaopeng/lib_xpbt/BaseManager;
.source "XPbapManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib_xpbt/pbap/XPbapManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$AdapterStateChangeHandler;
    }
.end annotation


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

.field public final mBtPbapClientCallback:Landroid/bluetooth/BluetoothPbapClientCallback;

.field private mIsRegisterCallback:Z

.field xPbapListener:Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xPbapListener"    # Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/BaseManager;-><init>(Landroid/content/Context;)V

    .line 125
    new-instance v0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$2;-><init>(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;)V

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->mBtPbapClientCallback:Landroid/bluetooth/BluetoothPbapClientCallback;

    .line 31
    iput-object p2, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->xPbapListener:Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;

    .line 32
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$1;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$1;-><init>(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;)V

    .line 65
    .local v0, "mPbapListener":Landroid/bluetooth/BluetoothProfile$ServiceListener;
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v2, 0x11

    invoke-virtual {v1, p1, v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 67
    .end local v0    # "mPbapListener":Landroid/bluetooth/BluetoothProfile$ServiceListener;
    :cond_0
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    new-instance v1, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$AdapterStateChangeHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$AdapterStateChangeHandler;-><init>(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->addHandler(Ljava/lang/String;Lcom/xiaopeng/lib_xpbt/CallBackHandler;)V

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->register()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;)Landroid/bluetooth/BluetoothPbapClient;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    return-object v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothPbapClient;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothPbapClient;

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    .line 21
    iget-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->mIsRegisterCallback:Z

    return v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;
    .param p1, "x1"    # Z

    .line 21
    iput-boolean p1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->mIsRegisterCallback:Z

    return p1
.end method


# virtual methods
.method public getPbapConnectionState()I
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 113
    const-string v0, "mBluetoothPbapClient is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 114
    return v1

    .line 116
    :cond_0
    const/4 v0, 0x0

    .line 117
    .local v0, "state":I
    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothPbapClient;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 118
    .local v2, "connectedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 119
    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothPbapClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 121
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PbapConnectionState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 122
    return v0
.end method

.method public reqPbapDownload(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 74
    const-string v0, "mBluetoothPbapClient is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 75
    return v1

    .line 77
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    const-string v0, "address is empty"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 79
    return v1

    .line 81
    :cond_1
    const/4 v0, 0x0

    .line 83
    .local v0, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v2

    .line 88
    nop

    .line 90
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 91
    const-string v2, "remoteDevice isn\'t connected"

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 92
    return v1

    .line 94
    :cond_2
    nop

    .line 96
    .local v1, "isReqPbapSuccess":Z
    :try_start_1
    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    .line 97
    .local v2, "isBtEnable":Z
    iget-boolean v3, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->mIsRegisterCallback:Z

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    .line 98
    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    iget-object v4, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->mBtPbapClientCallback:Landroid/bluetooth/BluetoothPbapClientCallback;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothPbapClient;->registerPbapClientCallback(Landroid/bluetooth/BluetoothPbapClientCallback;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->mIsRegisterCallback:Z

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBtPbapClientCallback isRegister :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->mIsRegisterCallback:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 101
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothPbapClient;->reqPbapDownload(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v3

    .line 105
    .end local v2    # "isBtEnable":Z
    goto :goto_0

    .line 102
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "reqPbapDownload exception"

    invoke-static {v3}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reqPbapDownload finish: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 107
    return v1

    .line 84
    .end local v1    # "isReqPbapSuccess":Z
    :catch_1
    move-exception v2

    .line 85
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 87
    return v1
.end method
