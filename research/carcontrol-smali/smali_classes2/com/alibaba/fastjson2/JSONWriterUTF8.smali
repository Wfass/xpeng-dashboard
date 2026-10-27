.class Lcom/alibaba/fastjson2/JSONWriterUTF8;
.super Lcom/alibaba/fastjson2/JSONWriter;
.source "JSONWriterUTF8.java"


# static fields
.field static final HEX256:[S

.field static final REF_PREF:[B


# instance fields
.field protected bytes:[B

.field final cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 28
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string/jumbo v1, "{\"$ref\":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->REF_PREF:[B

    const/16 v0, 0x100

    new-array v0, v0, [S

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_4

    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    add-int/lit8 v5, v2, 0x30

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v2, -0xa

    add-int/lit8 v5, v5, 0x61

    :goto_1
    int-to-short v5, v5

    move v6, v1

    :goto_2
    if-ge v6, v3, :cond_3

    if-ge v6, v4, :cond_1

    add-int/lit8 v7, v6, 0x30

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v6, -0xa

    add-int/lit8 v7, v7, 0x61

    :goto_3
    int-to-short v7, v7

    shl-int/lit8 v8, v2, 0x4

    add-int/2addr v8, v6

    .line 39
    sget-boolean v9, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v9, :cond_2

    shl-int/lit8 v9, v5, 0x8

    or-int/2addr v7, v9

    goto :goto_4

    :cond_2
    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v7, v5

    :goto_4
    int-to-short v7, v7

    aput-short v7, v0, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_4
    sput-object v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->HEX256:[S

    return-void
.end method

.method constructor <init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V
    .locals 3

    .line 50
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/alibaba/fastjson2/JSONWriter;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;ZLjava/nio/charset/Charset;)V

    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    .line 52
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 53
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-nez p1, :cond_0

    const/16 p1, 0x2000

    new-array p1, p1, [B

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    return-void
.end method

.method static packDigits(II)I
    .locals 1

    .line 1437
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->HEX256:[S

    and-int/lit16 p0, p0, 0xff

    aget-short p0, v0, p0

    and-int/lit16 p1, p1, 0xff

    aget-short p1, v0, p1

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    .line 1438
    sget-boolean p1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    :cond_0
    return p0
.end method

.method static packDigits(IIII)J
    .locals 4

    .line 1447
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->HEX256:[S

    and-int/lit16 p0, p0, 0xff

    .line 1448
    aget-short p0, v0, p0

    int-to-long v1, p0

    and-int/lit16 p0, p1, 0xff

    aget-short p0, v0, p0

    int-to-long p0, p0

    const/16 v3, 0x10

    shl-long/2addr p0, v3

    or-long/2addr p0, v1

    and-int/lit16 p2, p2, 0xff

    aget-short p2, v0, p2

    int-to-long v1, p2

    const/16 p2, 0x20

    shl-long/2addr v1, p2

    or-long/2addr p0, v1

    and-int/lit16 p2, p3, 0xff

    aget-short p2, v0, p2

    int-to-long p2, p2

    const/16 v0, 0x30

    shl-long/2addr p2, v0

    or-long/2addr p0, p2

    .line 1452
    sget-boolean p2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p0

    :cond_0
    return-wide p0
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 159
    array-length v1, v0

    const/high16 v2, 0x100000

    if-le v1, v2, :cond_0

    return-void

    .line 163
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final endArray()V
    .locals 7

    .line 313
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->level:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->level:I

    .line 314
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    .line 315
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->pretty:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v2, v0

    .line 316
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 317
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 320
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 321
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->pretty:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 322
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/lit8 v3, v0, 0x1

    const/16 v5, 0xa

    .line 323
    aput-byte v5, v2, v0

    move v0, v3

    move v3, v4

    .line 324
    :goto_1
    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    if-ge v3, v5, :cond_2

    add-int/lit8 v5, v0, 0x1

    const/16 v6, 0x9

    .line 325
    aput-byte v6, v2, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v5

    goto :goto_1

    :cond_2
    const/16 v3, 0x5d

    .line 328
    aput-byte v3, v2, v0

    add-int/2addr v0, v1

    .line 329
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    .line 330
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    return-void
.end method

.method public final endObject()V
    .locals 7

    .line 245
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->level:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->level:I

    .line 246
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    .line 247
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->pretty:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v2, v0

    .line 248
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 249
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 252
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 253
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->pretty:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 254
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/lit8 v3, v0, 0x1

    const/16 v5, 0xa

    .line 255
    aput-byte v5, v2, v0

    move v0, v3

    move v3, v4

    .line 256
    :goto_1
    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    if-ge v3, v5, :cond_2

    add-int/lit8 v5, v0, 0x1

    const/16 v6, 0x9

    .line 257
    aput-byte v6, v2, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v5

    goto :goto_1

    :cond_2
    const/16 v3, 0x7d

    .line 261
    aput-byte v3, v2, v0

    add-int/2addr v0, v1

    .line 262
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    .line 263
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    return-void
.end method

.method final ensureCapacity(I)V
    .locals 2

    .line 1986
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v1, v0

    if-lt p1, v1, :cond_2

    .line 1987
    array-length v0, v0

    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    sub-int v1, v0, p1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1992
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->maxArraySize:I

    sub-int v0, p1, v0

    if-gtz v0, :cond_1

    .line 1997
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    goto :goto_1

    .line 1993
    :cond_1
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public final flushTo(Ljava/io/OutputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    if-lez v0, :cond_0

    .line 189
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 190
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    :cond_0
    return v0
.end method

.method public final flushTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 3038
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 3039
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "UnsupportedOperation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3041
    :cond_1
    :goto_0
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    const/4 v0, 0x0

    if-nez p2, :cond_2

    return v0

    .line 3045
    :cond_2
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    .line 3046
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 3047
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return p2
.end method

.method public final getBytes()[B
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public final getBytes(Ljava/nio/charset/Charset;)[B
    .locals 1

    .line 177
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-ne p1, v0, :cond_0

    .line 178
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return v0
.end method

.method public final startArray()V
    .locals 5

    .line 288
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->level:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->maxLevel:I

    if-ge v0, v1, :cond_3

    .line 292
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->level:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->level:I

    .line 293
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    .line 294
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->pretty:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v2, v0

    .line 295
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 296
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 299
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x5b

    .line 300
    aput-byte v4, v2, v0

    .line 301
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->pretty:Z

    if-eqz v0, :cond_2

    .line 302
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/lit8 v0, v3, 0x1

    const/16 v1, 0xa

    .line 303
    aput-byte v1, v2, v3

    const/4 v1, 0x0

    :goto_1
    move v3, v0

    .line 304
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    if-ge v1, v0, :cond_2

    add-int/lit8 v0, v3, 0x1

    const/16 v4, 0x9

    .line 305
    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 308
    :cond_2
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void

    .line 289
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level too large : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final startObject()V
    .locals 5

    .line 217
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->level:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->maxLevel:I

    if-ge v0, v1, :cond_3

    .line 221
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->level:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->level:I

    .line 222
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    .line 224
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    .line 225
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->pretty:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v2, v0

    .line 226
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 227
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 230
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x7b

    .line 231
    aput-byte v4, v2, v0

    .line 233
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->pretty:Z

    if-eqz v0, :cond_2

    .line 234
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/lit8 v0, v3, 0x1

    const/16 v1, 0xa

    .line 235
    aput-byte v1, v2, v3

    const/4 v1, 0x0

    :goto_1
    move v3, v0

    .line 236
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    if-ge v1, v0, :cond_2

    add-int/lit8 v0, v3, 0x1

    const/16 v4, 0x9

    .line 237
    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 240
    :cond_2
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void

    .line 218
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level too large : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 3033
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final write(Lcom/alibaba/fastjson2/JSONObject;)V
    .locals 12

    if-nez p1, :cond_0

    .line 2829
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeNull()V

    return-void

    .line 2833
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->PrettyFormat:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    .line 2838
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2839
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 2840
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 2844
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v1, v1

    const/4 v4, 0x1

    if-ne v0, v1, :cond_2

    .line 2845
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2847
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    const/16 v5, 0x7b

    aput-byte v5, v0, v1

    .line 2850
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v4

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2851
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    .line 2852
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteMapNullValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v8

    cmp-long v5, v5, v2

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    if-nez v0, :cond_5

    .line 2857
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v5, v5

    if-ne v0, v5, :cond_4

    .line 2858
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2860
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    const/16 v6, 0x2c

    aput-byte v6, v0, v5

    :cond_5
    const/4 v0, 0x0

    .line 2864
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2865
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 2866
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 2868
    :cond_6
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeAny(Ljava/lang/Object;)V

    .line 2871
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v5, v5

    if-ne v1, v5, :cond_7

    .line 2872
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2874
    :cond_7
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    const/16 v6, 0x3a

    aput-byte v6, v1, v5

    if-nez v7, :cond_8

    .line 2877
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeNull()V

    goto :goto_0

    .line 2881
    :cond_8
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2882
    const-class v5, Ljava/lang/String;

    if-ne v1, v5, :cond_9

    .line 2883
    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 2887
    :cond_9
    const-class v5, Ljava/lang/Integer;

    if-ne v1, v5, :cond_a

    .line 2888
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeInt32(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 2892
    :cond_a
    const-class v5, Ljava/lang/Long;

    if-ne v1, v5, :cond_b

    .line 2893
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeInt64(Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 2897
    :cond_b
    const-class v5, Ljava/lang/Boolean;

    if-ne v1, v5, :cond_c

    .line 2898
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeBool(Z)V

    goto/16 :goto_0

    .line 2902
    :cond_c
    const-class v5, Ljava/math/BigDecimal;

    if-ne v1, v5, :cond_d

    .line 2903
    check-cast v7, Ljava/math/BigDecimal;

    const/4 v1, 0x0

    invoke-virtual {p0, v7, v2, v3, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    goto/16 :goto_0

    .line 2907
    :cond_d
    const-class v5, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v1, v5, :cond_e

    .line 2908
    check-cast v7, Lcom/alibaba/fastjson2/JSONArray;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->write(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2912
    :cond_e
    const-class v5, Lcom/alibaba/fastjson2/JSONObject;

    if-ne v1, v5, :cond_f

    .line 2913
    check-cast v7, Lcom/alibaba/fastjson2/JSONObject;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->write(Lcom/alibaba/fastjson2/JSONObject;)V

    goto/16 :goto_0

    .line 2917
    :cond_f
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-virtual {v5, v1, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v6, p0

    .line 2918
    invoke-interface/range {v5 .. v11}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto/16 :goto_0

    .line 2921
    :cond_10
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v0, v0

    if-ne p1, v0, :cond_11

    .line 2922
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2924
    :cond_11
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    const/16 v1, 0x7d

    aput-byte v1, p1, v0

    return-void
.end method

.method public final write(Ljava/util/List;)V
    .locals 14

    if-nez p1, :cond_0

    .line 2930
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeArrayNull()V

    return-void

    .line 2934
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->PrettyFormat:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    .line 2939
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2940
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 2941
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 2945
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v1, v1

    const/4 v4, 0x1

    if-ne v0, v1, :cond_2

    .line 2946
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2948
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    const/16 v5, 0x5b

    aput-byte v5, v0, v1

    const/4 v0, 0x0

    move v1, v0

    move v5, v4

    .line 2951
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_d

    .line 2952
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v5, :cond_4

    .line 2954
    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    iget-object v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v6, v6

    if-ne v5, v6, :cond_3

    .line 2955
    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/2addr v5, v4

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2957
    :cond_3
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    const/16 v7, 0x2c

    aput-byte v7, v5, v6

    :cond_4
    if-nez v9, :cond_5

    .line 2962
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeNull()V

    goto :goto_1

    .line 2966
    :cond_5
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 2967
    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_6

    .line 2968
    check-cast v9, Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 2972
    :cond_6
    const-class v6, Ljava/lang/Integer;

    if-ne v5, v6, :cond_7

    .line 2973
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeInt32(Ljava/lang/Integer;)V

    goto :goto_1

    .line 2977
    :cond_7
    const-class v6, Ljava/lang/Long;

    if-ne v5, v6, :cond_8

    .line 2978
    check-cast v9, Ljava/lang/Long;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeInt64(Ljava/lang/Long;)V

    goto :goto_1

    .line 2982
    :cond_8
    const-class v6, Ljava/lang/Boolean;

    if-ne v5, v6, :cond_9

    .line 2983
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeBool(Z)V

    goto :goto_1

    .line 2987
    :cond_9
    const-class v6, Ljava/math/BigDecimal;

    if-ne v5, v6, :cond_a

    .line 2988
    check-cast v9, Ljava/math/BigDecimal;

    const/4 v5, 0x0

    invoke-virtual {p0, v9, v2, v3, v5}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    goto :goto_1

    .line 2992
    :cond_a
    const-class v6, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v5, v6, :cond_b

    .line 2993
    check-cast v9, Lcom/alibaba/fastjson2/JSONArray;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->write(Ljava/util/List;)V

    goto :goto_1

    .line 2997
    :cond_b
    const-class v6, Lcom/alibaba/fastjson2/JSONObject;

    if-ne v5, v6, :cond_c

    .line 2998
    check-cast v9, Lcom/alibaba/fastjson2/JSONObject;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->write(Lcom/alibaba/fastjson2/JSONObject;)V

    goto :goto_1

    .line 3002
    :cond_c
    iget-object v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-virtual {v6, v5, v5}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object v8, p0

    .line 3003
    invoke-interface/range {v7 .. v13}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v5, v0

    goto/16 :goto_0

    .line 3005
    :cond_d
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v0, v0

    if-ne p1, v0, :cond_e

    .line 3006
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 3008
    :cond_e
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    const/16 v1, 0x5d

    aput-byte v1, p1, v0

    return-void
.end method

.method protected final write0(C)V
    .locals 2

    .line 197
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    .line 198
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 199
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 202
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeBase64([B)V
    .locals 10

    .line 86
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    shl-int/2addr v0, v1

    .line 88
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 89
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v3, v2, 0x1

    .line 91
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 93
    array-length v2, p1

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_0

    add-int/lit8 v6, v5, 0x1

    .line 97
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    .line 100
    sget-object v7, Lcom/alibaba/fastjson2/JSONFactory;->CA:[C

    ushr-int/lit8 v8, v5, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-char v7, v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    add-int/lit8 v7, v3, 0x1

    .line 101
    sget-object v8, Lcom/alibaba/fastjson2/JSONFactory;->CA:[C

    ushr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    add-int/lit8 v7, v3, 0x2

    .line 102
    sget-object v8, Lcom/alibaba/fastjson2/JSONFactory;->CA:[C

    ushr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    add-int/lit8 v7, v3, 0x3

    .line 103
    sget-object v8, Lcom/alibaba/fastjson2/JSONFactory;->CA:[C

    and-int/lit8 v5, v5, 0x3f

    aget-char v5, v8, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v7

    add-int/lit8 v3, v3, 0x4

    move v5, v6

    goto :goto_0

    .line 108
    :cond_0
    array-length v5, p1

    sub-int/2addr v5, v2

    if-lez v5, :cond_3

    .line 111
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xa

    if-ne v5, v1, :cond_1

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget-byte p1, p1, v4

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 v4, p1, 0x2

    :cond_1
    or-int p1, v2, v4

    .line 114
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->CA:[C

    shr-int/lit8 v4, p1, 0xc

    aget-char v2, v2, v4

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    add-int/lit8 v2, v3, 0x1

    .line 115
    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->CA:[C

    ushr-int/lit8 v6, p1, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v4, v4, v6

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v3, 0x2

    const/16 v4, 0x3d

    if-ne v5, v1, :cond_2

    .line 116
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CA:[C

    and-int/lit8 p1, p1, 0x3f

    aget-char p1, v1, p1

    int-to-byte p1, p1

    goto :goto_1

    :cond_2
    move p1, v4

    :goto_1
    aput-byte p1, v0, v2

    add-int/lit8 p1, v3, 0x3

    .line 117
    aput-byte v4, v0, p1

    add-int/lit8 v3, v3, 0x4

    .line 121
    :cond_3
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 122
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeBigInt(Ljava/math/BigInteger;J)V
    .locals 3

    if-nez p1, :cond_0

    .line 2664
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeNumberNull()V

    return-void

    .line 2668
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->isInt64(Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 2669
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeInt64(J)V

    return-void

    :cond_1
    const/16 v0, 0xa

    .line 2673
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 2675
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    or-long/2addr p2, v1

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->isWriteAsString(Ljava/math/BigInteger;J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2676
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeString(Ljava/lang/String;)V

    return-void

    .line 2680
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    .line 2683
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/2addr p2, p1

    .line 2684
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length p3, p3

    if-lt p2, p3, :cond_3

    .line 2685
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    :cond_3
    const/4 p2, 0x0

    .line 2688
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    invoke-virtual {v0, p2, p1, p3, v1}, Ljava/lang/String;->getBytes(II[BI)V

    .line 2689
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public writeBool(Z)V
    .locals 7

    .line 3012
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v0, v0, 0x5

    .line 3013
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 3014
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 3017
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 3018
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    .line 3019
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteBooleanAsNumber:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    if-eqz p1, :cond_1

    const/16 p1, 0x31

    goto :goto_0

    :cond_1
    const/16 p1, 0x30

    :goto_0
    int-to-byte p1, p1

    .line 3020
    aput-byte p1, v0, v1

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x66

    .line 3023
    aput-byte v3, v0, v1

    move v1, v2

    .line 3025
    :cond_3
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    if-eqz p1, :cond_4

    sget p1, Lcom/alibaba/fastjson2/util/IOUtils;->TRUE:I

    goto :goto_1

    :cond_4
    sget p1, Lcom/alibaba/fastjson2/util/IOUtils;->ALSE:I

    :goto_1
    invoke-virtual {v2, v0, v3, v4, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v2, v1, 0x4

    .line 3028
    :goto_2
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeChar(C)V
    .locals 6

    .line 1305
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0x8

    .line 1307
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1308
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 1311
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v2, v0, 0x1

    .line 1312
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_3

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_2

    const/16 v3, 0x31

    const/16 v4, 0x75

    const/16 v5, 0x30

    packed-switch p1, :pswitch_data_0

    .line 1405
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    if-ne p1, v3, :cond_1

    .line 1406
    aput-byte v0, v1, v2

    add-int/lit8 p1, v2, 0x1

    .line 1407
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v0, v0

    aput-byte v0, v1, p1

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    int-to-byte p1, p1

    .line 1410
    aput-byte p1, v1, v2

    move v2, v0

    goto/16 :goto_3

    .line 1396
    :pswitch_0
    aput-byte v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    .line 1397
    aput-byte v4, v1, v0

    add-int/lit8 v0, v2, 0x2

    .line 1398
    aput-byte v5, v1, v0

    add-int/lit8 v0, v2, 0x3

    .line 1399
    aput-byte v5, v1, v0

    add-int/lit8 v0, v2, 0x4

    .line 1400
    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x5

    add-int/lit8 p1, p1, -0x1a

    add-int/lit8 p1, p1, 0x61

    int-to-byte p1, p1

    .line 1401
    aput-byte p1, v1, v0

    goto/16 :goto_1

    .line 1382
    :pswitch_1
    aput-byte v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    .line 1383
    aput-byte v4, v1, v0

    add-int/lit8 v0, v2, 0x2

    .line 1384
    aput-byte v5, v1, v0

    add-int/lit8 v0, v2, 0x3

    .line 1385
    aput-byte v5, v1, v0

    add-int/lit8 v0, v2, 0x4

    .line 1386
    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x5

    add-int/lit8 p1, p1, -0x10

    add-int/2addr p1, v5

    int-to-byte p1, p1

    .line 1387
    aput-byte p1, v1, v0

    goto :goto_1

    .line 1326
    :pswitch_2
    aput-byte v0, v1, v2

    add-int/lit8 p1, v2, 0x1

    const/16 v0, 0x72

    .line 1327
    aput-byte v0, v1, p1

    goto :goto_0

    .line 1331
    :pswitch_3
    aput-byte v0, v1, v2

    add-int/lit8 p1, v2, 0x1

    const/16 v0, 0x66

    .line 1332
    aput-byte v0, v1, p1

    goto :goto_0

    .line 1364
    :pswitch_4
    aput-byte v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    .line 1365
    aput-byte v4, v1, v0

    add-int/lit8 v0, v2, 0x2

    .line 1366
    aput-byte v5, v1, v0

    add-int/lit8 v0, v2, 0x3

    .line 1367
    aput-byte v5, v1, v0

    add-int/lit8 v0, v2, 0x4

    .line 1368
    aput-byte v5, v1, v0

    add-int/lit8 v0, v2, 0x5

    add-int/lit8 p1, p1, -0xa

    add-int/lit8 p1, p1, 0x61

    int-to-byte p1, p1

    .line 1369
    aput-byte p1, v1, v0

    goto :goto_1

    .line 1321
    :pswitch_5
    aput-byte v0, v1, v2

    add-int/lit8 p1, v2, 0x1

    const/16 v0, 0x6e

    .line 1322
    aput-byte v0, v1, p1

    goto :goto_0

    .line 1341
    :pswitch_6
    aput-byte v0, v1, v2

    add-int/lit8 p1, v2, 0x1

    const/16 v0, 0x74

    .line 1342
    aput-byte v0, v1, p1

    goto :goto_0

    .line 1336
    :pswitch_7
    aput-byte v0, v1, v2

    add-int/lit8 p1, v2, 0x1

    const/16 v0, 0x62

    .line 1337
    aput-byte v0, v1, p1

    :goto_0
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_3

    .line 1353
    :pswitch_8
    aput-byte v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    .line 1354
    aput-byte v4, v1, v0

    add-int/lit8 v0, v2, 0x2

    .line 1355
    aput-byte v5, v1, v0

    add-int/lit8 v0, v2, 0x3

    .line 1356
    aput-byte v5, v1, v0

    add-int/lit8 v0, v2, 0x4

    .line 1357
    aput-byte v5, v1, v0

    add-int/lit8 v0, v2, 0x5

    add-int/2addr p1, v5

    int-to-byte p1, p1

    .line 1358
    aput-byte p1, v1, v0

    :goto_1
    add-int/lit8 v2, v2, 0x6

    goto :goto_3

    .line 1316
    :cond_2
    aput-byte v0, v1, v2

    add-int/lit8 p1, v2, 0x1

    .line 1317
    aput-byte v0, v1, p1

    goto :goto_0

    :cond_3
    const v0, 0xd800

    if-lt p1, v0, :cond_5

    const v0, 0xe000

    if-lt p1, v0, :cond_4

    goto :goto_2

    .line 1415
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal char "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    const/16 v0, 0x7ff

    if-le p1, v0, :cond_6

    shr-int/lit8 v0, p1, 0xc

    and-int/lit8 v0, v0, 0xf

    or-int/lit16 v0, v0, 0xe0

    int-to-byte v0, v0

    .line 1417
    aput-byte v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 1418
    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x2

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    .line 1419
    aput-byte p1, v1, v0

    add-int/lit8 v2, v2, 0x3

    goto :goto_3

    :cond_6
    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x1f

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    .line 1422
    aput-byte v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    .line 1423
    aput-byte p1, v1, v0

    goto/16 :goto_0

    .line 1427
    :goto_3
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 1428
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final writeColon()V
    .locals 3

    .line 207
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    .line 208
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 209
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    const/16 v2, 0x3a

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 212
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeComma()V
    .locals 5

    const/4 v0, 0x0

    .line 268
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    .line 269
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    .line 270
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->pretty:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    add-int/2addr v2, v1

    .line 271
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 272
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 275
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x2c

    .line 276
    aput-byte v4, v2, v1

    .line 277
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->pretty:Z

    if-eqz v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    const/16 v4, 0xa

    .line 278
    aput-byte v4, v2, v3

    :goto_1
    move v3, v1

    .line 279
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    const/16 v4, 0x9

    .line 280
    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 283
    :cond_2
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeDateTime14(IIIIII)V
    .locals 13

    move-object v0, p0

    move v1, p1

    .line 2395
    iget v2, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v3, v2, 0x10

    .line 2397
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 2398
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2401
    :cond_0
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 2402
    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    if-ltz v1, :cond_1

    const/16 v5, 0x270f

    if-gt v1, v5, :cond_1

    .line 2406
    div-int/lit8 v5, v1, 0x64

    mul-int/lit8 v6, v5, 0x64

    sub-int/2addr v1, v6

    .line 2408
    sget-object v6, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v7, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v9, v2

    add-long/2addr v7, v9

    const-wide/16 v11, 0x1

    add-long/2addr v7, v11

    sget-object v11, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    aget-short v5, v11, v5

    invoke-virtual {v6, v4, v7, v8, v5}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 2409
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v6, v9

    const-wide/16 v11, 0x3

    add-long/2addr v6, v11

    sget-object v8, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    aget-short v1, v8, v1

    invoke-virtual {v5, v4, v6, v7, v1}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 2410
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v9

    const-wide/16 v7, 0x5

    add-long/2addr v5, v7

    sget-object v7, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    aget-short v7, v7, p2

    invoke-virtual {v1, v4, v5, v6, v7}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 2411
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v9

    const-wide/16 v7, 0x7

    add-long/2addr v5, v7

    sget-object v7, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    aget-short v7, v7, p3

    invoke-virtual {v1, v4, v5, v6, v7}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 2412
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v9

    const-wide/16 v7, 0x9

    add-long/2addr v5, v7

    sget-object v7, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    aget-short v7, v7, p4

    invoke-virtual {v1, v4, v5, v6, v7}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 2413
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v9

    const-wide/16 v7, 0xb

    add-long/2addr v5, v7

    sget-object v7, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    aget-short v7, v7, p5

    invoke-virtual {v1, v4, v5, v6, v7}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 2414
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v9

    const-wide/16 v7, 0xd

    add-long/2addr v5, v7

    sget-object v7, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    aget-short v7, v7, p6

    invoke-virtual {v1, v4, v5, v6, v7}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    add-int/lit8 v2, v2, 0xf

    .line 2415
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v1, v1

    aput-byte v1, v4, v2

    .line 2416
    iput v3, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void

    .line 2404
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only 4 digits numbers are supported. Provided: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final writeDateTime19(IIIIII)V
    .locals 3

    .line 2427
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0x15

    .line 2429
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 2430
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2433
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 2434
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 2435
    invoke-static {v1, v0, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([BIIII)I

    move-result p1

    const/16 p2, 0x20

    .line 2436
    aput-byte p2, v1, p1

    add-int/lit8 p2, p1, 0x1

    .line 2437
    invoke-static {v1, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([BIIII)V

    add-int/lit8 p2, p1, 0x9

    .line 2438
    iget-char p3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte p3, p3

    aput-byte p3, v1, p2

    add-int/lit8 p1, p1, 0xa

    .line 2439
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeDateTimeISO8601(IIIIIIIIZ)V
    .locals 6

    const/4 v0, 0x1

    if-eqz p9, :cond_1

    if-nez p8, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2711
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v2, v2, 0x19

    add-int/2addr v2, v1

    .line 2712
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v1, v1

    if-lt v2, v1, :cond_2

    .line 2713
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2716
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 2717
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    .line 2718
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/2addr v2, v0

    .line 2719
    invoke-static {v1, v2, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([BIIII)I

    move-result p1

    if-eqz p9, :cond_3

    const/16 p2, 0x54

    goto :goto_1

    :cond_3
    const/16 p2, 0x20

    :goto_1
    int-to-byte p2, p2

    .line 2720
    aput-byte p2, v1, p1

    add-int/lit8 p2, p1, 0x1

    .line 2721
    invoke-static {v1, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([BIIII)V

    add-int/lit8 p1, p1, 0x9

    if-lez p7, :cond_6

    .line 2725
    div-int/lit8 p2, p7, 0xa

    .line 2726
    div-int/lit8 p3, p2, 0xa

    mul-int/lit8 p4, p2, 0xa

    sub-int p4, p7, p4

    const/16 p5, 0x2e

    if-eqz p4, :cond_4

    .line 2730
    sget-object p2, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K_32:[I

    aget p2, p2, p7

    and-int/lit16 p2, p2, -0x100

    or-int/2addr p2, p5

    invoke-static {v1, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([BII)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_2

    :cond_4
    add-int/lit8 p4, p1, 0x1

    .line 2733
    aput-byte p5, v1, p1

    mul-int/lit8 p1, p3, 0xa

    sub-int p1, p2, p1

    if-eqz p1, :cond_5

    .line 2736
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide p5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v2, p4

    add-long/2addr p5, v2

    sget-object p3, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    aget-short p2, p3, p2

    invoke-virtual {p1, v1, p5, p6, p2}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    add-int/lit8 p1, p4, 0x2

    goto :goto_2

    :cond_5
    add-int/lit8 p1, p4, 0x1

    add-int/lit8 p3, p3, 0x30

    int-to-byte p2, p3

    .line 2739
    aput-byte p2, v1, p4

    :cond_6
    :goto_2
    if-eqz p9, :cond_a

    .line 2745
    div-int/lit16 p2, p8, 0xe10

    if-nez p8, :cond_7

    add-int/lit8 p2, p1, 0x1

    const/16 p3, 0x5a

    .line 2747
    aput-byte p3, v1, p1

    move p1, p2

    goto :goto_4

    .line 2749
    :cond_7
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ltz p2, :cond_8

    const/16 p4, 0x2b

    goto :goto_3

    :cond_8
    const/16 p4, 0x2d

    .line 2750
    :goto_3
    aput-byte p4, v1, p1

    .line 2751
    sget-object p4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide p5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v2, p1

    add-long/2addr p5, v2

    const-wide/16 v4, 0x1

    add-long/2addr p5, v4

    sget-object p7, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    aget-short p3, p7, p3

    invoke-virtual {p4, v1, p5, p6, p3}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    add-int/lit8 p3, p1, 0x3

    const/16 p4, 0x3a

    .line 2752
    aput-byte p4, v1, p3

    mul-int/lit16 p2, p2, 0xe10

    sub-int/2addr p8, p2

    .line 2753
    div-int/lit8 p8, p8, 0x3c

    if-gez p8, :cond_9

    neg-int p8, p8

    .line 2757
    :cond_9
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide p3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr p3, v2

    const-wide/16 p5, 0x4

    add-long/2addr p3, p5

    sget-object p5, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    aget-short p5, p5, p8

    invoke-virtual {p2, v1, p3, p4, p5}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    add-int/lit8 p1, p1, 0x6

    .line 2761
    :cond_a
    :goto_4
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte p2, p2

    aput-byte p2, v1, p1

    add-int/2addr p1, v0

    .line 2762
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeDateYYYMMDD10(III)V
    .locals 4

    .line 2511
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0xd

    .line 2513
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 2514
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2517
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v2, v0, 0x1

    .line 2518
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 2519
    invoke-static {v1, v2, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([BIIII)I

    move-result p1

    .line 2520
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte p2, p2

    aput-byte p2, v1, p1

    add-int/lit8 p1, p1, 0x1

    .line 2521
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeDateYYYMMDD8(III)V
    .locals 11

    .line 2488
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0xa

    .line 2490
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 2491
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2494
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 2495
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    if-ltz p1, :cond_1

    const/16 v3, 0x270f

    if-gt p1, v3, :cond_1

    .line 2499
    div-int/lit8 v3, p1, 0x64

    mul-int/lit8 v4, v3, 0x64

    sub-int/2addr p1, v4

    .line 2501
    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v7, v0

    add-long/2addr v5, v7

    const-wide/16 v9, 0x1

    add-long/2addr v5, v9

    sget-object v9, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    aget-short v3, v9, v3

    invoke-virtual {v4, v2, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2502
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v4, v7

    const-wide/16 v9, 0x3

    add-long/2addr v4, v9

    sget-object v6, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    aget-short p1, v6, p1

    invoke-virtual {v3, v2, v4, v5, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2503
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v3, v7

    const-wide/16 v5, 0x5

    add-long/2addr v3, v5

    sget-object v5, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    aget-short p2, v5, p2

    invoke-virtual {p1, v2, v3, v4, p2}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 2504
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v3, v7

    const-wide/16 v5, 0x7

    add-long/2addr v3, v5

    sget-object p2, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    aget-short p2, p2, p3

    invoke-virtual {p1, v2, v3, v4, p2}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    add-int/lit8 v0, v0, 0x9

    .line 2505
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    .line 2506
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void

    .line 2497
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Only 4 digits numbers are supported. Provided: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V
    .locals 8

    if-nez p1, :cond_0

    .line 2768
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeNumberNull()V

    return-void

    :cond_0
    if-eqz p4, :cond_1

    .line 2773
    invoke-virtual {p4, p1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2774
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeRaw(Ljava/lang/String;)V

    return-void

    .line 2778
    :cond_1
    iget-object p4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, p4, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    or-long/2addr p2, v0

    .line 2780
    invoke-virtual {p1}, Ljava/math/BigDecimal;->precision()I

    move-result p4

    .line 2781
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->isWriteAsString(Ljava/math/BigDecimal;J)Z

    move-result v0

    .line 2783
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int v2, v1, p4

    add-int/lit8 v2, v2, 0x7

    .line 2785
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v3, v3

    if-lt v2, v3, :cond_2

    .line 2786
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2789
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    const/16 v3, 0x22

    if-eqz v0, :cond_3

    add-int/lit8 v4, v1, 0x1

    .line 2791
    aput-byte v3, v2, v1

    move v1, v4

    .line 2794
    :cond_3
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteBigDecimalAsPlain:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr p2, v4

    const-wide/16 v4, 0x0

    cmp-long p2, p2, v4

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_0

    :cond_4
    move p2, p3

    :goto_0
    const/16 v4, 0x13

    if-ge p4, v4, :cond_5

    .line 2798
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result p4

    if-ltz p4, :cond_5

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_DECIMAL_INT_COMPACT_OFFSET:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_DECIMAL_INT_COMPACT_OFFSET:J

    .line 2800
    invoke-virtual {v4, p1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v4, v6

    if-eqz v6, :cond_5

    if-nez p2, :cond_5

    .line 2803
    invoke-static {v2, v1, v4, v5, p4}, Lcom/alibaba/fastjson2/util/IOUtils;->writeDecimal([BIJI)I

    move-result p1

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    .line 2805
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2806
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p3, p2, v2, v1}, Ljava/lang/String;->getBytes(II[BI)V

    .line 2807
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v1

    :goto_2
    if-eqz v0, :cond_7

    add-int/lit8 p2, p1, 0x1

    .line 2811
    aput-byte v3, v2, p1

    move p1, p2

    .line 2813
    :cond_7
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeDouble(D)V
    .locals 6

    .line 2288
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2290
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v3, v2, 0x1a

    .line 2293
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 2294
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2297
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    const/16 v4, 0x22

    if-eqz v0, :cond_2

    add-int/lit8 v5, v2, 0x1

    .line 2299
    aput-byte v4, v3, v2

    move v2, v5

    .line 2302
    :cond_2
    invoke-static {p1, p2, v3, v2, v1}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(D[BIZ)I

    move-result p1

    add-int/2addr v2, p1

    if-eqz v0, :cond_3

    add-int/lit8 p1, v2, 0x1

    .line 2306
    aput-byte v4, v3, v2

    move v2, p1

    .line 2308
    :cond_3
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeDouble([D)V
    .locals 8

    if-nez p1, :cond_0

    .line 2352
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeNull()V

    return-void

    .line 2356
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2358
    :goto_0
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    .line 2359
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x1b

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    .line 2360
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 2361
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2363
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x5b

    .line 2364
    aput-byte v6, v4, v3

    .line 2365
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_6

    if-eqz v1, :cond_3

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x2c

    .line 2367
    aput-byte v6, v4, v5

    move v5, v3

    :cond_3
    const/16 v3, 0x22

    if-eqz v0, :cond_4

    add-int/lit8 v6, v5, 0x1

    .line 2371
    aput-byte v3, v4, v5

    move v5, v6

    .line 2374
    :cond_4
    aget-wide v6, p1, v1

    .line 2375
    invoke-static {v6, v7, v4, v5, v2}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(D[BIZ)I

    move-result v6

    add-int/2addr v5, v6

    if-eqz v0, :cond_5

    add-int/lit8 v6, v5, 0x1

    .line 2379
    aput-byte v3, v4, v5

    move v5, v6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/16 p1, 0x5d

    .line 2382
    aput-byte p1, v4, v5

    add-int/2addr v5, v2

    .line 2383
    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeFloat(F)V
    .locals 6

    .line 2265
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2267
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v3, v2, 0x11

    .line 2269
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 2270
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    :cond_1
    const/16 v3, 0x22

    if-eqz v0, :cond_2

    .line 2274
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v5, v2, 0x1

    aput-byte v3, v4, v2

    move v2, v5

    .line 2277
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    invoke-static {p1, v4, v2, v1}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(F[BIZ)I

    move-result p1

    add-int/2addr v2, p1

    if-eqz v0, :cond_3

    .line 2281
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v0, v2, 0x1

    aput-byte v3, p1, v2

    move v2, v0

    .line 2283
    :cond_3
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeFloat([F)V
    .locals 7

    if-nez p1, :cond_0

    .line 2314
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeArrayNull()V

    return-void

    .line 2318
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2320
    :goto_0
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    .line 2321
    array-length v4, p1

    if-eqz v0, :cond_2

    const/16 v5, 0x10

    goto :goto_1

    :cond_2
    const/16 v5, 0x12

    :goto_1
    mul-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    .line 2322
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 2323
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2326
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x5b

    .line 2327
    aput-byte v6, v4, v3

    .line 2328
    :goto_2
    array-length v3, p1

    if-ge v1, v3, :cond_7

    if-eqz v1, :cond_4

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x2c

    .line 2330
    aput-byte v6, v4, v5

    move v5, v3

    :cond_4
    const/16 v3, 0x22

    if-eqz v0, :cond_5

    add-int/lit8 v6, v5, 0x1

    .line 2334
    aput-byte v3, v4, v5

    move v5, v6

    .line 2337
    :cond_5
    aget v6, p1, v1

    .line 2338
    invoke-static {v6, v4, v5, v2}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(F[BIZ)I

    move-result v6

    add-int/2addr v5, v6

    if-eqz v0, :cond_6

    add-int/lit8 v6, v5, 0x1

    .line 2342
    aput-byte v3, v4, v5

    move v5, v6

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    const/16 p1, 0x5d

    .line 2345
    aput-byte p1, v4, v5

    add-int/2addr v5, v2

    .line 2346
    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeHex([B)V
    .locals 10

    if-nez p1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeNull()V

    return-void

    .line 132
    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3

    .line 134
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    .line 135
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 136
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    const/16 v2, 0x78

    .line 137
    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x27

    .line 138
    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    .line 141
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 142
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    const/16 v6, 0x30

    const/16 v7, 0x37

    const/16 v8, 0xa

    if-ge v5, v8, :cond_1

    move v9, v6

    goto :goto_1

    :cond_1
    move v9, v7

    :goto_1
    add-int/2addr v5, v9

    int-to-byte v5, v5

    .line 147
    aput-byte v5, v0, v1

    add-int/lit8 v5, v1, 0x1

    if-ge v4, v8, :cond_2

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    add-int/2addr v4, v6

    int-to-byte v4, v4

    .line 148
    aput-byte v4, v0, v5

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_3
    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 153
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeInt16(S)V
    .locals 5

    .line 2058
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2060
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v2, v1, 0x7

    .line 2062
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 2063
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2066
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    if-eqz v0, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 2068
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    move v1, v3

    .line 2070
    :cond_2
    invoke-static {v2, v1, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([BII)I

    move-result p1

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    .line 2072
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v1, v1

    aput-byte v1, v2, p1

    move p1, v0

    .line 2074
    :cond_3
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeInt32(I)V
    .locals 5

    .line 2088
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2090
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v2, v1, 0xd

    .line 2092
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 2093
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2096
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    if-eqz v0, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 2098
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    move v1, v3

    .line 2100
    :cond_2
    invoke-static {v2, v1, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([BII)I

    move-result p1

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    .line 2102
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v1, v1

    aput-byte v1, v2, p1

    move p1, v0

    .line 2104
    :cond_3
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeInt32(Ljava/lang/Integer;)V
    .locals 0

    if-nez p1, :cond_0

    .line 2080
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeNumberNull()V

    goto :goto_0

    .line 2082
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeInt32(I)V

    :goto_0
    return-void
.end method

.method public final writeInt32([I)V
    .locals 7

    if-nez p1, :cond_0

    .line 2003
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeNull()V

    return-void

    .line 2007
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2009
    :goto_0
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    .line 2010
    array-length v4, p1

    mul-int/lit8 v4, v4, 0xd

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    .line 2011
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 2012
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2015
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x5b

    .line 2016
    aput-byte v6, v4, v3

    .line 2018
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_6

    if-eqz v1, :cond_3

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x2c

    .line 2020
    aput-byte v6, v4, v5

    move v5, v3

    :cond_3
    if-eqz v0, :cond_4

    add-int/lit8 v3, v5, 0x1

    .line 2023
    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    move v5, v3

    .line 2025
    :cond_4
    aget v3, p1, v1

    invoke-static {v4, v5, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([BII)I

    move-result v3

    if-eqz v0, :cond_5

    add-int/lit8 v5, v3, 0x1

    .line 2027
    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    goto :goto_2

    :cond_5
    move v5, v3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/16 p1, 0x5d

    .line 2031
    aput-byte p1, v4, v5

    add-int/2addr v5, v2

    .line 2032
    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeInt64(J)V
    .locals 9

    .line 2230
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 2231
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->isWriteAsString(JJ)Z

    move-result v2

    .line 2232
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v4, v3, 0x17

    .line 2234
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v5, v5

    if-lt v4, v5, :cond_0

    .line 2235
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2238
    :cond_0
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    if-eqz v2, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 2240
    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    move v3, v5

    .line 2242
    :cond_1
    invoke-static {v4, v3, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([BIJ)I

    move-result v3

    if-eqz v2, :cond_2

    add-int/lit8 p1, v3, 0x1

    .line 2244
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte p2, p2

    aput-byte p2, v4, v3

    :goto_0
    move v3, p1

    goto :goto_1

    .line 2245
    :cond_2
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v0

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_3

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteNumberClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v5

    cmp-long v0, v0, v7

    if-nez v0, :cond_3

    const-wide/32 v0, -0x80000000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    const-wide/32 v0, 0x7fffffff

    cmp-long p1, p1, v0

    if-gtz p1, :cond_3

    add-int/lit8 p1, v3, 0x1

    const/16 p2, 0x4c

    .line 2249
    aput-byte p2, v4, v3

    goto :goto_0

    .line 2251
    :cond_3
    :goto_1
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeInt64(Ljava/lang/Long;)V
    .locals 2

    if-nez p1, :cond_0

    .line 2257
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeNumberNull()V

    goto :goto_0

    .line 2259
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeInt64(J)V

    :goto_0
    return-void
.end method

.method public final writeInt64([J)V
    .locals 8

    if-nez p1, :cond_0

    .line 2153
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeNull()V

    return-void

    .line 2157
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0x2

    .line 2158
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x17

    add-int/2addr v1, v2

    .line 2159
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 2160
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2163
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x5b

    .line 2164
    aput-byte v3, v1, v0

    const/4 v0, 0x0

    .line 2166
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_5

    if-eqz v0, :cond_2

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x2c

    .line 2168
    aput-byte v4, v1, v2

    move v2, v3

    .line 2170
    :cond_2
    aget-wide v3, p1, v0

    .line 2171
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->isWriteAsString(JJ)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v6, v2, 0x1

    .line 2173
    iget-char v7, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v7, v7

    aput-byte v7, v1, v2

    move v2, v6

    .line 2175
    :cond_3
    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([BIJ)I

    move-result v2

    if-eqz v5, :cond_4

    add-int/lit8 v3, v2, 0x1

    .line 2177
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    move v2, v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/16 p1, 0x5d

    .line 2181
    aput-byte p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 2182
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeInt8(B)V
    .locals 5

    .line 2037
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2039
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v2, v1, 0x5

    .line 2041
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 2042
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2045
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    if-eqz v0, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 2047
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    move v1, v3

    .line 2049
    :cond_2
    invoke-static {v2, v1, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([BII)I

    move-result p1

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    .line 2051
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v1, v1

    aput-byte v1, v2, p1

    move p1, v0

    .line 2053
    :cond_3
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeListInt32(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2110
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeNull()V

    return-void

    .line 2114
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2115
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 2116
    :goto_0
    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v5, v4, 0x2

    mul-int/lit8 v6, v0, 0x17

    add-int/2addr v5, v6

    .line 2118
    iget-object v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v6, v6

    if-lt v5, v6, :cond_2

    .line 2119
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2122
    :cond_2
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v6, v4, 0x1

    const/16 v7, 0x5b

    .line 2123
    aput-byte v7, v5, v4

    :goto_1
    if-ge v2, v0, :cond_7

    if-eqz v2, :cond_3

    add-int/lit8 v4, v6, 0x1

    const/16 v7, 0x2c

    .line 2127
    aput-byte v7, v5, v6

    move v6, v4

    .line 2129
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    if-nez v4, :cond_4

    .line 2131
    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v7, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v9, v6

    add-long/2addr v7, v9

    sget v9, Lcom/alibaba/fastjson2/util/IOUtils;->NULL_32:I

    invoke-virtual {v4, v5, v7, v8, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v6, v6, 0x4

    goto :goto_2

    .line 2136
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-eqz v1, :cond_5

    add-int/lit8 v7, v6, 0x1

    .line 2138
    iget-char v8, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    move v6, v7

    .line 2140
    :cond_5
    invoke-static {v5, v6, v4}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([BII)I

    move-result v4

    if-eqz v1, :cond_6

    add-int/lit8 v6, v4, 0x1

    .line 2142
    iget-char v7, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v7, v7

    aput-byte v7, v5, v4

    goto :goto_2

    :cond_6
    move v6, v4

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    const/16 p1, 0x5d

    .line 2146
    aput-byte p1, v5, v6

    add-int/2addr v6, v3

    .line 2147
    iput v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeListInt64(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2188
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeNull()V

    return-void

    .line 2192
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2193
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v0, 0x17

    add-int/2addr v2, v3

    .line 2195
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 2196
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2199
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x5b

    .line 2200
    aput-byte v4, v2, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    if-eqz v1, :cond_2

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x2c

    .line 2204
    aput-byte v5, v2, v3

    move v3, v4

    .line 2206
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_3

    .line 2208
    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v7, v3

    add-long/2addr v5, v7

    sget v7, Lcom/alibaba/fastjson2/util/IOUtils;->NULL_32:I

    invoke-virtual {v4, v2, v5, v6, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    .line 2213
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2214
    iget-object v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->isWriteAsString(JJ)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v7, v3, 0x1

    .line 2216
    iget-char v8, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v8, v8

    aput-byte v8, v2, v3

    move v3, v7

    .line 2218
    :cond_4
    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([BIJ)I

    move-result v3

    if-eqz v6, :cond_5

    add-int/lit8 v4, v3, 0x1

    .line 2220
    iget-char v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    move v3, v4

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const/16 p1, 0x5d

    .line 2224
    aput-byte p1, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 2225
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeLocalDate(Ljava/time/LocalDate;)V
    .locals 4

    if-nez p1, :cond_0

    .line 2445
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeNull()V

    return-void

    .line 2449
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 2450
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->dateFormat:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2451
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeLocalDateWithFormat(Ljava/time/LocalDate;Lcom/alibaba/fastjson2/JSONWriter$Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2456
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0x12

    .line 2458
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 2459
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2461
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v2, v0, 0x1

    .line 2462
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 2463
    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v3

    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p1

    invoke-static {v1, v2, v0, v3, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([BIIII)I

    move-result p1

    .line 2464
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v0, v0

    aput-byte v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    .line 2465
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeLocalDateTime(Ljava/time/LocalDateTime;)V
    .locals 5

    .line 2470
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0x26

    .line 2472
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 2473
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2476
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v2, v0, 0x1

    .line 2477
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 2478
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    .line 2479
    invoke-virtual {v0}, Ljava/time/LocalDate;->getYear()I

    move-result v3

    invoke-virtual {v0}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v4

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([BIIII)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x20

    .line 2480
    aput-byte v3, v1, v0

    .line 2481
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([BILjava/time/LocalTime;)I

    move-result p1

    .line 2482
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v0, v0

    aput-byte v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    .line 2483
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeLocalTime(Ljava/time/LocalTime;)V
    .locals 4

    .line 2541
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0x14

    .line 2543
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 2544
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2547
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v2, v0, 0x1

    .line 2548
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 2549
    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([BILjava/time/LocalTime;)I

    move-result p1

    .line 2550
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v0, v0

    aput-byte v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    .line 2551
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public writeName10Raw(JJ)V
    .locals 11

    .line 1782
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0x12

    .line 1783
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/2addr v1, v2

    .line 1784
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1785
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 1788
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 1789
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1790
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x2c

    .line 1792
    aput-byte v4, v1, v0

    .line 1793
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->pretty:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0xa

    .line 1794
    aput-byte v4, v1, v2

    .line 1795
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    if-ge v3, v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x9

    .line 1796
    aput-byte v4, v1, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1801
    :cond_3
    :goto_1
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v9, v0

    add-long v5, v4, v9

    move-object v4, v1

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 1802
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide p1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr p1, v9

    const-wide/16 v4, 0x8

    add-long v5, p1, v4

    move-object v4, v1

    move-wide v7, p3

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v0, 0xd

    .line 1803
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public writeName11Raw(JJ)V
    .locals 11

    .line 1808
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0x12

    .line 1809
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/2addr v1, v2

    .line 1810
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1811
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 1814
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 1815
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1816
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x2c

    .line 1818
    aput-byte v4, v1, v0

    .line 1819
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->pretty:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0xa

    .line 1820
    aput-byte v4, v1, v2

    .line 1821
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    if-ge v3, v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x9

    .line 1822
    aput-byte v4, v1, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1827
    :cond_3
    :goto_1
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v9, v0

    add-long v5, v4, v9

    move-object v4, v1

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 1828
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide p1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr p1, v9

    const-wide/16 v4, 0x8

    add-long v5, p1, v4

    move-object v4, v1

    move-wide v7, p3

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v0, 0xe

    .line 1829
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public writeName12Raw(JJ)V
    .locals 11

    .line 1834
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0x12

    .line 1835
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/2addr v1, v2

    .line 1836
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1837
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 1840
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 1841
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1842
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x2c

    .line 1844
    aput-byte v4, v1, v0

    .line 1845
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->pretty:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0xa

    .line 1846
    aput-byte v4, v1, v2

    .line 1847
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    if-ge v3, v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x9

    .line 1848
    aput-byte v4, v1, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1853
    :cond_3
    :goto_1
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v9, v0

    add-long v5, v4, v9

    move-object v4, v1

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 1854
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide p1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr p1, v9

    const-wide/16 v4, 0x8

    add-long v5, p1, v4

    move-object v4, v1

    move-wide v7, p3

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v0, 0xf

    .line 1855
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public writeName13Raw(JJ)V
    .locals 11

    .line 1860
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0x12

    .line 1861
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/2addr v1, v2

    .line 1862
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1863
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 1866
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 1867
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1868
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x2c

    .line 1870
    aput-byte v4, v1, v0

    .line 1871
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->pretty:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0xa

    .line 1872
    aput-byte v4, v1, v2

    .line 1873
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    if-ge v3, v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x9

    .line 1874
    aput-byte v4, v1, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1879
    :cond_3
    :goto_1
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v9, v0

    add-long v5, v4, v9

    move-object v4, v1

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 1880
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide p1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr p1, v9

    const-wide/16 v4, 0x8

    add-long v5, p1, v4

    move-object v4, v1

    move-wide v7, p3

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v0, 0x10

    .line 1881
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public writeName14Raw(JJ)V
    .locals 11

    .line 1886
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0x13

    .line 1887
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/2addr v1, v2

    .line 1888
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1889
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 1892
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 1893
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1894
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x2c

    .line 1896
    aput-byte v4, v1, v0

    .line 1897
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->pretty:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0xa

    .line 1898
    aput-byte v4, v1, v2

    .line 1899
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    if-ge v3, v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x9

    .line 1900
    aput-byte v4, v1, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1905
    :cond_3
    :goto_1
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v9, v0

    add-long v5, v4, v9

    move-object v4, v1

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 1906
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide p1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr p1, v9

    const-wide/16 v4, 0x8

    add-long v5, p1, v4

    move-object v4, v1

    move-wide v7, p3

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 p1, v0, 0x10

    const/16 p2, 0x3a

    .line 1907
    aput-byte p2, v1, p1

    add-int/lit8 v0, v0, 0x11

    .line 1908
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public writeName15Raw(JJ)V
    .locals 11

    .line 1913
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0x14

    .line 1914
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/2addr v1, v2

    .line 1915
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1916
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 1919
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 1920
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1921
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x2c

    .line 1923
    aput-byte v4, v1, v0

    .line 1924
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->pretty:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0xa

    .line 1925
    aput-byte v4, v1, v2

    .line 1926
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    if-ge v3, v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x9

    .line 1927
    aput-byte v4, v1, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1932
    :cond_3
    :goto_1
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v9, v0

    add-long v5, v4, v9

    move-object v4, v1

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 1933
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide p1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr p1, v9

    const-wide/16 v4, 0x8

    add-long v5, p1, v4

    move-object v4, v1

    move-wide v7, p3

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 p1, v0, 0x10

    .line 1934
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte p2, p2

    aput-byte p2, v1, p1

    add-int/lit8 p1, v0, 0x11

    const/16 p2, 0x3a

    .line 1935
    aput-byte p2, v1, p1

    add-int/lit8 v0, v0, 0x12

    .line 1936
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public writeName2Raw(J)V
    .locals 9

    .line 1575
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0xa

    .line 1576
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/2addr v1, v2

    .line 1577
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1578
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 1581
    :cond_0
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 1582
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1583
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0x2c

    .line 1585
    aput-byte v3, v4, v0

    .line 1586
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->pretty:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    const/16 v3, 0xa

    .line 1587
    aput-byte v3, v4, v1

    .line 1588
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    if-ge v2, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0x9

    .line 1589
    aput-byte v3, v4, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1594
    :cond_3
    :goto_1
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, v0

    add-long/2addr v5, v1

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v0, 0x5

    .line 1595
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public writeName3Raw(J)V
    .locals 9

    .line 1600
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0xa

    .line 1601
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/2addr v1, v2

    .line 1602
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1603
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 1606
    :cond_0
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 1607
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1608
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0x2c

    .line 1610
    aput-byte v3, v4, v0

    .line 1611
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->pretty:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    const/16 v3, 0xa

    .line 1612
    aput-byte v3, v4, v1

    .line 1613
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    if-ge v2, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0x9

    .line 1614
    aput-byte v3, v4, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1619
    :cond_3
    :goto_1
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, v0

    add-long/2addr v5, v1

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v0, 0x6

    .line 1620
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public writeName4Raw(J)V
    .locals 9

    .line 1625
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0xa

    .line 1626
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/2addr v1, v2

    .line 1627
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1628
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 1631
    :cond_0
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 1632
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1633
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0x2c

    .line 1635
    aput-byte v3, v4, v0

    .line 1636
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->pretty:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    const/16 v3, 0xa

    .line 1637
    aput-byte v3, v4, v1

    .line 1638
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    if-ge v2, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0x9

    .line 1639
    aput-byte v3, v4, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1644
    :cond_3
    :goto_1
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, v0

    add-long/2addr v5, v1

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v0, 0x7

    .line 1645
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public writeName5Raw(J)V
    .locals 9

    .line 1650
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0xa

    .line 1651
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/2addr v1, v2

    .line 1652
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1653
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 1656
    :cond_0
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 1657
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1658
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0x2c

    .line 1660
    aput-byte v3, v4, v0

    .line 1661
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->pretty:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    const/16 v3, 0xa

    .line 1662
    aput-byte v3, v4, v1

    .line 1663
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    if-ge v2, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0x9

    .line 1664
    aput-byte v3, v4, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1669
    :cond_3
    :goto_1
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, v0

    add-long/2addr v5, v1

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v0, 0x8

    .line 1670
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public writeName6Raw(J)V
    .locals 10

    .line 1675
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0xb

    .line 1676
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/2addr v1, v2

    .line 1677
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1678
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 1681
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 1682
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    const/16 v9, 0x9

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1683
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x2c

    .line 1685
    aput-byte v4, v1, v0

    .line 1686
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->pretty:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0xa

    .line 1687
    aput-byte v4, v1, v2

    .line 1688
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    if-ge v3, v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    .line 1689
    aput-byte v9, v1, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1694
    :cond_3
    :goto_1
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v0

    add-long v5, v4, v6

    move-object v4, v1

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 p1, v0, 0x8

    const/16 p2, 0x3a

    .line 1695
    aput-byte p2, v1, p1

    add-int/2addr v0, v9

    .line 1696
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public writeName7Raw(J)V
    .locals 10

    .line 1701
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0xc

    .line 1702
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/2addr v1, v2

    .line 1703
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1704
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 1707
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 1708
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    const/16 v9, 0xa

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1709
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x2c

    .line 1711
    aput-byte v4, v1, v0

    .line 1712
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->pretty:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    .line 1713
    aput-byte v9, v1, v2

    .line 1714
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    if-ge v3, v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x9

    .line 1715
    aput-byte v4, v1, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1720
    :cond_3
    :goto_1
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v0

    add-long v5, v4, v6

    move-object v4, v1

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 p1, v0, 0x8

    .line 1721
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte p2, p2

    aput-byte p2, v1, p1

    add-int/lit8 p1, v0, 0x9

    const/16 p2, 0x3a

    .line 1722
    aput-byte p2, v1, p1

    add-int/2addr v0, v9

    .line 1723
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public writeName8Raw(J)V
    .locals 9

    .line 1728
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0xd

    .line 1729
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/2addr v1, v2

    .line 1730
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1731
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 1734
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 1735
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1736
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x2c

    .line 1738
    aput-byte v4, v1, v0

    .line 1739
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->pretty:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0xa

    .line 1740
    aput-byte v4, v1, v2

    .line 1741
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    if-ge v3, v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x9

    .line 1742
    aput-byte v4, v1, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1747
    :cond_3
    :goto_1
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 1748
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    add-long v5, v4, v6

    move-object v4, v1

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 p1, v0, 0x9

    .line 1749
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte p2, p2

    aput-byte p2, v1, p1

    add-int/lit8 p1, v0, 0xa

    const/16 p2, 0x3a

    .line 1750
    aput-byte p2, v1, p1

    add-int/lit8 v0, v0, 0xb

    .line 1751
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public writeName9Raw(JI)V
    .locals 11

    .line 1756
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0xe

    .line 1757
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/2addr v1, v2

    .line 1758
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1759
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 1762
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 1763
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1764
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x2c

    .line 1766
    aput-byte v4, v1, v0

    .line 1767
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->pretty:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0xa

    .line 1768
    aput-byte v4, v1, v2

    .line 1769
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    if-ge v3, v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x9

    .line 1770
    aput-byte v4, v1, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1775
    :cond_3
    :goto_1
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v9, v0

    add-long v5, v4, v9

    move-object v4, v1

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 1776
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v2, v9

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    invoke-virtual {p1, v1, v2, v3, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v0, 0xc

    .line 1777
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeNameRaw([B)V
    .locals 6

    .line 1552
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    .line 1553
    array-length v1, p1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/2addr v1, v2

    .line 1554
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1555
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 1557
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1558
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    goto :goto_1

    .line 1560
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x2c

    .line 1561
    aput-byte v4, v1, v0

    .line 1562
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->pretty:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, v3, 0x1

    const/16 v4, 0xa

    .line 1563
    aput-byte v4, v1, v3

    move v3, v2

    .line 1564
    :goto_0
    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    if-ge v3, v4, :cond_3

    add-int/lit8 v4, v0, 0x1

    const/16 v5, 0x9

    .line 1565
    aput-byte v5, v1, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    .line 1569
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v3, p1

    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1570
    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeNameRaw([BII)V
    .locals 2

    .line 1971
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->indent:I

    add-int/2addr v0, v1

    .line 1972
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1973
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 1976
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1977
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startObject:Z

    goto :goto_0

    .line 1979
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeComma()V

    .line 1981
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1982
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeNameRaw([C)V
    .locals 1

    .line 2818
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeNameRaw([CII)V
    .locals 0

    .line 2823
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "UnsupportedOperation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeNull()V
    .locals 6

    .line 61
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v0, v0, 0x4

    .line 62
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 63
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 66
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sget v4, Lcom/alibaba/fastjson2/util/IOUtils;->NULL_32:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 67
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeOffsetDateTime(Ljava/time/OffsetDateTime;)V
    .locals 6

    if-nez p1, :cond_0

    .line 2605
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeNull()V

    return-void

    .line 2609
    :cond_0
    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    .line 2610
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v1, 0x2d

    .line 2611
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 2612
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2615
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 2616
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v3, v2, 0x1

    .line 2617
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 2618
    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p1

    .line 2619
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v2

    .line 2620
    invoke-virtual {v2}, Ljava/time/LocalDate;->getYear()I

    move-result v4

    invoke-virtual {v2}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v5

    invoke-virtual {v2}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v2

    invoke-static {v1, v3, v4, v5, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([BIIII)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x54

    .line 2621
    aput-byte v4, v1, v2

    .line 2622
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([BILjava/time/LocalTime;)I

    move-result p1

    .line 2623
    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v0, p1, 0x1

    const/16 v2, 0x5a

    .line 2624
    aput-byte v2, v1, p1

    goto :goto_0

    .line 2626
    :cond_2
    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 2627
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1, p1}, Ljava/lang/String;->getBytes(II[BI)V

    .line 2628
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    .line 2630
    :goto_0
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 2631
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeOffsetTime(Ljava/time/OffsetTime;)V
    .locals 5

    if-nez p1, :cond_0

    .line 2636
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeNull()V

    return-void

    .line 2640
    :cond_0
    invoke-virtual {p1}, Ljava/time/OffsetTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    .line 2641
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v1, 0x2d

    .line 2642
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 2643
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2646
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 2647
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v3, v2, 0x1

    .line 2648
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 2649
    invoke-virtual {p1}, Ljava/time/OffsetTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([BILjava/time/LocalTime;)I

    move-result p1

    .line 2650
    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v0, p1, 0x1

    const/16 v2, 0x5a

    .line 2651
    aput-byte v2, v1, p1

    goto :goto_0

    .line 2653
    :cond_2
    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 2654
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1, p1}, Ljava/lang/String;->getBytes(II[BI)V

    .line 2655
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    .line 2657
    :goto_0
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 2658
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeRaw(C)V
    .locals 3

    const/16 v0, 0x80

    if-gt p1, v0, :cond_1

    .line 1945
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 1946
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 1948
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    .line 1942
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final writeRaw(CC)V
    .locals 3

    const-string v0, "not support "

    const/16 v1, 0x80

    if-gt p1, v1, :cond_2

    if-gt p2, v1, :cond_1

    .line 1960
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0x1

    .line 1961
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    add-int/lit8 v2, v0, 0x2

    .line 1962
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 1964
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    int-to-byte p1, p2

    .line 1965
    aput-byte p1, v2, v1

    add-int/lit8 v0, v0, 0x2

    .line 1966
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void

    .line 1957
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1954
    :cond_2
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final writeRaw(Ljava/lang/String;)V
    .locals 6

    .line 1509
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/JDKUtils;->getCharArray(Ljava/lang/String;)[C

    move-result-object p1

    .line 1510
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    .line 1511
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v0

    .line 1514
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1515
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 1518
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    const/4 v2, 0x0

    .line 1519
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 1520
    aget-char v3, p1, v2

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_1

    add-int/lit8 v4, v0, 0x1

    int-to-byte v3, v3

    .line 1522
    aput-byte v3, v1, v0

    move v0, v4

    goto :goto_1

    :cond_1
    const/16 v4, 0x7ff

    if-le v3, v4, :cond_2

    shr-int/lit8 v4, v3, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    .line 1524
    aput-byte v4, v1, v0

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 1525
    aput-byte v5, v1, v4

    add-int/lit8 v4, v0, 0x2

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 1526
    aput-byte v3, v1, v4

    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    :cond_2
    shr-int/lit8 v4, v3, 0x6

    and-int/lit8 v4, v4, 0x1f

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    .line 1529
    aput-byte v4, v1, v0

    add-int/lit8 v4, v0, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 1530
    aput-byte v3, v1, v4

    add-int/lit8 v0, v0, 0x2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1534
    :cond_3
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeRaw([B)V
    .locals 4

    .line 1541
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    array-length v1, p1

    add-int/2addr v0, v1

    .line 1542
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1543
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    :cond_0
    const/4 v0, 0x0

    .line 1546
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1547
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeReference(Ljava/lang/String;)V
    .locals 2

    .line 72
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->lastReference:Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->REF_PREF:[B

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeRaw([B)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeString(Ljava/lang/String;)V

    .line 76
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    .line 77
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v0, v0

    if-ne p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 78
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    const/16 v1, 0x7d

    aput-byte v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    .line 81
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 10

    if-nez p1, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeStringNull()V

    return-void

    .line 340
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/JDKUtils;->getCharArray(Ljava/lang/String;)[C

    move-result-object v1

    .line 342
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, p1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    .line 343
    :goto_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v6, p1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v6, v8

    cmp-long p1, v6, v4

    if-eqz p1, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v0

    .line 345
    :goto_1
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    .line 347
    array-length v5, v1

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v5, p1

    add-int/lit8 v5, v5, 0x2

    if-nez v4, :cond_3

    if-eqz v3, :cond_4

    .line 352
    :cond_3
    array-length v6, v1

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    .line 355
    :cond_4
    iget-object v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v6, v6

    if-lt v5, v6, :cond_5

    .line 356
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 359
    :cond_5
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v6, p1, 0x1

    .line 360
    iget-char v7, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v7, v7

    aput-byte v7, v5, p1

    move p1, v0

    .line 363
    :goto_2
    array-length v0, v1

    if-ge p1, v0, :cond_7

    .line 364
    aget-char v0, v1, p1

    .line 365
    iget-char v7, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    if-eq v0, v7, :cond_7

    const/16 v7, 0x5c

    if-eq v0, v7, :cond_7

    const/16 v7, 0x20

    if-lt v0, v7, :cond_7

    const/16 v7, 0x7f

    if-gt v0, v7, :cond_7

    if-eqz v3, :cond_6

    const/16 v7, 0x3c

    if-eq v0, v7, :cond_7

    const/16 v7, 0x3e

    if-eq v0, v7, :cond_7

    const/16 v7, 0x28

    if-eq v0, v7, :cond_7

    const/16 v7, 0x29

    if-ne v0, v7, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v7, v6, 0x1

    int-to-byte v0, v0

    .line 374
    aput-byte v0, v5, v6

    add-int/lit8 p1, p1, 0x1

    move v6, v7

    goto :goto_2

    .line 377
    :cond_7
    :goto_3
    array-length v0, v1

    if-ne p1, v0, :cond_8

    .line 378
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte p1, p1

    aput-byte p1, v5, v6

    add-int/2addr v6, v2

    .line 379
    iput v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void

    .line 383
    :cond_8
    iput v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    .line 384
    array-length v0, v1

    if-ge p1, v0, :cond_9

    .line 385
    array-length v2, v1

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeStringEscapedRest([CIZZI)V

    .line 388
    :cond_9
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method

.method public final writeString([C)V
    .locals 11

    if-nez p1, :cond_0

    .line 626
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeStringNull()V

    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    move v8, v4

    goto :goto_0

    :cond_1
    move v8, v1

    .line 631
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v5, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v9, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v9

    cmp-long v0, v5, v2

    if-eqz v0, :cond_2

    move v9, v4

    goto :goto_1

    :cond_2
    move v9, v1

    .line 633
    :goto_1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    .line 634
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x2

    if-nez v9, :cond_3

    if-eqz v8, :cond_4

    .line 639
    :cond_3
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    .line 642
    :cond_4
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v3, v3

    if-lt v2, v3, :cond_5

    .line 643
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 646
    :cond_5
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v3, v0, 0x1

    .line 647
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    move v10, v1

    .line 650
    :goto_2
    array-length v0, p1

    if-ge v10, v0, :cond_7

    .line 651
    aget-char v0, p1, v10

    .line 652
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    if-eq v0, v1, :cond_7

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_7

    const/16 v1, 0x20

    if-lt v0, v1, :cond_7

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_7

    if-eqz v8, :cond_6

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_7

    const/16 v1, 0x28

    if-eq v0, v1, :cond_7

    const/16 v1, 0x29

    if-ne v0, v1, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v3, 0x1

    int-to-byte v0, v0

    .line 661
    aput-byte v0, v2, v3

    add-int/lit8 v10, v10, 0x1

    move v3, v1

    goto :goto_2

    .line 664
    :cond_7
    :goto_3
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    .line 665
    array-length v0, p1

    sub-int/2addr v0, v10

    mul-int/lit8 v0, v0, 0x6

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x2

    .line 667
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v0, v0

    if-lt v3, v0, :cond_8

    .line 668
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 671
    :cond_8
    array-length v0, p1

    if-ge v10, v0, :cond_9

    .line 672
    array-length v7, p1

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeStringEscapedRest([CIZZI)V

    .line 675
    :cond_9
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method

.method public final writeString([CII)V
    .locals 11

    if-nez p1, :cond_1

    .line 680
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v0, p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->isEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    .line 681
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeString(Ljava/lang/String;)V

    return-void

    .line 685
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeNull()V

    return-void

    :cond_1
    add-int v2, p2, p3

    .line 691
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    const/4 v1, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    move v6, v5

    goto :goto_0

    :cond_2
    move v6, v1

    .line 692
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v7, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v9, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v7, v9

    cmp-long v0, v7, v3

    if-eqz v0, :cond_3

    move v4, v5

    goto :goto_1

    :cond_3
    move v4, v1

    .line 694
    :goto_1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    mul-int/lit8 p3, p3, 0x3

    add-int v1, v0, p3

    add-int/lit8 v1, v1, 0x2

    if-nez v4, :cond_4

    if-eqz v6, :cond_5

    :cond_4
    add-int/2addr v1, p3

    .line 704
    :cond_5
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length p3, p3

    if-lt v1, p3, :cond_6

    .line 705
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 708
    :cond_6
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v1, v0, 0x1

    .line 709
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v3, v3

    aput-byte v3, p3, v0

    move v5, p2

    :goto_2
    if-ge v5, v2, :cond_8

    .line 713
    aget-char p2, p1, v5

    .line 714
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    if-eq p2, v0, :cond_8

    const/16 v0, 0x5c

    if-eq p2, v0, :cond_8

    const/16 v0, 0x20

    if-lt p2, v0, :cond_8

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_8

    if-eqz v6, :cond_7

    const/16 v0, 0x3c

    if-eq p2, v0, :cond_8

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_8

    const/16 v0, 0x28

    if-eq p2, v0, :cond_8

    const/16 v0, 0x29

    if-ne p2, v0, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v0, v1, 0x1

    int-to-byte p2, p2

    .line 723
    aput-byte p2, p3, v1

    add-int/lit8 v5, v5, 0x1

    move v1, v0

    goto :goto_2

    .line 725
    :cond_8
    :goto_3
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    sub-int p2, v2, v5

    mul-int/lit8 p2, p2, 0x6

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x2

    .line 729
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length p2, p2

    if-lt v1, p2, :cond_9

    .line 730
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    :cond_9
    if-ge v5, v2, :cond_a

    move-object v0, p0

    move-object v1, p1

    move v3, v6

    .line 734
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeStringEscapedRest([CIZZI)V

    .line 737
    :cond_a
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    iget-char p3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    return-void
.end method

.method public final writeString([CIIZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 1071
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1074
    :goto_0
    iget v5, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    array-length v6, v1

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    const/4 v6, 0x2

    add-int/2addr v5, v6

    if-eqz v3, :cond_1

    mul-int/lit8 v7, v2, 0x3

    add-int/2addr v5, v7

    .line 1082
    :cond_1
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v7, v7

    if-lt v5, v7, :cond_2

    .line 1083
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 1086
    :cond_2
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 1087
    iget v7, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    if-eqz p4, :cond_3

    add-int/lit8 v8, v7, 0x1

    .line 1089
    iget-char v9, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    move v7, v8

    :cond_3
    add-int v8, p2, v2

    move v9, v7

    move/from16 v7, p2

    :goto_1
    const/16 v10, 0x7f

    const/16 v11, 0x5c

    if-ge v7, v8, :cond_5

    .line 1096
    aget-char v12, v1, v7

    .line 1097
    iget-char v13, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    if-eq v12, v13, :cond_5

    if-eq v12, v11, :cond_5

    const/16 v13, 0x20

    if-lt v12, v13, :cond_5

    if-le v12, v10, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v10, v9, 0x1

    int-to-byte v11, v12

    .line 1103
    aput-byte v11, v5, v9

    add-int/lit8 v7, v7, 0x1

    move v9, v10

    goto :goto_1

    :cond_5
    :goto_2
    if-ne v7, v8, :cond_7

    if-eqz p4, :cond_6

    add-int/lit8 v1, v9, 0x1

    .line 1108
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v2, v2

    aput-byte v2, v5, v9

    move v9, v1

    .line 1110
    :cond_6
    iput v9, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void

    :cond_7
    :goto_3
    if-ge v7, v2, :cond_12

    .line 1115
    aget-char v8, v1, v7

    const/16 v12, 0x75

    if-gt v8, v10, :cond_a

    if-eq v8, v11, :cond_9

    const/16 v13, 0x31

    const/16 v14, 0x30

    packed-switch v8, :pswitch_data_0

    .line 1208
    iget-char v12, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    if-ne v8, v12, :cond_8

    .line 1209
    aput-byte v11, v5, v9

    add-int/lit8 v8, v9, 0x1

    .line 1210
    iget-char v12, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v12, v12

    aput-byte v12, v5, v8

    goto/16 :goto_4

    :cond_8
    add-int/lit8 v12, v9, 0x1

    int-to-byte v8, v8

    .line 1213
    aput-byte v8, v5, v9

    move v9, v12

    goto/16 :goto_8

    .line 1199
    :pswitch_0
    aput-byte v11, v5, v9

    add-int/lit8 v15, v9, 0x1

    .line 1200
    aput-byte v12, v5, v15

    add-int/lit8 v12, v9, 0x2

    .line 1201
    aput-byte v14, v5, v12

    add-int/lit8 v12, v9, 0x3

    .line 1202
    aput-byte v14, v5, v12

    add-int/lit8 v12, v9, 0x4

    .line 1203
    aput-byte v13, v5, v12

    add-int/lit8 v12, v9, 0x5

    add-int/lit8 v8, v8, -0x1a

    add-int/lit8 v8, v8, 0x61

    int-to-byte v8, v8

    .line 1204
    aput-byte v8, v5, v12

    goto/16 :goto_5

    .line 1185
    :pswitch_1
    aput-byte v11, v5, v9

    add-int/lit8 v15, v9, 0x1

    .line 1186
    aput-byte v12, v5, v15

    add-int/lit8 v12, v9, 0x2

    .line 1187
    aput-byte v14, v5, v12

    add-int/lit8 v12, v9, 0x3

    .line 1188
    aput-byte v14, v5, v12

    add-int/lit8 v12, v9, 0x4

    .line 1189
    aput-byte v13, v5, v12

    add-int/lit8 v12, v9, 0x5

    add-int/lit8 v8, v8, -0x10

    add-int/2addr v8, v14

    int-to-byte v8, v8

    .line 1190
    aput-byte v8, v5, v12

    goto/16 :goto_5

    .line 1129
    :pswitch_2
    aput-byte v11, v5, v9

    add-int/lit8 v8, v9, 0x1

    const/16 v12, 0x72

    .line 1130
    aput-byte v12, v5, v8

    goto :goto_4

    .line 1134
    :pswitch_3
    aput-byte v11, v5, v9

    add-int/lit8 v8, v9, 0x1

    const/16 v12, 0x66

    .line 1135
    aput-byte v12, v5, v8

    goto :goto_4

    .line 1167
    :pswitch_4
    aput-byte v11, v5, v9

    add-int/lit8 v13, v9, 0x1

    .line 1168
    aput-byte v12, v5, v13

    add-int/lit8 v12, v9, 0x2

    .line 1169
    aput-byte v14, v5, v12

    add-int/lit8 v12, v9, 0x3

    .line 1170
    aput-byte v14, v5, v12

    add-int/lit8 v12, v9, 0x4

    .line 1171
    aput-byte v14, v5, v12

    add-int/lit8 v12, v9, 0x5

    add-int/lit8 v8, v8, -0xa

    add-int/lit8 v8, v8, 0x61

    int-to-byte v8, v8

    .line 1172
    aput-byte v8, v5, v12

    goto/16 :goto_5

    .line 1124
    :pswitch_5
    aput-byte v11, v5, v9

    add-int/lit8 v8, v9, 0x1

    const/16 v12, 0x6e

    .line 1125
    aput-byte v12, v5, v8

    goto :goto_4

    .line 1144
    :pswitch_6
    aput-byte v11, v5, v9

    add-int/lit8 v8, v9, 0x1

    const/16 v12, 0x74

    .line 1145
    aput-byte v12, v5, v8

    goto :goto_4

    .line 1139
    :pswitch_7
    aput-byte v11, v5, v9

    add-int/lit8 v8, v9, 0x1

    const/16 v12, 0x62

    .line 1140
    aput-byte v12, v5, v8

    :goto_4
    add-int/lit8 v9, v9, 0x2

    goto/16 :goto_8

    .line 1156
    :pswitch_8
    aput-byte v11, v5, v9

    add-int/lit8 v13, v9, 0x1

    .line 1157
    aput-byte v12, v5, v13

    add-int/lit8 v12, v9, 0x2

    .line 1158
    aput-byte v14, v5, v12

    add-int/lit8 v12, v9, 0x3

    .line 1159
    aput-byte v14, v5, v12

    add-int/lit8 v12, v9, 0x4

    .line 1160
    aput-byte v14, v5, v12

    add-int/lit8 v12, v9, 0x5

    add-int/lit8 v8, v8, 0x30

    int-to-byte v8, v8

    .line 1161
    aput-byte v8, v5, v12

    goto :goto_5

    .line 1119
    :cond_9
    aput-byte v11, v5, v9

    add-int/lit8 v8, v9, 0x1

    .line 1120
    aput-byte v11, v5, v8

    goto :goto_4

    :cond_a
    if-eqz v3, :cond_b

    .line 1218
    aput-byte v11, v5, v9

    add-int/lit8 v13, v9, 0x1

    .line 1219
    aput-byte v12, v5, v13

    add-int/lit8 v12, v9, 0x2

    .line 1220
    sget-object v13, Lcom/alibaba/fastjson2/JSONWriterUTF8;->DIGITS:[C

    ushr-int/lit8 v14, v8, 0xc

    and-int/lit8 v14, v14, 0xf

    aget-char v13, v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    add-int/lit8 v12, v9, 0x3

    .line 1221
    sget-object v13, Lcom/alibaba/fastjson2/JSONWriterUTF8;->DIGITS:[C

    ushr-int/lit8 v14, v8, 0x8

    and-int/lit8 v14, v14, 0xf

    aget-char v13, v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    add-int/lit8 v12, v9, 0x4

    .line 1222
    sget-object v13, Lcom/alibaba/fastjson2/JSONWriterUTF8;->DIGITS:[C

    ushr-int/lit8 v14, v8, 0x4

    and-int/lit8 v14, v14, 0xf

    aget-char v13, v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    add-int/lit8 v12, v9, 0x5

    .line 1223
    sget-object v13, Lcom/alibaba/fastjson2/JSONWriterUTF8;->DIGITS:[C

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v13, v8

    int-to-byte v8, v8

    aput-byte v8, v5, v12

    :goto_5
    add-int/lit8 v9, v9, 0x6

    goto/16 :goto_8

    :cond_b
    const v12, 0xd800

    const/16 v13, 0x3f

    if-lt v8, v12, :cond_10

    const v12, 0xe000

    if-ge v8, v12, :cond_10

    const v14, 0xdc00

    if-ge v8, v14, :cond_f

    .line 1228
    array-length v15, v1

    sub-int/2addr v15, v7

    if-ge v15, v6, :cond_c

    const/4 v8, -0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v15, v7, 0x1

    .line 1231
    aget-char v15, v1, v15

    if-lt v15, v14, :cond_e

    if-ge v15, v12, :cond_e

    shl-int/lit8 v8, v8, 0xa

    add-int/2addr v8, v15

    const v12, -0x35fdc00

    add-int/2addr v8, v12

    :goto_6
    if-gez v8, :cond_d

    add-int/lit8 v8, v9, 0x1

    .line 1250
    aput-byte v13, v5, v9

    goto :goto_7

    :cond_d
    shr-int/lit8 v12, v8, 0x12

    or-int/lit16 v12, v12, 0xf0

    int-to-byte v12, v12

    .line 1252
    aput-byte v12, v5, v9

    add-int/lit8 v12, v9, 0x1

    shr-int/lit8 v14, v8, 0xc

    and-int/2addr v14, v13

    or-int/lit16 v14, v14, 0x80

    int-to-byte v14, v14

    .line 1253
    aput-byte v14, v5, v12

    add-int/lit8 v12, v9, 0x2

    shr-int/lit8 v14, v8, 0x6

    and-int/2addr v13, v14

    or-int/lit16 v13, v13, 0x80

    int-to-byte v13, v13

    .line 1254
    aput-byte v13, v5, v12

    add-int/lit8 v12, v9, 0x3

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 1255
    aput-byte v8, v5, v12

    add-int/lit8 v8, v9, 0x4

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_e
    add-int/lit8 v8, v9, 0x1

    .line 1237
    aput-byte v13, v5, v9

    goto :goto_7

    :cond_f
    add-int/lit8 v8, v9, 0x1

    .line 1244
    aput-byte v13, v5, v9

    :goto_7
    move v9, v8

    goto :goto_8

    :cond_10
    const/16 v12, 0x7ff

    if-le v8, v12, :cond_11

    shr-int/lit8 v12, v8, 0xc

    and-int/lit8 v12, v12, 0xf

    or-int/lit16 v12, v12, 0xe0

    int-to-byte v12, v12

    .line 1260
    aput-byte v12, v5, v9

    add-int/lit8 v12, v9, 0x1

    shr-int/lit8 v14, v8, 0x6

    and-int/2addr v13, v14

    or-int/lit16 v13, v13, 0x80

    int-to-byte v13, v13

    .line 1261
    aput-byte v13, v5, v12

    add-int/lit8 v12, v9, 0x2

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 1262
    aput-byte v8, v5, v12

    add-int/lit8 v9, v9, 0x3

    goto :goto_8

    :cond_11
    shr-int/lit8 v12, v8, 0x6

    and-int/lit8 v12, v12, 0x1f

    or-int/lit16 v12, v12, 0xc0

    int-to-byte v12, v12

    .line 1265
    aput-byte v12, v5, v9

    add-int/lit8 v12, v9, 0x1

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 1266
    aput-byte v8, v5, v12

    goto/16 :goto_4

    :goto_8
    add-int/2addr v7, v4

    goto/16 :goto_3

    :cond_12
    if-eqz p4, :cond_13

    add-int/lit8 v1, v9, 0x1

    .line 1272
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v2, v2

    aput-byte v2, v5, v9

    move v9, v1

    .line 1274
    :cond_13
    iput v9, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final writeString([Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    .line 1279
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeArrayNull()V

    return-void

    .line 1283
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->startArray()V

    const/4 v0, 0x0

    .line 1284
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    if-eqz v0, :cond_1

    .line 1286
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeComma()V

    .line 1289
    :cond_1
    aget-object v1, p1, v0

    if-nez v1, :cond_3

    .line 1291
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->isEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    .line 1292
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 1294
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeNull()V

    goto :goto_1

    .line 1298
    :cond_3
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeString(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1300
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->endArray()V

    return-void
.end method

.method protected final writeStringEscaped([B)V
    .locals 10

    .line 741
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    .line 742
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 743
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 747
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 748
    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v5, v4, 0x1

    .line 749
    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    .line 750
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_7

    .line 751
    aget-byte v4, p1, v1

    const/16 v6, 0x28

    const/16 v7, 0x75

    const/16 v8, 0x30

    const/16 v9, 0x5c

    if-eq v4, v6, :cond_5

    const/16 v6, 0x29

    if-eq v4, v6, :cond_5

    const/16 v6, 0x3c

    if-eq v4, v6, :cond_5

    const/16 v6, 0x3e

    if-eq v4, v6, :cond_5

    if-eq v4, v9, :cond_4

    const/16 v6, 0x31

    packed-switch v4, :pswitch_data_0

    .line 859
    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    if-ne v4, v6, :cond_2

    .line 860
    aput-byte v9, v3, v5

    add-int/lit8 v4, v5, 0x1

    .line 861
    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    goto/16 :goto_2

    :cond_2
    if-gez v4, :cond_3

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v6, v4, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    .line 866
    aput-byte v6, v3, v5

    add-int/lit8 v6, v5, 0x1

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    .line 867
    aput-byte v4, v3, v6

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v6, v5, 0x1

    .line 870
    aput-byte v4, v3, v5

    goto/16 :goto_4

    .line 834
    :pswitch_0
    aput-byte v9, v3, v5

    add-int/lit8 v9, v5, 0x1

    .line 835
    aput-byte v7, v3, v9

    add-int/lit8 v7, v5, 0x2

    .line 836
    aput-byte v8, v3, v7

    add-int/lit8 v7, v5, 0x3

    .line 837
    aput-byte v8, v3, v7

    add-int/lit8 v7, v5, 0x4

    .line 838
    aput-byte v6, v3, v7

    add-int/lit8 v6, v5, 0x5

    add-int/lit8 v4, v4, -0x1a

    add-int/lit8 v4, v4, 0x61

    int-to-byte v4, v4

    .line 839
    aput-byte v4, v3, v6

    goto/16 :goto_3

    .line 820
    :pswitch_1
    aput-byte v9, v3, v5

    add-int/lit8 v9, v5, 0x1

    .line 821
    aput-byte v7, v3, v9

    add-int/lit8 v7, v5, 0x2

    .line 822
    aput-byte v8, v3, v7

    add-int/lit8 v7, v5, 0x3

    .line 823
    aput-byte v8, v3, v7

    add-int/lit8 v7, v5, 0x4

    .line 824
    aput-byte v6, v3, v7

    add-int/lit8 v6, v5, 0x5

    add-int/lit8 v4, v4, -0x10

    add-int/2addr v4, v8

    int-to-byte v4, v4

    .line 825
    aput-byte v4, v3, v6

    goto :goto_3

    .line 764
    :pswitch_2
    aput-byte v9, v3, v5

    add-int/lit8 v4, v5, 0x1

    const/16 v6, 0x72

    .line 765
    aput-byte v6, v3, v4

    goto :goto_2

    .line 769
    :pswitch_3
    aput-byte v9, v3, v5

    add-int/lit8 v4, v5, 0x1

    const/16 v6, 0x66

    .line 770
    aput-byte v6, v3, v4

    goto :goto_2

    .line 802
    :pswitch_4
    aput-byte v9, v3, v5

    add-int/lit8 v6, v5, 0x1

    .line 803
    aput-byte v7, v3, v6

    add-int/lit8 v6, v5, 0x2

    .line 804
    aput-byte v8, v3, v6

    add-int/lit8 v6, v5, 0x3

    .line 805
    aput-byte v8, v3, v6

    add-int/lit8 v6, v5, 0x4

    .line 806
    aput-byte v8, v3, v6

    add-int/lit8 v6, v5, 0x5

    add-int/lit8 v4, v4, -0xa

    add-int/lit8 v4, v4, 0x61

    int-to-byte v4, v4

    .line 807
    aput-byte v4, v3, v6

    goto :goto_3

    .line 759
    :pswitch_5
    aput-byte v9, v3, v5

    add-int/lit8 v4, v5, 0x1

    const/16 v6, 0x6e

    .line 760
    aput-byte v6, v3, v4

    goto :goto_2

    .line 779
    :pswitch_6
    aput-byte v9, v3, v5

    add-int/lit8 v4, v5, 0x1

    const/16 v6, 0x74

    .line 780
    aput-byte v6, v3, v4

    goto :goto_2

    .line 774
    :pswitch_7
    aput-byte v9, v3, v5

    add-int/lit8 v4, v5, 0x1

    const/16 v6, 0x62

    .line 775
    aput-byte v6, v3, v4

    :goto_2
    add-int/lit8 v5, v5, 0x2

    goto :goto_5

    .line 791
    :pswitch_8
    aput-byte v9, v3, v5

    add-int/lit8 v6, v5, 0x1

    .line 792
    aput-byte v7, v3, v6

    add-int/lit8 v6, v5, 0x2

    .line 793
    aput-byte v8, v3, v6

    add-int/lit8 v6, v5, 0x3

    .line 794
    aput-byte v8, v3, v6

    add-int/lit8 v6, v5, 0x4

    .line 795
    aput-byte v8, v3, v6

    add-int/lit8 v6, v5, 0x5

    add-int/lit8 v4, v4, 0x30

    int-to-byte v4, v4

    .line 796
    aput-byte v4, v3, v6

    :goto_3
    add-int/lit8 v5, v5, 0x6

    goto :goto_5

    .line 754
    :cond_4
    aput-byte v9, v3, v5

    add-int/lit8 v4, v5, 0x1

    .line 755
    aput-byte v9, v3, v4

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    .line 847
    aput-byte v9, v3, v5

    add-int/lit8 v6, v5, 0x1

    .line 848
    aput-byte v7, v3, v6

    add-int/lit8 v6, v5, 0x2

    .line 849
    aput-byte v8, v3, v6

    add-int/lit8 v6, v5, 0x3

    .line 850
    aput-byte v8, v3, v6

    add-int/lit8 v6, v5, 0x4

    .line 851
    sget-object v7, Lcom/alibaba/fastjson2/JSONWriterUTF8;->DIGITS:[C

    ushr-int/lit8 v8, v4, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    add-int/lit8 v6, v5, 0x5

    .line 852
    sget-object v7, Lcom/alibaba/fastjson2/JSONWriterUTF8;->DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v7, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    goto :goto_3

    :cond_6
    add-int/lit8 v6, v5, 0x1

    .line 855
    aput-byte v4, v3, v5

    :goto_4
    move v5, v6

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 875
    :cond_7
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte p1, p1

    aput-byte p1, v3, v5

    add-int/2addr v5, v2

    .line 876
    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final writeStringEscapedRest([CIZZI)V
    .locals 8

    .line 886
    array-length v0, p1

    sub-int/2addr v0, p5

    .line 887
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    mul-int/lit8 v0, v0, 0x6

    add-int/2addr v1, v0

    const/4 v0, 0x2

    add-int/2addr v1, v0

    .line 888
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 889
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 892
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 893
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    :goto_0
    if-ge p5, p2, :cond_d

    .line 895
    aget-char v3, p1, p5

    const/16 v4, 0x7f

    const/16 v5, 0x75

    const/16 v6, 0x5c

    if-gt v3, v4, :cond_5

    const/16 v4, 0x28

    const/16 v7, 0x30

    if-eq v3, v4, :cond_3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_3

    if-eq v3, v6, :cond_2

    const/16 v4, 0x31

    packed-switch v3, :pswitch_data_0

    .line 1004
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    if-ne v3, v4, :cond_1

    .line 1005
    aput-byte v6, v1, v2

    add-int/lit8 v3, v2, 0x1

    .line 1006
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    goto/16 :goto_2

    :cond_1
    add-int/lit8 v4, v2, 0x1

    int-to-byte v3, v3

    .line 1009
    aput-byte v3, v1, v2

    :goto_1
    move v2, v4

    goto/16 :goto_6

    .line 979
    :pswitch_0
    aput-byte v6, v1, v2

    add-int/lit8 v6, v2, 0x1

    .line 980
    aput-byte v5, v1, v6

    add-int/lit8 v5, v2, 0x2

    .line 981
    aput-byte v7, v1, v5

    add-int/lit8 v5, v2, 0x3

    .line 982
    aput-byte v7, v1, v5

    add-int/lit8 v5, v2, 0x4

    .line 983
    aput-byte v4, v1, v5

    add-int/lit8 v4, v2, 0x5

    add-int/lit8 v3, v3, -0x1a

    add-int/lit8 v3, v3, 0x61

    int-to-byte v3, v3

    .line 984
    aput-byte v3, v1, v4

    goto/16 :goto_3

    .line 965
    :pswitch_1
    aput-byte v6, v1, v2

    add-int/lit8 v6, v2, 0x1

    .line 966
    aput-byte v5, v1, v6

    add-int/lit8 v5, v2, 0x2

    .line 967
    aput-byte v7, v1, v5

    add-int/lit8 v5, v2, 0x3

    .line 968
    aput-byte v7, v1, v5

    add-int/lit8 v5, v2, 0x4

    .line 969
    aput-byte v4, v1, v5

    add-int/lit8 v4, v2, 0x5

    add-int/lit8 v3, v3, -0x10

    add-int/2addr v3, v7

    int-to-byte v3, v3

    .line 970
    aput-byte v3, v1, v4

    goto/16 :goto_3

    .line 909
    :pswitch_2
    aput-byte v6, v1, v2

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x72

    .line 910
    aput-byte v4, v1, v3

    goto :goto_2

    .line 914
    :pswitch_3
    aput-byte v6, v1, v2

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x66

    .line 915
    aput-byte v4, v1, v3

    goto :goto_2

    .line 947
    :pswitch_4
    aput-byte v6, v1, v2

    add-int/lit8 v4, v2, 0x1

    .line 948
    aput-byte v5, v1, v4

    add-int/lit8 v4, v2, 0x2

    .line 949
    aput-byte v7, v1, v4

    add-int/lit8 v4, v2, 0x3

    .line 950
    aput-byte v7, v1, v4

    add-int/lit8 v4, v2, 0x4

    .line 951
    aput-byte v7, v1, v4

    add-int/lit8 v4, v2, 0x5

    add-int/lit8 v3, v3, -0xa

    add-int/lit8 v3, v3, 0x61

    int-to-byte v3, v3

    .line 952
    aput-byte v3, v1, v4

    goto/16 :goto_3

    .line 904
    :pswitch_5
    aput-byte v6, v1, v2

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x6e

    .line 905
    aput-byte v4, v1, v3

    goto :goto_2

    .line 924
    :pswitch_6
    aput-byte v6, v1, v2

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x74

    .line 925
    aput-byte v4, v1, v3

    goto :goto_2

    .line 919
    :pswitch_7
    aput-byte v6, v1, v2

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x62

    .line 920
    aput-byte v4, v1, v3

    :goto_2
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_6

    .line 936
    :pswitch_8
    aput-byte v6, v1, v2

    add-int/lit8 v4, v2, 0x1

    .line 937
    aput-byte v5, v1, v4

    add-int/lit8 v4, v2, 0x2

    .line 938
    aput-byte v7, v1, v4

    add-int/lit8 v4, v2, 0x3

    .line 939
    aput-byte v7, v1, v4

    add-int/lit8 v4, v2, 0x4

    .line 940
    aput-byte v7, v1, v4

    add-int/lit8 v4, v2, 0x5

    add-int/lit8 v3, v3, 0x30

    int-to-byte v3, v3

    .line 941
    aput-byte v3, v1, v4

    goto :goto_3

    .line 899
    :cond_2
    aput-byte v6, v1, v2

    add-int/lit8 v3, v2, 0x1

    .line 900
    aput-byte v6, v1, v3

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    .line 992
    aput-byte v6, v1, v2

    add-int/lit8 v4, v2, 0x1

    .line 993
    aput-byte v5, v1, v4

    add-int/lit8 v4, v2, 0x2

    .line 994
    aput-byte v7, v1, v4

    add-int/lit8 v4, v2, 0x3

    .line 995
    aput-byte v7, v1, v4

    add-int/lit8 v4, v2, 0x4

    .line 996
    sget-object v5, Lcom/alibaba/fastjson2/JSONWriterUTF8;->DIGITS:[C

    ushr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, v2, 0x5

    .line 997
    sget-object v5, Lcom/alibaba/fastjson2/JSONWriterUTF8;->DIGITS:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v2, 0x1

    int-to-byte v3, v3

    .line 1000
    aput-byte v3, v1, v2

    goto/16 :goto_1

    :cond_5
    if-eqz p4, :cond_6

    .line 1014
    aput-byte v6, v1, v2

    add-int/lit8 v4, v2, 0x1

    .line 1015
    aput-byte v5, v1, v4

    add-int/lit8 v4, v2, 0x2

    .line 1016
    sget-object v5, Lcom/alibaba/fastjson2/JSONWriterUTF8;->DIGITS:[C

    ushr-int/lit8 v6, v3, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, v2, 0x3

    .line 1017
    sget-object v5, Lcom/alibaba/fastjson2/JSONWriterUTF8;->DIGITS:[C

    ushr-int/lit8 v6, v3, 0x8

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, v2, 0x4

    .line 1018
    sget-object v5, Lcom/alibaba/fastjson2/JSONWriterUTF8;->DIGITS:[C

    ushr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, v2, 0x5

    .line 1019
    sget-object v5, Lcom/alibaba/fastjson2/JSONWriterUTF8;->DIGITS:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    :goto_3
    add-int/lit8 v2, v2, 0x6

    goto/16 :goto_6

    :cond_6
    const v4, 0xd800

    const/16 v5, 0x3f

    if-lt v3, v4, :cond_b

    const v4, 0xe000

    if-ge v3, v4, :cond_b

    const v6, 0xdc00

    if-ge v3, v6, :cond_a

    .line 1024
    array-length v7, p1

    sub-int/2addr v7, p5

    if-ge v7, v0, :cond_7

    const/4 v3, -0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v7, p5, 0x1

    .line 1027
    aget-char v7, p1, v7

    if-lt v7, v6, :cond_9

    if-ge v7, v4, :cond_9

    shl-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v7

    const v4, -0x35fdc00

    add-int/2addr v3, v4

    :goto_4
    if-gez v3, :cond_8

    add-int/lit8 v3, v2, 0x1

    .line 1046
    aput-byte v5, v1, v2

    goto :goto_5

    :cond_8
    shr-int/lit8 v4, v3, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    .line 1048
    aput-byte v4, v1, v2

    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v6, v3, 0xc

    and-int/2addr v6, v5

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    .line 1049
    aput-byte v6, v1, v4

    add-int/lit8 v4, v2, 0x2

    shr-int/lit8 v6, v3, 0x6

    and-int/2addr v5, v6

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 1050
    aput-byte v5, v1, v4

    add-int/lit8 v4, v2, 0x3

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 1051
    aput-byte v3, v1, v4

    add-int/lit8 v3, v2, 0x4

    add-int/lit8 p5, p5, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v3, v2, 0x1

    .line 1033
    aput-byte v5, v1, v2

    goto :goto_5

    :cond_a
    add-int/lit8 v3, v2, 0x1

    .line 1040
    aput-byte v5, v1, v2

    :goto_5
    move v2, v3

    goto :goto_6

    :cond_b
    const/16 v4, 0x7ff

    if-le v3, v4, :cond_c

    shr-int/lit8 v4, v3, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    .line 1056
    aput-byte v4, v1, v2

    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v6, v3, 0x6

    and-int/2addr v5, v6

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 1057
    aput-byte v5, v1, v4

    add-int/lit8 v4, v2, 0x2

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 1058
    aput-byte v3, v1, v4

    add-int/lit8 v2, v2, 0x3

    goto :goto_6

    :cond_c
    shr-int/lit8 v4, v3, 0x6

    and-int/lit8 v4, v4, 0x1f

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    .line 1061
    aput-byte v4, v1, v2

    add-int/lit8 v4, v2, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 1062
    aput-byte v3, v1, v4

    goto/16 :goto_2

    :goto_6
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_0

    .line 1066
    :cond_d
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeStringLatin1([B)V
    .locals 7

    if-nez p1, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeStringNull()V

    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 400
    :goto_0
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v3, v3

    move v4, v1

    .line 401
    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_4

    .line 402
    aget-byte v5, p1, v4

    if-eq v5, v3, :cond_3

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_3

    const/16 v6, 0x20

    if-lt v5, v6, :cond_3

    if-eqz v0, :cond_2

    const/16 v6, 0x3c

    if-eq v5, v6, :cond_3

    const/16 v6, 0x3e

    if-eq v5, v6, :cond_3

    const/16 v6, 0x28

    if-eq v5, v6, :cond_3

    const/16 v6, 0x29

    if-ne v5, v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v1

    .line 414
    :goto_3
    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    if-nez v0, :cond_6

    .line 416
    array-length v0, p1

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x2

    .line 417
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v5, v5

    if-lt v0, v5, :cond_5

    .line 418
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 420
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 421
    aput-byte v3, v0, v4

    add-int/lit8 v5, v4, 0x1

    .line 422
    array-length v6, p1

    invoke-static {p1, v1, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    array-length p1, p1

    add-int/2addr p1, v2

    add-int/2addr v4, p1

    .line 424
    aput-byte v3, v0, v4

    add-int/2addr v4, v2

    .line 425
    iput v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void

    .line 428
    :cond_6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeStringEscaped([B)V

    return-void
.end method

.method public final writeStringUTF16([B)V
    .locals 12

    if-nez p1, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeStringNull()V

    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 439
    :goto_0
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    .line 440
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v3

    const/4 v5, 0x2

    add-int/2addr v4, v5

    if-eqz v0, :cond_2

    .line 442
    array-length v6, p1

    mul-int/2addr v6, v5

    add-int/2addr v4, v6

    .line 445
    :cond_2
    iget-object v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v6, v6

    if-lt v4, v6, :cond_3

    .line 446
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 449
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v6, v3, 0x1

    .line 450
    iget-char v7, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v7, v7

    aput-byte v7, v4, v3

    .line 453
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_e

    .line 454
    aget-byte v3, p1, v1

    add-int/lit8 v7, v1, 0x1

    .line 455
    aget-byte v7, p1, v7

    add-int/lit8 v1, v1, 0x2

    const/16 v8, 0x75

    const/16 v9, 0x5c

    if-nez v7, :cond_6

    if-ltz v3, :cond_6

    if-eq v3, v9, :cond_5

    const/16 v7, 0x31

    const/16 v10, 0x30

    packed-switch v3, :pswitch_data_0

    .line 551
    iget-char v7, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    if-ne v3, v7, :cond_4

    .line 552
    aput-byte v9, v4, v6

    add-int/lit8 v3, v6, 0x1

    .line 553
    iget-char v7, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v7, v7

    aput-byte v7, v4, v3

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v7, v6, 0x1

    .line 556
    aput-byte v3, v4, v6

    move v6, v7

    goto :goto_1

    .line 542
    :pswitch_0
    aput-byte v9, v4, v6

    add-int/lit8 v9, v6, 0x1

    .line 543
    aput-byte v8, v4, v9

    add-int/lit8 v8, v6, 0x2

    .line 544
    aput-byte v10, v4, v8

    add-int/lit8 v8, v6, 0x3

    .line 545
    aput-byte v10, v4, v8

    add-int/lit8 v8, v6, 0x4

    .line 546
    aput-byte v7, v4, v8

    add-int/lit8 v7, v6, 0x5

    add-int/lit8 v3, v3, -0x1a

    add-int/lit8 v3, v3, 0x61

    int-to-byte v3, v3

    .line 547
    aput-byte v3, v4, v7

    goto/16 :goto_3

    .line 528
    :pswitch_1
    aput-byte v9, v4, v6

    add-int/lit8 v9, v6, 0x1

    .line 529
    aput-byte v8, v4, v9

    add-int/lit8 v8, v6, 0x2

    .line 530
    aput-byte v10, v4, v8

    add-int/lit8 v8, v6, 0x3

    .line 531
    aput-byte v10, v4, v8

    add-int/lit8 v8, v6, 0x4

    .line 532
    aput-byte v7, v4, v8

    add-int/lit8 v7, v6, 0x5

    add-int/lit8 v3, v3, -0x10

    add-int/2addr v3, v10

    int-to-byte v3, v3

    .line 533
    aput-byte v3, v4, v7

    goto/16 :goto_3

    .line 472
    :pswitch_2
    aput-byte v9, v4, v6

    add-int/lit8 v3, v6, 0x1

    const/16 v7, 0x72

    .line 473
    aput-byte v7, v4, v3

    goto/16 :goto_2

    .line 477
    :pswitch_3
    aput-byte v9, v4, v6

    add-int/lit8 v3, v6, 0x1

    const/16 v7, 0x66

    .line 478
    aput-byte v7, v4, v3

    goto/16 :goto_2

    .line 510
    :pswitch_4
    aput-byte v9, v4, v6

    add-int/lit8 v7, v6, 0x1

    .line 511
    aput-byte v8, v4, v7

    add-int/lit8 v7, v6, 0x2

    .line 512
    aput-byte v10, v4, v7

    add-int/lit8 v7, v6, 0x3

    .line 513
    aput-byte v10, v4, v7

    add-int/lit8 v7, v6, 0x4

    .line 514
    aput-byte v10, v4, v7

    add-int/lit8 v7, v6, 0x5

    add-int/lit8 v3, v3, -0xa

    add-int/lit8 v3, v3, 0x61

    int-to-byte v3, v3

    .line 515
    aput-byte v3, v4, v7

    goto/16 :goto_3

    .line 467
    :pswitch_5
    aput-byte v9, v4, v6

    add-int/lit8 v3, v6, 0x1

    const/16 v7, 0x6e

    .line 468
    aput-byte v7, v4, v3

    goto :goto_2

    .line 487
    :pswitch_6
    aput-byte v9, v4, v6

    add-int/lit8 v3, v6, 0x1

    const/16 v7, 0x74

    .line 488
    aput-byte v7, v4, v3

    goto :goto_2

    .line 482
    :pswitch_7
    aput-byte v9, v4, v6

    add-int/lit8 v3, v6, 0x1

    const/16 v7, 0x62

    .line 483
    aput-byte v7, v4, v3

    goto :goto_2

    .line 499
    :pswitch_8
    aput-byte v9, v4, v6

    add-int/lit8 v7, v6, 0x1

    .line 500
    aput-byte v8, v4, v7

    add-int/lit8 v7, v6, 0x2

    .line 501
    aput-byte v10, v4, v7

    add-int/lit8 v7, v6, 0x3

    .line 502
    aput-byte v10, v4, v7

    add-int/lit8 v7, v6, 0x4

    .line 503
    aput-byte v10, v4, v7

    add-int/lit8 v7, v6, 0x5

    add-int/lit8 v3, v3, 0x30

    int-to-byte v3, v3

    .line 504
    aput-byte v3, v4, v7

    goto :goto_3

    .line 462
    :cond_5
    aput-byte v9, v4, v6

    add-int/lit8 v3, v6, 0x1

    .line 463
    aput-byte v9, v4, v3

    goto :goto_2

    :cond_6
    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v3, v7

    int-to-char v3, v3

    const/16 v7, 0x800

    if-ge v3, v7, :cond_7

    shr-int/lit8 v7, v3, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    .line 564
    aput-byte v7, v4, v6

    add-int/lit8 v7, v6, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 565
    aput-byte v3, v4, v7

    :goto_2
    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_1

    :cond_7
    if-eqz v0, :cond_8

    .line 568
    aput-byte v9, v4, v6

    add-int/lit8 v7, v6, 0x1

    .line 569
    aput-byte v8, v4, v7

    add-int/lit8 v7, v6, 0x2

    .line 570
    sget-object v8, Lcom/alibaba/fastjson2/JSONWriterUTF8;->DIGITS:[C

    ushr-int/lit8 v9, v3, 0xc

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    add-int/lit8 v7, v6, 0x3

    .line 571
    sget-object v8, Lcom/alibaba/fastjson2/JSONWriterUTF8;->DIGITS:[C

    ushr-int/lit8 v9, v3, 0x8

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    add-int/lit8 v7, v6, 0x4

    .line 572
    sget-object v8, Lcom/alibaba/fastjson2/JSONWriterUTF8;->DIGITS:[C

    ushr-int/lit8 v9, v3, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    add-int/lit8 v7, v6, 0x5

    .line 573
    sget-object v8, Lcom/alibaba/fastjson2/JSONWriterUTF8;->DIGITS:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v8, v3

    int-to-byte v3, v3

    aput-byte v3, v4, v7

    :goto_3
    add-int/lit8 v6, v6, 0x6

    goto/16 :goto_1

    :cond_8
    const v7, 0xd800

    const/16 v8, 0x3f

    if-lt v3, v7, :cond_d

    const v7, 0xe000

    if-ge v3, v7, :cond_d

    add-int/lit8 v9, v1, -0x1

    const v10, 0xdc00

    if-ge v3, v10, :cond_c

    .line 579
    array-length v11, p1

    sub-int/2addr v11, v9

    if-ge v11, v5, :cond_9

    const/4 v3, -0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v11, v9, 0x1

    .line 582
    aget-byte v11, p1, v11

    add-int/lit8 v9, v9, 0x2

    .line 583
    aget-byte v9, p1, v9

    and-int/lit16 v11, v11, 0xff

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v9, v11

    int-to-char v9, v9

    if-lt v9, v10, :cond_b

    if-ge v9, v7, :cond_b

    add-int/lit8 v1, v1, 0x2

    shl-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v9

    const v7, -0x35fdc00

    add-int/2addr v3, v7

    :goto_4
    if-gez v3, :cond_a

    add-int/lit8 v3, v6, 0x1

    .line 602
    aput-byte v8, v4, v6

    goto :goto_5

    :cond_a
    shr-int/lit8 v7, v3, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    .line 604
    aput-byte v7, v4, v6

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v9, v3, 0xc

    and-int/2addr v9, v8

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 605
    aput-byte v9, v4, v7

    add-int/lit8 v7, v6, 0x2

    shr-int/lit8 v9, v3, 0x6

    and-int/2addr v8, v9

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 606
    aput-byte v8, v4, v7

    add-int/lit8 v7, v6, 0x3

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 607
    aput-byte v3, v4, v7

    add-int/lit8 v3, v6, 0x4

    goto :goto_5

    :cond_b
    add-int/lit8 v3, v6, 0x1

    .line 590
    aput-byte v8, v4, v6

    goto :goto_5

    :cond_c
    add-int/lit8 v3, v6, 0x1

    .line 597
    aput-byte v8, v4, v6

    :goto_5
    move v6, v3

    goto/16 :goto_1

    :cond_d
    shr-int/lit8 v7, v3, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    .line 612
    aput-byte v7, v4, v6

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v9, v3, 0x6

    and-int/2addr v8, v9

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 613
    aput-byte v8, v4, v7

    add-int/lit8 v7, v6, 0x2

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 614
    aput-byte v3, v4, v7

    add-int/lit8 v6, v6, 0x3

    goto/16 :goto_1

    .line 620
    :cond_e
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte p1, p1

    aput-byte p1, v4, v6

    add-int/2addr v6, v2

    .line 621
    iput v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final writeTimeHHMMSS8(III)V
    .locals 4

    .line 2526
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0xa

    .line 2528
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 2529
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2532
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 2533
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v3, v0, 0x1

    .line 2534
    invoke-static {v2, v3, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([BIIII)V

    add-int/lit8 v0, v0, 0x9

    .line 2535
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    .line 2536
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeUUID(Ljava/util/UUID;)V
    .locals 21

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    .line 1458
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeNull()V

    return-void

    .line 1462
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    .line 1463
    invoke-virtual/range {p1 .. p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    .line 1465
    iget v5, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v5, v5, 0x26

    .line 1466
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v6, v6

    if-lt v5, v6, :cond_1

    .line 1467
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 1470
    :cond_1
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    .line 1471
    iget v6, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    const/16 v13, 0x22

    .line 1472
    aput-byte v13, v5, v6

    .line 1474
    sget-object v7, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v8, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v14, v6

    add-long/2addr v8, v14

    const-wide/16 v10, 0x1

    add-long v9, v8, v10

    const/16 v16, 0x38

    shr-long v11, v1, v16

    long-to-int v8, v11

    const/16 v17, 0x30

    shr-long v11, v1, v17

    long-to-int v11, v11

    const/16 v18, 0x28

    move-wide/from16 v19, v14

    shr-long v13, v1, v18

    long-to-int v12, v13

    const/16 v13, 0x20

    shr-long v14, v1, v13

    long-to-int v14, v14

    .line 1477
    invoke-static {v8, v11, v12, v14}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->packDigits(IIII)J

    move-result-wide v11

    move-object v8, v5

    .line 1474
    invoke-virtual/range {v7 .. v12}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v7, v6, 0x9

    const/16 v14, 0x2d

    .line 1479
    aput-byte v14, v5, v7

    .line 1480
    sget-object v7, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v8, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long v8, v8, v19

    const-wide/16 v10, 0xa

    add-long v9, v8, v10

    long-to-int v1, v1

    shr-int/lit8 v2, v1, 0x18

    shr-int/lit8 v8, v1, 0x10

    .line 1483
    invoke-static {v2, v8}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->packDigits(II)I

    move-result v2

    int-to-long v11, v2

    move-object v8, v5

    .line 1480
    invoke-virtual/range {v7 .. v12}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v2, v6, 0xe

    .line 1484
    aput-byte v14, v5, v2

    .line 1485
    sget-object v7, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v8, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long v8, v8, v19

    const-wide/16 v10, 0xf

    add-long v9, v8, v10

    shr-int/lit8 v2, v1, 0x8

    .line 1488
    invoke-static {v2, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->packDigits(II)I

    move-result v1

    int-to-long v11, v1

    move-object v8, v5

    .line 1485
    invoke-virtual/range {v7 .. v12}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v1, v6, 0x13

    .line 1489
    aput-byte v14, v5, v1

    .line 1490
    sget-object v7, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long v1, v1, v19

    const-wide/16 v8, 0x14

    add-long v9, v1, v8

    shr-long v1, v3, v16

    long-to-int v1, v1

    shr-long v11, v3, v17

    long-to-int v2, v11

    .line 1493
    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->packDigits(II)I

    move-result v1

    int-to-long v11, v1

    move-object v8, v5

    .line 1490
    invoke-virtual/range {v7 .. v12}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v1, v6, 0x18

    .line 1494
    aput-byte v14, v5, v1

    .line 1495
    sget-object v7, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long v1, v1, v19

    const-wide/16 v8, 0x19

    add-long v9, v1, v8

    shr-long v1, v3, v18

    long-to-int v1, v1

    shr-long v11, v3, v13

    long-to-int v2, v11

    long-to-int v3, v3

    shr-int/lit8 v4, v3, 0x18

    shr-int/lit8 v8, v3, 0x10

    .line 1498
    invoke-static {v1, v2, v4, v8}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->packDigits(IIII)J

    move-result-wide v11

    move-object v8, v5

    .line 1495
    invoke-virtual/range {v7 .. v12}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 1499
    sget-object v7, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long v1, v1, v19

    const-wide/16 v8, 0x21

    add-long v9, v1, v8

    shr-int/lit8 v1, v3, 0x8

    .line 1502
    invoke-static {v1, v3}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->packDigits(II)I

    move-result v1

    int-to-long v11, v1

    move-object v8, v5

    .line 1499
    invoke-virtual/range {v7 .. v12}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v6, v6, 0x25

    const/16 v1, 0x22

    .line 1503
    aput-byte v1, v5, v6

    .line 1504
    iget v1, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int/lit8 v1, v1, 0x26

    iput v1, v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method

.method public final writeZonedDateTime(Ljava/time/ZonedDateTime;)V
    .locals 13

    if-nez p1, :cond_0

    .line 2557
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->writeNull()V

    return-void

    .line 2561
    :cond_0
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    .line 2562
    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    .line 2563
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2566
    sget-object v3, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/16 v4, 0x2d

    const/16 v5, 0x2b

    const-string v6, "Z"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v3, v0, :cond_5

    const/4 v0, 0x3

    if-gt v2, v0, :cond_1

    const-string v0, "UTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    .line 2569
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_2

    if-ne v0, v4, :cond_4

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v0, v7

    :cond_4
    add-int/lit8 v3, v2, 0x2

    goto :goto_1

    :cond_5
    :goto_0
    move-object v1, v6

    move v0, v7

    move v3, v8

    .line 2575
    :goto_1
    iget v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    add-int v9, v6, v3

    add-int/lit8 v9, v9, 0x26

    .line 2577
    iget-object v10, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    array-length v10, v10

    if-lt v9, v10, :cond_6

    .line 2578
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->ensureCapacity(I)V

    .line 2581
    :cond_6
    iget-object v9, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->bytes:[B

    add-int/lit8 v10, v6, 0x1

    .line 2582
    iget-char v11, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte v11, v11

    aput-byte v11, v9, v6

    .line 2583
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v6

    .line 2584
    invoke-virtual {v6}, Ljava/time/LocalDate;->getYear()I

    move-result v11

    invoke-virtual {v6}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v12

    invoke-virtual {v6}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v6

    invoke-static {v9, v10, v11, v12, v6}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([BIIII)I

    move-result v6

    add-int/lit8 v10, v6, 0x1

    const/16 v11, 0x54

    .line 2585
    aput-byte v11, v9, v6

    .line 2586
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {v9, v10, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([BILjava/time/LocalTime;)I

    move-result p1

    if-ne v3, v8, :cond_7

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x5a

    .line 2588
    aput-byte v1, v9, p1

    goto :goto_3

    :cond_7
    if-eq v0, v5, :cond_9

    if-ne v0, v4, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 v0, p1, 0x1

    const/16 v3, 0x5b

    .line 2593
    aput-byte v3, v9, p1

    .line 2594
    invoke-virtual {v1, v7, v2, v9, v0}, Ljava/lang/String;->getBytes(II[BI)V

    add-int/2addr v0, v2

    add-int/lit8 p1, v0, 0x1

    const/16 v1, 0x5d

    .line 2596
    aput-byte v1, v9, v0

    move v0, p1

    goto :goto_3

    .line 2590
    :cond_9
    :goto_2
    invoke-virtual {v1, v7, v2, v9, p1}, Ljava/lang/String;->getBytes(II[BI)V

    add-int v0, p1, v2

    .line 2598
    :goto_3
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->quote:C

    int-to-byte p1, p1

    aput-byte p1, v9, v0

    add-int/2addr v0, v8

    .line 2599
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF8;->off:I

    return-void
.end method
