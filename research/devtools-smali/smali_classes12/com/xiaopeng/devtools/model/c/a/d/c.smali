.class public Lcom/xiaopeng/devtools/model/c/a/d/c;
.super Ljava/lang/Object;
.source "UDPClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/model/c/a/d/c$a;
    }
.end annotation


# static fields
.field private static final tk:[B

.field private static final tl:[B

.field private static final tm:[B

.field private static final tn:[B

.field private static final to:[B

.field private static tp:Lcom/xiaopeng/devtools/model/c/a/d/c;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsStarted:Z

.field private mThread:Landroid/os/HandlerThread;

.field private tq:Ljava/net/DatagramSocket;

.field private tr:Lcom/xiaopeng/devtools/model/c/a/d/c$a;

.field private tt:I

.field private tu:I

.field private tv:I

.field private tw:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tk:[B

    .line 29
    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/xiaopeng/devtools/model/c/a/d/c;->tl:[B

    .line 30
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tm:[B

    .line 31
    const/16 v0, 0x34

    new-array v1, v0, [B

    fill-array-data v1, :array_3

    sput-object v1, Lcom/xiaopeng/devtools/model/c/a/d/c;->tn:[B

    .line 37
    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/xiaopeng/devtools/model/c/a/d/c;->to:[B

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

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->mIsStarted:Z

    .line 79
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tt:I

    .line 80
    iput v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tu:I

    .line 81
    iput v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tv:I

    .line 82
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/d/c$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/c/a/d/c$1;-><init>(Lcom/xiaopeng/devtools/model/c/a/d/c;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tw:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/c/a/d/c;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tu:I

    return p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/c/a/d/c;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tv:I

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/c/a/d/c;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tq:Ljava/net/DatagramSocket;

    return-object p1
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/model/c/a/d/c;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tv:I

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/model/c/a/d/c;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tt:I

    return p1
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/model/c/a/d/c;)Ljava/net/DatagramSocket;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tq:Ljava/net/DatagramSocket;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/model/c/a/d/c;)I
    .locals 2

    .line 26
    iget v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tu:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tu:I

    return v0
.end method

.method static synthetic e(Lcom/xiaopeng/devtools/model/c/a/d/c;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->mIsStarted:Z

    return p0
.end method

.method static synthetic f(Lcom/xiaopeng/devtools/model/c/a/d/c;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tt:I

    return p0
.end method

.method static synthetic g(Lcom/xiaopeng/devtools/model/c/a/d/c;)Lcom/xiaopeng/devtools/model/c/a/d/c$a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tr:Lcom/xiaopeng/devtools/model/c/a/d/c$a;

    return-object p0
.end method

.method public static gD()Lcom/xiaopeng/devtools/model/c/a/d/c;
    .locals 2

    .line 355
    sget-object v0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tp:Lcom/xiaopeng/devtools/model/c/a/d/c;

    if-nez v0, :cond_0

    .line 356
    const-string v0, "UDPClient"

    const-string v1, "create UDPClient Instance"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;-><init>()V

    sput-object v0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tp:Lcom/xiaopeng/devtools/model/c/a/d/c;

    .line 359
    :cond_0
    sget-object v0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tp:Lcom/xiaopeng/devtools/model/c/a/d/c;

    return-object v0
.end method

.method static synthetic gE()[B
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tk:[B

    return-object v0
.end method

.method static synthetic gF()[B
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tn:[B

    return-object v0
.end method

.method static synthetic gG()[B
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaopeng/devtools/model/c/a/d/c;->to:[B

    return-object v0
.end method

.method static synthetic gH()[B
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tm:[B

    return-object v0
.end method

.method static synthetic gI()[B
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tl:[B

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/devtools/model/c/a/d/c$a;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tr:Lcom/xiaopeng/devtools/model/c/a/d/c$a;

    .line 364
    return-void
.end method

.method public close()V
    .locals 2

    .line 387
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->mIsStarted:Z

    if-eqz v0, :cond_0

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->mIsStarted:Z

    .line 389
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tq:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 390
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tw:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 391
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tr:Lcom/xiaopeng/devtools/model/c/a/d/c$a;

    .line 394
    :cond_0
    return-void
.end method

.method public open()V
    .locals 2

    .line 375
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->mIsStarted:Z

    if-eqz v0, :cond_0

    .line 376
    return-void

    .line 378
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UDP"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->mThread:Landroid/os/HandlerThread;

    .line 379
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 380
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->mHandler:Landroid/os/Handler;

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->mIsStarted:Z

    .line 382
    const-string v0, "UDPClient"

    const-string v1, "Try to open UDP socket"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/d/c;->tw:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 384
    return-void
.end method
