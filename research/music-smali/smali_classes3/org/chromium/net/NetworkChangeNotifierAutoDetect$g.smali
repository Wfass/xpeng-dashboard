.class Lorg/chromium/net/NetworkChangeNotifierAutoDetect$g;
.super Ljava/lang/Object;
.source "NetworkChangeNotifierAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/NetworkChangeNotifierAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/Object;

.field private d:Z

.field private e:Z

.field private f:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 430
    const-class v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$g;->a:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$g;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 453
    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$g;->b:Landroid/content/Context;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$g;->c:Ljava/lang/Object;

    .line 446
    sget-boolean v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$g;->a:Z

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 447
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$g;->b:Landroid/content/Context;

    return-void
.end method

.method private b()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WifiManagerPotentialLeak"
        }
    .end annotation

    .line 460
    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$g;->d:Z

    if-eqz v0, :cond_0

    .line 461
    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$g;->e:Z

    return v0

    .line 463
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$g;->b:Landroid/content/Context;

    .line 464
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    .line 463
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$g;->e:Z

    .line 467
    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$g;->e:Z

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$g;->b:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 469
    :goto_1
    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$g;->f:Landroid/net/wifi/WifiManager;

    .line 470
    iput-boolean v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$g;->d:Z

    .line 471
    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$g;->e:Z

    return v0
.end method

.method private c()Landroid/net/wifi/WifiInfo;
    .locals 1

    .line 495
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$g;->f:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 499
    :catch_0
    :try_start_1
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$g;->f:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 2

    .line 478
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$g;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 480
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$g;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 481
    invoke-direct {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$g;->c()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 483
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    const-string v1, ""

    .line 485
    monitor-exit v0

    return-object v1

    .line 487
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    invoke-static {}, Lorg/chromium/net/AndroidNetworkLibrary;->getWifiSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 487
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
