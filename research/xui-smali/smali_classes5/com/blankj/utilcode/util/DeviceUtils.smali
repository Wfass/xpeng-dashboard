.class public final Lcom/blankj/utilcode/util/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field private static final KEY_UDID:Ljava/lang/String; = "KEY_UDID"

.field private static volatile udid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getABIs()[Ljava/lang/String;
    .locals 4

    .line 330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 331
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    return-object v0

    .line 333
    :cond_0
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 334
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v3, v0, v2

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0

    .line 336
    :cond_1
    new-array v0, v1, [Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getAndroidID()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 102
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    .line 101
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "id":Ljava/lang/String;
    const-string v1, "9774d56d682e549c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    return-object v1

    .line 106
    :cond_0
    if-nez v0, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private static getInetAddress()Ljava/net/InetAddress;
    .locals 6

    .line 260
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 261
    .local v0, "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 262
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 264
    .local v1, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v2

    if-nez v2, :cond_0

    .end local v1    # "ni":Ljava/net/NetworkInterface;
    goto :goto_0

    .line 265
    .restart local v1    # "ni":Ljava/net/NetworkInterface;
    :cond_0
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 266
    .local v2, "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 267
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 268
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_1

    .line 269
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, "hostAddress":Ljava/lang/String;
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v5, :cond_1

    return-object v3

    .line 272
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "hostAddress":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 273
    .end local v1    # "ni":Ljava/net/NetworkInterface;
    .end local v2    # "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    goto :goto_0

    .line 276
    .end local v0    # "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_3
    goto :goto_2

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 277
    .end local v0    # "e":Ljava/net/SocketException;
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/RequiresPermission;
        allOf = {
            "android.permission.ACCESS_WIFI_STATE",
            "android.permission.CHANGE_WIFI_STATE"
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddress([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "macAddress":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/blankj/utilcode/util/DeviceUtils;->setWifiEnabled(Z)V

    .line 122
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/blankj/utilcode/util/DeviceUtils;->setWifiEnabled(Z)V

    .line 123
    invoke-static {v0}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddress([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 120
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static varargs getMacAddress([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "excepts"    # [Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresPermission;
        allOf = {
            "android.permission.ACCESS_WIFI_STATE"
        }
    .end annotation

    .line 157
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddressByNetworkInterface()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "macAddress":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/DeviceUtils;->isAddressNotInExcepts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    return-object v0

    .line 161
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddressByInetAddress()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/DeviceUtils;->isAddressNotInExcepts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    return-object v0

    .line 165
    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddressByWifiInfo()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/DeviceUtils;->isAddressNotInExcepts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    return-object v0

    .line 169
    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddressByFile()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/DeviceUtils;->isAddressNotInExcepts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 171
    return-object v0

    .line 173
    :cond_3
    const-string v1, ""

    return-object v1
.end method

.method private static getMacAddressByFile()Ljava/lang/String;
    .locals 5

    .line 281
    const-string v0, "getprop wifi.interface"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->execCmd(Ljava/lang/String;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v0

    .line 282
    .local v0, "result":Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    iget v2, v0, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;->result:I

    if-nez v2, :cond_0

    .line 283
    iget-object v2, v0, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    .line 284
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cat /sys/class/net/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/address"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->execCmd(Ljava/lang/String;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v0

    .line 286
    iget v1, v0, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;->result:I

    if-nez v1, :cond_0

    .line 287
    iget-object v1, v0, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    .line 288
    .local v1, "address":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 289
    return-object v1

    .line 294
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    const-string v1, "02:00:00:00:00:00"

    return-object v1
.end method

.method private static getMacAddressByInetAddress()Ljava/lang/String;
    .locals 11

    .line 238
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 239
    .local v0, "inetAddress":Ljava/net/InetAddress;
    if-eqz v0, :cond_1

    .line 240
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 241
    .local v1, "ni":Ljava/net/NetworkInterface;
    if-eqz v1, :cond_1

    .line 242
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    .line 243
    .local v2, "macBytes":[B
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .local v3, "sb":Ljava/lang/StringBuilder;
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v4, :cond_0

    aget-byte v8, v2, v6

    .line 246
    .local v8, "b":B
    const-string v9, "%02x:"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v7, v5

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .end local v8    # "b":B
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 254
    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    .end local v1    # "ni":Ljava/net/NetworkInterface;
    .end local v2    # "macBytes":[B
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    goto :goto_1

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v0, "02:00:00:00:00:00"

    return-object v0
.end method

.method private static getMacAddressByNetworkInterface()Ljava/lang/String;
    .locals 11

    .line 217
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 218
    .local v0, "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 219
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 220
    .local v1, "ni":Ljava/net/NetworkInterface;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wlan0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .end local v1    # "ni":Ljava/net/NetworkInterface;
    goto :goto_0

    .line 221
    .restart local v1    # "ni":Ljava/net/NetworkInterface;
    :cond_1
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    .line 222
    .local v2, "macBytes":[B
    if-eqz v2, :cond_3

    array-length v3, v2

    if-lez v3, :cond_3

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v3, "sb":Ljava/lang/StringBuilder;
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    const/4 v7, 0x1

    if-ge v6, v4, :cond_2

    aget-byte v8, v2, v6

    .line 225
    .local v8, "b":B
    const-string v9, "%02x:"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v7, v5

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .end local v8    # "b":B
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 227
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 229
    .end local v1    # "ni":Ljava/net/NetworkInterface;
    .end local v2    # "macBytes":[B
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    goto :goto_0

    .line 232
    .end local v0    # "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_4
    goto :goto_2

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const-string v0, "02:00:00:00:00:00"

    return-object v0
.end method

.method private static getMacAddressByWifiInfo()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_WIFI_STATE"
    .end annotation

    .line 197
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 199
    .local v0, "wifi":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 201
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "macAddress":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    .line 205
    return-object v2

    .line 211
    .end local v0    # "wifi":Landroid/net/wifi/WifiManager;
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    .end local v2    # "macAddress":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, "02:00:00:00:00:00"

    return-object v0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .line 304
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 4

    .line 314
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 315
    .local v0, "model":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s*"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 318
    :cond_0
    const-string v0, ""

    .line 320
    :goto_0
    return-object v0
.end method

.method public static getSDKVersionCode()I
    .locals 1

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getSDKVersionName()Ljava/lang/String;
    .locals 1

    .line 82
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private static getUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;

    .line 519
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 522
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUniqueDeviceId()Ljava/lang/String;
    .locals 2

    .line 418
    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/DeviceUtils;->getUniqueDeviceId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUniqueDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;

    .line 431
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/DeviceUtils;->getUniqueDeviceId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUniqueDeviceId(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "useCache"    # Z

    .line 458
    if-nez p1, :cond_0

    .line 459
    invoke-static {p0}, Lcom/blankj/utilcode/util/DeviceUtils;->getUniqueDeviceIdReal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 461
    :cond_0
    sget-object v0, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 462
    const-class v0, Lcom/blankj/utilcode/util/DeviceUtils;

    monitor-enter v0

    .line 463
    :try_start_0
    sget-object v1, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 464
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getSpUtils4Utils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v1

    const-string v2, "KEY_UDID"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/blankj/utilcode/util/SPUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 466
    sput-object v1, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    .line 467
    sget-object v2, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 469
    :cond_1
    invoke-static {p0}, Lcom/blankj/utilcode/util/DeviceUtils;->getUniqueDeviceIdReal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 471
    .end local v1    # "id":Ljava/lang/String;
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 473
    :cond_3
    :goto_0
    sget-object v0, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public static getUniqueDeviceId(Z)Ljava/lang/String;
    .locals 1
    .param p0, "useCache"    # Z

    .line 444
    const-string v0, ""

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/DeviceUtils;->getUniqueDeviceId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUniqueDeviceIdReal(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;

    .line 478
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getAndroidID()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "androidId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/DeviceUtils;->saveUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 483
    .end local v0    # "androidId":Ljava/lang/String;
    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    .line 484
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/DeviceUtils;->saveUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getWifiEnabled()Z
    .locals 2

    .line 128
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 129
    .local v0, "manager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 130
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    return v1
.end method

.method public static isAdbEnabled()Z
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x11
    .end annotation

    .line 71
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    .line 70
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private static varargs isAddressNotInExcepts(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "excepts"    # [Ljava/lang/String;

    .line 177
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 178
    return v1

    .line 180
    :cond_0
    const-string v0, "02:00:00:00:00:00"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    return v1

    .line 183
    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    array-length v2, p1

    if-nez v2, :cond_2

    goto :goto_1

    .line 186
    :cond_2
    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p1, v3

    .line 187
    .local v4, "filter":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 188
    return v1

    .line 186
    .end local v4    # "filter":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    :cond_4
    return v0

    .line 184
    :cond_5
    :goto_1
    return v0
.end method

.method public static isDevelopmentSettingsEnabled()Z
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x11
    .end annotation

    .line 400
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    .line 399
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public static isDeviceRooted()Z
    .locals 12

    .line 51
    const-string v0, "su"

    .line 52
    .local v0, "su":Ljava/lang/String;
    const-string v1, "/system/bin/"

    const-string v2, "/system/xbin/"

    const-string v3, "/sbin/"

    const-string v4, "/system/sd/xbin/"

    const-string v5, "/system/bin/failsafe/"

    const-string v6, "/data/local/xbin/"

    const-string v7, "/data/local/bin/"

    const-string v8, "/data/local/"

    const-string v9, "/system/sbin/"

    const-string v10, "/usr/bin/"

    const-string v11, "/vendor/bin/"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "locations":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 56
    .local v5, "location":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 57
    const/4 v2, 0x1

    return v2

    .line 55
    .end local v5    # "location":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 60
    :cond_1
    return v3
.end method

.method public static isEmulator()Z
    .locals 9

    .line 357
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 358
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "vbox"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 359
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "test-keys"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "google_sdk"

    .line 360
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Emulator"

    .line 361
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Android SDK built for x86"

    .line 362
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Genymotion"

    .line 363
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "generic"

    .line 364
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "generic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "google_sdk"

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 365
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    .line 366
    .local v0, "checkProperty":Z
    :goto_1
    if-eqz v0, :cond_3

    return v2

    .line 368
    :cond_3
    const-string v3, ""

    .line 369
    .local v3, "operatorName":Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 370
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_4

    .line 371
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 373
    move-object v3, v5

    .line 376
    .end local v5    # "name":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 377
    .local v5, "checkOperatorName":Z
    if-eqz v5, :cond_5

    return v2

    .line 379
    :cond_5
    const-string v6, "tel:123456"

    .line 380
    .local v6, "url":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 381
    .local v7, "intent":Landroid/content/Intent;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 382
    const-string v8, "android.intent.action.DIAL"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_6

    move v8, v2

    goto :goto_2

    :cond_6
    move v8, v1

    .line 384
    .local v8, "checkDial":Z
    :goto_2
    if-eqz v8, :cond_7

    return v2

    .line 389
    :cond_7
    return v1
.end method

.method public static isSameDevice(Ljava/lang/String;)Z
    .locals 6
    .param p0, "uniqueDeviceId"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresPermission;
        allOf = {
            "android.permission.ACCESS_WIFI_STATE",
            "android.permission.INTERNET",
            "android.permission.CHANGE_WIFI_STATE"
        }
    .end annotation

    .line 490
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    return v2

    .line 491
    :cond_0
    sget-object v0, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    return v3

    .line 492
    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getSpUtils4Utils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    const-string v4, "KEY_UDID"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/blankj/utilcode/util/SPUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "cachedId":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v3

    .line 494
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    .line 495
    .local v3, "st":I
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, "type":Ljava/lang/String;
    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 497
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    .line 498
    .local v4, "macAddress":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 499
    return v2

    .line 501
    :cond_3
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    invoke-static {v5, v4}, Lcom/blankj/utilcode/util/DeviceUtils;->getUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 502
    .end local v4    # "macAddress":Ljava/lang/String;
    :cond_4
    const-string v4, "2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 503
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getAndroidID()Ljava/lang/String;

    move-result-object v4

    .line 504
    .local v4, "androidId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 505
    return v2

    .line 507
    :cond_5
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    invoke-static {v5, v4}, Lcom/blankj/utilcode/util/DeviceUtils;->getUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 509
    .end local v4    # "androidId":Ljava/lang/String;
    :cond_6
    return v2
.end method

.method public static isTablet()Z
    .locals 2

    .line 346
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static saveUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;

    .line 513
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/DeviceUtils;->getUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    .line 514
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getSpUtils4Utils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    const-string v1, "KEY_UDID"

    sget-object v2, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    sget-object v0, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    return-object v0
.end method

.method private static setWifiEnabled(Z)V
    .locals 2
    .param p0, "enabled"    # Z
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.CHANGE_WIFI_STATE"
    .end annotation

    .line 142
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 143
    .local v0, "manager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-ne p0, v1, :cond_1

    return-void

    .line 145
    :cond_1
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 146
    return-void
.end method
