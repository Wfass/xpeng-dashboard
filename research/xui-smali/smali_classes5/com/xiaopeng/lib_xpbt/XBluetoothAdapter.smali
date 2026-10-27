.class public Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;
.super Ljava/lang/Object;
.source "XBluetoothAdapter.java"


# static fields
.field private static volatile mInstance:Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;


# instance fields
.field isInit:Z

.field isNfInit:Z

.field private mContext:Landroid/content/Context;

.field sdkMode:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->isInit:Z

    .line 39
    iput-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->isNfInit:Z

    .line 40
    iput v0, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->sdkMode:I

    .line 54
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;
    .locals 2

    .line 43
    sget-object v0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->mInstance:Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;

    if-nez v0, :cond_1

    .line 44
    const-class v0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->mInstance:Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;

    invoke-direct {v1}, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;-><init>()V

    sput-object v1, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->mInstance:Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;

    .line 48
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 50
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->mInstance:Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;

    return-object v0
.end method


# virtual methods
.method public getA2DPSinkManager(Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;)Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;
    .locals 1
    .param p1, "xA2dpSinkListener"    # Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->getA2DPSinkManager(Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;I)Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;

    move-result-object v0

    return-object v0
.end method

.method public getA2DPSinkManager(Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;I)Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;
    .locals 2
    .param p1, "xA2dpSinkListener"    # Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;
    .param p2, "moduleType"    # I

    .line 128
    if-eqz p2, :cond_0

    .line 137
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :cond_0
    iget v0, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->sdkMode:I

    if-nez v0, :cond_1

    .line 131
    new-instance v0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;)V

    .local v0, "xa2dpSinkManager":Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;
    goto :goto_0

    .line 133
    .end local v0    # "xa2dpSinkManager":Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;
    :cond_1
    new-instance v0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;)V

    .line 135
    .restart local v0    # "xa2dpSinkManager":Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;
    nop

    .line 137
    :goto_0
    nop

    .line 140
    return-object v0
.end method

.method public getA2dpSourceManager(Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSourceListener;I)Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSourceManager;
    .locals 1
    .param p1, "xA2dpSourceListener"    # Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSourceListener;
    .param p2, "moduleType"    # I

    .line 155
    new-instance v0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSourceManager;

    invoke-direct {v0}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSourceManager;-><init>()V

    return-object v0
.end method

.method public getBluetoothManager(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;)Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManager;
    .locals 1
    .param p1, "xBluetoothListener"    # Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->getBluetoothManager(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;I)Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManager;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothManager(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;I)Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManager;
    .locals 2
    .param p1, "xBluetoothListener"    # Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;
    .param p2, "moduleType"    # I

    .line 97
    if-eqz p2, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 109
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;)V

    .line 107
    .local v0, "xBluetoothManager":Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManager;
    goto :goto_0

    .line 99
    .end local v0    # "xBluetoothManager":Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManager;
    :cond_1
    iget v0, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->sdkMode:I

    if-nez v0, :cond_2

    .line 100
    new-instance v0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;)V

    .restart local v0    # "xBluetoothManager":Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManager;
    goto :goto_0

    .line 102
    .end local v0    # "xBluetoothManager":Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManager;
    :cond_2
    new-instance v0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;)V

    .line 104
    .restart local v0    # "xBluetoothManager":Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManager;
    nop

    .line 109
    :goto_0
    nop

    .line 112
    return-object v0
.end method

.method public getHfpManager(Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;)Lcom/xiaopeng/lib_xpbt/hfp/XHfpManager;
    .locals 1
    .param p1, "xHfpListener"    # Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->getHfpManager(Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;I)Lcom/xiaopeng/lib_xpbt/hfp/XHfpManager;

    move-result-object v0

    return-object v0
.end method

.method public getHfpManager(Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;I)Lcom/xiaopeng/lib_xpbt/hfp/XHfpManager;
    .locals 2
    .param p1, "xHfpListener"    # Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;
    .param p2, "moduleType"    # I

    .line 195
    if-eqz p2, :cond_0

    .line 204
    const/4 v0, 0x0

    goto :goto_0

    .line 197
    :cond_0
    iget v0, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->sdkMode:I

    if-nez v0, :cond_1

    .line 198
    new-instance v0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;)V

    .local v0, "xHfpManager":Lcom/xiaopeng/lib_xpbt/hfp/XHfpManager;
    goto :goto_0

    .line 200
    .end local v0    # "xHfpManager":Lcom/xiaopeng/lib_xpbt/hfp/XHfpManager;
    :cond_1
    new-instance v0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;)V

    .line 202
    .restart local v0    # "xHfpManager":Lcom/xiaopeng/lib_xpbt/hfp/XHfpManager;
    nop

    .line 204
    :goto_0
    nop

    .line 207
    return-object v0
