.class public Lcom/xiaopeng/lib/utils/k;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# static fields
.field private static WV:[B

.field private static WW:[B

.field private static WX:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/xiaopeng/lib/utils/k;->WV:[B

    .line 30
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/xiaopeng/lib/utils/k;->WW:[B

    .line 31
    sput v0, Lcom/xiaopeng/lib/utils/k;->WX:I

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

.method public static a(Ljava/lang/String;Ljava/util/List;Z)Ljava/io/File;
    .locals 0
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
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/lib/utils/k;->b(Ljava/lang/String;Ljava/util/List;Z)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 392
    :catch_0
    move-exception p1

    .line 393
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 394
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static a(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/lib/utils/k;->a(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Z)V

    .line 281
    return-void
.end method

.method public static a(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    nop

    .line 289
    nop

    .line 292
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 294
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

    .line 300
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    .line 308
    nop

    .line 329
    move-object v0, v3

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v0, v3

    goto :goto_4

    .line 326
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

    .line 311
    if-eqz v1, :cond_2

    array-length v3, v1

    if-lez v3, :cond_2

    .line 312
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 314
    aget-object v3, v1, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 314
    invoke-static {p0, v3, v4, p3}, Lcom/xiaopeng/lib/utils/k;->a(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Z)V

    .line 312
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 318
    :cond_2
    if-nez p3, :cond_3

    .line 319
    new-instance p2, Ljava/util/zip/ZipEntry;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0, p2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 322
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 329
    :cond_3
    move-object v1, v0

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_4

    .line 326
    :catch_2
    move-exception p0

    move-object v1, v0

    .line 327
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 329
    :goto_3
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 330
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 331
    nop

    .line 332
    return-void

    .line 329
    :catchall_2
    move-exception p0

    :goto_4
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 330
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 331
    throw p0
.end method

.method public static b(Ljava/lang/String;Ljava/util/List;)Ljava/io/File;
    .locals 1
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
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/lib/utils/k;->a(Ljava/lang/String;Ljava/util/List;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/util/List;Z)Ljava/io/File;
    .locals 5
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

    .line 410
    :cond_0
    nop

    .line 411
    nop

    .line 413
    const/4 v0, 0x0

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

    .line 421
    if-nez v0, :cond_1

    .line 422
    const-string v0, ""

    .line 425
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0, p2}, Lcom/xiaopeng/lib/utils/k;->a(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Z)V

    .line 426
    goto :goto_0

    .line 428
    :cond_2
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 429
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 431
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 432
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 433
    nop

    .line 435
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 431
    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v2, v0

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    :goto_1
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 432
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 433
    throw p0
.end method

.method public static dM(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

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

    .line 459
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/xiaopeng/lib/utils/k;->f([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 462
    :catch_0
    move-exception p0

    .line 463
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 460
    :catch_1
    move-exception p0

    .line 461
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 464
    nop

    .line 466
    :goto_0
    return-object v1
.end method

.method public static f([BI)Ljava/lang/String;
    .locals 1

    .line 148
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 149
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
