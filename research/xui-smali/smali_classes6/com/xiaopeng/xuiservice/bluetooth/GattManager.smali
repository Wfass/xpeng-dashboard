.class public final Lcom/xiaopeng/xuiservice/bluetooth/GattManager;
.super Ljava/lang/Object;
.source "GattManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/bluetooth/GattManager$BluetoothControlCallback;,
        Lcom/xiaopeng/xuiservice/bluetooth/GattManager$GattManagerHolder;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_DEFAULT:I = 0x1

.field private static final BLUETOOTH_NFORE:I = 0x2

.field public static final PRIORITY_BALANCED:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GattManager"


# instance fields
.field private classInit:Z

.field private inited:Z

.field private mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

.field private mBluetoothControlCallback:Lcom/xiaopeng/xuiservice/bluetooth/GattManager$BluetoothControlCallback;

.field private mBlutoothImplType:I

.field private mBtBoxesUtil:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

.field private mGattManager:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

.field private mManagerImpl:Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->inited:Z

    .line 42
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->classInit:Z

    .line 64
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->inited:Z

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->mBlutoothImplType:I

    .line 69
    iget v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->mBlutoothImplType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 75
    :pswitch_0
    goto :goto_0

    .line 71
    :pswitch_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->getInstance()Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->mManagerImpl:Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;

    .line 72
    nop

    .line 79
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/bluetooth/GattManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattManager$1;

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;-><init>()V

    return-void
.end method

.method public static final byte2hex([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    .line 204
    if-nez p0, :cond_0

    .line 205
    const-string v0, "**"

    return-object v0

    .line 207
    :cond_0
    const-string v0, ""

    .line 208
    .local v0, "hs":Ljava/lang/String;
    const-string v1, ""

    .line 209
    .local v1, "stmp":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 210
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 214
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    .end local v2    # "n":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final byte2hex([BI)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B
    .param p1, "limitLength"    # I

    .line 233
    if-nez p0, :cond_0

    .line 234
    const-string v0, "**"

    return-object v0

    .line 236
    :cond_0
    const-string v0, ""

    .line 237
    .local v0, "hs":Ljava/lang/String;
    const-string v1, ""

    .line 238
    .local v1, "stmp":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 239
    if-lt v2, p1, :cond_1

    .line 240
    goto :goto_2

    .line 242
    :cond_1
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 246
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    .end local v2    # "n":I
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final bytesToUnsigned([B)V
    .locals 2
    .param p0, "b"    # [B

    .line 221
    if-nez p0, :cond_0

    .line 222
    return-void

    .line 225
    :cond_0
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 226
    aget-byte v1, p0, v0

    if-gez v1, :cond_1

    .line 227
    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 225
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    .end local v0    # "n":I
    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/bluetooth/GattManager;
    .locals 1

    .line 85
    invoke-static {}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager$GattManagerHolder;->access$100()Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    move-result-object v0

    return-object v0
.end method

.method public static final hexString2bytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "hexString"    # Ljava/lang/String;

    .line 253
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x0

    return-object v0

    .line 256
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 257
    .local v0, "length":I
    new-array v1, v0, [B

    .line 258
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 259
    mul-int/lit8 v3, v2, 0x2

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "sub":Ljava/lang/String;
    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 258
    .end local v3    # "sub":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 262
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private initAfterBoot()V
    .locals 2

    .line 105
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->inited:Z

    if-nez v0, :cond_0

    .line 106
    const-string v0, "GattManager"

    const-string v1, "initAfterBoot"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->inited:Z

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->mManagerImpl:Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;->init()Z

    .line 120
    :cond_0
    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/xiaopeng/xuiservice/bluetooth/GattManager;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->initAfterBoot()V

    .line 97
    return-void
.end method


# virtual methods
.method public allowRepeatCommand(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "allow"    # Z

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->mManagerImpl:Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;->allowRepeatCommand(Ljava/lang/String;Z)V

    .line 193
    return-void
.end method

.method public close(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->mManagerImpl:Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;->close(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public closeAll()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->mManagerImpl:Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;->closeAll()V

    .line 156
    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->mManagerImpl:Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;->connect(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public connect(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "auto"    # Z

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->mManagerImpl:Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;->connect(Ljava/lang/String;Z)V

    .line 144
    return-void
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->mManagerImpl:Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;->disconnect(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->mManagerImpl:Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;->dumpX(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public getAdapterState()Z
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->mManagerImpl:Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;->getAdapterState()Z

    move-result v0

    return v0
.end method

.method public getSupportedGattServices(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->mManagerImpl:Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;->getSupportedGattServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized init()V
    .locals 2

    monitor-enter p0

    .line 92
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->classInit:Z

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->classInit:Z

    .line 94
    const-string v1, "GattManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->setModuleLogLevel(Ljava/lang/String;I)V

    .line 95
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/bluetooth/-$$Lambda$GattManager$bOVSJS_QJhE2Hnb11JzA0w5H97Y;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/bluetooth/-$$Lambda$GattManager$bOVSJS_QJhE2Hnb11JzA0w5H97Y;-><init>(Lcom/xiaopeng/xuiservice/bluetooth/GattManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->addLockedBootCompleteTask(Ljava/lang/Runnable;)V

    .line 98
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->isBootComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->initAfterBoot()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/bluetooth/GattManager;
    throw v0
.end method

.method public readCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "data"    # [B

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->mManagerImpl:Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;->readCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 160
    return-void
.end method

.method public registerCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->mManagerImpl:Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;->registerCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V

    .line 132
    return-void
.end method

.method public registerScanCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->mManagerImpl:Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;->registerScanCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;)V

    .line 197
    return-void
.end method

.method public requestConnectionPriority(Ljava/lang/String;I)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->mManagerImpl:Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;->requestConnectionPriority(Ljava/lang/String;I)V

    .line 189
    return-void
.end method

.method public requestMtu(Ljava/lang/String;I)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "mtu"    # I

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->mManagerImpl:Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;->requestMtu(Ljava/lang/String;I)V

    .line 185
    return-void
.end method

.method public setCharacteristicNotification(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "enabled"    # Z

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->mManagerImpl:Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;->setCharacteristicNotification(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    .line 169
    return-void
.end method

.method public startLeScan(I)V
    .locals 1
    .param p1, "timeoutMs"    # I

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->mManagerImpl:Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;->startLeScan(I)V

    .line 124
    return-void
.end method

.method public stopLeScan()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->mManagerImpl:Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;->stopLeScan()V

    .line 128
    return-void
.end method

.method public unRegisterCallback(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->mManagerImpl:Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;->unRegisterCallback(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public unRegisterScanCallback(Ljava/lang/String;)V
    .locals 1
    .param p1, "module"    # Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->mManagerImpl:Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;->unRegisterScanCallback(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public writeCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "data"    # [B
    .param p4, "cmd"    # I

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;->mManagerImpl:Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/bluetooth/AbstractGattManager;->writeCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    .line 164
    return-void
.end method
