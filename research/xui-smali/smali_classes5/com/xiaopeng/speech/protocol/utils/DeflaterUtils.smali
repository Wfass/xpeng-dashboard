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
    .param p0, "encode"    # [B

    .line 72
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaopeng/speech/protocol/utils/DeflaterUtils;->compressForBase64([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static compressForBase64([BI)Ljava/lang/String;
    .locals 1
    .param p0, "encode"    # [B
    .param p1, "flags"    # I

    .line 76
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static compressForGzip(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "unGzipStr"    # Ljava/lang/String;

    .line 20
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 21
    return-object v1

    .line 24
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 25
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 26
    .local v2, "gzip":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 27
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 28
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 29
    .local v3, "encode":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 30
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 31
    invoke-static {v3}, Lcom/xiaopeng/speech/protocol/utils/DeflaterUtils;->compressForBase64([B)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 34
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .end local v3    # "encode":[B
    :catch_0
    move-exception v0

    .line 35
    .local v0, "var5":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "var5":Ljava/io/IOException;
    goto :goto_0

    .line 32
    :catch_1
    move-exception v0

    .line 33
    .local v0, "var4":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 36
    .end local v0    # "var4":Ljava/io/UnsupportedEncodingException;
    nop

    .line 38
    :goto_0
    return-object v1
.end method

.method public static decompressForBase64(Ljava/lang/String;)[B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaopeng/speech/protocol/utils/DeflaterUtils;->decompressForBase64(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static decompressForBase64(Ljava/lang/String;I)[B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static decompressForGzip(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "gzipStr"    # Ljava/lang/String;

    .line 43
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 44
    return-object v1

    .line 46
    :cond_0
    invoke-static {p0}, Lcom/xiaopeng/speech/protocol/utils/DeflaterUtils;->decompressForBase64(Ljava/lang/String;)[B

    move-result-object v0

    .line 49
    .local v0, "t":[B
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 50
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 51
    .local v3, "in":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 52
    .local v4, "gzip":Ljava/util/zip/GZIPInputStream;
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 53
    .local v5, "buffer":[B
    const/4 v6, 0x0

    move v7, v6

    .line 56
    .local v7, "var6":Z
    :goto_0
    array-length v8, v5

    invoke-virtual {v4, v5, v6, v8}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v8

    move v9, v8

    .local v9, "n":I
    if-lez v8, :cond_1

    .line 57
    invoke-virtual {v2, v5, v6, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 61
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 62
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 63
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 64
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .end local v4    # "gzip":Ljava/util/zip/GZIPInputStream;
    .end local v5    # "buffer":[B
    .end local v7    # "var6":Z
    .end local v9    # "n":I
    :catch_0
    move-exception v2

    .line 65
    .local v2, "var7":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 66
    return-object v1
.end method
