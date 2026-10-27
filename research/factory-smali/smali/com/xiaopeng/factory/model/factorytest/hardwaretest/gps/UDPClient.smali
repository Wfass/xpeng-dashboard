.class public Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;
.super Ljava/lang/Object;
.source "UDPClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$UDPClientListener;
    }
.end annotation


# static fields
.field private static final ADR_COMMAND_DISABLE_ADR:I = 0x0

.field private static final ADR_COMMAND_ENABLE_ADR:I = 0x1

.field private static final ADR_COMMAND_IDLE:I = -0x1

.field private static final CLIENT_PORT:I = 0x74fc

.field private static final ERROR_RETRY_TIMEOUT:I = 0x1388

.field private static final FAILURE_REASON_CREATE_SOCKET:I = 0x1

.field private static final FAILURE_REASON_DISCONNECT_FROM_SERVER:I = 0x5

.field private static final FAILURE_REASON_GET_SERVER_HOST_NAME:I = 0x2

.field private static final FAILURE_REASON_SEND_ADR_CLOSE_COMMAND:I = 0x7

.field private static final FAILURE_REASON_SEND_ADR_OPEN_COMMAND:I = 0x8

.field private static final FAILURE_REASON_SEND_SERVER_START_COMMAND:I = 0x4

.field private static final FAILURE_REASON_SEND_SERVER_STOP_COMMAND:I = 0x6

.field private static final FAILURE_REASON_SET_SOCKET_TIME_OUT:I = 0x3

.field private static final FIRST_TIME_RETRY_MAX_NUM:I = 0x258

.field private static final INVALID_TEMPERATURE:F = -274.0f

.field private static final PING_COMMAND:[B

.field private static final RECEIVE_BUF_MAX_SIZE:I = 0x400

.field private static final RECEIVE_PACKAGE_RETRY_MAX_NUM:I = 0xa

.field private static final SERVER_PORT:I = 0x74fa

.field private static final SOCKET_TIMEOUT:I = 0x1f4

.field private static final START_COMMAND:[B

.field private static final STOP_COMMAND:[B

.field private static final TAG:Ljava/lang/String; = "UDPClient"

.field private static final UBX_CLOSE_ADR:[B

.field private static final UBX_OPEN_ADR:[B

.field private static sUDPClient:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;


# instance fields
.field private mFailureCounter:I

.field private mFailureReason:I

.field private mHandler:Landroid/os/Handler;

.field private mIsStarted:Z

.field private mListener:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$UDPClientListener;

.field private mNeedSendADRCommand:I

.field private mSocketHandlerRunnable:Ljava/lang/Runnable;

.field private mThread:Landroid/os/HandlerThread;

.field private mUDPSocket:Ljava/net/DatagramSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->START_COMMAND:[B

    .line 29
    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->STOP_COMMAND:[B

    .line 30
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->PING_COMMAND:[B

    .line 31
    const/16 v0, 0x34

    new-array v1, v0, [B

    fill-array-data v1, :array_3

    sput-object v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->UBX_CLOSE_ADR:[B

    .line 37
    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->UBX_OPEN_ADR:[B

    return-void

    :array_0
    .array-data 1
        0x58t
        0x1t
        0x10t
    .end array-data

    :array_1
    .array-data 1
        0x58t
        0x3t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x58t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x4bt
        0x62t
        0x6t
        0x23t
        0x2ct
        0x0t
        -0x1t
        -0x1t
        0x4ct
        0x66t
        -0x40t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x5t
        0x18t
        0xct
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x4bt
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x64t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x5ct
        -0xdt
    .end array-data

    :array_4
    .array-data 1
        -0x4bt
        0x62t
        0x6t
        0x23t
        0x2ct
        0x0t
        -0x1t
        -0x1t
        0x4ct
        0x66t
        -0x40t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x5t
        0x18t
        0xct
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x4bt
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x64t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x5bt
        -0x8t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mIsStarted:Z

    .line 68
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mNeedSendADRCommand:I

    .line 69
    iput v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mFailureCounter:I

    .line 70
    iput v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mFailureReason:I

    .line 71
    new-instance v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;-><init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mSocketHandlerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    .line 26
    iget v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mFailureCounter:I

    return v0
.end method

.method static synthetic access$008(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)I
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    .line 26
    iget v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mFailureCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mFailureCounter:I

    return v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    .line 26
    iget v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mFailureReason:I

    return v0
.end method

.method static synthetic access$1000()[B
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->STOP_COMMAND:[B

    return-object v0
.end method

.method static synthetic access$102(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;
    .param p1, "x1"    # I

    .line 26
    iput p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mFailureReason:I

    return p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)Ljava/net/DatagramSocket;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mUDPSocket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;
    .param p1, "x1"    # Ljava/net/DatagramSocket;

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mUDPSocket:Ljava/net/DatagramSocket;

    return-object p1
.end method

.method static synthetic access$300()[B
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->START_COMMAND:[B

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    .line 26
    iget-boolean v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mIsStarted:Z

    return v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    .line 26
    iget v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mNeedSendADRCommand:I

    return v0
.end method

.method static synthetic access$502(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;
    .param p1, "x1"    # I

    .line 26
    iput p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mNeedSendADRCommand:I

    return p1
.end method

.method static synthetic access$600()[B
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->UBX_CLOSE_ADR:[B

    return-object v0
.end method

.method static synthetic access$700()[B
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->UBX_OPEN_ADR:[B

    return-object v0
.end method

.method static synthetic access$800()[B
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->PING_COMMAND:[B

    return-object v0
.end method

.method static synthetic access$900(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$UDPClientListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mListener:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$UDPClientListener;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;
    .locals 2

    .line 309
    sget-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->sUDPClient:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    if-nez v0, :cond_0

    .line 310
    const-string v0, "UDPClient"

    const-string v1, "create UDPClient Instance"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    new-instance v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-direct {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;-><init>()V

    sput-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->sUDPClient:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    .line 313
    :cond_0
    sget-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->sUDPClient:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 341
    iget-boolean v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mIsStarted:Z

    if-eqz v0, :cond_0

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mIsStarted:Z

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mUDPSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mSocketHandlerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mListener:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$UDPClientListener;

    .line 348
    :cond_0
    return-void
.end method

.method public enableADR(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 321
    if-eqz p1, :cond_0

    .line 322
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mNeedSendADRCommand:I

    goto :goto_0

    .line 324
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mNeedSendADRCommand:I

    .line 326
    :goto_0
    return-void
.end method

.method public open()V
    .locals 2

    .line 329
    iget-boolean v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mIsStarted:Z

    if-eqz v0, :cond_0

    .line 330
    return-void

    .line 332
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UDP"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mThread:Landroid/os/HandlerThread;

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 334
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mHandler:Landroid/os/Handler;

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mIsStarted:Z

    .line 336
    const-string v0, "UDPClient"

    const-string v1, "Try to open UDP socket"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mSocketHandlerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 338
    return-void
.end method

.method public setUDPClientListener(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$UDPClientListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$UDPClientListener;

    .line 317
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->mListener:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$UDPClientListener;

    .line 318
    return-void
.end method
