.class public Lcom/aliyun/ams/ipdetector/Inet64Util;
.super Ljava/lang/Object;
.source "Inet64Util.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ams.Inet64Util"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "ipdetector"

    .line 34
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static detectIpStack(Landroid/content/Context;Z)I
    .locals 5

    const-string v0, "ams.Inet64Util"

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "udp_connect"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    :try_start_1
    invoke-static {}, Lcom/aliyun/ams/ipdetector/Inet64Util;->getIpStackByUdpConnect()I

    move-result v1

    if-eqz p1, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 164
    invoke-static {p0}, Lcom/aliyun/ams/ipdetector/Inet64Util;->getIpStackByLocalInterfaces(Landroid/content/Context;)I

    move-result p0

    const/4 v3, 0x1

    if-eq p0, v3, :cond_0

    const/4 v3, 0x2

    if-ne p0, v3, :cond_1

    .line 166
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startIpStackDetect ip stack: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new stack: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/aliyun/ams/ipdetector/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "[detectIpStack]error."

    .line 172
    invoke-static {v0, v3, p0}, Lcom/aliyun/ams/ipdetector/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detectIpStack ip stack: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, ", detectType: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "checkLocal: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/aliyun/ams/ipdetector/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static filterAddress(Ljava/net/InetAddress;)Z
    .locals 1

    .line 180
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static getIpStack(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x1

    .line 139
    invoke-static {p0, v0}, Lcom/aliyun/ams/ipdetector/Inet64Util;->detectIpStack(Landroid/content/Context;Z)I

    move-result p0

    return p0
.end method

.method private static getIpStackByLocalInterfaces(Landroid/content/Context;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 45
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 46
    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 49
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v6

    .line 50
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 54
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "find NetworkInterface:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ams.Inet64Util"

    invoke-static {v8, v7}, Lcom/aliyun/ams/ipdetector/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InterfaceAddress;

    .line 58
    invoke-virtual {v7}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    .line 59
    instance-of v9, v7, Ljava/net/Inet6Address;

    if-eqz v9, :cond_3

    .line 62
    check-cast v7, Ljava/net/Inet6Address;

    .line 63
    invoke-static {v7}, Lcom/aliyun/ams/ipdetector/Inet64Util;->filterAddress(Ljava/net/InetAddress;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 64
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found IPv6 address:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/net/Inet6Address;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/aliyun/ams/ipdetector/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v7, v3, 0x2

    if-eq v7, v4, :cond_2

    or-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 70
    :cond_3
    instance-of v9, v7, Ljava/net/Inet4Address;

    if-eqz v9, :cond_2

    .line 71
    check-cast v7, Ljava/net/Inet4Address;

    .line 72
    invoke-static {v7}, Lcom/aliyun/ams/ipdetector/Inet64Util;->filterAddress(Ljava/net/InetAddress;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 73
    invoke-virtual {v7}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    const-string v10, "192.168.43."

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 75
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found IPv4 address:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/net/Inet4Address;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/aliyun/ams/ipdetector/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v7, v3, 0x1

    if-eq v7, v5, :cond_2

    or-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 88
    :cond_5
    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    return v3

    .line 90
    :cond_6
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-ne v1, v5, :cond_7

    .line 91
    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_7
    const/4 v1, 0x0

    .line 96
    invoke-static {p0}, Lcom/aliyun/ams/ipdetector/Inet64Util;->isWifi(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v1, "wlan"

    goto :goto_2

    .line 98
    :cond_8
    invoke-static {p0}, Lcom/aliyun/ams/ipdetector/Inet64Util;->isMobile(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string/jumbo v1, "rmnet"

    :cond_9
    :goto_2
    if-eqz v1, :cond_b

    .line 104
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 105
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 106
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_b
    if-ne v3, v4, :cond_c

    const-string/jumbo p0, "v4-wlan0"

    .line 112
    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 113
    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    or-int/2addr v3, p0

    :cond_c
    return v3
.end method

.method private static getIpStackByUdpConnect()I
    .locals 2

    .line 125
    invoke-static {}, Lcom/aliyun/ams/ipdetector/UdpConnectType;->testUdpConnectIpv4()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 129
    :goto_0
    invoke-static {}, Lcom/aliyun/ams/ipdetector/UdpConnectType;->testUdpConnectIpv6()Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    return v0
.end method

.method public static getIpStackCheckLocal(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    .line 148
    invoke-static {p0, v0}, Lcom/aliyun/ams/ipdetector/Inet64Util;->detectIpStack(Landroid/content/Context;Z)I

    move-result p0

    return p0
.end method

.method private static isMobile(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 193
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 195
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 196
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isWifi(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 185
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 187
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 188
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
