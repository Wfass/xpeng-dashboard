.class public Lcom/amap/api/services/a/j;
.super Ljava/lang/Object;
.source "MD5.java"


# direct methods
.method public static E(Ljava/lang/String;)[B
    .locals 2

    .line 99
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/j;->G(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 100
    :catch_0
    move-exception p0

    .line 101
    const-string v0, "MD5"

    const-string v1, "getMd5Bytes"

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method private static F(Ljava/lang/String;)[B
    .locals 0

    .line 108
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/j;->G(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 110
    :catch_0
    move-exception p0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method private static G(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 119
    nop

    .line 120
    nop

    .line 122
    if-nez p0, :cond_0

    .line 123
    const/4 p0, 0x0

    return-object p0

    .line 125
    :cond_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 126
    invoke-static {p0}, Lcom/amap/api/services/a/m;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 127
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 128
    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 26
    nop

    .line 28
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    nop

    .line 51
    nop

    .line 55
    return-object v0

    .line 31
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_2

    .line 35
    :cond_1
    nop

    .line 37
    const/16 p0, 0x800

    new-array p0, p0, [B

    .line 39
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 40
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :goto_0
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 42
    const/4 v4, 0x0

    invoke-virtual {v2, p0, v4, v1}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 45
    invoke-static {p0}, Lcom/amap/api/services/a/m;->d([B)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    nop

    .line 52
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const-string v1, "MD5"

    const-string v2, "getMd5FromFile"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    nop

    .line 55
    :goto_1
    return-object p0

    .line 46
    :catch_1
    move-exception p0

    goto :goto_3

    .line 33
    :cond_3
    :goto_2
    nop

    .line 51
    nop

    .line 55
    return-object v0

    .line 50
    :catchall_0
    move-exception p0

    goto :goto_5

    .line 46
    :catch_2
    move-exception p0

    move-object v3, v0

    .line 47
    :goto_3
    :try_start_3
    const-string v1, "MD5"

    const-string v2, "getMd5FromFile"

    invoke-static {p0, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    nop

    .line 51
    if-eqz v3, :cond_4

    .line 52
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 53
    :catch_3
    move-exception p0

    .line 54
    const-string v1, "MD5"

    const-string v2, "getMd5FromFile"

    invoke-static {p0, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    nop

    .line 55
    :cond_4
    :goto_4
    return-object v0

    .line 50
    :catchall_1
    move-exception p0

    move-object v0, v3

    .line 51
    :goto_5
    if-eqz v0, :cond_5

    .line 52
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    .line 53
    :catch_4
    move-exception v0

    .line 54
    const-string v1, "MD5"

    const-string v2, "getMd5FromFile"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    nop

    .line 55
    :cond_5
    :goto_6
    throw p0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 0

    .line 70
    invoke-static {p0}, Lcom/amap/api/services/a/j;->o([B)[B

    move-result-object p0

    .line 71
    invoke-static {p0}, Lcom/amap/api/services/a/m;->d([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    if-nez p0, :cond_0

    .line 63
    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_0
    invoke-static {p0}, Lcom/amap/api/services/a/j;->E(Ljava/lang/String;)[B

    move-result-object p0

    .line 66
    invoke-static {p0}, Lcom/amap/api/services/a/m;->d([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b([BLjava/lang/String;)[B
    .locals 1

    .line 80
    nop

    .line 81
    nop

    .line 83
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 84
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 85
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 86
    :catch_0
    move-exception p0

    .line 87
    const-string p1, "MD5"

    const-string v0, "getMd5Bytes1"

    invoke-static {p0, p1, v0}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 75
    invoke-static {p0}, Lcom/amap/api/services/a/j;->F(Ljava/lang/String;)[B

    move-result-object p0

    .line 76
    invoke-static {p0}, Lcom/amap/api/services/a/m;->e([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static o([B)[B
    .locals 1

    .line 94
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/j;->b([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method
