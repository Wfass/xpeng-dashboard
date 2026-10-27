.class public Lcom/xiaopeng/devtools/system/service/PcCommandService;
.super Landroid/app/Service;
.source "PcCommandService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/system/service/PcCommandService$a;
    }
.end annotation


# instance fields
.field private Bn:Lcom/xiaopeng/devtools/system/service/PcCommandService$a;

.field private Bo:Lcom/xiaopeng/devtools/a/a;

.field private Bp:Z

.field private Bq:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

.field private Br:Landroid/net/wifi/WifiManager$SoftApCallback;

.field private sx:Landroid/net/wifi/WifiManager;

.field private ve:Lcom/xiaopeng/devtools/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService;->Bp:Z

    .line 46
    new-instance v0, Lcom/xiaopeng/devtools/system/service/PcCommandService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/system/service/PcCommandService$1;-><init>(Lcom/xiaopeng/devtools/system/service/PcCommandService;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService;->Bq:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    .line 66
    new-instance v0, Lcom/xiaopeng/devtools/system/service/PcCommandService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/system/service/PcCommandService$2;-><init>(Lcom/xiaopeng/devtools/system/service/PcCommandService;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService;->Br:Landroid/net/wifi/WifiManager$SoftApCallback;

    return-void
.end method

.method private E(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 285
    const-string v0, "PcCommandService"

    const-string v1, "startTether..."

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService;->sx:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 287
    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 288
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 289
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService;->sx:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    .line 290
    const-string p2, "PcCommandService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTether() setWifiApConfiguration..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "success"

    goto :goto_0

    :cond_0
    const-string v1, "failure"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    if-eqz p1, :cond_1

    .line 293
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 294
    const/4 p2, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService;->Bq:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    new-instance v2, Landroid/os/Handler;

    .line 295
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 294
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    .line 297
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/system/service/PcCommandService;Lcom/xiaopeng/devtools/a/a;)Lcom/xiaopeng/devtools/a/a;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService;->Bo:Lcom/xiaopeng/devtools/a/a;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/system/service/PcCommandService;Lcom/xiaopeng/devtools/a/b;)Lcom/xiaopeng/devtools/a/b;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService;->ve:Lcom/xiaopeng/devtools/a/b;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/system/service/PcCommandService;Lcom/xiaopeng/devtools/system/service/PcCommandService$a;)Lcom/xiaopeng/devtools/system/service/PcCommandService$a;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService;->Bn:Lcom/xiaopeng/devtools/system/service/PcCommandService$a;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService;->Bp:Z

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/system/service/PcCommandService$a;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService;->Bn:Lcom/xiaopeng/devtools/system/service/PcCommandService$a;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/a/b;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService;->ve:Lcom/xiaopeng/devtools/a/b;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/a/a;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService;->Bo:Lcom/xiaopeng/devtools/a/a;

    return-object p0
.end method

.method private kR()V
    .locals 2

    .line 301
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 302
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 303
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 102
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 107
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 108
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService;->sx:Landroid/net/wifi/WifiManager;

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService;->sx:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService;->Br:Landroid/net/wifi/WifiManager$SoftApCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;Landroid/os/Handler;)V

    .line 110
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 125
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 126
    const-string v0, "PcCommandService"

    const-string v1, "PcCommandService destroy"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService;->Bp:Z

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService;->sx:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService;->Br:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->unregisterSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService;->ve:Lcom/xiaopeng/devtools/a/b;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService;->ve:Lcom/xiaopeng/devtools/a/b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/a/b;->hP()V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService;->Bn:Lcom/xiaopeng/devtools/system/service/PcCommandService$a;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService;->Bn:Lcom/xiaopeng/devtools/system/service/PcCommandService$a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->kill()V

    .line 135
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 136
    invoke-direct {p0}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->kR()V

    .line 137
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 114
    const-string p1, "PcCommandService"

    const-string p2, "onStartCommand"

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->eG()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "XPENGTOOLS"

    goto :goto_0

    .line 118
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "XPENGTOOLS"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x6

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "td$9knu!rg3d"

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 p1, 0x1

    return p1
.end method