.end method

.method public getHidManager(Lcom/xiaopeng/lib_xpbt/hid/XHidListener;)Lcom/xiaopeng/lib_xpbt/hid/XHidManager;
    .locals 1
    .param p1, "xHidListener"    # Lcom/xiaopeng/lib_xpbt/hid/XHidListener;

    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->getHidManager(Lcom/xiaopeng/lib_xpbt/hid/XHidListener;I)Lcom/xiaopeng/lib_xpbt/hid/XHidManager;

    move-result-object v0

    return-object v0
.end method

.method public getHidManager(Lcom/xiaopeng/lib_xpbt/hid/XHidListener;I)Lcom/xiaopeng/lib_xpbt/hid/XHidManager;
    .locals 2
    .param p1, "xHidListener"    # Lcom/xiaopeng/lib_xpbt/hid/XHidListener;
    .param p2, "moduleType"    # I

    .line 223
    if-eqz p2, :cond_0

    .line 228
    const/4 v0, 0x0

    goto :goto_0

    .line 225
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/hid/XHidListener;)V

    .line 226
    .local v0, "xHidManager":Lcom/xiaopeng/lib_xpbt/hid/XHidManager;
    nop

    .line 228
    :goto_0
    nop

    .line 231
    return-object v0
.end method

.method public getPbapManager(Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;)Lcom/xiaopeng/lib_xpbt/pbap/XPbapManager;
    .locals 1
    .param p1, "xPbapListener"    # Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->getPbapManager(Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;I)Lcom/xiaopeng/lib_xpbt/pbap/XPbapManager;

    move-result-object v0

    return-object v0
.end method

.method public getPbapManager(Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;I)Lcom/xiaopeng/lib_xpbt/pbap/XPbapManager;
    .locals 2
    .param p1, "xPbapListener"    # Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;
    .param p2, "moduleType"    # I

    .line 167
    if-eqz p2, :cond_0

    .line 176
    const/4 v0, 0x0

    goto :goto_0

    .line 169
    :cond_0
    iget v0, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->sdkMode:I

    if-nez v0, :cond_1

    .line 170
    new-instance v0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;)V

    .local v0, "xPbapManager":Lcom/xiaopeng/lib_xpbt/pbap/XPbapManager;
    goto :goto_0

    .line 172
    .end local v0    # "xPbapManager":Lcom/xiaopeng/lib_xpbt/pbap/XPbapManager;
    :cond_1
    new-instance v0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;)V

    .line 174
    .restart local v0    # "xPbapManager":Lcom/xiaopeng/lib_xpbt/pbap/XPbapManager;
    nop

    .line 176
    :goto_0
    nop

    .line 179
    return-object v0
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 57
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->isInit:Z

    if-nez v0, :cond_1

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->mContext:Landroid/content/Context;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->isInit:Z

    .line 60
    iget-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->isNfInit:Z

    if-nez v0, :cond_0

    .line 61
    const-string v0, "setSdkMode: "

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 62
    iget v0, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->sdkMode:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->setSdkMode(I)V

    .line 64
    :cond_0
    const-string v0, "init finish"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    const-string v0, "already init,pass"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :goto_0
    monitor-exit p0

    return-void

    .line 56
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;
    throw p1
.end method

.method public setSdkMode(I)V
    .locals 2
    .param p1, "sdkMode"    # I

    .line 76
    iput p1, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->sdkMode:I

    .line 77
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 78
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->connectBluetooth()V

    .line 80
    iput-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->isNfInit:Z

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_1
    iput-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->isNfInit:Z

    .line 86
    :goto_0
    return-void
.end method

.method public setSdkType(II)V
    .locals 0
    .param p1, "sdkType"    # I
    .param p2, "moduleType"    # I

    .line 246
    return-void
.end method
