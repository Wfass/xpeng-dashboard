.class public Lcom/xiaopeng/lib/utils/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


# static fields
.field private static final GOBINET_PROPERTY_KEY:Ljava/lang/String; = "persist.sys.ril.gobinet"

.field private static final GOBINET_STATE_FILE:Ljava/lang/String; = "/sys/class/net/xpusb0/operstate"

.field private static final GOBINET_VALUE_ON:Ljava/lang/String; = "on"

.field public static final NETWORK_TYPE_2G:I = 0x1

.field public static final NETWORK_TYPE_3G:I = 0x2

.field public static final NETWORK_TYPE_4G:I = 0x3

.field public static final NETWORK_TYPE_NONE:I = 0x0

.field public static final NETWORK_TYPE_WIFI:I = 0xa

.field public static final TRAFFIC_STATUS_CHAGNE_ACTION:Ljava/lang/String; = "com.xiaopeng.action.TRAFFIC_STATUS_CHANGE"

.field public static final TRAFFIC_STATUS_TYPE_APN_ERROR:I = 0x2

.field public static final TRAFFIC_STATUS_TYPE_AVAILABLE:I = 0x3

.field public static final TRAFFIC_STATUS_TYPE_KEY:Ljava/lang/String; = "persist.sys.xp.4g.st"

.field public static final TRAFFIC_STATUS_TYPE_RUNOUT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNetState(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "netState":Z
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 39
    .local v1, "safeContext":Landroid/content/Context;
    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 40
    .local v2, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_1

    .line 41
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    .line 42
    .local v3, "info":[Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    .line 43
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 44
    aget-object v5, v3, v4

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 46
    goto :goto_1

    .line 43
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 51
    .end local v3    # "info":[Landroid/net/NetworkInfo;
    .end local v4    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 160
    .local v0, "safeContext":Landroid/content/Context;
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 161
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 145
    .local v0, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 146
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_0

    .line 147
    const-string v2, ""

    return-object v2

    .line 150
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 171
    .local v0, "safeContext":Landroid/content/Context;
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 172
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 86
    return v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 89
    .local v1, "safeContext":Landroid/content/Context;
    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 90
    .local v2, "connectMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 91
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_2

    .line 92
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 93
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 111
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 109
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 98
    :pswitch_3
    return v5

    .line 113
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 114
    const/16 v0, 0xa

    return v0

    .line 118
    :cond_2
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getSimState(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 182
    .local v0, "safeContext":Landroid/content/Context;
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 183
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    return v2
.end method

.method public static getTrafficStatus()I
    .locals 2

    .line 203
    const-string v0, "persist.sys.xp.4g.st"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isMobileNetwork(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    .local v0, "safeContext":Landroid/content/Context;
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 76
    .local v1, "connectMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 77
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_0

    .line 78
    const/4 v3, 0x1

    return v3

    .line 81
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 128
    const-string v0, "connectivity"

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 130
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 132
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    const/4 v2, 0x1

    return v2

    .line 137
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isSystemApnReady()Z
    .locals 5

    .line 213
    const/4 v0, 0x1

    .line 215
    .local v0, "ready":Z
    const-string v1, "on"

    const-string v2, "persist.sys.ril.gobinet"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    return v0

    .line 220
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/net/xpusb0/operstate"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 222
    return v0

    .line 225
    :cond_1
    const/4 v0, 0x0

    .line 226
    const/4 v2, 0x0

    .line 228
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 229
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "line":Ljava/lang/String;
    const-string v4, "up"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "unknown"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    .line 231
    :cond_2
    const/4 v0, 0x1

    .end local v3    # "line":Ljava/lang/String;
    goto :goto_0

    .line 236
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 233
    :catch_0
    move-exception v3

    .line 234
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    :goto_0
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 237
    nop

    .line 239
    return v0

    .line 236
    :goto_1
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 237
    throw v3
.end method

.method public static isTrafficRunOut()Z
    .locals 2

    .line 192
    invoke-static {}, Lcom/xiaopeng/lib/utils/NetUtils;->getTrafficStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isWifiEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 55
    if-eqz p0, :cond_1

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    .local v0, "safeContext":Landroid/content/Context;
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 60
    .local v1, "wifiMgr":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 61
    const-string v2, "connectivity"

    .line 62
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 63
    .local v2, "connManager":Landroid/net/ConnectivityManager;
    const/4 v3, 0x1

    .line 64
    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 65
    .local v3, "wifiInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    .line 66
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    return v4

    .line 70
    .end local v2    # "connManager":Landroid/net/ConnectivityManager;
    .end local v3    # "wifiInfo":Landroid/net/NetworkInfo;
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 56
    .end local v0    # "safeContext":Landroid/content/Context;
    .end local v1    # "wifiMgr":Landroid/net/wifi/WifiManager;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Global context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
