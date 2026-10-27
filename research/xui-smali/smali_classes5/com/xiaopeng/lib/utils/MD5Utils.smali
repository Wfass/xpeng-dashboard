.class public Lcom/xiaopeng/lib/utils/MD5Utils;
.super Ljava/lang/Object;
.source "MD5Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileMd5(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    .line 49
    .local v0, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 50
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    if-nez p0, :cond_1

    .line 51
    const-string v2, ""
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v3

    .line 80
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 81
    :cond_0
    :goto_0
    nop

    .line 51
    :goto_1
    return-object v2

    .line 53
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 54
    const-string v2, ""
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 79
    :catch_1
    move-exception v3

    .line 80
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 81
    :cond_2
    :goto_2
    nop

    .line 54
    :goto_3
    return-object v2

    .line 56
    :cond_3
    :try_start_4
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v2

    .line 57
    const/high16 v2, 0xa00000

    new-array v2, v2, [B

    .line 58
    .local v2, "bytes":[B
    const/4 v3, 0x0

    move v4, v3

    .line 59
    .local v4, "len":I
    :goto_4
    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v5

    move v4, v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 60
    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_4

    .line 62
    :cond_4
    new-instance v3, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 63
    .local v3, "bigInt":Ljava/math/BigInteger;
    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "md5":Ljava/lang/String;
    :goto_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x20

    if-ge v6, v7, :cond_5

    .line 65
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v5, v6

    goto :goto_5

    .line 67
    :cond_5
    nop

    .line 76
    nop

    .line 77
    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    .line 79
    :catch_2
    move-exception v6

    .line 80
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 81
    :goto_6
    nop

    .line 67
    :goto_7
    return-object v5

    .line 75
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    .end local v2    # "bytes":[B
    .end local v3    # "bigInt":Ljava/math/BigInteger;
    .end local v4    # "len":I
    .end local v5    # "md5":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_a

    .line 72
    :catch_3
    move-exception v1

    .line 73
    .local v1, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 76
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_6

    .line 77
    :try_start_7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_8

    .line 79
    :catch_4
    move-exception v1

    .line 80
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 82
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 81
    :cond_6
    :goto_8
    goto :goto_9

    .line 70
    :catch_5
    move-exception v1

    .line 71
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 76
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_6

    .line 77
    :try_start_9
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_8

    .line 68
    :catch_6
    move-exception v1

    .line 69
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_a
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 76
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    if-eqz v0, :cond_6

    .line 77
    :try_start_b
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_8

    .line 83
    :goto_9
    const-string v1, ""

    return-object v1

    .line 75
    :goto_a
    nop

    .line 76
    if-eqz v0, :cond_7

    .line 77
    :try_start_c
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_b

    .line 79
    :catch_7
    move-exception v2

    .line 80
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_c

    .line 81
    :cond_7
    :goto_b
    nop

    .line 82
    :goto_c
    throw v1
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 19
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 20
    .local v0, "md5":Ljava/security/MessageDigest;
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 21
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 22
    .local v1, "encryption":[B
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 23
    .local v2, "strBuf":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 24
    aget-byte v4, v1, v3

    const/16 v5, 0xff

    and-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 25
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-byte v4, v1, v3

    and-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 27
    :cond_0
    aget-byte v4, v1, v3

    and-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 33
    .end local v0    # "md5":Ljava/security/MessageDigest;
    .end local v1    # "encryption":[B
    .end local v2    # "strBuf":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    return-object v1

    .line 31
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 32
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, ""

    return-object v1
.end method
