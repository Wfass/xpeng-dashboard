.class public Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;
.super Ljava/lang/Object;
.source "RealtimeStatusPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;
    }
.end annotation


# static fields
.field private static final vJ:Ljava/lang/String;


# instance fields
.field private mIccid:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mVin:Ljava/lang/String;

.field private sP:Lcom/xpeng/test/BluetoothTest;

.field private sx:Landroid/net/wifi/WifiManager;

.field private vC:Lcom/xiaopeng/devtools/view/aftersales/d;

.field private vD:Lcom/xiaopeng/devtools/model/c/a/i/a;

.field private vE:I

.field private vF:Z

.field private vG:[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

.field private vH:Z

.field private vI:Lcom/xiaopeng/devtools/bean/http/SimStatus;

.field private vK:Lcom/xpeng/test/callback/BluetoothCallback;

.field private vL:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/a/a;->WZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CELLULAR_DATA_INFO"

    .line 78
    invoke-static {v1}, Lcom/xiaopeng/a/a$f;->ef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vJ:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/devtools/view/aftersales/d;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/16 v0, 0xa

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vE:I

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vF:Z

    .line 73
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vH:Z

    .line 107
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$1;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vK:Lcom/xpeng/test/callback/BluetoothCallback;

    .line 144
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$2;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 349
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vL:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Lcom/xiaopeng/devtools/bean/http/SimStatus;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/bean/http/SimStatus;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vI:Lcom/xiaopeng/devtools/bean/http/SimStatus;

    .line 91
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->sx:Landroid/net/wifi/WifiManager;

    .line 93
    new-instance v0, Lcom/xpeng/test/BluetoothTest;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xpeng/test/BluetoothTest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->sP:Lcom/xpeng/test/BluetoothTest;

    .line 94
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vC:Lcom/xiaopeng/devtools/view/aftersales/d;

    .line 95
    new-instance p1, Lcom/xiaopeng/devtools/model/c/a/i/a;

    invoke-direct {p1}, Lcom/xiaopeng/devtools/model/c/a/i/a;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vD:Lcom/xiaopeng/devtools/model/c/a/i/a;

    .line 96
    const-string p1, "Q1"

    invoke-static {}, Landroid/car/Car;->getXpCduType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vH:Z

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->dI()V

    .line 100
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->registerReceiver()V

    .line 101
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->sP:Lcom/xpeng/test/BluetoothTest;

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vK:Lcom/xpeng/test/callback/BluetoothCallback;

    invoke-virtual {p1, v0}, Lcom/xpeng/test/BluetoothTest;->registerCallback(Lcom/xpeng/test/callback/BluetoothCallback;)V

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->sP:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {p1}, Lcom/xpeng/test/BluetoothTest;->registerReceiver()V

    .line 103
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/d;->fy()Lcom/xiaopeng/devtools/model/a/d;

    .line 104
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/f;->k(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method private declared-synchronized a(Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;)V
    .locals 7

    monitor-enter p0

    .line 267
    :try_start_0
    const-string v0, "RealtimeStatusPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWifiSSID event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vG:[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vP:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f1004c1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 269
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vG:[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vP:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f1004b9

    new-array v4, v3, [Ljava/lang/Object;

    .line 271
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->getIp()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vG:[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vP:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    const v2, 0x7f1004be

    new-array v3, v3, [Ljava/lang/Object;

    .line 273
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->getStrength()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    monitor-exit p0

    return-void

    .line 266
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Lcom/xiaopeng/devtools/bean/event/signal/WifiStateMacEvent;)V
    .locals 6

    monitor-enter p0

    .line 277
    :try_start_0
    const-string v0, "RealtimeStatusPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWifiStateMac event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/signal/WifiStateMacEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vG:[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vP:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const v1, 0x7f1004c3

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 279
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/signal/WifiStateMacEvent;->getState()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 280
    const v4, 0x7f1002cf

    invoke-static {v4}, Lcom/xiaopeng/devtools/utils/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const v4, 0x7f1002ce

    invoke-static {v4}, Lcom/xiaopeng/devtools/utils/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 279
    invoke-static {v1, v3}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-virtual {v0, v5, v1}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vG:[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vP:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const v1, 0x7f1004bb

    new-array v3, v2, [Ljava/lang/Object;

    .line 282
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/signal/WifiStateMacEvent;->getMac()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-static {v1, v3}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 281
    invoke-virtual {v0, v2, p1}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    monitor-exit p0

    return-void

    .line 276
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->il()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->ci(I)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->a(Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->sx:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Lcom/xiaopeng/devtools/bean/http/SimStatus;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vI:Lcom/xiaopeng/devtools/bean/http/SimStatus;

    return-object p0
.end method

.method private declared-synchronized ci(I)V
    .locals 3

    monitor-enter p0

    .line 254
    :try_start_0
    const-string v0, "RealtimeStatusPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNUpdateWifiStateMac state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    new-instance v0, Lcom/xiaopeng/devtools/bean/event/signal/WifiStateMacEvent;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/bean/event/signal/WifiStateMacEvent;-><init>()V

    .line 256
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 257
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/bean/event/signal/WifiStateMacEvent;->setState(I)V

    .line 259
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->sx:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    .line 260
    if-eqz p1, :cond_1

    .line 261
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/bean/event/signal/WifiStateMacEvent;->setMac(Ljava/lang/String;)V

    .line 263
    :cond_1
    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->a(Lcom/xiaopeng/devtools/bean/event/signal/WifiStateMacEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    monitor-exit p0

    return-void

    .line 253
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->mIccid:Ljava/lang/String;

    return-object p0
.end method

.method private dI()V
    .locals 17

    .line 303
    move-object/from16 v0, p0

    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->eG()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->mVin:Ljava/lang/String;

    .line 304
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->getIccid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->mIccid:Ljava/lang/String;

    .line 305
    const/4 v1, 0x5

    new-array v2, v1, [Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    new-instance v3, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    .line 306
    const v4, 0x7f100107

    invoke-static {v4}, Lcom/xiaopeng/devtools/utils/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->mIccid:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 307
    const v9, 0x7f100379

    invoke-static {v9, v8}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v10

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "LOADING..."

    aput-object v9, v8, v10

    .line 308
    const v9, 0x7f10037b

    invoke-static {v9, v8}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "LOADING..."

    aput-object v9, v8, v10

    .line 309
    const v9, 0x7f10037a

    invoke-static {v9, v8}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v6, v9

    new-array v8, v7, [Ljava/lang/Object;

    const-string v11, "LOADING..."

    aput-object v11, v8, v10

    .line 310
    const v11, 0x7f1001c9

    invoke-static {v11, v8}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x3

    aput-object v8, v6, v11

    new-array v8, v7, [Ljava/lang/Object;

    const-string v12, "LOADING..."

    aput-object v12, v8, v10

    .line 311
    const v12, 0x7f1002bf

    invoke-static {v12, v8}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v6, v12

    new-array v8, v7, [Ljava/lang/Object;

    const-string v13, "LOADING..."

    aput-object v13, v8, v10

    .line 312
    const v13, 0x7f1003d6

    invoke-static {v13, v8}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v1

    new-array v8, v7, [Ljava/lang/Object;

    const-string v13, "LOADING..."

    aput-object v13, v8, v10

    .line 313
    const v13, 0x7f100397

    invoke-static {v13, v8}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x6

    aput-object v8, v6, v13

    invoke-direct {v3, v4, v6}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v3, v2, v10

    new-instance v3, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    .line 314
    const v4, 0x7f100119

    invoke-static {v4}, Lcom/xiaopeng/devtools/utils/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v6, v1, [Ljava/lang/String;

    new-array v8, v7, [Ljava/lang/Object;

    const-string v14, "LOADING..."

    aput-object v14, v8, v10

    .line 315
    const v14, 0x7f1004c3

    invoke-static {v14, v8}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v10

    new-array v8, v7, [Ljava/lang/Object;

    const-string v14, "LOADING..."

    aput-object v14, v8, v10

    .line 316
    const v14, 0x7f1004bb

    invoke-static {v14, v8}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    new-array v8, v7, [Ljava/lang/Object;

    const-string v14, "LOADING..."

    aput-object v14, v8, v10

    .line 317
    const v14, 0x7f1004c1

    invoke-static {v14, v8}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    new-array v8, v7, [Ljava/lang/Object;

    const-string v14, "LOADING..."

    aput-object v14, v8, v10

    .line 318
    const v14, 0x7f1004b9

    invoke-static {v14, v8}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v11

    new-array v8, v7, [Ljava/lang/Object;

    const-string v14, "LOADING..."

    aput-object v14, v8, v10

    .line 319
    const v14, 0x7f1004be

    invoke-static {v14, v8}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v12

    invoke-direct {v3, v4, v6}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v3, v2, v7

    new-instance v3, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    .line 320
    const v4, 0x7f100109

    invoke-static {v4}, Lcom/xiaopeng/devtools/utils/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v6, v11, [Ljava/lang/String;

    new-array v8, v7, [Ljava/lang/Object;

    const-string v14, "LOADING..."

    aput-object v14, v8, v10

    .line 321
    const v14, 0x7f100091

    invoke-static {v14, v8}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v10

    new-array v8, v7, [Ljava/lang/Object;

    const-string v14, "LOADING..."

    aput-object v14, v8, v10

    .line 322
    const v14, 0x7f10008d

    invoke-static {v14, v8}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    new-array v8, v7, [Ljava/lang/Object;

    .line 323
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v8, v10

    const v14, 0x7f10008b

    invoke-static {v14, v8}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    invoke-direct {v3, v4, v6}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v3, v2, v9

    new-instance v3, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    .line 324
    const v4, 0x7f1002ff

    invoke-static {v4}, Lcom/xiaopeng/devtools/utils/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 325
    iget-boolean v6, v0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vH:Z

    const v14, 0x7f100303

    const v15, 0x7f100315

    const v5, 0x7f10030b

    const v13, 0x7f100309

    const v1, 0x7f100307

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    if-eqz v6, :cond_0

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/String;

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v8, v10

    invoke-static {v1, v8}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v10

    new-array v1, v7, [Ljava/lang/Object;

    .line 326
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v1, v10

    invoke-static {v13, v1}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    new-array v1, v7, [Ljava/lang/Object;

    .line 327
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v1, v10

    invoke-static {v5, v1}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v9

    new-array v1, v7, [Ljava/lang/Object;

    .line 328
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v1, v10

    invoke-static {v15, v1}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v6, v5

    new-array v1, v7, [Ljava/lang/Object;

    .line 329
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v1, v10

    invoke-static {v14, v1}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v6, v5

    new-array v1, v7, [Ljava/lang/Object;

    .line 330
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v1, v10

    const v5, 0x7f10030f

    invoke-static {v5, v1}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x5

    aput-object v1, v6, v5

    const v1, 0x7f100301

    new-array v5, v7, [Ljava/lang/Object;

    .line 331
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v5, v10

    invoke-static {v1, v5}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x6

    aput-object v1, v6, v5

    const v1, 0x7f100311

    new-array v5, v7, [Ljava/lang/Object;

    .line 332
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v5, v10

    invoke-static {v1, v5}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x7

    aput-object v1, v6, v5

    const/16 v1, 0x8

    const v5, 0x7f100313

    new-array v8, v7, [Ljava/lang/Object;

    .line 333
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v5, v8}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v1

    const/16 v1, 0x9

    const v5, 0x7f100305

    new-array v8, v7, [Ljava/lang/Object;

    .line 334
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v5, v8}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v1

    goto/16 :goto_0

    .line 335
    :cond_0
    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/String;

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v8, v10

    invoke-static {v1, v8}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v10

    new-array v1, v7, [Ljava/lang/Object;

    .line 336
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v1, v10

    invoke-static {v13, v1}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    new-array v1, v7, [Ljava/lang/Object;

    .line 337
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v1, v10

    invoke-static {v5, v1}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v9

    new-array v1, v7, [Ljava/lang/Object;

    .line 338
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v1, v10

    invoke-static {v15, v1}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v6, v5

    new-array v1, v7, [Ljava/lang/Object;

    .line 339
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v1, v10

    invoke-static {v14, v1}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v6, v5

    new-array v1, v7, [Ljava/lang/Object;

    .line 340
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v1, v10

    const v5, 0x7f10030f

    invoke-static {v5, v1}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x5

    aput-object v1, v6, v5

    const v1, 0x7f100301

    new-array v5, v7, [Ljava/lang/Object;

    .line 341
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v5, v10

    invoke-static {v1, v5}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x6

    aput-object v1, v6, v5

    const v1, 0x7f10030d

    new-array v5, v7, [Ljava/lang/Object;

    .line 342
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v5, v10

    invoke-static {v1, v5}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x7

    aput-object v1, v6, v5

    const/16 v1, 0x8

    const v5, 0x7f100305

    new-array v8, v7, [Ljava/lang/Object;

    .line 343
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v5, v8}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v1

    :goto_0
    invoke-direct {v3, v4, v6}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x3

    aput-object v3, v2, v1

    new-instance v1, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    const v3, 0x7f100238

    .line 344
    invoke-static {v3}, Lcom/xiaopeng/devtools/utils/d;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    const v5, 0x7f10045d

    new-array v6, v7, [Ljava/lang/Object;

    const-string v7, "LOADING..."

    aput-object v7, v6, v10

    .line 345
    invoke-static {v5, v6}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v1, v2, v3

    iput-object v2, v0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vG:[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    .line 347
    return-void
.end method

.method static synthetic e(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->ik()V

    return-void
.end method

.method static synthetic f(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->ij()V

    return-void
.end method

.method static synthetic g(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Lcom/xiaopeng/devtools/model/c/a/i/a;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vD:Lcom/xiaopeng/devtools/model/c/a/i/a;

    return-object p0
.end method

.method static synthetic h(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vG:[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    return-object p0
.end method

.method static synthetic i(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vH:Z

    return p0
.end method

.method private ij()V
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vI:Lcom/xiaopeng/devtools/bean/http/SimStatus;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/http/SimStatus;->resetData()V

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->mVin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 188
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 189
    const-string v1, "vins"

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->mVin:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-class v1, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 191
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vJ:Ljava/lang/String;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 192
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->needAuthorizationInfo()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->enableSecurityEncoding()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vJ:Ljava/lang/String;

    .line 195
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->tag(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$3;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)V

    .line 196
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 238
    goto :goto_0

    .line 239
    :cond_0
    const-string v0, "RealtimeStatusPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail getCellularDataInfo VIN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->mVin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    :goto_0
    return-void
.end method

.method private ik()V
    .locals 5

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vG:[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vO:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vI:Lcom/xiaopeng/devtools/bean/http/SimStatus;

    .line 246
    invoke-virtual {v3}, Lcom/xiaopeng/devtools/bean/http/SimStatus;->getActivate()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f1002bf

    invoke-static {v3, v2}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 245
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vG:[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    sget-object v2, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vO:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v2

    aget-object v0, v0, v2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vI:Lcom/xiaopeng/devtools/bean/http/SimStatus;

    .line 248
    invoke-virtual {v3}, Lcom/xiaopeng/devtools/bean/http/SimStatus;->getTotalFlow()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f1003d6

    invoke-static {v3, v2}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 247
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vG:[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    sget-object v2, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vO:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v2

    aget-object v0, v0, v2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vI:Lcom/xiaopeng/devtools/bean/http/SimStatus;

    .line 250
    invoke-virtual {v2}, Lcom/xiaopeng/devtools/bean/http/SimStatus;->getRestFlow()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f100397

    invoke-static {v2, v1}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 249
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V

    .line 251
    return-void
.end method

.method private declared-synchronized il()V
    .locals 6

    monitor-enter p0

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vG:[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vQ:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const v1, 0x7f100091

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 287
    iget-object v4, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->sP:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v4}, Lcom/xpeng/test/BluetoothTest;->getState()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_0

    .line 288
    const v4, 0x7f1002cf

    invoke-static {v4}, Lcom/xiaopeng/devtools/utils/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const v4, 0x7f1002ce

    invoke-static {v4}, Lcom/xiaopeng/devtools/utils/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 287
    invoke-static {v1, v3}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-virtual {v0, v5, v1}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vG:[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vQ:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const v1, 0x7f10008d

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->sP:Lcom/xpeng/test/BluetoothTest;

    .line 290
    invoke-virtual {v4}, Lcom/xpeng/test/BluetoothTest;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vG:[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vQ:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x2

    const v3, 0x7f10008b

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->sP:Lcom/xpeng/test/BluetoothTest;

    .line 292
    invoke-virtual {v4}, Lcom/xpeng/test/BluetoothTest;->getConnectedDevicesSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v3, v2}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit p0

    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic j(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Lcom/xiaopeng/devtools/view/aftersales/d;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vC:Lcom/xiaopeng/devtools/view/aftersales/d;

    return-object p0
.end method

.method static synthetic k(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vF:Z

    return p0
.end method

.method static synthetic l(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Ljava/lang/Runnable;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vL:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic m(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vE:I

    return p0
.end method

.method private registerReceiver()V
    .locals 3

    .line 296
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 297
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 300
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 434
    const-string v0, "RealtimeStatusPresenter"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vF:Z

    .line 436
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vL:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->e(Ljava/lang/Runnable;)V

    .line 437
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 438
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->sP:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->unregisterReceiver()V

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->sP:Lcom/xpeng/test/BluetoothTest;

    invoke-virtual {v0}, Lcom/xpeng/test/BluetoothTest;->releaseCallback()V

    .line 440
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/f;->l(Ljava/lang/Object;)V

    .line 441
    return-void
.end method

.method public im()[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vG:[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    return-object v0
.end method

.method public in()V
    .locals 2

    .line 427
    const-string v0, "RealtimeStatusPresenter"

    const-string v1, "readRealtimeStatus"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vF:Z

    .line 429
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vL:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->e(Ljava/lang/Runnable;)V

    .line 430
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vL:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 431
    return-void
.end method

.method public onEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 173
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21101011

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-class v1, Lcom/xiaopeng/devtools/bean/car/TboxApn;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/car/TboxApn;

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vG:[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vO:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const v1, 0x7f10037b

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 177
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxApn;->getImsi()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vG:[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vO:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x2

    const v3, 0x7f10037a

    new-array v4, v2, [Ljava/lang/Object;

    .line 179
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxApn;->getImei()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->vG:[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vO:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x3

    const v3, 0x7f1001c9

    new-array v2, v2, [Ljava/lang/Object;

    .line 181
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxApn;->getRssi()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v3, v2}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V

    .line 183
    :goto_0
    return-void
.end method
