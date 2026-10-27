.class public Lcom/amap/api/services/a/az;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/a/az$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-string v0, ""

    sput-object v0, Lcom/amap/api/services/a/az;->a:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/services/a/az;->b:Z

    .line 273
    const-string v0, ""

    sput-object v0, Lcom/amap/api/services/a/az;->c:Ljava/lang/String;

    .line 419
    const-string v0, ""

    sput-object v0, Lcom/amap/api/services/a/az;->d:Ljava/lang/String;

    .line 475
    const-string v0, ""

    sput-object v0, Lcom/amap/api/services/a/az;->e:Ljava/lang/String;

    .line 527
    const-string v0, ""

    sput-object v0, Lcom/amap/api/services/a/az;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 58
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/az;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 59
    :catch_0
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    const-string p0, ""

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    sput-object p0, Lcom/amap/api/services/a/az;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 649
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 650
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_2

    .line 651
    const/4 v2, 0x1

    :goto_1
    sub-int v3, v0, v1

    if-ge v2, v3, :cond_1

    .line 653
    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget v4, v4, Landroid/net/wifi/ScanResult;->level:I

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget v5, v5, Landroid/net/wifi/ScanResult;->level:I

    if-le v4, v5, :cond_0

    .line 654
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 655
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 656
    invoke-interface {p0, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 651
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 650
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 660
    :cond_2
    return-object p0
.end method

.method public static a()V
    .locals 6

    .line 123
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 124
    const-class v0, Landroid/net/TrafficStats;

    const-string v1, "setThreadStatsTag"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 126
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0xa004

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    const-string v1, "DeviceInfo"

    const-string v2, "setTraficTag"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 212
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 43
    sput-boolean p0, Lcom/amap/api/services/a/az;->b:Z

    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 67
    const-string v0, ""

    .line 69
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/az;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 70
    :catch_0
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    return-object v0
.end method

.method static synthetic b()Z
    .locals 1

    .line 43
    sget-boolean v0, Lcom/amap/api/services/a/az;->b:Z

    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 0

    .line 78
    nop

    .line 80
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/az;->y(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 82
    :catch_0
    move-exception p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    const/4 p0, -0x1

    return p0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 0

    .line 89
    nop

    .line 91
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/az;->v(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 92
    :catch_0
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    const/4 p0, -0x1

    return p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 111
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/az;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 112
    :catch_0
    move-exception p0

    .line 113
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    const-string p0, ""

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 164
    :try_start_0
    sget-object v0, Lcom/amap/api/services/a/az;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/amap/api/services/a/az;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    sget-object p0, Lcom/amap/api/services/a/az;->a:Ljava/lang/String;

    return-object p0

    .line 168
    :cond_0
    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/az;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    nop

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mqBRboGZkQPcAkyk"

    .line 170
    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/api/services/a/az;->a:Ljava/lang/String;

    .line 173
    :cond_1
    sget-object p0, Lcom/amap/api/services/a/az;->a:Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string p0, ""

    sget-object v0, Lcom/amap/api/services/a/az;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 174
    sget-object p0, Lcom/amap/api/services/a/az;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 178
    :cond_2
    goto :goto_0

    .line 176
    :catch_0
    move-exception p0

    .line 177
    const-string v0, "DeviceInfo"

    const-string v1, "getUTDID"

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_0
    :try_start_1
    const-string p0, "mounted"

    .line 186
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 188
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/.UTSystemConfig/Global/Alvin2.xml"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 190
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 193
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object p0

    .line 194
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p0

    .line 195
    new-instance v1, Lcom/amap/api/services/a/az$a;

    invoke-direct {v1}, Lcom/amap/api/services/a/az$a;-><init>()V

    .line 196
    invoke-virtual {p0, v0, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    :cond_3
    goto :goto_1

    .line 199
    :catch_1
    move-exception p0

    .line 200
    const-string v0, "DeviceInfo"

    const-string v1, "getUTDID"

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_1
    sget-object p0, Lcom/amap/api/services/a/az;->a:Ljava/lang/String;

    if-nez p0, :cond_4

    const-string p0, ""

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/amap/api/services/a/az;->a:Ljava/lang/String;

    :goto_2
    return-object p0
.end method

.method static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 216
    const-string v0, ""

    .line 218
    if-eqz p0, :cond_3

    :try_start_0
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    .line 219
    invoke-static {p0, v1}, Lcom/amap/api/services/a/az;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 224
    :cond_0
    const-string v1, "wifi"

    .line 225
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 226
    if-nez p0, :cond_1

    return-object v0

    .line 227
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 228
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 229
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    move-object v0, p0

    :cond_2
    goto :goto_0

    .line 232
    :catch_0
    move-exception p0

    .line 233
    const-string v1, "DeviceInfo"

    const-string v2, "getWifiMacs"

    invoke-static {p0, v1, v2}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :goto_0
    return-object v0

    .line 221
    :cond_3
    :goto_1
    return-object v0
.end method

.method static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    if-eqz p0, :cond_6

    :try_start_0
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    .line 242
    invoke-static {p0, v1}, Lcom/amap/api/services/a/az;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 247
    :cond_0
    const-string v1, "wifi"

    .line 248
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 249
    if-nez p0, :cond_1

    const-string p0, ""

    return-object p0

    .line 250
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 251
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p0

    .line 252
    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 255
    :cond_2
    invoke-static {p0}, Lcom/amap/api/services/a/az;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 256
    nop

    .line 257
    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v2

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    const/4 v4, 0x7

    if-ge v2, v4, :cond_5

    .line 258
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 259
    if-eqz v3, :cond_3

    .line 260
    nop

    .line 264
    move v3, v1

    goto :goto_1

    .line 262
    :cond_3
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :goto_1
    iget-object v4, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 269
    :cond_5
    goto :goto_5

    .line 267
    :catch_0
    move-exception p0

    goto :goto_4

    .line 244
    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 267
    :goto_4
    nop

    .line 268
    const-string v1, "DeviceInfo"

    const-string v2, "getWifiMacs"

    invoke-static {p0, v1, v2}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 278
    :try_start_0
    sget-object v0, Lcom/amap/api/services/a/az;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/amap/api/services/a/az;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    sget-object p0, Lcom/amap/api/services/a/az;->c:Ljava/lang/String;

    return-object p0

    .line 281
    :cond_0
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/az;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    sget-object p0, Lcom/amap/api/services/a/az;->c:Ljava/lang/String;

    return-object p0

    .line 284
    :cond_1
    const-string v0, "wifi"

    .line 285
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 286
    if-nez p0, :cond_2

    const-string p0, ""

    return-object p0

    .line 287
    :cond_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/api/services/a/az;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    goto :goto_0

    .line 288
    :catch_0
    move-exception p0

    .line 289
    const-string v0, "DeviceInfo"

    const-string v1, "getDeviceMac"

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :goto_0
    sget-object p0, Lcom/amap/api/services/a/az;->c:Ljava/lang/String;

    return-object p0
.end method

.method static j(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6

    .line 297
    :try_start_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/az;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 298
    invoke-static {p0, v0}, Lcom/amap/api/services/a/az;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 302
    :cond_0
    const-string v0, "phone"

    .line 303
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 304
    if-nez p0, :cond_1

    const-string p0, ""

    const-string v0, ""

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 305
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p0

    .line 306
    instance-of v0, p0, Landroid/telephony/gsm/GsmCellLocation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 307
    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    .line 308
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    .line 309
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result p0

    .line 310
    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "||"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    const-string p0, "gsm"

    aput-object p0, v3, v1

    return-object v3

    .line 313
    :cond_2
    instance-of v0, p0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_4

    .line 314
    check-cast p0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 315
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v0

    .line 316
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v4

    .line 317
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result p0

    .line 318
    if-ltz v0, :cond_3

    .line 322
    :cond_3
    new-array v3, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "||"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "||"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    const-string p0, "cdma"

    aput-object p0, v3, v1

    return-object v3

    .line 331
    :cond_4
    goto :goto_1

    .line 300
    :cond_5
    :goto_0
    const-string p0, ""

    const-string v0, ""

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 329
    :catch_0
    move-exception p0

    .line 330
    const-string v0, "DeviceInfo"

    const-string v1, "cellInfo"

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :goto_1
    const-string p0, ""

    const-string v0, ""

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 338
    const-string v0, ""

    .line 341
    :try_start_0
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/az;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    return-object v0

    .line 344
    :cond_0
    invoke-static {p0}, Lcom/amap/api/services/a/az;->z(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 345
    if-nez p0, :cond_1

    const-string p0, ""

    return-object p0

    .line 346
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    .line 347
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 348
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    goto :goto_0

    .line 351
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    goto :goto_1

    .line 349
    :cond_3
    :goto_0
    return-object v0

    .line 352
    :catch_0
    move-exception p0

    .line 353
    const-string v1, "DeviceInfo"

    const-string v2, "getMNC"

    invoke-static {p0, v1, v2}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public static l(Landroid/content/Context;)I
    .locals 2

    .line 362
    nop

    .line 364
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/az;->y(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 366
    :catch_0
    move-exception p0

    .line 368
    const-string v0, "DeviceInfo"

    const-string v1, "getNetWorkType"

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const/4 p0, -0x1

    return p0
.end method

.method public static m(Landroid/content/Context;)I
    .locals 2

    .line 375
    nop

    .line 377
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/az;->v(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 378
    :catch_0
    move-exception p0

    .line 380
    const-string v0, "DeviceInfo"

    const-string v1, "getActiveNetWorkType"

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const/4 p0, -0x1

    return p0
.end method

.method public static n(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    .line 390
    nop

    .line 391
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/az;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 393
    return-object v1

    .line 395
    :cond_0
    invoke-static {p0}, Lcom/amap/api/services/a/az;->w(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    .line 396
    if-nez p0, :cond_1

    .line 397
    return-object v1

    .line 399
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 400
    return-object p0
.end method

.method static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 403
    nop

    .line 405
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/az;->n(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    .line 406
    if-nez p0, :cond_0

    .line 407
    return-object v0

    .line 410
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    goto :goto_0

    .line 411
    :catch_0
    move-exception p0

    .line 413
    const-string v1, "DeviceInfo"

    const-string v2, "getNetworkExtraInfo"

    invoke-static {p0, v1, v2}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method static p(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 423
    :try_start_0
    sget-object v0, Lcom/amap/api/services/a/az;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/amap/api/services/a/az;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    sget-object p0, Lcom/amap/api/services/a/az;->d:Ljava/lang/String;

    return-object p0

    .line 426
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 427
    const-string v1, "window"

    .line 428
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 429
    if-nez p0, :cond_1

    const-string p0, ""

    return-object p0

    .line 430
    :cond_1
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 431
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 432
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 433
    if-le v0, p0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "*"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :goto_1
    sput-object p0, Lcom/amap/api/services/a/az;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    goto :goto_2

    .line 435
    :catch_0
    move-exception p0

    .line 437
    const-string v0, "DeviceInfo"

    const-string v1, "getReslution"

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :goto_2
    sget-object p0, Lcom/amap/api/services/a/az;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 484
    :try_start_0
    sget-object v0, Lcom/amap/api/services/a/az;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/amap/api/services/a/az;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    sget-object p0, Lcom/amap/api/services/a/az;->e:Ljava/lang/String;

    return-object p0

    .line 487
    :cond_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/az;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 488
    sget-object p0, Lcom/amap/api/services/a/az;->e:Ljava/lang/String;

    return-object p0

    .line 490
    :cond_1
    invoke-static {p0}, Lcom/amap/api/services/a/az;->z(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 491
    if-nez p0, :cond_2

    const-string p0, ""

    return-object p0

    .line 492
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/api/services/a/az;->e:Ljava/lang/String;

    .line 493
    sget-object p0, Lcom/amap/api/services/a/az;->e:Ljava/lang/String;

    if-nez p0, :cond_3

    .line 494
    const-string p0, ""

    sput-object p0, Lcom/amap/api/services/a/az;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :cond_3
    goto :goto_0

    .line 496
    :catch_0
    move-exception p0

    .line 497
    const-string v0, "DeviceInfo"

    const-string v1, "getDeviceID"

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :goto_0
    sget-object p0, Lcom/amap/api/services/a/az;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 503
    const-string v0, ""

    .line 505
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/az;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 506
    :catch_0
    move-exception p0

    .line 508
    const-string v1, "DeviceInfo"

    const-string v2, "getSubscriberId"

    invoke-static {p0, v1, v2}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    return-object v0
.end method

.method static s(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 515
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/az;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 516
    :catch_0
    move-exception p0

    .line 517
    const-string v0, "DeviceInfo"

    const-string v1, "getNetworkOperatorName"

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string p0, ""

    return-object p0
.end method

.method private static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 530
    sget-object v0, Lcom/amap/api/services/a/az;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/amap/api/services/a/az;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    sget-object p0, Lcom/amap/api/services/a/az;->f:Ljava/lang/String;

    return-object p0

    .line 534
    :cond_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/az;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 536
    sget-object p0, Lcom/amap/api/services/a/az;->f:Ljava/lang/String;

    return-object p0

    .line 538
    :cond_1
    invoke-static {p0}, Lcom/amap/api/services/a/az;->z(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 539
    if-nez p0, :cond_2

    const-string p0, ""

    return-object p0

    .line 540
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/api/services/a/az;->f:Ljava/lang/String;

    .line 541
    sget-object p0, Lcom/amap/api/services/a/az;->f:Ljava/lang/String;

    if-nez p0, :cond_3

    .line 542
    const-string p0, ""

    sput-object p0, Lcom/amap/api/services/a/az;->f:Ljava/lang/String;

    .line 544
    :cond_3
    sget-object p0, Lcom/amap/api/services/a/az;->f:Ljava/lang/String;

    return-object p0
.end method

.method private static u(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 549
    nop

    .line 550
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/az;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    const/4 p0, 0x0

    return-object p0

    .line 554
    :cond_0
    invoke-static {p0}, Lcom/amap/api/services/a/az;->z(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 555
    if-nez p0, :cond_1

    const-string p0, ""

    return-object p0

    .line 556
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 557
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 558
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 561
    :cond_2
    return-object v0
.end method

.method private static v(Landroid/content/Context;)I
    .locals 2

    .line 585
    nop

    .line 586
    const/4 v0, -0x1

    if-eqz p0, :cond_3

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 587
    invoke-static {p0, v1}, Lcom/amap/api/services/a/az;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 591
    :cond_0
    invoke-static {p0}, Lcom/amap/api/services/a/az;->w(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    .line 592
    if-nez p0, :cond_1

    .line 593
    return v0

    .line 596
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 597
    if-nez p0, :cond_2

    .line 598
    return v0

    .line 601
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    .line 603
    return p0

    .line 589
    :cond_3
    :goto_0
    return v0
.end method

.method private static w(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1

    .line 607
    const-string v0, "connectivity"

    .line 608
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 609
    return-object p0
.end method

.method private static x(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 614
    const-string v0, ""

    .line 615
    invoke-static {p0}, Lcom/amap/api/services/a/az;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 616
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 619
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 621
    return-object p0

    .line 617
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static y(Landroid/content/Context;)I
    .locals 2

    .line 625
    nop

    .line 626
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/az;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 629
    return v1

    .line 631
    :cond_0
    invoke-static {p0}, Lcom/amap/api/services/a/az;->z(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 632
    if-nez p0, :cond_1

    return v1

    .line 633
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    .line 635
    return p0
.end method

.method private static z(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1

    .line 640
    const-string v0, "phone"

    .line 641
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 642
    return-object p0
.end method
