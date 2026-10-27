.class public Lcom/xiaopeng/xuiservice/operation/remote/DecryptUtil;
.super Ljava/lang/Object;
.source "DecryptUtil.java"


# static fields
.field private static final AES:Ljava/lang/String; = "AES"

.field private static final AES_CBC_PKCS5_PADDING:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final BUFFER_SIZE:I = 0x15556c

.field private static final SEPARATOR:Ljava/lang/String; = "#"


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 72
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

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "aesKey"    # Ljava/lang/String;
    .param p2, "decryptedFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/operation/remote/DecryptUtil;->extractIv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "iv":Ljava/lang/String;
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 50
    .local v2, "cipher":Ljavax/crypto/Cipher;
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static/range {p1 .. p1}, Lcom/xiaopeng/xuiservice/operation/remote/DecryptUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "AES"

    invoke-direct {v0, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v3, v0

    .line 51
    .local v3, "key":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/operation/remote/DecryptUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object v4, v0

    .line 52
    .local v4, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v0, 0x2

    invoke-virtual {v2, v0, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 54
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    move-object v6, p0

    invoke-direct {v0, v6, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    .line 55
    .local v5, "raf":Ljava/io/RandomAccessFile;
    const/4 v7, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v8, p2

    :try_start_1
    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v9, v0

    .line 54
    .local v9, "os":Ljava/io/OutputStream;
    nop

    .line 58
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v10, v0

    .line 59
    .local v10, "toSkip":J
    invoke-virtual {v5, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 61
    const v0, 0x15556c

    new-array v0, v0, [B

    .line 63
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v12

    move v13, v12

    .local v13, "length":I
    const/4 v14, -0x1

    if-eq v12, v14, :cond_0

    .line 66
    new-instance v12, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v12, v0, v14, v13}, Ljava/lang/String;-><init>([BII)V

    .line 67
    .local v12, "block":Ljava/lang/String;
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v2, v14}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v14

    .line 69
    .local v14, "decryptedData":[B
    invoke-virtual {v9, v14}, Ljava/io/OutputStream;->write([B)V

    .line 70
    .end local v12    # "block":Ljava/lang/String;
    .end local v14    # "decryptedData":[B
    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .end local v0    # "buffer":[B
    .end local v10    # "toSkip":J
    .end local v13    # "length":I
    :try_start_3
    invoke-static {v7, v9}, Lcom/xiaopeng/xuiservice/operation/remote/DecryptUtil;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v9    # "os":Ljava/io/OutputStream;
    invoke-static {v7, v5}, Lcom/xiaopeng/xuiservice/operation/remote/DecryptUtil;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 73
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    return-void

    .line 72
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v0

    move-object v10, v7

    goto :goto_1

    .line 54
    :catch_0
    move-exception v0

    move-object v10, v0

    :try_start_4
    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 72
    :catchall_1
    move-exception v0

    :goto_1
    :try_start_5
    invoke-static {v10, v9}, Lcom/xiaopeng/xuiservice/operation/remote/DecryptUtil;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v9    # "os":Ljava/io/OutputStream;
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 54
    :catch_1
    move-exception v0

    goto :goto_2

    .line 72
    :catchall_3
    move-exception v0

    move-object/from16 v8, p2

    goto :goto_3

    .line 54
    :catch_2
    move-exception v0

    move-object/from16 v8, p2

    :goto_2
    move-object v7, v0

    :try_start_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 72
    :goto_3
    invoke-static {v7, v5}, Lcom/xiaopeng/xuiservice/operation/remote/DecryptUtil;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private static extractIv(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .local v0, "file":Ljava/io/RandomAccessFile;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-wide/16 v2, 0x0

    .line 30
    .local v2, "position":J
    :goto_0
    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 31
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v4

    int-to-char v4, v4

    .line 32
    .local v4, "c":C
    const-string v5, "#"

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 33
    nop

    .line 39
    .end local v4    # "c":C
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "iv":Ljava/lang/String;
    return-object v4

    .line 35
    .local v4, "c":C
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    .line 37
    .end local v4    # "c":C
    goto :goto_0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 77
    .local v0, "len":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 78
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 79
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 80
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 78
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 82
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method
