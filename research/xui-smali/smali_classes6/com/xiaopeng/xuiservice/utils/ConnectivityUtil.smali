.class public Lcom/xiaopeng/xuiservice/utils/ConnectivityUtil;
.super Ljava/lang/Object;
.source "ConnectivityUtil.java"


# static fields
.field private static mWifiMac:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/ConnectivityUtil;->mWifiMac:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWifiMac()Ljava/lang/String;
    .locals 12

    .line 12
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ConnectivityUtil;->mWifiMac:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 13
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ConnectivityUtil;->mWifiMac:Ljava/lang/String;

    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 17
    .local v1, "enumeration":Ljava/util/Enumeration;
    if-nez v1, :cond_1

    .line 18
    return-object v0

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 21
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 22
    .local v2, "networkInterface":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "wlan0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 23
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3

    .line 24
    .local v3, "arrayOfByte":[B
    if-eqz v3, :cond_4

    array-length v4, v3

    if-nez v4, :cond_2

    goto :goto_2

    .line 28
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .local v4, "sb":Ljava/lang/StringBuilder;
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_3

    aget-byte v8, v3, v7

    .line 30
    .local v8, "b":B
    const-string v9, "%02X"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .end local v8    # "b":B
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 32
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/xiaopeng/xuiservice/utils/ConnectivityUtil;->mWifiMac:Ljava/lang/String;

    .line 33
    sget-object v5, Lcom/xiaopeng/xuiservice/utils/ConnectivityUtil;->mWifiMac:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 25
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    :goto_2
    return-object v0

    .line 35
    .end local v2    # "networkInterface":Ljava/net/NetworkInterface;
    .end local v3    # "arrayOfByte":[B
    :cond_5
    goto :goto_0

    .line 38
    .end local v1    # "enumeration":Ljava/util/Enumeration;
    :cond_6
    nop

    .line 39
    return-object v0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    .local v1, "socketException":Ljava/net/SocketException;
    return-object v0
.end method
