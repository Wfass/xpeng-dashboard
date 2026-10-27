.class public Lcom/xiaopeng/xuiservice/utils/DigestUtils;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# static fields
.field private static final FILE_READ_BUFFER_SIZE:I = 0x4000


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 22
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static byteArrayToHex([B)Ljava/lang/String;
    .locals 8
    .param p0, "byteArray"    # [B

    .line 59
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 61
    .local v0, "hexDigits":[C
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 62
    .local v1, "resultCharArray":[C
    const/4 v2, 0x0

    .line 63
    .local v2, "index":I
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, p0, v4

    .line 64
    .local v5, "b":B
    add-int/lit8 v6, v2, 0x1

    .local v6, "index":I
    ushr-int/lit8 v7, v5, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v0, v7

    aput-char v7, v1, v2

    .line 65
    .end local v2    # "index":I
    add-int/lit8 v2, v6, 0x1

    .restart local v2    # "index":I
    and-int/lit8 v7, v5, 0xf

    aget-char v7, v0, v7

    aput-char v7, v1, v6

    .line 63
    .end local v5    # "b":B
    .end local v6    # "index":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 67
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    return-object v3

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static getMD5Hash(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 49
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 51
    .local v0, "digester":Ljava/security/MessageDigest;
    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 52
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "bytesRead":I
    if-ltz v2, :cond_0

    .line 53
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    return-object v2
.end method

.method public static getMD5HashString(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 42
    .local v0, "stream":Ljava/io/InputStream;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/DigestUtils;->getMD5Hash(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/utils/DigestUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/utils/DigestUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 42
    return-object v2

    .line 43
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :goto_0
    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/utils/DigestUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public static getSha256Hash(Ljava/io/File;)[B
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 21
    .local v0, "stream":Ljava/io/InputStream;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/DigestUtils;->getSha256Hash(Ljava/io/InputStream;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/utils/DigestUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 21
    return-object v2

    .line 22
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 20
    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :goto_0
    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/utils/DigestUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public static getSha256Hash(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 28
    const-string v0, "SHA256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 31
    .local v0, "digester":Ljava/security/MessageDigest;
    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 32
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "bytesRead":I
    if-ltz v2, :cond_0

    .line 33
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    return-object v2
.end method
