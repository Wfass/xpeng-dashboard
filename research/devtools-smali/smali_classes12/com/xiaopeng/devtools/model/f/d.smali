.class public Lcom/xiaopeng/devtools/model/f/d;
.super Ljava/lang/Object;
.source "WifiBtModel.java"


# static fields
.field private static volatile us:Lcom/xiaopeng/devtools/model/f/d;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private sx:Landroid/net/wifi/WifiManager;

.field private uA:I

.field private uB:Z

.field private uC:Lcom/xiaopeng/libbluetooth/b;

.field private ur:Lcom/xiaopeng/libbluetooth/f;

.field private ut:Ljava/lang/String;

.field private uu:Ljava/lang/String;

.field private uv:Ljava/lang/String;

.field private uw:Ljava/lang/String;

.field private ux:Ljava/lang/String;

.field private uy:Ljava/lang/String;

.field private uz:Ljava/lang/String;

.field private wifiState:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/d;->ut:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/d;->uu:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/d;->uv:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/d;->uw:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/d;->ux:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/d;->uy:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/d;->uz:Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/xiaopeng/devtools/model/f/d$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/f/d$1;-><init>(Lcom/xiaopeng/devtools/model/f/d;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/d;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/xiaopeng/devtools/model/f/d$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/f/d$2;-><init>(Lcom/xiaopeng/devtools/model/f/d;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/d;->uC:Lcom/xiaopeng/libbluetooth/b;

    .line 139
    new-instance v0, Lcom/xiaopeng/devtools/model/f/d$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/f/d$3;-><init>(Lcom/xiaopeng/devtools/model/f/d;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/d;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/d;->sx:Landroid/net/wifi/WifiManager;

    .line 123
    invoke-static {}, Lcom/xiaopeng/libbluetooth/e;->pt()Lcom/xiaopeng/libbluetooth/e;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/d;->uC:Lcom/xiaopeng/libbluetooth/b;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libbluetooth/e;->a(Lcom/xiaopeng/libbluetooth/b;)Lcom/xiaopeng/libbluetooth/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/d;->ur:Lcom/xiaopeng/libbluetooth/f;

    .line 124
    invoke-static {}, Lcom/xiaopeng/libbluetooth/e;->pt()Lcom/xiaopeng/libbluetooth/e;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/d;->ur:Lcom/xiaopeng/libbluetooth/f;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libbluetooth/e;->a(Lcom/xiaopeng/libbluetooth/a;)V

    .line 125
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/model/f/d;->uB:Z

    if-nez v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/xiaopeng/devtools/model/f/d;->registerReceiver()V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/model/f/d;->uB:Z

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/d;->ur:Lcom/xiaopeng/libbluetooth/f;

    invoke-virtual {v0}, Lcom/xiaopeng/libbluetooth/f;->dM()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/model/f/d;->uA:I

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/f/d;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/xiaopeng/devtools/model/f/d;->uA:I

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/f/d;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/f/d;->sx:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/f/d;->ut:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/model/f/d;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/xiaopeng/devtools/model/f/d;->wifiState:I

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/model/f/d;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/f/d;->ut:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/f/d;->uv:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/model/f/d;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/f/d;->uu:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/f/d;->uu:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/model/f/d;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/f/d;->uv:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/f/d;->uz:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/xiaopeng/devtools/model/f/d;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/f/d;->uz:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/f/d;->uy:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/xiaopeng/devtools/model/f/d;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/f/d;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/f/d;->ux:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/xiaopeng/devtools/model/f/d;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/f/d;->uy:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/f/d;->uw:Ljava/lang/String;

    return-object p1
.end method

.method private getWlanLocalAddr()Ljava/lang/String;
    .locals 2

    .line 194
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1002da

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/d;->sx:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/d;->sx:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 197
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    .line 200
    :cond_1
    return-object v0
.end method

.method static synthetic h(Lcom/xiaopeng/devtools/model/f/d;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/xiaopeng/devtools/model/f/d;->uA:I

    return p0
.end method

.method public static hu()Lcom/xiaopeng/devtools/model/f/d;
    .locals 2

    .line 204
    sget-object v0, Lcom/xiaopeng/devtools/model/f/d;->us:Lcom/xiaopeng/devtools/model/f/d;

    if-nez v0, :cond_1

    .line 205
    const-class v0, Lcom/xiaopeng/devtools/model/f/d;

    monitor-enter v0

    .line 206
    :try_start_0
    sget-object v1, Lcom/xiaopeng/devtools/model/f/d;->us:Lcom/xiaopeng/devtools/model/f/d;

    if-nez v1, :cond_0

    .line 207
    new-instance v1, Lcom/xiaopeng/devtools/model/f/d;

    invoke-direct {v1}, Lcom/xiaopeng/devtools/model/f/d;-><init>()V

    sput-object v1, Lcom/xiaopeng/devtools/model/f/d;->us:Lcom/xiaopeng/devtools/model/f/d;

    .line 209
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 211
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/devtools/model/f/d;->us:Lcom/xiaopeng/devtools/model/f/d;

    return-object v0
.end method

.method static synthetic i(Lcom/xiaopeng/devtools/model/f/d;)Lcom/xiaopeng/libbluetooth/f;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/f/d;->ur:Lcom/xiaopeng/libbluetooth/f;

    return-object p0
.end method

.method static synthetic j(Lcom/xiaopeng/devtools/model/f/d;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/f/d;->ux:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/xiaopeng/devtools/model/f/d;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/f/d;->uw:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/xiaopeng/devtools/model/f/d;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/devtools/model/f/d;->getWlanLocalAddr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcom/xiaopeng/devtools/model/f/d;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/xiaopeng/devtools/model/f/d;->wifiState:I

    return p0
.end method

.method private registerReceiver()V
    .locals 3

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/devtools/model/f/d;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    return-void
.end method


# virtual methods
.method public getWifiState()I
    .locals 1

    .line 231
    iget v0, p0, Lcom/xiaopeng/devtools/model/f/d;->wifiState:I

    return v0
.end method

.method public hA()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/d;->ux:Ljava/lang/String;

    return-object v0
.end method

.method public hB()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/d;->uz:Ljava/lang/String;

    return-object v0
.end method

.method public hC()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/d;->ux:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/devtools/model/f/d;->uA:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/d;->ur:Lcom/xiaopeng/libbluetooth/f;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/d;->ux:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libbluetooth/f;->dQ(Ljava/lang/String;)Z

    .line 250
    :cond_0
    return-void
.end method

.method public hv()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/d;->ut:Ljava/lang/String;

    return-object v0
.end method

.method public hw()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/d;->uw:Ljava/lang/String;

    return-object v0
.end method

.method public hx()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/d;->uv:Ljava/lang/String;

    return-object v0
.end method

.method public hy()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/d;->uu:Ljava/lang/String;

    return-object v0
.end method

.method public hz()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/xiaopeng/devtools/model/f/d;->uA:I

    return v0
.end method
