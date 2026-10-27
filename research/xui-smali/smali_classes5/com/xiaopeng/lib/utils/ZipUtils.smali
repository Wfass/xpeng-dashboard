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

    .line 29
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/xiaopeng/lib/utils/ZipUtils;->ZIP_HEADER_1:[B

    .line 30
    new-array v1, v0, [B

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
    .param p0, "encode"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encode"
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaopeng/lib/utils/ZipUtils;->compressForBase64([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static compressForBase64([BI)Ljava/lang/String;
    .locals 1
    .param p0, "encode"    # [B
    .param p1, "flags"    # I
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

    .line 148
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 149
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static compressForGzip(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "unGzipStr"    # Ljava/lang/String;
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

    .line 80
    return-object v1

    .line 84
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 85
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 86
    .local v2, "gzip":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 87
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 88
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 89
    .local v3, "encode":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 90
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 92
    invoke-static {v3}, Lcom/xiaopeng/lib/utils/ZipUtils;->compressForBase64([B)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 95
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .end local v3    # "encode":[B
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 97
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    nop

    .line 99
    :goto_0
    return-object v1
.end method

.method public static compressForGzipAndBase64NoWrap(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "unGzipStr"    # Ljava/lang/String;
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

    .line 447
    return-object v1

    .line 451
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 452
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 453
    .local v2, "gzip":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 454
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 455
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 456
    .local v3, "encode":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 457
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 459
    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/ZipUtils;->compressForBase64([BI)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 462
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .end local v3    # "encode":[B
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 460
    :catch_1
    move-exception v0

    .line 461
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 464
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    nop

    .line 466
    :goto_0
    return-object v1
.end method

.method public static compressForUpload(Ljava/lang/String;)[B
    .locals 4
    .param p0, "unGzipStr"    # Ljava/lang/String;
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

    .line 183
    return-object v1

    .line 187
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 188
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 189
    .local v2, "gzip":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 190
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 191
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 192
    .local v3, "encode":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 193
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    return-object v3

    .line 198
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .end local v3    # "encode":[B
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 196
    :catch_1
    move-exception v0

    .line 197
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 200
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    nop

    .line 202
    :goto_0
    return-object v1
.end method

.method public static decompressForBase64(Ljava/lang/String;)[B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 160
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaopeng/lib/utils/ZipUtils;->decompressForBase64(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static decompressForBase64(Ljava/lang/String;I)[B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "flags"    # I
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

    .line 169
    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static decompressForGzip(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "gzipStr"    # Ljava/lang/String;
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

    .line 110
    return-object v1

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/ZipUtils;->decompressForBase64(Ljava/lang/String;)[B

    move-result-object v0

    .line 115
    .local v0, "t":[B
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 116
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 117
    .local v3, "in":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 118
    .local v4, "gzip":Ljava/util/zip/GZIPInputStream;
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 119
    .local v5, "buffer":[B
    const/4 v6, 0x0

    move v7, v6

    .line 120
    .local v7, "n":I
    :goto_0
    array-length v8, v5

    invoke-virtual {v4, v5, v6, v8}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v8

    move v7, v8

    if-lez v8, :cond_1

    .line 121
    invoke-virtual {v2, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 124
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 125
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 127
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 128
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .end local v4    # "gzip":Ljava/util/zip/GZIPInputStream;
    .end local v5    # "buffer":[B
    .end local v7    # "n":I
    :catch_0
    move-exception v2

    .line 129
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 132
    .end local v2    # "e":Ljava/io/IOException;
    return-object v1
.end method

.method public static decompressForGzipAndBase64NoWrap(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "gzipStr"    # Ljava/lang/String;
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

    .line 478
    return-object v1

    .line 480
    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/xiaopeng/lib/utils/ZipUtils;->decompressForBase64(Ljava/lang/String;I)[B

    move-result-object v0

    .line 482
    .local v0, "t":[B
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 483
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 484
    .local v3, "in":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 485
    .local v4, "gzip":Ljava/util/zip/GZIPInputStream;
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 486
    .local v5, "buffer":[B
    const/4 v6, 0x0

    move v7, v6

    .line 487
    .local v7, "n":I
    :goto_0
    array-length v8, v5

    invoke-virtual {v4, v5, v6, v8}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v8

    move v7, v8

    if-lez v8, :cond_1

    .line 488
    invoke-virtual {v2, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 490
    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 491
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 492
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 494
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 495
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .end local v4    # "gzip":Ljava/util/zip/GZIPInputStream;
    .end local v5    # "buffer":[B
    .end local v7    # "n":I
    :catch_0
    move-exception v2

    .line 496
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 499
    .end local v2    # "e":Ljava/io/IOException;
    return-object v1
.end method

.method public static decompressForUpload([B)Ljava/lang/String;
    .locals 8
    .param p0, "uploadBytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uploadBytes"
        }
    .end annotation

    .line 212
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 217
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 218
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 219
    .local v2, "in":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 220
    .local v3, "gzip":Ljava/util/zip/GZIPInputStream;
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 222
    .local v4, "buffer":[B
    :goto_0
    array-length v5, v4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v5

    move v7, v5

    .local v7, "n":I
    if-lez v5, :cond_1

    .line 223
    invoke-virtual {v1, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 226
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 227
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 229
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 230
    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "in":Ljava/io/ByteArrayInputStream;
    .end local v3    # "gzip":Ljava/util/zip/GZIPInputStream;
    .end local v4    # "buffer":[B
    .end local v7    # "n":I
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 234
    .end local v1    # "e":Ljava/io/IOException;
    return-object v0

    .line 213
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static isArchiveFile(Ljava/io/File;)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 41
    return v0

    .line 44
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    return v0

    .line 48
    :cond_1
    const/4 v1, 0x0

    .line 49
    .local v1, "isArchive":Z
    const/4 v2, 0x0

    .line 51
    .local v2, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 52
    sget v3, Lcom/xiaopeng/lib/utils/ZipUtils;->ZIP_HELADER_LENGTH:I

    new-array v3, v3, [B

    .line 53
    .local v3, "buffer":[B
    sget v4, Lcom/xiaopeng/lib/utils/ZipUtils;->ZIP_HELADER_LENGTH:I

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 54
    .local v4, "length":I
    sget v5, Lcom/xiaopeng/lib/utils/ZipUtils;->ZIP_HELADER_LENGTH:I

    if-ne v4, v5, :cond_4

    .line 55
    sget-object v5, Lcom/xiaopeng/lib/utils/ZipUtils;->ZIP_HEADER_1:[B

    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/xiaopeng/lib/utils/ZipUtils;->ZIP_HEADER_2:[B

    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 60
    .end local v3    # "buffer":[B
    .end local v4    # "length":I
    :cond_4
    nop

    .line 62
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    :goto_2
    goto :goto_3

    .line 63
    :catch_0
    move-exception v0

    goto :goto_2

    .line 60
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 57
    :catch_1
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    .end local v0    # "e":Ljava/lang/Throwable;
    if-eqz v2, :cond_5

    .line 62
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 68
    :cond_5
    :goto_3
    return v1

    .line 60
    :goto_4
    if-eqz v2, :cond_6

    .line 62
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 64
    goto :goto_5

    .line 63
    :catch_2
    move-exception v3

    .line 66
    :cond_6
    :goto_5
    throw v0
.end method

.method public static zip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dest"    # Ljava/lang/String;
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

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "out":Ljava/util/zip/ZipOutputStream;
    const/4 v1, 0x0

    move v2, v1

    .line 243
    .local v2, "isFlag":Z
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v3, "outFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .local v4, "fileOrDirectory":Ljava/io/File;
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v5

    .line 247
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 248
    const-string v1, ""

    invoke-static {v0, v4, v1}, Lcom/xiaopeng/lib/utils/ZipUtils;->zipFileOrDirectory(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 250
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 251
    .local v5, "entries":[Ljava/io/File;
    if-eqz v5, :cond_1

    .line 252
    nop

    .local v1, "i":I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_1

    .line 254
    aget-object v6, v5, v1

    const-string v7, ""

    invoke-static {v0, v6, v7}, Lcom/xiaopeng/lib/utils/ZipUtils;->zipFileOrDirectory(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    .end local v1    # "i":I
    .end local v5    # "entries":[Ljava/io/File;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    const/4 v1, 0x1

    .line 265
    .end local v0    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v2    # "isFlag":Z
    .end local v3    # "outFile":Ljava/io/File;
    .end local v4    # "fileOrDirectory":Ljava/io/File;
    .end local p0    # "src":Ljava/lang/String;
    .end local p1    # "dest":Ljava/lang/String;
    :goto_2
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 266
    return v1

    .line 265
    .restart local v0    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "isFlag":Z
    .restart local p0    # "src":Ljava/lang/String;
    .restart local p1    # "dest":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 260
    :catch_0
    move-exception v1

    .line 261
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    const/4 v1, 0x0

    .end local v2    # "isFlag":Z
    .local v1, "isFlag":Z
    goto :goto_2

    .line 265
    .end local v1    # "isFlag":Z
    .restart local v2    # "isFlag":Z
    :goto_3
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 266
    return v2
.end method

.method public static zipFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 11
    .param p0, "srcFilePath"    # Ljava/lang/String;
    .param p1, "dstFilePath"    # Ljava/lang/String;
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

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "out":Ljava/util/zip/ZipOutputStream;
    const/4 v1, 0x0

    .line 345
    .local v1, "ins":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 346
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    const/4 v3, 0x0

    .line 348
    .local v3, "bis":Ljava/io/BufferedInputStream;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    .local v4, "dst":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v5

    .line 352
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 353
    new-instance v5, Ljava/util/zip/ZipEntry;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 356
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v5

    .line 357
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v5

    .line 359
    const/16 v5, 0x400

    .line 360
    .local v5, "bufferLen":I
    new-array v6, v5, [B

    .line 364
    .local v6, "buffer":[B
    :goto_0
    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8

    move v9, v8

    .local v9, "tag":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_0

    .line 365
    invoke-virtual {v2, v6, v7, v9}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 368
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 369
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    nop

    .line 374
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 375
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 376
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 377
    invoke-static {v3}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 370
    return-object v4

    .line 374
    .end local v5    # "bufferLen":I
    .end local v6    # "buffer":[B
    .end local v9    # "tag":I
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 371
    :catch_0
    move-exception v5

    .line 372
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    .end local v5    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 375
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 376
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 377
    invoke-static {v3}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 378
    nop

    .line 380
    const/4 v5, 0x0

    return-object v5

    .line 374
    :goto_1
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 375
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 376
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 377
    invoke-static {v3}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 378
    throw v5
.end method

.method public static zipFileOrDirectory(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Ljava/util/zip/ZipOutputStream;
    .param p1, "fileOrDirectory"    # Ljava/io/File;
    .param p2, "curPath"    # Ljava/lang/String;
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

    .line 280
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/lib/utils/ZipUtils;->zipFileOrDirectory(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Z)V

    .line 281
    return-void
.end method

.method public static zipFileOrDirectory(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 8
    .param p0, "out"    # Ljava/util/zip/ZipOutputStream;
    .param p1, "fileOrDirectory"    # Ljava/io/File;
    .param p2, "curPath"    # Ljava/lang/String;
    .param p3, "ignoreEmptyDir"    # Z
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

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 292
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 294
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 296
    .local v2, "buffer":[B
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v4

    .line 297
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v4

    .line 299
    new-instance v4, Ljava/util/zip/ZipEntry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 302
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {p0, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 303
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "bytes_read":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 304
    invoke-virtual {p0, v2, v3, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 307
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 308
    .end local v2    # "buffer":[B
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "bytes_read":I
    goto :goto_2

    .line 310
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 311
    .local v2, "entries":[Ljava/io/File;
    if-eqz v2, :cond_2

    array-length v4, v2

    if-lez v4, :cond_2

    .line 312
    nop

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 314
    aget-object v4, v2, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 314
    invoke-static {p0, v4, v5, p3}, Lcom/xiaopeng/lib/utils/ZipUtils;->zipFileOrDirectory(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Z)V

    .line 312
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 318
    .end local v3    # "i":I
    :cond_2
    if-nez p3, :cond_3

    .line 319
    new-instance v3, Ljava/util/zip/ZipEntry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 321
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {p0, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 322
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "entries":[Ljava/io/File;
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    goto :goto_2

    .line 329
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 326
    :catch_0
    move-exception v2

    .line 327
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_3
    :goto_2
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 330
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 331
    nop

    .line 332
    return-void

    .line 329
    :goto_3
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 330
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 331
    throw v2
.end method

.method public static zipMultiFiles(Ljava/lang/String;Ljava/util/List;)Ljava/io/File;
    .locals 1
    .param p0, "dstFilePath"    # Ljava/lang/String;
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

    .line 385
    .local p1, "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/lib/utils/ZipUtils;->zipMultiFiles(Ljava/lang/String;Ljava/util/List;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static zipMultiFiles(Ljava/lang/String;Ljava/util/List;Z)Ljava/io/File;
    .locals 2
    .param p0, "dstFilePath"    # Ljava/lang/String;
    .param p2, "ignoreEmptyDir"    # Z
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
    .local p1, "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/lib/utils/ZipUtils;->zipMultiFilesWithThrow(Ljava/lang/String;Ljava/util/List;Z)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 394
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static zipMultiFilesWithThrow(Ljava/lang/String;Ljava/util/List;)Ljava/io/File;
    .locals 1
    .param p0, "dstFilePath"    # Ljava/lang/String;
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

    .line 400
    .local p1, "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/lib/utils/ZipUtils;->zipMultiFilesWithThrow(Ljava/lang/String;Ljava/util/List;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static zipMultiFilesWithThrow(Ljava/lang/String;Ljava/util/List;Z)Ljava/io/File;
    .locals 9
    .param p0, "dstFilePath"    # Ljava/lang/String;
    .param p2, "ignoreEmptyDir"    # Z
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
    .local p1, "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    .local v0, "zipFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 410
    :cond_0
    const/4 v1, 0x0

    .line 411
    .local v1, "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    const/4 v2, 0x0

    .line 413
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 414
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v3

    .line 417
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 418
    .local v4, "filePath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    .line 421
    .local v6, "parent":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 422
    const-string v7, ""

    move-object v6, v7

    .line 425
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v5, v7, p2}, Lcom/xiaopeng/lib/utils/ZipUtils;->zipFileOrDirectory(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Z)V

    .line 426
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v6    # "parent":Ljava/lang/String;
    goto :goto_0

    .line 428
    .end local v5    # "file":Ljava/io/File;
    :cond_2
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 429
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 432
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 433
    nop

    .line 435
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 431
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 432
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 433
    throw v3
.end method
