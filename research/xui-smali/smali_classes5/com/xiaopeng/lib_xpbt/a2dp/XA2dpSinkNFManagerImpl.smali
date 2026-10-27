.class public Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;
.super Lcom/xiaopeng/lib_xpbt/BaseManager;
.source "XA2dpSinkNFManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;


# instance fields
.field private isNFConnectionReady:Z

.field private isNFReady:Z

.field private isXUIManagerReady:Z

.field private mA2dpCallback:Lcom/xiaopeng/btservice/base/AbsA2dpControlCallback;

.field private final mA2dpControl:Lcom/xiaopeng/btservice/a2dp/A2dpControl;

.field private final mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

.field mBtBoxesUtil:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

.field private mIsRegisterNF:Z

.field xa2dpSinkListener:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xa2dpSinkListener"    # Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/BaseManager;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->isXUIManagerReady:Z

    .line 33
    iput-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->isNFReady:Z

    .line 34
    iput-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->isNFConnectionReady:Z

    .line 176
    new-instance v0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl$1;-><init>(Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;)V

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->mA2dpCallback:Lcom/xiaopeng/btservice/base/AbsA2dpControlCallback;

    .line 38
    iput-object p2, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->xa2dpSinkListener:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;

    .line 39
    invoke-static {p1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->mBtBoxesUtil:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    .line 40
    new-instance v0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->mA2dpCallback:Lcom/xiaopeng/btservice/base/AbsA2dpControlCallback;

    invoke-direct {v0, p1, v1}, Lcom/xiaopeng/btservice/a2dp/A2dpControl;-><init>(Landroid/content/Context;Lcom/xiaopeng/btservice/base/AbsA2dpControlCallback;)V

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->mA2dpControl:Lcom/xiaopeng/btservice/a2dp/A2dpControl;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->mBtBoxesUtil:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->getBluetoothControl(Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;)Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    .line 42
    iget-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->mIsRegisterNF:Z

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->mBtBoxesUtil:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->mA2dpControl:Lcom/xiaopeng/btservice/a2dp/A2dpControl;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->registerCallback(Lcom/xiaopeng/btservice/base/AbsControl;)V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->mBtBoxesUtil:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->registerCallback(Lcom/xiaopeng/btservice/base/AbsControl;)V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->mA2dpControl:Lcom/xiaopeng/btservice/a2dp/A2dpControl;

    iget-object v0, v0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->mConnection:Lcom/xiaopeng/btservice/base/AbstractConnection;

    new-instance v1, Lcom/xiaopeng/lib_xpbt/a2dp/-$$Lambda$XA2dpSinkNFManagerImpl$dUIJnQgW2ZTzEFfezD9M2orMlpk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib_xpbt/a2dp/-$$Lambda$XA2dpSinkNFManagerImpl$dUIJnQgW2ZTzEFfezD9M2orMlpk;-><init>(Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/btservice/base/AbstractConnection;->registerConnecteCompletedCallback(Lcom/xiaopeng/btservice/base/AbstractConnection$ConnecteCompletedCallback;)V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->mIsRegisterNF:Z

    .line 51
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;
    .param p1, "x1"    # I

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->coverState(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;
    .param p1, "x1"    # Z

    .line 25
    iput-boolean p1, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->isNFReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->onReady()V

    return-void
.end method

.method private coverState(I)I
    .locals 3
    .param p1, "nfState"    # I

    .line 149
    const/16 v0, 0x6e

    if-eq p1, v0, :cond_4

    const/16 v0, 0x78

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8c

    if-eq p1, v0, :cond_1

    .line 163
    if-lt p1, v0, :cond_0

    .line 164
    const/4 v0, 0x2

    .line 165
    .local v0, "state":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "coverState state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    .end local v0    # "state":I
    :cond_0
    const/4 v0, 0x0

    .line 168
    .restart local v0    # "state":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "coverState error state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    .end local v0    # "state":I
    :cond_1
    const/4 v0, 0x2

    .line 152
    .restart local v0    # "state":I
    goto :goto_0

    .line 160
    .end local v0    # "state":I
    :cond_2
    const/4 v0, 0x3

    .line 161
    .restart local v0    # "state":I
    goto :goto_0

    .line 154
    .end local v0    # "state":I
    :cond_3
    const/4 v0, 0x1

    .line 155
    .restart local v0    # "state":I
    goto :goto_0

    .line 157
    .end local v0    # "state":I
    :cond_4
    const/4 v0, 0x0

    .line 158
    .restart local v0    # "state":I
    nop

    .line 172
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "coverState nfState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 173
    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;)V
    .locals 1

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->isNFConnectionReady:Z

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->onReady()V

    .line 48
    return-void
.end method

.method private onReady()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->xa2dpSinkListener:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;

    if-nez v0, :cond_0

    .line 139
    const-string v0, "xa2dpSinkListener is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 140
    return-void

    .line 142
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->isNFReady:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->isXUIManagerReady:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->isNFConnectionReady:Z

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->xa2dpSinkListener:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;

    invoke-interface {v0}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;->onReady()V

    .line 145
    :cond_1
    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "address is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    return v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->mA2dpControl:Lcom/xiaopeng/btservice/a2dp/A2dpControl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->connect(Ljava/lang/String;)Z

    move-result v0

    .line 61
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 62
    return v0
.end method

.method public disconnect(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "address is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    return v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->mA2dpControl:Lcom/xiaopeng/btservice/a2dp/A2dpControl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->disconnect(Ljava/lang/String;)Z

    move-result v0

    .line 73
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 74
    return v0
.end method

.method public getA2dpConnectedAddress()Ljava/lang/String;
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->mA2dpControl:Lcom/xiaopeng/btservice/a2dp/A2dpControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->getConnectedAddress()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "address":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getA2dpConnectedAddress address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 114
    return-object v0
.end method

.method public getA2dpConnectionState()I
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->mBluetoothControl:Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->getA2dpConnectionState()I

    move-result v0

    .line 120
    .local v0, "nfState":I
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->coverState(I)I

    move-result v1

    .line 121
    .local v1, "state":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 122
    return v1
.end method

.method public getA2dpConnectionState(Ljava/lang/String;)I
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "address is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x0

    return v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->mA2dpControl:Lcom/xiaopeng/btservice/a2dp/A2dpControl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->getConnectionState(Ljava/lang/String;)I

    move-result v0

    .line 132
    .local v0, "nfState":I
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->coverState(I)I

    move-result v1

    .line 133
    .local v1, "state":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 134
    return v1
.end method

.method public pauseRender()Z
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->mA2dpControl:Lcom/xiaopeng/btservice/a2dp/A2dpControl;

    if-nez v0, :cond_0

    .line 102
    const-string v0, "mA2dpControl is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    return v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->mA2dpControl:Lcom/xiaopeng/btservice/a2dp/A2dpControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->pauseRender()Z

    move-result v0

    .line 106
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 107
    const/4 v1, 0x1

    return v1
.end method

.method public setLocalVolume(F)Z
    .locals 3
    .param p1, "volume"    # F

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->mA2dpControl:Lcom/xiaopeng/btservice/a2dp/A2dpControl;

    if-nez v0, :cond_0

    .line 80
    const-string v0, "mA2dpControl is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    return v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->mA2dpControl:Lcom/xiaopeng/btservice/a2dp/A2dpControl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->setLocalVolume(F)Z

    move-result v0

    .line 84
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 85
    const/4 v1, 0x1

    return v1
.end method

.method public startRender()Z
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->mA2dpControl:Lcom/xiaopeng/btservice/a2dp/A2dpControl;

    if-nez v0, :cond_0

    .line 91
    const-string v0, "mA2dpControl is null"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x0

    return v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->mA2dpControl:Lcom/xiaopeng/btservice/a2dp/A2dpControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->startRender()Z

    move-result v0

    .line 95
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 96
    const/4 v1, 0x1

    return v1
.end method
