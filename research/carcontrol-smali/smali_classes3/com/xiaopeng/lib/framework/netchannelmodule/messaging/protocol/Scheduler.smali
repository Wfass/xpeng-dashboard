.class public Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;
.super Ljava/lang/Object;
.source "Scheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;,
        Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final RECONNECTION_LONG_TIME_FAILED_CNT:I = 0x3c

.field private static final RECONNECTION_MAX_DELAY:I = 0x2710

.field private static final RECONNECTION_MIN_DELAY:I = 0x7d0

.field private static final RECONNECTION_NORMAL_DELAY:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "NetChannel-Scheduler"

.field private static final THRESHOLD_FAILED_COUNT_TO_DISCONNECT:I = 0x14

.field private static final THRESHOLD_FAILED_COUNT_TO_REINIT:I = 0x32


# instance fields
.field private volatile mClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;

.field private volatile mConnectedNetworkType:I

.field private volatile mContinuousConnectionFailed:I

.field private volatile mFailedCount:I

.field private volatile mLastState:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

.field private mMqttHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

.field private volatile mReconnectionDelay:I

.field private volatile mState:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mConnectedNetworkType:I

    .line 65
    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->INITIALIZING:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mState:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;

    .line 67
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mMqttHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    .line 68
    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mContinuousConnectionFailed:I

    const/16 p1, 0x7d0

    .line 69
    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mReconnectionDelay:I

    .line 70
    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mFailedCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mLastState:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->scheduleAction(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->doCheckFailedCount()V

    return-void
.end method

.method private declared-synchronized doCheckFailedCount()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "NetChannel-Scheduler"

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mFailedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mFailedCount:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mFailedCount:I

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;->scheduleReopen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 166
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mFailedCount:I

    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mState:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->CONNECTING:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mState:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->INITIALIZING:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "NetChannel-Scheduler"

    const-string v1, "Try to disconnect the connection."

    .line 172
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;->disconnect()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "NetChannel-Scheduler"

    const-string v1, "Try to reopen the connection."

    .line 169
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;->scheduleReopen()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getNetworkType()I
    .locals 1

    .line 247
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->getNetType()I

    move-result v0

    .line 248
    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->getNetStrength(I)I

    return v0
.end method

.method private declared-synchronized scheduleAction(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;)V
    .locals 3

    monitor-enter p0

    .line 183
    :try_start_0
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$4;->$SwitchMap$com$xiaopeng$lib$framework$netchannelmodule$messaging$protocol$Scheduler$STATE:[I

    invoke-virtual {p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x7d0

    if-eq p2, v1, :cond_6

    const/4 v1, 0x2

    if-eq p2, v1, :cond_5

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    goto/16 :goto_1

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->resetFail()V

    .line 233
    iput v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mReconnectionDelay:I

    .line 234
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;->stopBackgroundReconnection()V

    .line 235
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;

    iget p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mReconnectionDelay:I

    invoke-interface {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;->startBackgroundReconnection(I)V

    goto/16 :goto_1

    .line 210
    :cond_1
    sget-object p2, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->CONNECTED:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    if-ne p1, p2, :cond_2

    .line 211
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->getNetworkType()I

    move-result p2

    .line 212
    iget v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mConnectedNetworkType:I

    if-ne p2, v0, :cond_2

    .line 213
    sget-object p1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->CONNECTED:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mState:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    const-string p1, "NetChannel-Scheduler"

    const-string p2, "Skip the network change event cause of same network type!"

    .line 214
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 219
    :cond_2
    sget-object p2, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->CONNECTED:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    if-ne p1, p2, :cond_3

    .line 221
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;->scheduleReopen()V

    goto :goto_0

    .line 222
    :cond_3
    sget-object p2, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->DISCONNECTED:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    if-ne p1, p2, :cond_4

    .line 224
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;->stopBackgroundReconnection()V

    .line 225
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;

    invoke-interface {p1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;->startConnectImmediately(I)V

    .line 227
    :cond_4
    :goto_0
    iput v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mReconnectionDelay:I

    goto :goto_1

    .line 201
    :cond_5
    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mContinuousConnectionFailed:I

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;->stopBackgroundReconnection()V

    .line 203
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;->startExtremePingSender()V

    .line 204
    iput v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mReconnectionDelay:I

    .line 205
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->getNetworkType()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mConnectedNetworkType:I

    goto :goto_1

    .line 185
    :cond_6
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;

    invoke-interface {p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;->stopBackgroundReconnection()V

    .line 186
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;

    invoke-interface {p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;->stopExtremePingSender()V

    .line 187
    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mConnectedNetworkType:I

    .line 188
    sget-object p2, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->INITIALIZING:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    if-ne p1, p2, :cond_7

    .line 189
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;

    invoke-interface {p1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;->startConnectImmediately(I)V

    .line 190
    iput v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mReconnectionDelay:I

    goto :goto_1

    .line 192
    :cond_7
    iget p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mContinuousConnectionFailed:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mContinuousConnectionFailed:I

    .line 193
    iget p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mContinuousConnectionFailed:I

    const/16 p2, 0x3c

    if-le p1, p2, :cond_8

    const/16 p1, 0x2710

    .line 194
    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mReconnectionDelay:I

    .line 196
    :cond_8
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;

    iget p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mReconnectionDelay:I

    invoke-interface {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;->startBackgroundReconnection(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized allowToConnect()Z
    .locals 2

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mState:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->DISCONNECTED:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mState:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->NETWORK_CHANGED:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized allowToSubscribe()Z
    .locals 2

    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mState:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->CONNECTED:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connected()Z
    .locals 2

    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mState:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->CONNECTED:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized increaseFail()V
    .locals 2

    monitor-enter p0

    .line 104
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mFailedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mFailedCount:I

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mMqttHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$2;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized increaseFailTwice()V
    .locals 2

    monitor-enter p0

    .line 114
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mFailedCount:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mFailedCount:I

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mMqttHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$3;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized moveTo(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;)V
    .locals 3

    monitor-enter p0

    .line 80
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MQTTSTATUS] Move from state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mState:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetChannel-Scheduler"

    .line 81
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mState:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mLastState:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mState:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    .line 86
    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->INITIALIZING:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->DISCONNECTING:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mMqttHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$1;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->post(Ljava/lang/Runnable;)Z

    .line 98
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->sendoutAllLogs()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 99
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->getCurrent()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->postTracingLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_1
    monitor-exit p0

    return-void

    .line 88
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 131
    :try_start_0
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->DISCONNECTED:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mState:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;->stopBackgroundReconnection()V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;->stopExtremePingSender()V

    .line 134
    iget v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mFailedCount:I

    if-lez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;->stopReopenAction()V

    :cond_0
    const/4 v0, 0x0

    .line 137
    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mFailedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetFail()V
    .locals 1

    monitor-enter p0

    .line 124
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mFailedCount:I

    if-lez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mClient:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;->stopReopenAction()V

    :cond_0
    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mFailedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public state()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->mState:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    return-object v0
.end method
