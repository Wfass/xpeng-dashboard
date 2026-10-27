.class public Lcom/aliyun/ams/ipdetector/Inet64Util;
.super Ljava/lang/Object;
.source "Inet64Util.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ams.Inet64Util"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    :try_start_0
    const-string v0, "ipdetector"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 37
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static detectIpStack(Landroid/content/Context;Z)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checkLocalAddress"    # Z

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "status":I
    const/4 v1, 0x0

    .line 161
    .local v1, "detectType":Ljava/lang/String;
    :try_start_0
    const-string v2, "udp_connect"

    move-object v1, v2

    .line 162
    invoke-static {}, Lcom/aliyun/ams/ipdetector/Inet64Util;->getIpStackByUdpConnect()I

    move-result v2

    move v0, v2

    .line 163
    if-eqz p1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 164
    invoke-static {p0}, Lcom/aliyun/ams/ipdetector/Inet64Util;->getIpStackByLocalInterfaces(Landroid/content/Context;)I

    move-result v2

    .line 165
    .local v2, "newStatus":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 166
    :cond_0
    const-string v3, "ams.Inet64Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startIpStackDetect ip stack: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", new stack: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/aliyun/ams/ipdetector/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    move v0, v2

    .line 173
    .end local v2    # "newStatus":I
    :cond_1
    goto :goto_0

    .line 171
    :catch_0
    move-exception v2

    .line 172
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "ams.Inet64Util"

    const-string v4, "[detectIpStack]error."

    invoke-static {v3, v4, v2}, Lcom/aliyun/ams/ipdetector/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    const-string v2, "ams.Inet64Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "detectIpStack ip stack: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", detectType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "checkLocal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aliyun/ams/ipdetector/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return v0
.end method

.method private static filterAddress(Ljava/net/InetAddress;)Z
    .locals 1
    .param p0, "address"    # Ljava/net/InetAddress;

    .line 180
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 180
    :goto_1
    return v0
.end method

.method public static getIpStack(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 139
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/aliyun/ams/ipdetector/Inet64Util;->detectIpStack(Landroid/content/Context;Z)I

    move-result v0

    return v0
.end method

.method private static getIpStackByLocalInterfaces(Landroid/content/Context;)I
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 45
    .local v0, "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 46
    .local v1, "networkInterfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 49
    .local v3, "networkInterface":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v6

    .line 50
    .local v6, "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 51
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    .line 54
    .local v7, "displayName":Ljava/lang/String;
    const-string v8, "ams.Inet64Util"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "find NetworkInterface:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/aliyun/ams/ipdetector/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v8, 0x0

    .line 57
    .local v8, "flag":I
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/InterfaceAddress;

    .line 58
    .local v10, "interfaceAddress":Ljava/net/InterfaceAddress;
    invoke-virtual {v10}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    .line 59
    .local v11, "inetAddress":Ljava/net/InetAddress;
    instance-of v12, v11, Ljava/net/Inet6Address;

    if-eqz v12, :cond_2

    .line 62
    move-object v12, v11

    check-cast v12, Ljava/net/Inet6Address;

    .line 63
    .local v12, "addressV6":Ljava/net/Inet6Address;
    invoke-static {v12}, Lcom/aliyun/ams/ipdetector/Inet64Util;->filterAddress(Ljava/net/InetAddress;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 64
    const-string v13, "ams.Inet64Util"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found IPv6 address:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/net/Inet6Address;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/aliyun/ams/ipdetector/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    and-int/lit8 v13, v8, 0x2

    if-eq v13, v5, :cond_1

    .line 67
    or-int/lit8 v8, v8, 0x2

    .line 70
    .end local v12    # "addressV6":Ljava/net/Inet6Address;
    :cond_1
    goto :goto_2

    :cond_2
    instance-of v12, v11, Ljava/net/Inet4Address;

    if-eqz v12, :cond_3

    .line 71
    move-object v12, v11

    check-cast v12, Ljava/net/Inet4Address;

    .line 72
    .local v12, "addressV4":Ljava/net/Inet4Address;
    invoke-static {v12}, Lcom/aliyun/ams/ipdetector/Inet64Util;->filterAddress(Ljava/net/InetAddress;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 73
    invoke-virtual {v12}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    const-string v14, "192.168.43."

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 75
    const-string v13, "ams.Inet64Util"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found IPv4 address:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/net/Inet4Address;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/aliyun/ams/ipdetector/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    and-int/lit8 v13, v8, 0x1

    if-eq v13, v4, :cond_3

    .line 78
    or-int/lit8 v8, v8, 0x1

    .line 82
    .end local v10    # "interfaceAddress":Ljava/net/InterfaceAddress;
    .end local v11    # "inetAddress":Ljava/net/InetAddress;
    .end local v12    # "addressV4":Ljava/net/Inet4Address;
    :cond_3
    :goto_2
    goto :goto_1

    .line 83
    :cond_4
    if-eqz v8, :cond_5

    .line 84
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .end local v3    # "networkInterface":Ljava/net/NetworkInterface;
    .end local v6    # "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    .end local v7    # "displayName":Ljava/lang/String;
    .end local v8    # "flag":I
    :cond_5
    goto/16 :goto_0

    .line 88
    :cond_6
    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 89
    const/4 v2, 0x0

    return v2

    .line 90
    :cond_7
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-ne v2, v4, :cond_8

    .line 91
    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 95
    :cond_8
    const/4 v2, 0x0

    .line 96
    .local v2, "searchStr":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/aliyun/ams/ipdetector/Inet64Util;->isWifi(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 97
    const-string v2, "wlan"

    goto :goto_3

    .line 98
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/aliyun/ams/ipdetector/Inet64Util;->isMobile(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 99
    const-string v2, "rmnet"

    .line 102
    :cond_a
    :goto_3
    const/4 v3, 0x0

    .line 103
    .local v3, "flag":I
    if-eqz v2, :cond_c

    .line 104
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 105
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 106
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 107
    goto :goto_5

    .line 109
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_b
    goto :goto_4

    .line 112
    :cond_c
    :goto_5
    if-ne v3, v5, :cond_d

    const-string v4, "v4-wlan0"

    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 113
    const-string v4, "v4-wlan0"

    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/2addr v3, v4

    .line 116
    :cond_d
    return v3
.end method

.method private static getIpStackByUdpConnect()I
    .locals 2

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "flag":I
    invoke-static {}, Lcom/aliyun/ams/ipdetector/UdpConnectType;->testUdpConnectIpv4()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    or-int/lit8 v0, v0, 0x1

    .line 129
    :cond_0
    invoke-static {}, Lcom/aliyun/ams/ipdetector/UdpConnectType;->testUdpConnectIpv6()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    or-int/lit8 v0, v0, 0x2

    .line 132
    :cond_1
    return v0
.end method

.method public static getIpStackCheckLocal(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 148
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/aliyun/ams/ipdetector/Inet64Util;->detectIpStack(Landroid/content/Context;Z)I

    move-result v0

    return v0
.end method

.method private static isMobile(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 193
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 195
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 196
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static isWifi(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 185
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 187
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 188
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
