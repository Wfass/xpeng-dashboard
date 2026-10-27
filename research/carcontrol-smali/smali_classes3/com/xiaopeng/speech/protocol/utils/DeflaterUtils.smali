.class public Lcom/xiaopeng/speech/protocol/utils/DeflaterUtils;
.super Ljava/lang/Object;
.source "DeflaterUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressForBase64([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-static {p0, v0}, Lcom/xiaopeng/speech/protocol/utils/DeflaterUtils;->compressForBase64([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static compressForBase64([BI)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 76
    array-length v0, p0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static compressForGzip(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 20
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 24
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 25
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 27
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 28
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 29
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 30
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 31
    invoke-static {p0}, Lcom/xiaopeng/speech/protocol/utils/DeflaterUtils;->compressForBase64([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public static decompressForBase64(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-static {p0, v0}, Lcom/xiaopeng/speech/protocol/utils/DeflaterUtils;->decompressForBase64(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static decompressForBase64(Ljava/lang/String;I)[B
    .locals 1

    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static decompressForGzip(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 43
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 46
    :cond_0
    invoke-static {p0}, Lcom/xiaopeng/speech/protocol/utils/DeflaterUtils;->decompressForBase64(Ljava/lang/String;)[B

    move-result-object p0

    .line 49
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 50
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 51
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    new-array v4, v3, [B

    :goto_0
    const/4 v5, 0x0

    .line 56
    invoke-virtual {p0, v4, v5, v3}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v6

    if-lez v6, :cond_1

    .line 57
    invoke-virtual {v0, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 61
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 62
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 63
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 65
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method
