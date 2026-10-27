.class public final Lcom/blankj/utilcode/util/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;,
        Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;,
        Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;,
        Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;
    }
.end annotation


# static fields
.field private static final SCAN_PERIOD_MILLIS:J = 0xbb8L

.field private static final SCAN_RESULT_CONSUMERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sPreWifiScanResults:Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

.field private static sScanWifiTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 736
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/NetworkUtils;->SCAN_RESULT_CONSUMERS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .line 53
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils;->SCAN_RESULT_CONSUMERS:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200()V
    .locals 0

    .line 53
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->startScanWifi()V

    return-void
.end method

.method static synthetic access$300()Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;
    .locals 1

    .line 53
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils;->sPreWifiScanResults:Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

    return-object v0
.end method

.method static synthetic access$302(Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;)Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;
    .locals 0
    .param p0, "x0"    # Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

    .line 53
    sput-object p0, Lcom/blankj/utilcode/util/NetworkUtils;->sPreWifiScanResults:Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

    return-object p0
.end method

.method static synthetic access$400()V
    .locals 0

    .line 53
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->startScanWifiIfEnabled()V

    return-void
.end method

.method static synthetic access$600(Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Ljava/util/List;

    .line 53
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/NetworkUtils;->isSameScanResults(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700()V
    .locals 0

    .line 53
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->stopScanWifi()V

    return-void
.end method

.method public static addOnWifiChangedConsumer(Lcom/blankj/utilcode/util/Utils$Consumer;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        allOf = {
            "android.permission.ACCESS_WIFI_STATE",
            "android.permission.CHANGE_WIFI_STATE",
            "android.permission.ACCESS_COARSE_LOCATION"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;",
            ">;)V"
        }
    .end annotation

    .line 742
    .local p0, "consumer":Lcom/blankj/utilcode/util/Utils$Consumer;, "Lcom/blankj/utilcode/util/Utils$Consumer<Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;>;"
    if-nez p0, :cond_0

    return-void

    .line 743
    :cond_0
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$7;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$7;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 755
    return-void
.end method

.method private static getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_NETWORK_STATE"
    .end annotation

    .line 486
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 487
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 488
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getBroadcastIpAddress()Ljava/lang/String;
    .locals 9

    .line 560
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 561
    .local v0, "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 562
    .local v1, "adds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/net/InetAddress;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 563
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 564
    .local v2, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-eqz v3, :cond_1

    .end local v2    # "ni":Ljava/net/NetworkInterface;
    goto :goto_0

    .line 565
    .restart local v2    # "ni":Ljava/net/NetworkInterface;
    :cond_1
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v3

    .line 566
    .local v3, "ias":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_1
    if-ge v4, v5, :cond_3

    .line 567
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InterfaceAddress;

    .line 568
    .local v6, "ia":Ljava/net/InterfaceAddress;
    invoke-virtual {v6}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v7

    .line 569
    .local v7, "broadcast":Ljava/net/InetAddress;
    if-eqz v7, :cond_2

    .line 570
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    .line 566
    .end local v6    # "ia":Ljava/net/InterfaceAddress;
    .end local v7    # "broadcast":Ljava/net/InetAddress;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 573
    .end local v2    # "ni":Ljava/net/NetworkInterface;
    .end local v3    # "ias":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_3
    goto :goto_0

    .line 576
    .end local v0    # "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1    # "adds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/net/InetAddress;>;"
    :cond_4
    goto :goto_2

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 577
    .end local v0    # "e":Ljava/net/SocketException;
    :goto_2
    const-string v0, ""

    return-object v0
.end method

.method public static getDomainAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "domain"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 611
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 612
    .local v0, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 613
    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 615
    const-string v1, ""

    return-object v1
.end method

.method public static getDomainAddressAsync(Ljava/lang/String;Lcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .locals 2
    .param p0, "domain"    # Ljava/lang/String;
    .param p1    # Lcom/blankj/utilcode/util/Utils$Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 590
    .local p1, "consumer":Lcom/blankj/utilcode/util/Utils$Consumer;, "Lcom/blankj/utilcode/util/Utils$Consumer<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 591
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$6;

    invoke-direct {v0, p1, p0}, Lcom/blankj/utilcode/util/NetworkUtils$6;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->doAsync(Lcom/blankj/utilcode/util/Utils$Task;)Lcom/blankj/utilcode/util/Utils$Task;

    move-result-object v0

    return-object v0

    .line 590
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'consumer\' of type Utils.Consumer<String> (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getGatewayByWifi()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_WIFI_STATE"
    .end annotation

    .line 640
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 641
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    const-string v1, ""

    return-object v1

    .line 642
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    iget v1, v1, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getIPAddress(Z)Ljava/lang/String;
    .locals 7
    .param p0, "useIPv4"    # Z
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 520
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 521
    .local v0, "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 522
    .local v1, "adds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/net/InetAddress;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 523
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 525
    .local v2, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-eqz v3, :cond_1

    .end local v2    # "ni":Ljava/net/NetworkInterface;
    goto :goto_0

    .line 526
    .restart local v2    # "ni":Ljava/net/NetworkInterface;
    :cond_1
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 527
    .local v3, "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 528
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 530
    .end local v2    # "ni":Ljava/net/NetworkInterface;
    .end local v3    # "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    goto :goto_0

    .line 531
    :cond_3
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 532
    .local v3, "add":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_7

    .line 533
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 534
    .local v4, "hostAddress":Ljava/lang/String;
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, 0x0

    if-gez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    move v5, v6

    .line 535
    .local v5, "isIPv4":Z
    :goto_3
    if-eqz p0, :cond_5

    .line 536
    if-eqz v5, :cond_7

    return-object v4

    .line 538
    :cond_5
    if-nez v5, :cond_7

    .line 539
    const/16 v2, 0x25

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 540
    .local v2, "index":I
    if-gez v2, :cond_6

    .line 541
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 542
    :cond_6
    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_4
    return-object v6

    .line 546
    .end local v2    # "index":I
    .end local v3    # "add":Ljava/net/InetAddress;
    .end local v4    # "hostAddress":Ljava/lang/String;
    .end local v5    # "isIPv4":Z
    :cond_7
    goto :goto_2

    .line 549
    .end local v0    # "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1    # "adds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/net/InetAddress;>;"
    :cond_8
    goto :goto_5

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 550
    .end local v0    # "e":Ljava/net/SocketException;
    :goto_5
    const-string v0, ""

    return-object v0
.end method

.method public static getIPAddressAsync(ZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .locals 2
    .param p0, "useIPv4"    # Z
    .param p1    # Lcom/blankj/utilcode/util/Utils$Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 500
    .local p1, "consumer":Lcom/blankj/utilcode/util/Utils$Consumer;, "Lcom/blankj/utilcode/util/Utils$Consumer<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 501
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$5;

    invoke-direct {v0, p1, p0}, Lcom/blankj/utilcode/util/NetworkUtils$5;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;Z)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->doAsync(Lcom/blankj/utilcode/util/Utils$Task;)Lcom/blankj/utilcode/util/Utils$Task;

    move-result-object v0

    return-object v0

    .line 500
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'consumer\' of type Utils.Consumer<String> (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getIpAddressByWifi()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_WIFI_STATE"
    .end annotation

    .line 627
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 628
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    const-string v1, ""

    return-object v1

    .line 629
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    iget v1, v1, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMobileDataEnabled()Z
    .locals 5

    .line 249
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 250
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_0

    return v0

    .line 251
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 252
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v2

    return v2

    .line 255
    :cond_1
    nop

    .line 256
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getDataEnabled"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 257
    .local v2, "getMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_2

    .line 258
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 262
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v2    # "getMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    :cond_2
    goto :goto_0

    .line 260
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 263
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static getNetMaskByWifi()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_WIFI_STATE"
    .end annotation

    .line 653
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 654
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    const-string v1, ""

    return-object v1

    .line 655
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    iget v1, v1, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNetworkOperatorName()Ljava/lang/String;
    .locals 2

    .line 390
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 391
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    const-string v1, ""

    return-object v1

    .line 392
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNetworkType()Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;
    .locals 3
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_NETWORK_STATE"
    .end annotation

    .line 412
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->isEthernet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_ETHERNET:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object v0

    .line 415
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 416
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 417
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 418
    sget-object v1, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_WIFI:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object v1

    .line 419
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_4

    .line 420
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 448
    :pswitch_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "subtypeName":Ljava/lang/String;
    const-string v2, "TD-SCDMA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "WCDMA"

    .line 450
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "CDMA2000"

    .line 451
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 446
    .end local v1    # "subtypeName":Ljava/lang/String;
    :pswitch_1
    sget-object v1, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_5G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object v1

    .line 443
    :pswitch_2
    sget-object v1, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_4G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object v1

    .line 439
    :pswitch_3
    sget-object v1, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_3G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object v1

    .line 427
    :pswitch_4
    sget-object v1, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_2G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object v1

    .line 454
    .restart local v1    # "subtypeName":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_UNKNOWN:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object v2

    .line 452
    :cond_3
    :goto_0
    sget-object v2, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_3G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object v2

    .line 458
    .end local v1    # "subtypeName":Ljava/lang/String;
    :cond_4
    sget-object v1, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_UNKNOWN:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object v1

    .line 461
    :cond_5
    sget-object v1, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_NO:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSSID()Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_WIFI_STATE"
    .end annotation

    .line 678
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 679
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    const-string v1, ""

    return-object v1

    .line 680
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 681
    .local v1, "wi":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_1

    const-string v2, ""

    return-object v2

    .line 682
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 683
    .local v2, "ssid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 684
    const-string v3, ""

    return-object v3

    .line 686
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_3

    .line 687
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 689
    :cond_3
    return-object v2
.end method

.method public static getServerAddressByWifi()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_WIFI_STATE"
    .end annotation

    .line 666
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 667
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    const-string v1, ""

    return-object v1

    .line 668
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    iget v1, v1, Landroid/net/DhcpInfo;->serverAddress:I

    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getWifiEnabled()Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_WIFI_STATE"
    .end annotation

    .line 317
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 318
    .local v0, "manager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 319
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    return v1
.end method

.method public static getWifiScanResult()Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;
    .locals 3
    .annotation build Landroidx/annotation/RequiresPermission;
        allOf = {
            "android.permission.ACCESS_WIFI_STATE",
            "android.permission.ACCESS_COARSE_LOCATION"
        }
    .end annotation

    .line 723
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

    invoke-direct {v0}, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;-><init>()V

    .line 724
    .local v0, "result":Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 726
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 728
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 729
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v2, :cond_1

    .line 730
    invoke-virtual {v0, v2}, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;->setAllResults(Ljava/util/List;)V

    .line 732
    :cond_1
    return-object v0
.end method

.method public static is4G()Z
    .locals 3
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_NETWORK_STATE"
    .end annotation

    .line 288
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 289
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 289
    :goto_0
    return v1
.end method

.method public static is5G()Z
    .locals 3
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_NETWORK_STATE"
    .end annotation

    .line 302
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 303
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 303
    :goto_0
    return v1
.end method

.method public static isAvailable()Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 118
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->isAvailableByDns()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/blankj/utilcode/util/NetworkUtils;->isAvailableByPing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isAvailableAsync(Lcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .locals 2
    .param p0    # Lcom/blankj/utilcode/util/Utils$Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 100
    .local p0, "consumer":Lcom/blankj/utilcode/util/Utils$Consumer;, "Lcom/blankj/utilcode/util/Utils$Consumer<Ljava/lang/Boolean;>;"
    if-eqz p0, :cond_0

    .line 101
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$1;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$1;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->doAsync(Lcom/blankj/utilcode/util/Utils$Task;)Lcom/blankj/utilcode/util/Utils$Task;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'consumer\' of type Utils.Consumer<Boolean> (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isAvailableByDns()Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 218
    const-string v0, ""

    invoke-static {v0}, Lcom/blankj/utilcode/util/NetworkUtils;->isAvailableByDns(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAvailableByDns(Ljava/lang/String;)Z
    .locals 3
    .param p0, "domain"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 230
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "www.baidu.com"

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 233
    .local v0, "realDomain":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .local v2, "inetAddress":Ljava/net/InetAddress;
    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    .line 235
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v2

    .line 236
    .local v2, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 237
    return v1
.end method

.method public static isAvailableByDnsAsync(Ljava/lang/String;Lcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .locals 2
    .param p0, "domain"    # Ljava/lang/String;
    .param p1    # Lcom/blankj/utilcode/util/Utils$Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task;"
        }
    .end annotation

    .line 200
    .local p1, "consumer":Lcom/blankj/utilcode/util/Utils$Consumer;, "Lcom/blankj/utilcode/util/Utils$Consumer<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    .line 201
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$3;

    invoke-direct {v0, p1, p0}, Lcom/blankj/utilcode/util/NetworkUtils$3;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->doAsync(Lcom/blankj/utilcode/util/Utils$Task;)Lcom/blankj/utilcode/util/Utils$Task;

    move-result-object v0

    return-object v0

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'consumer\' of type Utils.Consumer<Boolean> (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isAvailableByDnsAsync(Lcom/blankj/utilcode/util/Utils$Consumer;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 187
    .local p0, "consumer":Lcom/blankj/utilcode/util/Utils$Consumer;, "Lcom/blankj/utilcode/util/Utils$Consumer<Ljava/lang/Boolean;>;"
    const-string v0, ""

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils;->isAvailableByDnsAsync(Ljava/lang/String;Lcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;

    .line 188
    return-void
.end method

.method public static isAvailableByPing()Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 162
    const-string v0, ""

    invoke-static {v0}, Lcom/blankj/utilcode/util/NetworkUtils;->isAvailableByPing(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAvailableByPing(Ljava/lang/String;)Z
    .locals 5
    .param p0, "ip"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 174
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "223.5.5.5"

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 175
    .local v0, "realIp":Ljava/lang/String;
    :goto_0
    const-string v1, "ping -c 1 %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd(Ljava/lang/String;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v1

    .line 176
    .local v1, "result":Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    iget v3, v1, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;->result:I

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    return v2
.end method

.method public static isAvailableByPingAsync(Ljava/lang/String;Lcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .locals 2
    .param p0, "ip"    # Ljava/lang/String;
    .param p1    # Lcom/blankj/utilcode/util/Utils$Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 143
    .local p1, "consumer":Lcom/blankj/utilcode/util/Utils$Consumer;, "Lcom/blankj/utilcode/util/Utils$Consumer<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    .line 144
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$2;

    invoke-direct {v0, p1, p0}, Lcom/blankj/utilcode/util/NetworkUtils$2;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->doAsync(Lcom/blankj/utilcode/util/Utils$Task;)Lcom/blankj/utilcode/util/Utils$Task;

    move-result-object v0

    return-object v0

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'consumer\' of type Utils.Consumer<Boolean> (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isAvailableByPingAsync(Lcom/blankj/utilcode/util/Utils$Consumer;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 130
    .local p0, "consumer":Lcom/blankj/utilcode/util/Utils$Consumer;, "Lcom/blankj/utilcode/util/Utils$Consumer<Ljava/lang/Boolean;>;"
    const-string v0, ""

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils;->isAvailableByPingAsync(Ljava/lang/String;Lcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;

    .line 131
    return-void
.end method

.method public static isConnected()Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_NETWORK_STATE"
    .end annotation

    .line 88
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 89
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isEthernet()Z
    .locals 5
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_NETWORK_STATE"
    .end annotation

    .line 474
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 475
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 476
    :cond_0
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 477
    .local v2, "info":Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    return v1

    .line 478
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 479
    .local v3, "state":Landroid/net/NetworkInfo$State;
    if-nez v3, :cond_2

    return v1

    .line 480
    :cond_2
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_4

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static isMobileData()Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_NETWORK_STATE"
    .end annotation

    .line 274
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 275
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 275
    :goto_0
    return v1
.end method

.method public static isRegisteredNetworkStatusChangedListener(Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;)Z
    .locals 1
    .param p0, "listener"    # Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;

    .line 709
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->access$000()Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->isRegistered(Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;)Z

    move-result v0

    return v0
.end method

.method private static isSameScanResultContent(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p0, "r1"    # Landroid/net/wifi/ScanResult;
    .param p1, "r2"    # Landroid/net/wifi/ScanResult;

    .line 832
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 833
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 834
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/net/wifi/ScanResult;->level:I

    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 832
    :goto_0
    return v0
.end method

.method private static isSameScanResults(Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)Z"
        }
    .end annotation

    .line 812
    .local p0, "l1":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .local p1, "l2":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 813
    return v0

    .line 815
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    .line 818
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 819
    return v1

    .line 821
    :cond_2
    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 822
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 823
    .local v3, "r1":Landroid/net/wifi/ScanResult;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 824
    .local v4, "r2":Landroid/net/wifi/ScanResult;
    invoke-static {v3, v4}, Lcom/blankj/utilcode/util/NetworkUtils;->isSameScanResultContent(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 825
    return v1

    .line 821
    .end local v3    # "r1":Landroid/net/wifi/ScanResult;
    .end local v4    # "r2":Landroid/net/wifi/ScanResult;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 828
    .end local v2    # "i":I
    :cond_4
    return v0

    .line 816
    :cond_5
    :goto_1
    return v1
.end method

.method public static isWifiAvailable()Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        allOf = {
            "android.permission.ACCESS_WIFI_STATE",
            "android.permission.INTERNET"
        }
    .end annotation

    .line 361
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWifiAvailableAsync(Lcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .locals 2
    .param p0    # Lcom/blankj/utilcode/util/Utils$Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        allOf = {
            "android.permission.ACCESS_WIFI_STATE",
            "android.permission.INTERNET"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 373
    .local p0, "consumer":Lcom/blankj/utilcode/util/Utils$Consumer;, "Lcom/blankj/utilcode/util/Utils$Consumer<Ljava/lang/Boolean;>;"
    if-eqz p0, :cond_0

    .line 374
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$4;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$4;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->doAsync(Lcom/blankj/utilcode/util/Utils$Task;)Lcom/blankj/utilcode/util/Utils$Task;

    move-result-object v0

    return-object v0

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'consumer\' of type Utils.Consumer<Boolean> (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isWifiConnected()Z
    .locals 5
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_NETWORK_STATE"
    .end annotation

    .line 346
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 347
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 348
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 349
    .local v2, "ni":Landroid/net/NetworkInfo;
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v3, :cond_1

    move v1, v3

    nop

    :cond_1
    return v1
.end method

.method public static openWirelessSettings()V
    .locals 3

    .line 74
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 78
    return-void
.end method

.method public static registerNetworkStatusChangedListener(Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_NETWORK_STATE"
    .end annotation

    .line 699
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->access$000()Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->registerListener(Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;)V

    .line 700
    return-void
.end method

.method public static removeOnWifiChangedConsumer(Lcom/blankj/utilcode/util/Utils$Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;",
            ">;)V"
        }
    .end annotation

    .line 792
    .local p0, "consumer":Lcom/blankj/utilcode/util/Utils$Consumer;, "Lcom/blankj/utilcode/util/Utils$Consumer<Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;>;"
    if-nez p0, :cond_0

    return-void

    .line 793
    :cond_0
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$9;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$9;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 802
    return-void
.end method

.method public static setWifiEnabled(Z)V
    .locals 2
    .param p0, "enabled"    # Z
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.CHANGE_WIFI_STATE"
    .end annotation

    .line 331
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 332
    .local v0, "manager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    return-void

    .line 333
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-ne p0, v1, :cond_1

    return-void

    .line 334
    :cond_1
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 335
    return-void
.end method

.method private static startScanWifi()V
    .locals 7

    .line 758
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

    invoke-direct {v0}, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/NetworkUtils;->sPreWifiScanResults:Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

    .line 759
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/NetworkUtils;->sScanWifiTimer:Ljava/util/Timer;

    .line 760
    sget-object v1, Lcom/blankj/utilcode/util/NetworkUtils;->sScanWifiTimer:Ljava/util/Timer;

    new-instance v2, Lcom/blankj/utilcode/util/NetworkUtils$8;

    invoke-direct {v2}, Lcom/blankj/utilcode/util/NetworkUtils$8;-><init>()V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xbb8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 780
    return-void
.end method

.method private static startScanWifiIfEnabled()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        allOf = {
            "android.permission.ACCESS_WIFI_STATE",
            "android.permission.CHANGE_WIFI_STATE"
        }
    .end annotation

    .line 784
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 786
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 788
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 789
    return-void
.end method

.method private static stopScanWifi()V
    .locals 1

    .line 805
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils;->sScanWifiTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 806
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils;->sScanWifiTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 807
    const/4 v0, 0x0

    sput-object v0, Lcom/blankj/utilcode/util/NetworkUtils;->sScanWifiTimer:Ljava/util/Timer;

    .line 809
    :cond_0
    return-void
.end method

.method public static unregisterNetworkStatusChangedListener(Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;

    .line 718
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->access$000()Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->unregisterListener(Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;)V

    .line 719
    return-void
.end method
