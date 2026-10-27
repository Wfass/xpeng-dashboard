.class Lorg/chromium/net/NetworkChangeNotifierAutoDetect$a;
.super Ljava/lang/Object;
.source "NetworkChangeNotifierAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/NetworkChangeNotifierAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 170
    const-class v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$a;->a:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$a;->b:Landroid/net/ConnectivityManager;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "connectivity"

    .line 175
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$a;->b:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private a(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 194
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    .line 201
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_2

    return-object v0

    .line 206
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_3

    return-object v0

    .line 212
    :cond_3
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    return-object v0

    :cond_4
    return-object p1
.end method

.method private d(Landroid/net/Network;)Landroid/net/NetworkInfo;
    .locals 1

    .line 263
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$a;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 267
    :catch_0
    :try_start_1
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$a;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method a(Landroid/net/Network;)I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 281
    invoke-direct {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$a;->d(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 282
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 286
    iget-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$a;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 288
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    invoke-static {v0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->a(II)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x6

    return p1
.end method

.method a(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$g;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$d;
    .locals 16

    move-object/from16 v0, p0

    .line 227
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 228
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$a;->b()Landroid/net/Network;

    move-result-object v1

    .line 229
    iget-object v3, v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$a;->b:Landroid/net/ConnectivityManager;

    invoke-static {v3, v1}, Lcdy;->a(Landroid/net/ConnectivityManager;Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v3

    goto :goto_0

    .line 231
    :cond_0
    iget-object v1, v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$a;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    const/4 v1, 0x0

    .line 233
    :goto_0
    invoke-direct {v0, v3}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$a;->a(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v3

    if-nez v3, :cond_1

    .line 235
    new-instance v1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$d;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$d;-><init>(ZIILjava/lang/String;Z)V

    return-object v1

    :cond_1
    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 238
    new-instance v2, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$d;

    const/4 v6, 0x1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v8

    .line 239
    invoke-static {v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->a(Landroid/net/Network;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v3, v5, :cond_2

    iget-object v3, v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$a;->b:Landroid/net/ConnectivityManager;

    .line 242
    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    .line 241
    invoke-static {v1}, Lorg/chromium/net/AndroidNetworkLibrary;->a(Landroid/net/LinkProperties;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    move v10, v4

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$d;-><init>(ZIILjava/lang/String;Z)V

    return-object v2

    .line 244
    :cond_3
    sget-boolean v1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$a;->a:Z

    if-nez v1, :cond_5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 246
    :cond_5
    :goto_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v4, :cond_7

    .line 248
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 249
    new-instance v1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$d;

    const/4 v5, 0x1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    .line 250
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$d;-><init>(ZIILjava/lang/String;Z)V

    return-object v1

    .line 253
    :cond_6
    new-instance v1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$d;

    const/4 v11, 0x1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v13

    .line 254
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$g;->a()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$d;-><init>(ZIILjava/lang/String;Z)V

    return-object v1

    .line 256
    :cond_7
    new-instance v1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$d;

    const/4 v4, 0x1

    .line 257
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$d;-><init>(ZIILjava/lang/String;Z)V

    return-object v1
.end method

.method a(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 379
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$a;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method a(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .line 370
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$a;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method a(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 356
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 357
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$a;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 360
    :cond_0
    iget-object p3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$a;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {p3, p1, p2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :goto_0
    return-void
.end method

.method protected a()[Landroid/net/Network;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 303
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$a;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 305
    new-array v0, v0, [Landroid/net/Network;

    :cond_0
    return-object v0
.end method

.method b()Landroid/net/Network;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 389
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 390
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$a;->b:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcdy;->b(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_0
    move-object v0, v1

    .line 401
    :cond_1
    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$a;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    .line 405
    :cond_2
    invoke-static {p0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->a(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$a;Landroid/net/Network;)[Landroid/net/Network;

    move-result-object v1

    .line 406
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_7

    aget-object v5, v1, v4

    .line 407
    invoke-direct {p0, v5}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$a;->d(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 409
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 416
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    const/16 v7, 0x11

    if-ne v6, v7, :cond_6

    .line 421
    :cond_3
    sget-boolean v6, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$a;->a:Z

    if-nez v6, :cond_5

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_1
    move-object v0, v5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method protected b(Landroid/net/Network;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 317
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 320
    :try_start_0
    invoke-static {}, Lorg/chromium/base/f;->a()Lorg/chromium/base/f;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 323
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/net/Network;->bindSocket(Ljava/net/Socket;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 324
    :try_start_2
    invoke-virtual {v1}, Lorg/chromium/base/f;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 329
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v2

    .line 320
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v2, :cond_1

    .line 324
    :try_start_5
    invoke-virtual {v1}, Lorg/chromium/base/f;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/base/f;->close()V

    :cond_2
    :goto_1
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    .line 329
    :try_start_7
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 332
    :catch_3
    throw p1

    :catch_4
    const/4 p1, 0x0

    .line 329
    :try_start_8
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    return p1
.end method

.method protected c(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 344
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$a;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    return-object p1
.end method
