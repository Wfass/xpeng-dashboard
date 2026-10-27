.class public Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;
.super Ljava/lang/Object;
.source "XuiBtMediaManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$BTStateChangeListener;
    }
.end annotation


# static fields
.field private static final DELAY_REQ_DISCONNECT:I = 0x1f40

.field private static final DELAY_REQ_SELECT:I = 0x64

.field private static final MSG_BT_REQ_CONNECT:I = 0x56

.field private static final MSG_BT_REQ_DISCONNECT:I = 0x55

.field private static final MSG_BT_REQ_SELECT:I = 0x57

.field private static final TAG:Ljava/lang/String; = "XuiBtMediaManager"

.field private static mInstance:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoSwitchAddress:Ljava/lang/String;

.field private mBTStateChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$BTStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

.field private mBtHandler:Landroid/os/Handler;

.field private volatile mBtServiceConnected:Z

.field private volatile mBtSourceSelected:Z

.field private mCallback:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;

.field private mCallingPlayBtPackage:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private volatile mLastBtStatus:I

.field private mShouldDisconnectA2dpAddress:Ljava/lang/String;

.field private final mUserBtMediaPackage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mUserCallPlayed:Z

.field private shouldToast:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBTStateChangeListeners:Ljava/util/List;

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mLastBtStatus:I

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mUserCallPlayed:Z

    .line 45
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBtSourceSelected:Z

    .line 46
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBtServiceConnected:Z

    .line 47
    const-string v1, "com.xiaopeng.musicradio"

    const-string v2, "com.xiaopeng.carcontrol"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mUserBtMediaPackage:Ljava/util/List;

    .line 51
    const-string v1, ""

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mCallingPlayBtPackage:Ljava/lang/String;

    .line 55
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->shouldToast:Z

    .line 402
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$2;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mCallback:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mContext:Landroid/content/Context;

    .line 59
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mAudioManager:Landroid/media/AudioManager;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->doBtDisconnect()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->doBtServiceConnect()V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    .line 29
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBtSourceSelected:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;)Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->selectBtSource()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mAutoSwitchAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBtHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->toastA2dpConnectFailed()V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->notifyBtStatusChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->autoSwitchWithA2dpState(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mShouldDisconnectA2dpAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mShouldDisconnectA2dpAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->autoDisconnectA2dp(Ljava/lang/String;)V

    return-void
.end method

.method private autoDisconnectA2dp(Ljava/lang/String;)V
    .locals 4
    .param p1, "shouldDisconnectA2dpAddress"    # Ljava/lang/String;

    .line 278
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isA2DPAutoDisconnectEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    .line 279
    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->getA2dpConnectedAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBtSourceSelected:Z

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBtHandler:Landroid/os/Handler;

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 282
    const-string v0, "XuiBtMediaManager"

    const-string v2, "a2dp connected first do MSG_BT_REQ_DISCONNECT with time:8000"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBtHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 285
    :cond_0
    return-void
.end method

.method private autoDisconnectA2dp(Ljava/lang/String;II)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mShouldDisconnectA2dpAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mShouldDisconnectA2dpAddress:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    if-lt p3, v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->getA2dpConnectedAddress()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "hfpAddress":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBtSourceSelected:Z

    if-nez v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBtHandler:Landroid/os/Handler;

    const/16 v2, 0x55

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    const-string v1, "XuiBtMediaManager"

    const-string v3, "delay do MSG_BT_REQ_DISCONNECT with time:8000"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBtHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f40

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 275
    .end local v0    # "hfpAddress":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private declared-synchronized autoSwitchWithA2dpState(Ljava/lang/String;II)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mAutoSwitchAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mAutoSwitchAddress:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    if-lt p3, v0, :cond_1

    .line 249
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->resetAutoSwitchAddress()V

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->startRender()Z

    move-result v0

    .line 251
    .local v0, "success":Z
    const-string v1, "XuiBtMediaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRender "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBtSourceSelected:Z

    .line 253
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->notifyBtStatusChanged()V

    .line 254
    .end local v0    # "success":Z
    goto :goto_0

    .line 256
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isA2DPAutoDisconnectEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->autoDisconnectA2dp(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 244
    .end local p1    # "address":Ljava/lang/String;
    .end local p2    # "prevState":I
    .end local p3    # "newState":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;
    throw p1
.end method

.method private doBtDisconnect()V
    .locals 4

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->getA2dpConnectedAddress()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "a2dpAddress":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "00:00:00:00:00:00"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    const-string v1, "XuiBtMediaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doBtDisconnect reqA2dpDisconnect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->requestA2dpDisconnect(Ljava/lang/String;)V

    .line 294
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mShouldDisconnectA2dpAddress:Ljava/lang/String;

    .line 295
    return-void
.end method

.method private doBtServiceConnect()V
    .locals 0

    .line 299
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 63
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    if-nez v0, :cond_1

    .line 64
    const-class v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    .line 68
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 70
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    return-object v0
.end method

.method private initBluetoothManager()V
    .locals 2

    .line 81
    const-string v0, "XuiBtMediaManager"

    const-string v1, "initBluetoothManager"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->get()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mCallback:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->registerCallback(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;)V

    .line 84
    return-void
.end method

.method private initHandler()V
    .locals 2

    .line 87
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "XBluetoothManagerSvc"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 89
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$1;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBtHandler:Landroid/os/Handler;

    .line 112
    return-void
.end method

.method private initState()V
    .locals 0

    .line 177
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->getBtStatus()I

    .line 178
    return-void
.end method

.method private declared-synchronized notifyBtStatusChanged()V
    .locals 3

    monitor-enter p0

    .line 302
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->getBtStatus()I

    move-result v0

    .line 303
    .local v0, "newStatus":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBTStateChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mLastBtStatus:I

    if-eq v1, v0, :cond_0

    .line 304
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBTStateChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$BTStateChangeListener;

    .line 305
    .local v2, "listener":Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$BTStateChangeListener;
    invoke-interface {v2, v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$BTStateChangeListener;->onBtStatusChanged(I)V

    .line 306
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$BTStateChangeListener;
    goto :goto_0

    .line 308
    :cond_0
    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mLastBtStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    monitor-exit p0

    return-void

    .line 301
    .end local v0    # "newStatus":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;
    throw v0
.end method

.method private registerReceiver()V
    .locals 2

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v0, "filter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registerListener(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V

    .line 334
    return-void
.end method

.method private resetAutoSwitchAddress()V
    .locals 2

    .line 240
    const-string v0, "XuiBtMediaManager"

    const-string v1, "resetAutoSwitchAddress"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mAutoSwitchAddress:Ljava/lang/String;

    .line 242
    return-void
.end method

.method private declared-synchronized selectBtSource()V
    .locals 6

    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->startRender()Z

    move-result v0

    .line 182
    .local v0, "success":Z
    const-string v1, "XuiBtMediaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectBtSource startRender"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBtSourceSelected:Z

    .line 184
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->getBtStatus()I

    move-result v2

    .line 185
    .local v2, "state":I
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->notifyBtStatusChanged()V

    .line 186
    if-ne v2, v1, :cond_0

    .line 187
    const-string v1, "XuiBtMediaManager"

    const-string v3, "bluetooth device unavailable"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 189
    :cond_0
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 190
    :try_start_1
    const-string v1, "XuiBtMediaManager"

    const-string v3, "bluetooth device disconnecting delay do select source"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBtHandler:Landroid/os/Handler;

    const/16 v3, 0x57

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBtHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    .line 194
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 195
    :try_start_2
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    invoke-interface {v3}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->getHfpConnectedAddress()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "hfpAddress":Ljava/lang/String;
    iput-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mAutoSwitchAddress:Ljava/lang/String;

    .line 197
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->shouldToast:Z

    .line 198
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    invoke-interface {v1, v3}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->requestA2dpConnect(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    .end local v3    # "hfpAddress":Ljava/lang/String;
    :cond_2
    monitor-exit p0

    return-void

    .line 180
    .end local v0    # "success":Z
    .end local v2    # "state":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;
    throw v0
.end method

.method private setBtVolume(ZLjava/lang/String;Ljava/lang/String;F)V
    .locals 2
    .param p1, "force"    # Z
    .param p2, "audioFocus"    # Ljava/lang/String;
    .param p3, "callPackage"    # Ljava/lang/String;
    .param p4, "volume"    # F

    .line 363
    if-nez p1, :cond_0

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mUserBtMediaPackage:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    const-string v0, "XuiBtMediaManager"

    const-string v1, "setBtVolume failed"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    invoke-interface {v0, p4}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->setLocalVolume(F)V

    .line 368
    return-void
.end method

.method private toastA2dpConnectFailed()V
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mAutoSwitchAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->shouldToast:Z

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e00ff

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->shouldToast:Z

    .line 320
    :cond_0
    return-void
.end method

.method private declared-synchronized unSelectBtSource()V
    .locals 7

    monitor-enter p0

    .line 203
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBtSourceSelected:Z

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->pauseRender()Z

    move-result v0

    .line 205
    .local v0, "success":Z
    const-string v1, "XuiBtMediaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unSelectBtSource pauseRender "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->notifyBtStatusChanged()V

    .line 207
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->resetAutoSwitchAddress()V

    .line 208
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->getBtStatus()I

    move-result v1

    .line 209
    .local v1, "state":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 210
    const-string v2, "XuiBtMediaManager"

    const-string v3, "bluetooth device unavailable"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 213
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isA2DPAutoDisconnectEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    invoke-interface {v2}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->getHfpConnectedAddress()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "hfpAddress":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    invoke-interface {v3}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->getA2dpConnectedAddress()Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "a2dpAddress":Ljava/lang/String;
    const-string v4, "XuiBtMediaManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unSelectBtSource hfpAddress: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " &a2dpAddress:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 218
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    invoke-interface {v4, v3}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->requestA2dpDisconnect(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    .end local v2    # "hfpAddress":Ljava/lang/String;
    .end local v3    # "a2dpAddress":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .line 202
    .end local v0    # "success":Z
    .end local v1    # "state":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;
    throw v0
.end method


# virtual methods
.method public addBTStateChangedListener(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$BTStateChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$BTStateChangeListener;

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBTStateChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBTStateChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBTStateChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_0
    monitor-exit v0

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAvrcpMeteData()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->getMeteData()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;

    move-result-object v0

    return-object v0
.end method

.method public getAvrcpPlayStatus()I
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->getPlayState()I

    move-result v0

    return v0
.end method

.method public getAvrcpPosition()[J
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->getPosition()[J

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getBtStatus()I
    .locals 9

    monitor-enter p0

    .line 151
    const/4 v0, 0x1

    .line 152
    .local v0, "btStatus":I
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->getHfpConnectedAddress()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "hfpAddress":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    invoke-interface {v2}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->getA2dpConnectedAddress()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "a2dpAddress":Ljava/lang/String;
    const-string v3, "XuiBtMediaManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBtStatus hfpAddress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " &a2dpAddress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_4

    const-string v3, "00:00:00:00:00:00"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 156
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    invoke-interface {v3, v2}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->getA2dpConnectState(Ljava/lang/String;)I

    move-result v3

    .line 157
    .local v3, "a2dpStatus":I
    const-string v6, "XuiBtMediaManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBtStatus a2dpStatus:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    if-ne v3, v5, :cond_0

    .line 159
    const/4 v0, 0x4

    goto :goto_1

    .line 160
    :cond_0
    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    .line 161
    const/4 v0, 0x3

    goto :goto_1

    .line 162
    :cond_1
    if-lt v3, v4, :cond_3

    .line 163
    iget-boolean v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBtSourceSelected:Z

    if-eqz v4, :cond_2

    .line 164
    const/4 v4, 0x6

    goto :goto_0

    :cond_2
    const/4 v4, 0x5

    :goto_0
    move v0, v4

    goto :goto_1

    .line 166
    :cond_3
    const/4 v0, 0x2

    .line 168
    .end local v3    # "a2dpStatus":I
    :goto_1
    goto :goto_3

    .line 169
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "00:00:00:00:00:00"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 170
    goto :goto_2

    :cond_5
    move v4, v5

    :goto_2
    move v0, v4

    .line 172
    :goto_3
    const-string v3, "XuiBtMediaManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBtStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return v0

    .line 150
    .end local v0    # "btStatus":I
    .end local v1    # "hfpAddress":Ljava/lang/String;
    .end local v2    # "a2dpAddress":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;
    throw v0
.end method

.method public getCallingPlayBtPackage()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mCallingPlayBtPackage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 125
    const-string v0, ""

    return-object v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mCallingPlayBtPackage:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->initHandler()V

    .line 75
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->initBluetoothManager()V

    .line 76
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->registerReceiver()V

    .line 77
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->initState()V

    .line 78
    return-void
.end method

.method public isBtDeviceAvailable()Z
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->getBtStatus()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyIgStatus(Z)V
    .locals 1
    .param p1, "isIgOff"    # Z

    .line 323
    if-eqz p1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->pauseRender()Z

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBtSourceSelected:Z

    .line 326
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->notifyBtStatusChanged()V

    .line 328
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 338
    const-string v0, "XuiBtMediaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##onReceive,intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBtHandler:Landroid/os/Handler;

    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 342
    :cond_0
    return-void
.end method

.method public declared-synchronized pauseBtMedia()V
    .locals 2

    monitor-enter p0

    .line 131
    :try_start_0
    const-string v0, "XuiBtMediaManager"

    const-string v1, "pauseBtMedia"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mUserCallPlayed:Z

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBtHandler:Landroid/os/Handler;

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBtHandler:Landroid/os/Handler;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->unSelectBtSource()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;
    throw v0
.end method

.method public declared-synchronized pauseBtMediaByNeed()V
    .locals 2

    monitor-enter p0

    .line 139
    :try_start_0
    const-string v0, "XuiBtMediaManager"

    const-string v1, "pauseBtMedia for play not bt music with a2dp connected"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBtSourceSelected:Z

    .line 141
    sget-boolean v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->A2dpAutoSwitch:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mLastBtStatus:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->pauseBtMedia()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_0
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;
    throw v0
.end method

.method public declared-synchronized playBtMedia(I)V
    .locals 2
    .param p1, "callingPid"    # I

    monitor-enter p0

    .line 115
    :try_start_0
    const-string v0, "XuiBtMediaManager"

    const-string v1, "playBtMedia"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mCallingPlayBtPackage:Ljava/lang/String;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mUserCallPlayed:Z

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBtHandler:Landroid/os/Handler;

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBtHandler:Landroid/os/Handler;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->selectBtSource()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 114
    .end local p1    # "callingPid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;
    throw p1
.end method

.method public removeBTStateChangedListener(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$BTStateChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$BTStateChangeListener;

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBTStateChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBTStateChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBTStateChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 236
    :cond_0
    monitor-exit v0

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reqAvrcpNext()V
    .locals 3

    .line 381
    const-string v0, "XuiBtMediaManager"

    const-string v1, "reqAvrcpNext"

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->next()V

    .line 383
    return-void
.end method

.method public reqAvrcpPause()V
    .locals 3

    .line 376
    const-string v0, "XuiBtMediaManager"

    const-string v1, "reqAvrcpPause"

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->pause()V

    .line 378
    return-void
.end method

.method public reqAvrcpPlay()V
    .locals 3

    .line 371
    const-string v0, "XuiBtMediaManager"

    const-string v1, "reqAvrcpPlay"

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->play()V

    .line 373
    return-void
.end method

.method public reqAvrcpPrevious()V
    .locals 3

    .line 386
    const-string v0, "XuiBtMediaManager"

    const-string v1, "reqAvrcpPrevious"

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mBluetoothManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->previous()V

    .line 388
    return-void
.end method

.method public declared-synchronized setBtVolume(IF)V
    .locals 8
    .param p1, "callingPid"    # I
    .param p2, "volume"    # F

    monitor-enter p0

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "currentAudioFocus":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getAudioFocusPackageNameList()Ljava/util/List;

    move-result-object v1

    .line 347
    .local v1, "focusList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "callingApp":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 349
    .local v3, "force":Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " call setBtVolume:"

    .line 350
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " &currentAudioFocus:"

    .line 351
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " &force:"

    .line 352
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " &focusListString:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .local v4, "logString":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 354
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 355
    .local v6, "focus":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "|"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .end local v6    # "focus":Ljava/lang/String;
    goto :goto_1

    .line 358
    :cond_1
    const-string v5, "XuiBtMediaManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-direct {p0, v3, v0, v2, p2}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->setBtVolume(ZLjava/lang/String;Ljava/lang/String;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    monitor-exit p0

    return-void

    .line 344
    .end local v0    # "currentAudioFocus":Ljava/lang/String;
    .end local v1    # "focusList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "callingApp":Ljava/lang/String;
    .end local v3    # "force":Z
    .end local v4    # "logString":Ljava/lang/StringBuilder;
    .end local p1    # "callingPid":I
    .end local p2    # "volume":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    .line 344
    .end local p0    # "this":Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;
    throw p1
.end method
