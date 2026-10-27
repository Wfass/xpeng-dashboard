.class public Lcom/xiaopeng/lib/utils/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# static fields
.field private static ZIP_HEADER_1:[B

.field private static ZIP_HEADER_2:[B

.field private static ZIP_HELADER_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 29
    fill-array-data v1, :array_0

    sput-object v1, Lcom/xiaopeng/lib/utils/ZipUtils;->ZIP_HEADER_1:[B

    new-array v1, v0, [B

    .line 30
    fill-array-data v1, :array_1

    sput-object v1, Lcom/xiaopeng/lib/utils/ZipUtils;->ZIP_HEADER_2:[B

    .line 31
    sput v0, Lcom/xiaopeng/lib/utils/ZipUtils;->ZIP_HELADER_LENGTH:I

    return-void

    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x3t
        0x4t
    .end array-data

    :array_1
    .array-data 1
        0x50t
        0x4bt
        0x5t
        0x6t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressForBase64([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encode"
        }
    .end annotation

    const/4 v0, 0x0

    .line 140
    invoke-static {p0, v0}, Lcom/xiaopeng/lib/utils/ZipUtils;->compressForBase64([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static compressForBase64([BI)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encode",
            "flags"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 148
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static compressForGzip(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unGzipStr"
        }
    .end annotation

    .line 79
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 84
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 85
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 87
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 88
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 89
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 90
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 92
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/ZipUtils;->compressForBase64([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public static compressForGzipAndBase64NoWrap(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unGzipStr"
        }
    .end annotation

    .line 446
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 451
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 452
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 453
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 454
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 455
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 456
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 457
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    const/4 v0, 0x2

    .line 459
    invoke-static {p0, v0}, Lcom/xiaopeng/lib/utils/ZipUtils;->compressForBase64([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 463
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 461
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public static compressForUpload(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unGzipStr"
        }
    .end annotation

    .line 182
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 187
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 188
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 189
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 190
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 191
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 192
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 193
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 199
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 197
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public static decompressForBase64(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    const/4 v0, 0x0

    .line 160
    invoke-static {p0, v0}, Lcom/xiaopeng/lib/utils/ZipUtils;->decompressForBase64(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static decompressForBase64(Ljava/lang/String;I)[B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "flags"
        }
    .end annotation

    .line 168
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 172
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static decompressForGzip(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gzipStr"
        }
    .end annotation

    .line 109
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/ZipUtils;->decompressForBase64(Ljava/lang/String;)[B

    move-result-object p0

    .line 115
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 116
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 117
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    new-array v4, v3, [B

    :goto_0
    const/4 v5, 0x0

    .line 120
    invoke-virtual {p0, v4, v5, v3}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v6

    if-lez v6, :cond_1

    .line 121
    invoke-virtual {v0, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 124
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 125
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 127
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 129
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method public static decompressForGzipAndBase64NoWrap(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gzipStr"
        }
    .end annotation

    .line 477
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x2

    .line 480
    invoke-static {p0, v0}, Lcom/xiaopeng/lib/utils/ZipUtils;->decompressForBase64(Ljava/lang/String;I)[B

    move-result-object p0

    .line 482
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 483
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 484
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    new-array v4, v3, [B

    :goto_0
    const/4 v5, 0x0

    .line 487
    invoke-virtual {p0, v4, v5, v3}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v6

    if-lez v6, :cond_1

    .line 488
    invoke-virtual {v0, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 490
    :cond_1
    invoke-virtual {p0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 491
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 492
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 494
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 496
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method public static decompressForUpload([B)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uploadBytes"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 212
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 217
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 218
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 219
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    new-array v4, v3, [B

    :goto_0
    const/4 v5, 0x0

    .line 222
    invoke-virtual {p0, v4, v5, v3}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v6

    if-lez v6, :cond_1

    .line 223
    invoke-virtual {v1, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {p0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 226
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 227
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 229
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 231
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static isArchiveFile(Ljava/io/File;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 44
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 51
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    :try_start_1
    sget p0, Lcom/xiaopeng/lib/utils/ZipUtils;->ZIP_HELADER_LENGTH:I

    new-array v1, p0, [B

    .line 53
    invoke-virtual {v2, v1, v0, p0}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    .line 54
    sget v3, Lcom/xiaopeng/lib/utils/ZipUtils;->ZIP_HELADER_LENGTH:I

    if-ne p0, v3, :cond_3

    .line 55
    sget-object p0, Lcom/xiaopeng/lib/utils/ZipUtils;->ZIP_HEADER_1:[B

    invoke-static {p0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/xiaopeng/lib/utils/ZipUtils;->ZIP_HEADER_2:[B

    invoke-static {p0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    move v0, p0

    .line 62
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 58
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_4

    .line 62
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_4
    :goto_1
    return v0

    :catchall_2
    move-exception p0

    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 66
    :catch_1
    :cond_5
    throw p0
.end method

.method public static zip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "dest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 243
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    new-instance p0, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 247
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 248
    :try_start_2
    invoke-static {p0, p1, v2}, Lcom/xiaopeng/lib/utils/ZipUtils;->zipFileOrDirectory(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 250
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    move v1, v0

    .line 252
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 254
    aget-object v3, p1, v1

    invoke-static {p0, v3, v2}, Lcom/xiaopeng/lib/utils/ZipUtils;->zipFileOrDirectory(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-object v1, p0

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, p0

    goto :goto_2

    :catch_1
    move-exception p1

    .line 261
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 265
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :catchall_1
    :goto_3
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v0
.end method

.method public static zipFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "srcFilePath",
            "dstFilePath"
        }
    .end annotation

    .line 348
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 351
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 352
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 353
    :try_start_2
    new-instance v3, Ljava/util/zip/ZipEntry;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 356
    new-instance p0, Ljava/io/BufferedOutputStream;

    invoke-direct {p0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 357
    :try_start_3
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v4, 0x400

    :try_start_4
    new-array v5, v4, [B

    :goto_0
    const/4 v6, 0x0

    .line 364
    invoke-virtual {v3, v5, v6, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 365
    invoke-virtual {p0, v5, v6, v7}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 368
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 369
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 374
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 375
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 376
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 377
    invoke-static {v3}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v3, p1

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v3, p1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object p0, p1

    move-object v3, p0

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object v2, p1

    goto :goto_1

    :catch_3
    move-exception v0

    move-object p0, p1

    move-object v2, p0

    goto :goto_3

    :catchall_3
    move-exception p0

    move-object v1, p1

    move-object v2, v1

    :goto_1
    move-object v3, v2

    :goto_2
    move-object p1, p0

    move-object p0, v3

    goto :goto_5

    :catch_4
    move-exception v0

    move-object p0, p1

    move-object v1, p0

    move-object v2, v1

    :goto_3
    move-object v3, v2

    .line 372
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 374
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 375
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 376
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 377
    invoke-static {v3}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p1

    :catchall_4
    move-exception p1

    .line 374
    :goto_5
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 375
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 376
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 377
    invoke-static {v3}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 378
    throw p1
.end method

.method public static zipFileOrDirectory(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "fileOrDirectory",
            "curPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 280
    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/lib/utils/ZipUtils;->zipFileOrDirectory(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method public static zipFileOrDirectory(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "fileOrDirectory",
            "curPath",
            "ignoreEmptyDir"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 292
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/16 p3, 0x1000

    new-array p3, p3, [B

    .line 296
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 297
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 299
    :try_start_2
    new-instance v0, Ljava/util/zip/ZipEntry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 300
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 303
    :goto_0
    invoke-virtual {v3, p3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 304
    invoke-virtual {p0, p3, v2, p1}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 307
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v3

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    move-object v0, v3

    goto/16 :goto_4

    :catch_0
    move-exception p0

    move-object v0, v3

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_2

    .line 310
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v3, "/"

    if-eqz v1, :cond_2

    .line 311
    :try_start_4
    array-length v4, v1

    if-lez v4, :cond_2

    .line 312
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 314
    aget-object v4, v1, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 315
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 314
    invoke-static {p0, v4, v5, p3}, Lcom/xiaopeng/lib/utils/ZipUtils;->zipFileOrDirectory(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    .line 319
    new-instance p2, Ljava/util/zip/ZipEntry;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0, p2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 322
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    move-object v1, v0

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v1, v0

    .line 327
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 329
    :goto_3
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 330
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_2
    move-exception p0

    .line 329
    :goto_4
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 330
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 331
    throw p0
.end method

.method public static zipMultiFiles(Ljava/lang/String;Ljava/util/List;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dstFilePath",
            "filePaths"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 385
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/lib/utils/ZipUtils;->zipMultiFiles(Ljava/lang/String;Ljava/util/List;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static zipMultiFiles(Ljava/lang/String;Ljava/util/List;Z)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dstFilePath",
            "filePaths",
            "ignoreEmptyDir"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/io/File;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/lib/utils/ZipUtils;->zipMultiFilesWithThrow(Ljava/lang/String;Ljava/util/List;Z)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 393
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 394
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static zipMultiFilesWithThrow(Ljava/lang/String;Ljava/util/List;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dstFilePath",
            "filePaths"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 400
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/lib/utils/ZipUtils;->zipMultiFilesWithThrow(Ljava/lang/String;Ljava/util/List;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static zipMultiFilesWithThrow(Ljava/lang/String;Ljava/util/List;Z)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dstFilePath",
            "filePaths",
            "ignoreEmptyDir"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/io/File;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v0, 0x0

    .line 413
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 414
    :try_start_1
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 417
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 418
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    .line 425
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0, p2}, Lcom/xiaopeng/lib/utils/ZipUtils;->zipFileOrDirectory(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Z)V

    goto :goto_0

    .line 428
    :cond_2
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 429
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 431
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 432
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 435
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v1, v0

    .line 431
    :goto_1
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 432
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 433
    throw p0
.end method
