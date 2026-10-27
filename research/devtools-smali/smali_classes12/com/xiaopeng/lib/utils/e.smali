.class public Lcom/xiaopeng/lib/utils/e;
.super Ljava/lang/Object;
.source "NetUtils.java"


# direct methods
.method public static au(Landroid/content/Context;)Z
    .locals 1

    .line 72
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 73
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 74
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_0

    .line 75
    const/4 p0, 0x1

    return p0

    .line 78
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static av(Landroid/content/Context;)I
    .locals 3

    .line 82
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 83
    return v0

    .line 85
    :cond_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 86
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 87
    if-eqz p0, :cond_2

    .line 88
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 89
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 107
    :pswitch_1
    const/4 p0, 0x3

    return p0

    .line 105
    :pswitch_2
    const/4 p0, 0x2

    return p0

    .line 94
    :pswitch_3
    return v2

    .line 109
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v2, :cond_2

    .line 110
    const/16 p0, 0xa

    return p0

    .line 114
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

.method public static aw(Landroid/content/Context;)Z
    .locals 1

    .line 124
    const-string v0, "connectivity"

    .line 125
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 126
    if-eqz p0, :cond_0

    .line 127
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 128
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 130
    const/4 p0, 0x1

    return p0

    .line 133
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static oL()I
    .locals 2

    .line 196
    const-string v0, "persist.sys.xp.4g.st"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static oM()Z
    .locals 6

    .line 206
    nop

    .line 208
    const-string v0, "on"

    const-string v1, "persist.sys.ril.gobinet"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 210
    return v1

    .line 213
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/net/xpusb0/operstate"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 215
    return v1

    .line 218
    :cond_1
    const/4 v2, 0x0

    .line 219
    const/4 v3, 0x0

    .line 221
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 222
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 223
    const-string v3, "up"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "unknown"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 224
    :cond_2
    nop

    .line 229
    move v2, v1

    :cond_3
    invoke-static {v4}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v4

    goto :goto_2

    .line 226
    :catch_0
    move-exception v0

    move-object v3, v4

    goto :goto_0

    .line 229
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 226
    :catch_1
    move-exception v0

    .line 227
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 229
    invoke-static {v3}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 230
    :goto_1
    nop

    .line 232
    return v2

    .line 229
    :goto_2
    invoke-static {v3}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 230
    throw v0
.end method
