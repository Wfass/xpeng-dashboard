.class Lcom/alibaba/fastjson2/JSONWriterUTF16;
.super Lcom/alibaba/fastjson2/JSONWriter;
.source "JSONWriterUTF16.java"


# static fields
.field static final HEX256:[I

.field static final REF_PREF:[C


# instance fields
.field final cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

.field protected chars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string/jumbo v0, "{\"$ref\":"

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->REF_PREF:[C

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_3

    const/16 v5, 0xa

    if-ge v3, v5, :cond_0

    add-int/lit8 v6, v3, 0x30

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v3, -0xa

    add-int/lit8 v6, v6, 0x61

    :goto_1
    int-to-short v6, v6

    move v7, v2

    :goto_2
    if-ge v7, v4, :cond_2

    if-ge v7, v5, :cond_1

    add-int/lit8 v8, v7, 0x30

    goto :goto_3

    :cond_1
    add-int/lit8 v8, v7, -0xa

    add-int/lit8 v8, v8, 0x61

    :goto_3
    int-to-short v8, v8

    shl-int/lit8 v9, v3, 0x4

    add-int/2addr v9, v7

    shl-int/2addr v8, v4

    or-int/2addr v8, v6

    .line 39
    aput v8, v1, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    :cond_3
    sget-boolean v3, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v3, :cond_4

    :goto_4
    if-ge v2, v0, :cond_4

    .line 45
    aget v3, v1, v2

    shl-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 49
    :cond_4
    sput-object v1, Lcom/alibaba/fastjson2/JSONWriterUTF16;->HEX256:[I

    return-void
.end method

.method constructor <init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V
    .locals 3

    .line 56
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/alibaba/fastjson2/JSONWriter;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;ZLjava/nio/charset/Charset;)V

    .line 57
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    .line 58
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 59
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    if-nez p1, :cond_0

    const/16 p1, 0x2000

    new-array p1, p1, [C

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    return-void
.end method

.method static putLong([CIII)V
    .locals 6

    .line 1320
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->HEX256:[I

    and-int/lit16 p2, p2, 0xff

    aget p2, v0, p2

    int-to-long v1, p2

    and-int/lit16 p2, p3, 0xff

    aget p2, v0, p2

    int-to-long p2, p2

    const/16 v0, 0x20

    shl-long/2addr p2, v0

    or-long/2addr p2, v1

    .line 1321
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    int-to-long v3, p1

    const/4 p1, 0x1

    shl-long/2addr v3, p1

    add-long v2, v1, v3

    .line 1324
    sget-boolean p1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    shl-long p1, p2, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p2

    :cond_0
    move-wide v4, p2

    move-object v1, p0

    .line 1321
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 92
    array-length v1, v0

    const/high16 v2, 0x100000

    if-le v1, v2, :cond_0

    return-void

    .line 96
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final endArray()V
    .locals 7

    .line 217
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->level:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->level:I

    .line 218
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    .line 219
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->pretty:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent:I

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v2, v0

    .line 220
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 221
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 224
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 225
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->pretty:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 226
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent:I

    add-int/lit8 v3, v0, 0x1

    const/16 v5, 0xa

    .line 227
    aput-char v5, v2, v0

    move v0, v3

    move v3, v4

    .line 228
    :goto_1
    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent:I

    if-ge v3, v5, :cond_2

    add-int/lit8 v5, v0, 0x1

    const/16 v6, 0x9

    .line 229
    aput-char v6, v2, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v5

    goto :goto_1

    :cond_2
    const/16 v3, 0x5d

    .line 232
    aput-char v3, v2, v0

    add-int/2addr v0, v1

    .line 233
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    .line 234
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->startObject:Z

    return-void
.end method

.method public final endObject()V
    .locals 7

    .line 149
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->level:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->level:I

    .line 150
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    .line 151
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->pretty:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent:I

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v2, v0

    .line 152
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 153
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 157
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->pretty:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 158
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent:I

    add-int/lit8 v3, v0, 0x1

    const/16 v5, 0xa

    .line 159
    aput-char v5, v2, v0

    move v0, v3

    move v3, v4

    .line 160
    :goto_1
    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent:I

    if-ge v3, v5, :cond_2

    add-int/lit8 v5, v0, 0x1

    const/16 v6, 0x9

    .line 161
    aput-char v6, v2, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v5

    goto :goto_1

    :cond_2
    const/16 v3, 0x7d

    .line 165
    aput-char v3, v2, v0

    add-int/2addr v0, v1

    .line 166
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    .line 167
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->startObject:Z

    return-void
.end method

.method final ensureCapacity(I)V
    .locals 2

    .line 1557
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v1, v0

    sub-int v1, p1, v1

    if-lez v1, :cond_2

    .line 1558
    array-length v0, v0

    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    sub-int v1, v0, p1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1563
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->maxArraySize:I

    sub-int v0, p1, v0

    if-gtz v0, :cond_1

    .line 1568
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    goto :goto_1

    .line 1564
    :cond_1
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public final flushTo(Ljava/io/OutputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    move v1, v0

    .line 2374
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    if-ge v1, v2, :cond_1

    .line 2375
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    aget-char v2, v2, v1

    const/16 v3, 0x80

    if-lt v2, v3, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    .line 2382
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    new-array v2, v1, [B

    move v3, v0

    .line 2383
    :goto_2
    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    if-ge v3, v4, :cond_2

    .line 2384
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    aget-char v4, v4, v3

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2386
    :cond_2
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 2387
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return v1

    .line 2391
    :cond_3
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    .line 2392
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    invoke-static {v2, v0, v3, v1, v0}, Lcom/alibaba/fastjson2/util/IOUtils;->encodeUTF8([CII[BI)I

    move-result v2

    .line 2393
    invoke-virtual {p1, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 2394
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return v2

    .line 2370
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "out is nulll"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final flushTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2400
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 2408
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 2409
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 2410
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    .line 2411
    array-length p1, p2

    return p1

    .line 2405
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "out is null"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final flushTo(Ljava/io/Writer;)V
    .locals 3

    .line 79
    :try_start_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    if-lez v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/Writer;->write([CII)V

    .line 82
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 85
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "flushTo error"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final getBytes()[B
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 2422
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    if-ge v1, v2, :cond_1

    .line 2423
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    aget-char v2, v2, v1

    const/16 v3, 0x80

    if-lt v2, v3, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    .line 2430
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    new-array v1, v1, [B

    .line 2431
    :goto_2
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    if-ge v0, v2, :cond_2

    .line 2432
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    aget-char v2, v2, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-object v1

    .line 2436
    :cond_3
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    .line 2437
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    invoke-static {v2, v0, v3, v1, v0}, Lcom/alibaba/fastjson2/util/IOUtils;->encodeUTF8([CII[BI)I

    move-result v0

    .line 2438
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public final getBytes(Ljava/nio/charset/Charset;)[B
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 2449
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    if-ge v1, v2, :cond_1

    .line 2450
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    aget-char v2, v2, v1

    const/16 v3, 0x80

    if-lt v2, v3, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    .line 2457
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eq p1, v1, :cond_2

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    if-eq p1, v1, :cond_2

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    if-ne p1, v1, :cond_4

    .line 2461
    :cond_2
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    new-array p1, p1, [B

    .line 2462
    :goto_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    if-ge v0, v1, :cond_3

    .line 2463
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    aget-char v1, v1, v0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-object p1

    .line 2469
    :cond_4
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    if-nez p1, :cond_5

    .line 2471
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2473
    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 2443
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return v0
.end method

.method public final startArray()V
    .locals 5

    .line 192
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->level:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->maxLevel:I

    if-ge v0, v1, :cond_3

    .line 196
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->level:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->level:I

    .line 197
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    .line 198
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->pretty:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent:I

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v2, v0

    .line 199
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 200
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 203
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x5b

    .line 204
    aput-char v4, v2, v0

    .line 205
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->pretty:Z

    if-eqz v0, :cond_2

    .line 206
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent:I

    add-int/lit8 v0, v3, 0x1

    const/16 v1, 0xa

    .line 207
    aput-char v1, v2, v3

    const/4 v1, 0x0

    :goto_1
    move v3, v0

    .line 208
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent:I

    if-ge v1, v0, :cond_2

    add-int/lit8 v0, v3, 0x1

    const/16 v4, 0x9

    .line 209
    aput-char v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    :cond_2
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void

    .line 193
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level too large : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final startObject()V
    .locals 5

    .line 121
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->level:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->maxLevel:I

    if-ge v0, v1, :cond_3

    .line 125
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->level:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->level:I

    .line 126
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->startObject:Z

    .line 128
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    .line 129
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->pretty:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent:I

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v2, v0

    .line 130
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 131
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x7b

    .line 135
    aput-char v4, v2, v0

    .line 137
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->pretty:Z

    if-eqz v0, :cond_2

    .line 138
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent:I

    add-int/lit8 v0, v3, 0x1

    const/16 v1, 0xa

    .line 139
    aput-char v1, v2, v3

    const/4 v1, 0x0

    :goto_1
    move v3, v0

    .line 140
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent:I

    if-ge v1, v0, :cond_2

    add-int/lit8 v0, v3, 0x1

    const/16 v4, 0x9

    .line 141
    aput-char v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 144
    :cond_2
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void

    .line 122
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level too large : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 2416
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final write(Lcom/alibaba/fastjson2/JSONObject;)V
    .locals 12

    if-nez p1, :cond_0

    .line 2484
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeNull()V

    return-void

    .line 2488
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

    .line 2493
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2494
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 2495
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 2499
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v1, v1

    const/4 v4, 0x1

    if-ne v0, v1, :cond_2

    .line 2500
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 2502
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    const/16 v5, 0x7b

    aput-char v5, v0, v1

    .line 2505
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

    .line 2506
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    .line 2507
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteMapNullValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v8

    cmp-long v5, v5, v2

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    if-nez v0, :cond_5

    .line 2512
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v5, v5

    if-ne v0, v5, :cond_4

    .line 2513
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 2515
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    const/16 v6, 0x2c

    aput-char v6, v0, v5

    :cond_5
    const/4 v0, 0x0

    .line 2519
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2520
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 2521
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 2523
    :cond_6
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeAny(Ljava/lang/Object;)V

    .line 2526
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v5, v5

    if-ne v1, v5, :cond_7

    .line 2527
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 2529
    :cond_7
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    const/16 v6, 0x3a

    aput-char v6, v1, v5

    if-nez v7, :cond_8

    .line 2532
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeNull()V

    goto :goto_0

    .line 2536
    :cond_8
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2537
    const-class v5, Ljava/lang/String;

    if-ne v1, v5, :cond_9

    .line 2538
    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 2542
    :cond_9
    const-class v5, Ljava/lang/Integer;

    if-ne v1, v5, :cond_a

    .line 2543
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeInt32(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 2547
    :cond_a
    const-class v5, Ljava/lang/Long;

    if-ne v1, v5, :cond_b

    .line 2548
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeInt64(Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 2552
    :cond_b
    const-class v5, Ljava/lang/Boolean;

    if-ne v1, v5, :cond_c

    .line 2553
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeBool(Z)V

    goto/16 :goto_0

    .line 2557
    :cond_c
    const-class v5, Ljava/math/BigDecimal;

    if-ne v1, v5, :cond_d

    .line 2558
    check-cast v7, Ljava/math/BigDecimal;

    const/4 v1, 0x0

    invoke-virtual {p0, v7, v2, v3, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    goto/16 :goto_0

    .line 2562
    :cond_d
    const-class v5, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v1, v5, :cond_e

    .line 2563
    check-cast v7, Lcom/alibaba/fastjson2/JSONArray;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->write(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2567
    :cond_e
    const-class v5, Lcom/alibaba/fastjson2/JSONObject;

    if-ne v1, v5, :cond_f

    .line 2568
    check-cast v7, Lcom/alibaba/fastjson2/JSONObject;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->write(Lcom/alibaba/fastjson2/JSONObject;)V

    goto/16 :goto_0

    .line 2572
    :cond_f
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-virtual {v5, v1, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v6, p0

    .line 2573
    invoke-interface/range {v5 .. v11}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto/16 :goto_0

    .line 2576
    :cond_10
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v0, v0

    if-ne p1, v0, :cond_11

    .line 2577
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 2579
    :cond_11
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    const/16 v1, 0x7d

    aput-char v1, p1, v0

    return-void
.end method

.method public final write(Ljava/util/List;)V
    .locals 14

    if-nez p1, :cond_0

    .line 2585
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeArrayNull()V

    return-void

    .line 2589
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

    .line 2594
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2595
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 2596
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 2600
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v1, v1

    const/4 v4, 0x1

    if-ne v0, v1, :cond_2

    .line 2601
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 2603
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    const/16 v5, 0x5b

    aput-char v5, v0, v1

    const/4 v0, 0x0

    move v1, v0

    move v5, v4

    .line 2606
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_d

    .line 2607
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v5, :cond_4

    .line 2609
    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    iget-object v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v6, v6

    if-ne v5, v6, :cond_3

    .line 2610
    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/2addr v5, v4

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 2612
    :cond_3
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    const/16 v7, 0x2c

    aput-char v7, v5, v6

    :cond_4
    if-nez v9, :cond_5

    .line 2617
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeNull()V

    goto :goto_1

    .line 2621
    :cond_5
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 2622
    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_6

    .line 2623
    check-cast v9, Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 2627
    :cond_6
    const-class v6, Ljava/lang/Integer;

    if-ne v5, v6, :cond_7

    .line 2628
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeInt32(Ljava/lang/Integer;)V

    goto :goto_1

    .line 2632
    :cond_7
    const-class v6, Ljava/lang/Long;

    if-ne v5, v6, :cond_8

    .line 2633
    check-cast v9, Ljava/lang/Long;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeInt64(Ljava/lang/Long;)V

    goto :goto_1

    .line 2637
    :cond_8
    const-class v6, Ljava/lang/Boolean;

    if-ne v5, v6, :cond_9

    .line 2638
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeBool(Z)V

    goto :goto_1

    .line 2642
    :cond_9
    const-class v6, Ljava/math/BigDecimal;

    if-ne v5, v6, :cond_a

    .line 2643
    check-cast v9, Ljava/math/BigDecimal;

    const/4 v5, 0x0

    invoke-virtual {p0, v9, v2, v3, v5}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    goto :goto_1

    .line 2647
    :cond_a
    const-class v6, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v5, v6, :cond_b

    .line 2648
    check-cast v9, Lcom/alibaba/fastjson2/JSONArray;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->write(Ljava/util/List;)V

    goto :goto_1

    .line 2652
    :cond_b
    const-class v6, Lcom/alibaba/fastjson2/JSONObject;

    if-ne v5, v6, :cond_c

    .line 2653
    check-cast v9, Lcom/alibaba/fastjson2/JSONObject;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->write(Lcom/alibaba/fastjson2/JSONObject;)V

    goto :goto_1

    .line 2657
    :cond_c
    iget-object v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-virtual {v6, v5, v5}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object v8, p0

    .line 2658
    invoke-interface/range {v7 .. v13}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v5, v0

    goto/16 :goto_0

    .line 2660
    :cond_d
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v0, v0

    if-ne p1, v0, :cond_e

    .line 2661
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 2663
    :cond_e
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    const/16 v1, 0x5d

    aput-char v1, p1, v0

    return-void
.end method

.method protected final write0(C)V
    .locals 2

    .line 101
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    .line 102
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 103
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 106
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeBase64([B)V
    .locals 10

    if-nez p1, :cond_0

    .line 1159
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeArrayNull()V

    return-void

    .line 1163
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    shl-int/2addr v0, v1

    .line 1165
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 1166
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1168
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v3, v2, 0x1

    .line 1169
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v4, v0, v2

    .line 1171
    array-length v2, p1

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    add-int/lit8 v6, v5, 0x1

    .line 1175
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

    .line 1178
    sget-object v7, Lcom/alibaba/fastjson2/JSONFactory;->CA:[C

    ushr-int/lit8 v8, v5, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-char v7, v7, v8

    aput-char v7, v0, v3

    add-int/lit8 v7, v3, 0x1

    .line 1179
    sget-object v8, Lcom/alibaba/fastjson2/JSONFactory;->CA:[C

    ushr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    aput-char v8, v0, v7

    add-int/lit8 v7, v3, 0x2

    .line 1180
    sget-object v8, Lcom/alibaba/fastjson2/JSONFactory;->CA:[C

    ushr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    aput-char v8, v0, v7

    add-int/lit8 v7, v3, 0x3

    .line 1181
    sget-object v8, Lcom/alibaba/fastjson2/JSONFactory;->CA:[C

    and-int/lit8 v5, v5, 0x3f

    aget-char v5, v8, v5

    aput-char v5, v0, v7

    add-int/lit8 v3, v3, 0x4

    move v5, v6

    goto :goto_0

    .line 1186
    :cond_1
    array-length v5, p1

    sub-int/2addr v5, v2

    if-lez v5, :cond_4

    .line 1189
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xa

    if-ne v5, v1, :cond_2

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget-byte p1, p1, v4

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 v4, p1, 0x2

    :cond_2
    or-int p1, v2, v4

    .line 1192
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->CA:[C

    shr-int/lit8 v4, p1, 0xc

    aget-char v2, v2, v4

    aput-char v2, v0, v3

    add-int/lit8 v2, v3, 0x1

    .line 1193
    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->CA:[C

    ushr-int/lit8 v6, p1, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v4, v4, v6

    aput-char v4, v0, v2

    add-int/lit8 v2, v3, 0x2

    const/16 v4, 0x3d

    if-ne v5, v1, :cond_3

    .line 1194
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CA:[C

    and-int/lit8 p1, p1, 0x3f

    aget-char p1, v1, p1

    goto :goto_1

    :cond_3
    move p1, v4

    :goto_1
    aput-char p1, v0, v2

    add-int/lit8 p1, v3, 0x3

    .line 1195
    aput-char v4, v0, p1

    add-int/lit8 v3, v3, 0x4

    .line 1199
    :cond_4
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char p1, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 1200
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeBigInt(Ljava/math/BigInteger;J)V
    .locals 10

    if-nez p1, :cond_0

    .line 1237
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeNumberNull()V

    return-void

    .line 1241
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->isInt64(Ljava/math/BigInteger;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    cmp-long v0, p2, v1

    if-nez v0, :cond_1

    .line 1242
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeInt64(J)V

    return-void

    :cond_1
    const/16 v0, 0xa

    .line 1246
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1248
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    or-long/2addr p2, v3

    .line 1249
    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserCompatible:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v3, p2

    cmp-long v3, v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->isJavaScriptSupport(Ljava/math/BigInteger;)Z

    move-result p1

    if-nez p1, :cond_2

    move p1, v4

    goto :goto_0

    :cond_2
    move p1, v5

    .line 1250
    :goto_0
    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v6, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteLongAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v6, v8

    and-long/2addr p2, v6

    cmp-long p2, p2, v1

    if-eqz p2, :cond_3

    move p2, v4

    goto :goto_1

    :cond_3
    move p2, v5

    :goto_1
    if-nez p1, :cond_5

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    .line 1253
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    .line 1254
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1255
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 1256
    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    if-eqz v4, :cond_6

    add-int/lit8 v1, p3, 0x1

    const/16 v2, 0x22

    .line 1258
    aput-char v2, p2, p3

    .line 1259
    invoke-virtual {v0, v5, p1, p2, v1}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v1, p1

    add-int/lit8 p1, v1, 0x1

    .line 1261
    aput-char v2, p2, v1

    goto :goto_3

    .line 1263
    :cond_6
    invoke-virtual {v0, v5, p1, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr p1, p3

    .line 1266
    :goto_3
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public writeBool(Z)V
    .locals 8

    .line 2736
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v0, v0, 0x5

    .line 2737
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 2738
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 2741
    :cond_0
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 2742
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    .line 2743
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteBooleanAsNumber:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-eqz v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    if-eqz p1, :cond_1

    const/16 p1, 0x31

    goto :goto_0

    :cond_1
    const/16 p1, 0x30

    .line 2744
    :goto_0
    aput-char p1, v3, v0

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x66

    .line 2747
    aput-char v2, v3, v0

    move v0, v1

    .line 2749
    :cond_3
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    int-to-long v6, v0

    const/4 v1, 0x1

    shl-long/2addr v6, v1

    add-long/2addr v4, v6

    if-eqz p1, :cond_4

    sget-wide v6, Lcom/alibaba/fastjson2/util/IOUtils;->TRUE_64:J

    goto :goto_1

    :cond_4
    sget-wide v6, Lcom/alibaba/fastjson2/util/IOUtils;->ALSE_64:J

    :goto_1
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v1, v0, 0x4

    .line 2752
    :goto_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeChar(C)V
    .locals 6

    .line 1384
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v1, v0, 0x8

    .line 1386
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1387
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1390
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v2, v0, 0x1

    .line 1391
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v3, v1, v0

    const/16 v0, 0x22

    const/16 v3, 0x5c

    if-eq p1, v0, :cond_2

    const/16 v0, 0x27

    if-eq p1, v0, :cond_2

    if-eq p1, v3, :cond_1

    const/16 v0, 0x31

    const/16 v4, 0x75

    const/16 v5, 0x30

    packed-switch p1, :pswitch_data_0

    add-int/lit8 v0, v2, 0x1

    .line 1490
    aput-char p1, v1, v2

    goto/16 :goto_2

    .line 1481
    :pswitch_0
    aput-char v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    .line 1482
    aput-char v4, v1, v3

    add-int/lit8 v3, v2, 0x2

    .line 1483
    aput-char v5, v1, v3

    add-int/lit8 v3, v2, 0x3

    .line 1484
    aput-char v5, v1, v3

    add-int/lit8 v3, v2, 0x4

    .line 1485
    aput-char v0, v1, v3

    add-int/lit8 v0, v2, 0x5

    add-int/lit8 p1, p1, -0x1a

    add-int/lit8 p1, p1, 0x61

    int-to-char p1, p1

    .line 1486
    aput-char p1, v1, v0

    goto/16 :goto_1

    .line 1467
    :pswitch_1
    aput-char v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    .line 1468
    aput-char v4, v1, v3

    add-int/lit8 v3, v2, 0x2

    .line 1469
    aput-char v5, v1, v3

    add-int/lit8 v3, v2, 0x3

    .line 1470
    aput-char v5, v1, v3

    add-int/lit8 v3, v2, 0x4

    .line 1471
    aput-char v0, v1, v3

    add-int/lit8 v0, v2, 0x5

    add-int/lit8 p1, p1, -0x10

    add-int/2addr p1, v5

    int-to-char p1, p1

    .line 1472
    aput-char p1, v1, v0

    goto :goto_1

    .line 1406
    :pswitch_2
    aput-char v3, v1, v2

    add-int/lit8 p1, v2, 0x1

    const/16 v0, 0x72

    .line 1407
    aput-char v0, v1, p1

    goto :goto_0

    .line 1421
    :pswitch_3
    aput-char v3, v1, v2

    add-int/lit8 p1, v2, 0x1

    const/16 v0, 0x66

    .line 1422
    aput-char v0, v1, p1

    goto :goto_0

    .line 1449
    :pswitch_4
    aput-char v3, v1, v2

    add-int/lit8 v0, v2, 0x1

    .line 1450
    aput-char v4, v1, v0

    add-int/lit8 v0, v2, 0x2

    .line 1451
    aput-char v5, v1, v0

    add-int/lit8 v0, v2, 0x3

    .line 1452
    aput-char v5, v1, v0

    add-int/lit8 v0, v2, 0x4

    .line 1453
    aput-char v5, v1, v0

    add-int/lit8 v0, v2, 0x5

    add-int/lit8 p1, p1, -0xa

    add-int/lit8 p1, p1, 0x61

    int-to-char p1, p1

    .line 1454
    aput-char p1, v1, v0

    goto :goto_1

    .line 1411
    :pswitch_5
    aput-char v3, v1, v2

    add-int/lit8 p1, v2, 0x1

    const/16 v0, 0x6e

    .line 1412
    aput-char v0, v1, p1

    goto :goto_0

    .line 1426
    :pswitch_6
    aput-char v3, v1, v2

    add-int/lit8 p1, v2, 0x1

    const/16 v0, 0x74

    .line 1427
    aput-char v0, v1, p1

    goto :goto_0

    .line 1416
    :pswitch_7
    aput-char v3, v1, v2

    add-int/lit8 p1, v2, 0x1

    const/16 v0, 0x62

    .line 1417
    aput-char v0, v1, p1

    :goto_0
    add-int/lit8 v0, v2, 0x2

    goto :goto_2

    .line 1438
    :pswitch_8
    aput-char v3, v1, v2

    add-int/lit8 v0, v2, 0x1

    .line 1439
    aput-char v4, v1, v0

    add-int/lit8 v0, v2, 0x2

    .line 1440
    aput-char v5, v1, v0

    add-int/lit8 v0, v2, 0x3

    .line 1441
    aput-char v5, v1, v0

    add-int/lit8 v0, v2, 0x4

    .line 1442
    aput-char v5, v1, v0

    add-int/lit8 v0, v2, 0x5

    add-int/2addr p1, v5

    int-to-char p1, p1

    .line 1443
    aput-char p1, v1, v0

    :goto_1
    add-int/lit8 v0, v2, 0x6

    goto :goto_2

    .line 1401
    :cond_1
    aput-char v3, v1, v2

    add-int/lit8 v0, v2, 0x1

    .line 1402
    aput-char p1, v1, v0

    goto :goto_0

    .line 1395
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    if-ne p1, v0, :cond_3

    add-int/lit8 v0, v2, 0x1

    .line 1396
    aput-char v3, v1, v2

    move v2, v0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    .line 1398
    aput-char p1, v1, v2

    .line 1493
    :goto_2
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1494
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

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

.method public final writeColon()V
    .locals 3

    .line 111
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    .line 112
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 113
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    const/16 v2, 0x3a

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 116
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeComma()V
    .locals 5

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->startObject:Z

    .line 173
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    .line 174
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->pretty:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent:I

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    add-int/2addr v2, v1

    .line 175
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 176
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x2c

    .line 180
    aput-char v4, v2, v1

    .line 181
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->pretty:Z

    if-eqz v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    const/16 v4, 0xa

    .line 182
    aput-char v4, v2, v3

    :goto_1
    move v3, v1

    .line 183
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent:I

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    const/16 v4, 0x9

    .line 184
    aput-char v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 187
    :cond_2
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeDateTime14(IIIIII)V
    .locals 13

    move-object v0, p0

    move v1, p1

    .line 2018
    iget v2, v0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v3, v2, 0x10

    .line 2020
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 2021
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 2024
    :cond_0
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 2025
    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v5, v4, v2

    if-ltz v1, :cond_1

    const/16 v5, 0x270f

    if-gt v1, v5, :cond_1

    .line 2029
    div-int/lit8 v5, v1, 0x64

    mul-int/lit8 v6, v5, 0x64

    sub-int/2addr v1, v6

    .line 2031
    sget-object v6, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    sget-wide v8, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 v10, v2, 0x1

    int-to-long v10, v10

    const/4 v12, 0x1

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    sget-object v10, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget v5, v10, v5

    invoke-virtual {v6, v7, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2032
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    sget-wide v7, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 v9, v2, 0x3

    int-to-long v9, v9

    shl-long/2addr v9, v12

    add-long/2addr v7, v9

    sget-object v9, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget v1, v9, v1

    invoke-virtual {v5, v6, v7, v8, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2033
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 v7, v2, 0x5

    int-to-long v7, v7

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    sget-object v7, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget v7, v7, p2

    invoke-virtual {v1, v4, v5, v6, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2034
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 v7, v2, 0x7

    int-to-long v7, v7

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    sget-object v7, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget v7, v7, p3

    invoke-virtual {v1, v4, v5, v6, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2035
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 v7, v2, 0x9

    int-to-long v7, v7

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    sget-object v7, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget v7, v7, p4

    invoke-virtual {v1, v4, v5, v6, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2036
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 v7, v2, 0xb

    int-to-long v7, v7

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    sget-object v7, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget v7, v7, p5

    invoke-virtual {v1, v4, v5, v6, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2037
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 v7, v2, 0xd

    int-to-long v7, v7

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    sget-object v7, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget v7, v7, p6

    invoke-virtual {v1, v4, v5, v6, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v2, v2, 0xf

    .line 2038
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v1, v4, v2

    .line 2039
    iput v3, v0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void

    .line 2027
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

    .line 2050
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v0, v0, 0x15

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 2052
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 2053
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    .line 2054
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v2, v0, v1

    if-ltz p1, :cond_0

    const/16 v2, 0x270f

    if-gt p1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 2058
    invoke-static {v0, v1, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([CIIII)I

    move-result p1

    const/16 p2, 0x20

    .line 2059
    aput-char p2, v0, p1

    add-int/lit8 p2, p1, 0x1

    .line 2060
    invoke-static {v0, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([CIIII)V

    add-int/lit8 p2, p1, 0x9

    .line 2061
    iget-char p3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char p3, v0, p2

    add-int/lit8 p1, p1, 0xa

    .line 2062
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void

    .line 2056
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Only 4 digits numbers are supported. Provided: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final writeDateTimeISO8601(IIIIIIIIZ)V
    .locals 5

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

    .line 2128
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v3, v2, 0x19

    add-int/2addr v3, v1

    add-int v1, v2, v3

    .line 2130
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v4, v4

    if-lt v1, v4, :cond_2

    .line 2131
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 2134
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 2135
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v3, v1, v2

    add-int/2addr v2, v0

    .line 2136
    invoke-static {v1, v2, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([CIIII)I

    move-result p1

    if-eqz p9, :cond_3

    const/16 p2, 0x54

    goto :goto_1

    :cond_3
    const/16 p2, 0x20

    .line 2137
    :goto_1
    aput-char p2, v1, p1

    add-int/lit8 p2, p1, 0x1

    .line 2138
    invoke-static {v1, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([CIIII)V

    add-int/lit8 p1, p1, 0x9

    if-lez p7, :cond_6

    .line 2142
    div-int/lit8 p2, p7, 0xa

    .line 2143
    div-int/lit8 p3, p2, 0xa

    mul-int/lit8 p4, p2, 0xa

    sub-int p4, p7, p4

    if-eqz p4, :cond_4

    .line 2147
    sget-object p2, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K_64:[J

    aget-wide p2, p2, p7

    const-wide/32 p4, -0x10000

    and-long/2addr p2, p4

    sget-wide p4, Lcom/alibaba/fastjson2/util/IOUtils;->DOT_X0:J

    or-long/2addr p2, p4

    invoke-static {v1, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->putLong([CIJ)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_2

    :cond_4
    add-int/lit8 p4, p1, 0x1

    const/16 p5, 0x2e

    .line 2150
    aput-char p5, v1, p1

    mul-int/lit8 p1, p3, 0xa

    sub-int p1, p2, p1

    if-eqz p1, :cond_5

    .line 2153
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    sget-wide p5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    int-to-long v2, p4

    shl-long/2addr v2, v0

    add-long/2addr p5, v2

    sget-object p7, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget p2, p7, p2

    invoke-virtual {p1, p3, p5, p6, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 p1, p4, 0x2

    goto :goto_2

    :cond_5
    add-int/lit8 p1, p4, 0x1

    add-int/lit8 p3, p3, 0x30

    int-to-byte p2, p3

    int-to-char p2, p2

    .line 2156
    aput-char p2, v1, p4

    :cond_6
    :goto_2
    if-eqz p9, :cond_a

    .line 2162
    div-int/lit16 p2, p8, 0xe10

    if-nez p8, :cond_7

    add-int/lit8 p2, p1, 0x1

    const/16 p3, 0x5a

    .line 2164
    aput-char p3, v1, p1

    move p1, p2

    goto :goto_4

    .line 2166
    :cond_7
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ltz p2, :cond_8

    const/16 p4, 0x2b

    goto :goto_3

    :cond_8
    const/16 p4, 0x2d

    .line 2167
    :goto_3
    aput-char p4, v1, p1

    .line 2168
    sget-object p4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object p5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    sget-wide p6, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 p9, p1, 0x1

    int-to-long v2, p9

    shl-long/2addr v2, v0

    add-long/2addr p6, v2

    sget-object p9, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget p3, p9, p3

    invoke-virtual {p4, p5, p6, p7, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 p3, p1, 0x3

    const/16 p4, 0x3a

    .line 2169
    aput-char p4, v1, p3

    mul-int/lit16 p2, p2, 0xe10

    sub-int/2addr p8, p2

    .line 2170
    div-int/lit8 p8, p8, 0x3c

    if-gez p8, :cond_9

    neg-int p8, p8

    .line 2174
    :cond_9
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    sget-wide p4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 p6, p1, 0x4

    int-to-long p6, p6

    shl-long/2addr p6, v0

    add-long/2addr p4, p6

    sget-object p6, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget p6, p6, p8

    invoke-virtual {p2, p3, p4, p5, p6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 p1, p1, 0x6

    .line 2178
    :cond_a
    :goto_4
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char p2, v1, p1

    add-int/2addr p1, v0

    .line 2179
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeDateYYYMMDD10(III)V
    .locals 4

    .line 2207
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v1, v0, 0xd

    .line 2209
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 2210
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 2213
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v2, v0, 0x1

    .line 2214
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v3, v1, v0

    .line 2215
    invoke-static {v1, v2, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([CIIII)I

    move-result p1

    .line 2216
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char p2, v1, p1

    add-int/lit8 p1, p1, 0x1

    .line 2217
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeDateYYYMMDD8(III)V
    .locals 10

    .line 2184
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v1, v0, 0xa

    .line 2186
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 2187
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 2190
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 2191
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v3, v2, v0

    if-ltz p1, :cond_1

    const/16 v3, 0x270f

    if-gt p1, v3, :cond_1

    .line 2195
    div-int/lit8 v3, p1, 0x64

    mul-int/lit8 v4, v3, 0x64

    sub-int/2addr p1, v4

    .line 2197
    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 v7, v0, 0x1

    int-to-long v7, v7

    const/4 v9, 0x1

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    sget-object v7, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget v3, v7, v3

    invoke-virtual {v4, v2, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2198
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 v6, v0, 0x3

    int-to-long v6, v6

    shl-long/2addr v6, v9

    add-long/2addr v4, v6

    sget-object v6, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget p1, v6, p1

    invoke-virtual {v3, v2, v4, v5, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2199
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 v5, v0, 0x5

    int-to-long v5, v5

    shl-long/2addr v5, v9

    add-long/2addr v3, v5

    sget-object v5, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget p2, v5, p2

    invoke-virtual {p1, v2, v3, v4, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2200
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 p2, v0, 0x7

    int-to-long v5, p2

    shl-long/2addr v5, v9

    add-long/2addr v3, v5

    sget-object p2, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget p2, p2, p3

    invoke-virtual {p1, v2, v3, v4, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v0, 0x9

    .line 2201
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char p1, v2, v0

    .line 2202
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void

    .line 2193
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

    .line 1271
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeNumberNull()V

    return-void

    :cond_0
    if-eqz p4, :cond_1

    .line 1276
    invoke-virtual {p4, p1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1277
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeRaw(Ljava/lang/String;)V

    return-void

    .line 1281
    :cond_1
    iget-object p4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, p4, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    or-long/2addr p2, v0

    .line 1283
    invoke-virtual {p1}, Ljava/math/BigDecimal;->precision()I

    move-result p4

    .line 1284
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->isWriteAsString(Ljava/math/BigDecimal;J)Z

    move-result v0

    .line 1286
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int v2, v1, p4

    add-int/lit8 v2, v2, 0x7

    .line 1288
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v3, v3

    if-lt v2, v3, :cond_2

    .line 1289
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1292
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    const/16 v3, 0x22

    if-eqz v0, :cond_3

    add-int/lit8 v4, v1, 0x1

    .line 1294
    aput-char v3, v2, v1

    move v1, v4

    .line 1297
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

    .line 1301
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result p4

    if-ltz p4, :cond_5

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_DECIMAL_INT_COMPACT_OFFSET:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_DECIMAL_INT_COMPACT_OFFSET:J

    .line 1303
    invoke-virtual {v4, p1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v4, v6

    if-eqz v6, :cond_5

    if-nez p2, :cond_5

    .line 1306
    invoke-static {v2, v1, v4, v5, p4}, Lcom/alibaba/fastjson2/util/IOUtils;->writeDecimal([CIJI)I

    move-result p1

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    .line 1308
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1309
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p3, p2, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1310
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v1

    :goto_2
    if-eqz v0, :cond_7

    add-int/lit8 p2, p1, 0x1

    .line 1314
    aput-char v3, v2, p1

    move p1, p2

    .line 1316
    :cond_7
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeDouble(D)V
    .locals 6

    .line 1906
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

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

    .line 1908
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v3, v2, 0x18

    if-eqz v0, :cond_1

    add-int/lit8 v3, v3, 0x2

    .line 1914
    :cond_1
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 1915
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1918
    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    const/16 v4, 0x22

    if-eqz v0, :cond_3

    add-int/lit8 v5, v2, 0x1

    .line 1920
    aput-char v4, v3, v2

    move v2, v5

    .line 1923
    :cond_3
    invoke-static {p1, p2, v3, v2, v1}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(D[CIZ)I

    move-result p1

    add-int/2addr v2, p1

    if-eqz v0, :cond_4

    add-int/lit8 p1, v2, 0x1

    .line 1927
    aput-char v4, v3, v2

    move v2, p1

    .line 1929
    :cond_4
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeDouble([D)V
    .locals 8

    if-nez p1, :cond_0

    .line 1974
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeNull()V

    return-void

    .line 1978
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

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

    .line 1980
    :goto_0
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    .line 1981
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x1b

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    .line 1982
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 1983
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1986
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x5b

    .line 1987
    aput-char v6, v4, v3

    .line 1988
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_6

    if-eqz v1, :cond_3

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x2c

    .line 1990
    aput-char v6, v4, v5

    move v5, v3

    :cond_3
    const/16 v3, 0x22

    if-eqz v0, :cond_4

    add-int/lit8 v6, v5, 0x1

    .line 1994
    aput-char v3, v4, v5

    move v5, v6

    .line 1997
    :cond_4
    aget-wide v6, p1, v1

    .line 1998
    invoke-static {v6, v7, v4, v5, v2}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(D[CIZ)I

    move-result v6

    add-int/2addr v5, v6

    if-eqz v0, :cond_5

    add-int/lit8 v6, v5, 0x1

    .line 2002
    aput-char v3, v4, v5

    move v5, v6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/16 p1, 0x5d

    .line 2005
    aput-char p1, v4, v5

    add-int/2addr v5, v2

    .line 2006
    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeDoubleArray(DD)V
    .locals 6

    .line 1934
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

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

    .line 1936
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v3, v2, 0x30

    add-int/lit8 v3, v3, 0x3

    if-eqz v0, :cond_1

    add-int/lit8 v3, v3, 0x2

    .line 1942
    :cond_1
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1944
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x5b

    .line 1945
    aput-char v5, v3, v2

    const/16 v2, 0x22

    if-eqz v0, :cond_2

    add-int/lit8 v5, v4, 0x1

    .line 1948
    aput-char v2, v3, v4

    move v4, v5

    .line 1950
    :cond_2
    invoke-static {p1, p2, v3, v4, v1}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(D[CIZ)I

    move-result p1

    add-int/2addr v4, p1

    if-eqz v0, :cond_3

    add-int/lit8 p1, v4, 0x1

    .line 1953
    aput-char v2, v3, v4

    move v4, p1

    :cond_3
    add-int/lit8 p1, v4, 0x1

    const/16 p2, 0x2c

    .line 1956
    aput-char p2, v3, v4

    if-eqz v0, :cond_4

    add-int/lit8 p2, p1, 0x1

    .line 1959
    aput-char v2, v3, p1

    move p1, p2

    .line 1961
    :cond_4
    invoke-static {p3, p4, v3, p1, v1}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(D[CIZ)I

    move-result p2

    add-int/2addr p1, p2

    if-eqz v0, :cond_5

    add-int/lit8 p2, p1, 0x1

    .line 1964
    aput-char v2, v3, p1

    move p1, p2

    :cond_5
    const/16 p2, 0x5d

    .line 1967
    aput-char p2, v3, p1

    add-int/2addr p1, v1

    .line 1968
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeFloat(F)V
    .locals 6

    .line 1842
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

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

    .line 1844
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v3, v2, 0xf

    if-eqz v0, :cond_1

    add-int/lit8 v3, v3, 0x2

    .line 1850
    :cond_1
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1852
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    const/16 v4, 0x22

    if-eqz v0, :cond_2

    add-int/lit8 v5, v2, 0x1

    .line 1854
    aput-char v4, v3, v2

    move v2, v5

    .line 1857
    :cond_2
    invoke-static {p1, v3, v2, v1}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(F[CIZ)I

    move-result p1

    add-int/2addr v2, p1

    if-eqz v0, :cond_3

    add-int/lit8 p1, v2, 0x1

    .line 1861
    aput-char v4, v3, v2

    move v2, p1

    .line 1863
    :cond_3
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeFloat([F)V
    .locals 7

    if-nez p1, :cond_0

    .line 1869
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeArrayNull()V

    return-void

    .line 1873
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

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

    .line 1875
    :goto_0
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    .line 1876
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

    .line 1877
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 1878
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1881
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x5b

    .line 1882
    aput-char v6, v4, v3

    .line 1883
    :goto_2
    array-length v3, p1

    if-ge v1, v3, :cond_7

    if-eqz v1, :cond_4

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x2c

    .line 1885
    aput-char v6, v4, v5

    move v5, v3

    :cond_4
    const/16 v3, 0x22

    if-eqz v0, :cond_5

    add-int/lit8 v6, v5, 0x1

    .line 1889
    aput-char v3, v4, v5

    move v5, v6

    .line 1892
    :cond_5
    aget v6, p1, v1

    .line 1893
    invoke-static {v6, v4, v5, v2}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(F[CIZ)I

    move-result v6

    add-int/2addr v5, v6

    if-eqz v0, :cond_6

    add-int/lit8 v6, v5, 0x1

    .line 1897
    aput-char v3, v4, v5

    move v5, v6

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    const/16 p1, 0x5d

    .line 1900
    aput-char p1, v4, v5

    add-int/2addr v5, v2

    .line 1901
    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeHex([B)V
    .locals 10

    if-nez p1, :cond_0

    .line 1206
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeNull()V

    return-void

    .line 1210
    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3

    .line 1212
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    .line 1213
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1214
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    const/16 v2, 0x78

    .line 1215
    aput-char v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x27

    .line 1216
    aput-char v3, v0, v2

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    .line 1219
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 1220
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

    int-to-char v5, v5

    .line 1225
    aput-char v5, v0, v1

    add-int/lit8 v5, v1, 0x1

    if-ge v4, v8, :cond_2

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    add-int/2addr v4, v6

    int-to-char v4, v4

    .line 1226
    aput-char v4, v0, v5

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1230
    :cond_3
    aput-char v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 1231
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeInt16(S)V
    .locals 5

    .line 1629
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

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

    .line 1631
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v2, v1, 0x7

    .line 1633
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 1634
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1637
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    if-eqz v0, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 1639
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v4, v2, v1

    move v1, v3

    .line 1641
    :cond_2
    invoke-static {v2, v1, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([CII)I

    move-result p1

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    .line 1643
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v1, v2, p1

    move p1, v0

    .line 1645
    :cond_3
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeInt32(I)V
    .locals 5

    .line 1650
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

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

    .line 1652
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v2, v1, 0xd

    .line 1654
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 1655
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1658
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    if-eqz v0, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 1660
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v4, v2, v1

    move v1, v3

    .line 1662
    :cond_2
    invoke-static {v2, v1, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([CII)I

    move-result p1

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    .line 1664
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v1, v2, p1

    move p1, v0

    .line 1666
    :cond_3
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeInt32(Ljava/lang/Integer;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1672
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeNumberNull()V

    goto :goto_0

    .line 1674
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeInt32(I)V

    :goto_0
    return-void
.end method

.method public final writeInt32([I)V
    .locals 7

    if-nez p1, :cond_0

    .line 1574
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeNull()V

    return-void

    .line 1578
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

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

    .line 1580
    :goto_0
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    .line 1581
    array-length v4, p1

    mul-int/lit8 v4, v4, 0xd

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    .line 1582
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 1583
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1586
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x5b

    .line 1587
    aput-char v6, v4, v3

    .line 1589
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_6

    if-eqz v1, :cond_3

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x2c

    .line 1591
    aput-char v6, v4, v5

    move v5, v3

    :cond_3
    if-eqz v0, :cond_4

    add-int/lit8 v3, v5, 0x1

    .line 1594
    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v6, v4, v5

    move v5, v3

    .line 1596
    :cond_4
    aget v3, p1, v1

    invoke-static {v4, v5, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([CII)I

    move-result v3

    if-eqz v0, :cond_5

    add-int/lit8 v5, v3, 0x1

    .line 1598
    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v6, v4, v3

    goto :goto_2

    :cond_5
    move v5, v3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/16 p1, 0x5d

    .line 1602
    aput-char p1, v4, v5

    add-int/2addr v5, v2

    .line 1603
    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeInt64(J)V
    .locals 9

    .line 1807
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 1808
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->isWriteAsString(JJ)Z

    move-result v2

    .line 1809
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v4, v3, 0x17

    .line 1811
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v5, v5

    if-lt v4, v5, :cond_0

    .line 1812
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1815
    :cond_0
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    if-eqz v2, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 1817
    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v6, v4, v3

    move v3, v5

    .line 1819
    :cond_1
    invoke-static {v4, v3, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([CIJ)I

    move-result v3

    if-eqz v2, :cond_2

    add-int/lit8 p1, v3, 0x1

    .line 1821
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char p2, v4, v3

    :goto_0
    move v3, p1

    goto :goto_1

    .line 1822
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

    .line 1826
    aput-char p2, v4, v3

    goto :goto_0

    .line 1828
    :cond_3
    :goto_1
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeInt64(Ljava/lang/Long;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1834
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeNumberNull()V

    goto :goto_0

    .line 1836
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeInt64(J)V

    :goto_0
    return-void
.end method

.method public final writeInt64([J)V
    .locals 8

    if-nez p1, :cond_0

    .line 1681
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeNull()V

    return-void

    .line 1685
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v1, v0, 0x2

    .line 1686
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x17

    add-int/2addr v1, v2

    .line 1687
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 1688
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1691
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x5b

    .line 1692
    aput-char v3, v1, v0

    const/4 v0, 0x0

    .line 1694
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_5

    if-eqz v0, :cond_2

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x2c

    .line 1696
    aput-char v4, v1, v2

    move v2, v3

    .line 1698
    :cond_2
    aget-wide v3, p1, v0

    .line 1699
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->isWriteAsString(JJ)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v6, v2, 0x1

    .line 1701
    iget-char v7, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v7, v1, v2

    move v2, v6

    .line 1703
    :cond_3
    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([CIJ)I

    move-result v2

    if-eqz v5, :cond_4

    add-int/lit8 v3, v2, 0x1

    .line 1705
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v4, v1, v2

    move v2, v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/16 p1, 0x5d

    .line 1709
    aput-char p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 1710
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeInt8(B)V
    .locals 5

    .line 1608
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

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

    .line 1610
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v2, v1, 0x7

    .line 1612
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 1613
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1616
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    if-eqz v0, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 1618
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v4, v2, v1

    move v1, v3

    .line 1620
    :cond_2
    invoke-static {v2, v1, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([CII)I

    move-result p1

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    .line 1622
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v1, v2, p1

    move p1, v0

    .line 1624
    :cond_3
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeListInt32(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1716
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeNull()V

    return-void

    .line 1720
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1721
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

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

    .line 1722
    :goto_0
    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v5, v4, 0x2

    mul-int/lit8 v6, v0, 0x17

    add-int/2addr v5, v6

    .line 1724
    iget-object v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v6, v6

    if-lt v5, v6, :cond_2

    .line 1725
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1728
    :cond_2
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v6, v4, 0x1

    const/16 v7, 0x5b

    .line 1729
    aput-char v7, v5, v4

    :goto_1
    if-ge v2, v0, :cond_7

    if-eqz v2, :cond_3

    add-int/lit8 v4, v6, 0x1

    const/16 v7, 0x2c

    .line 1733
    aput-char v7, v5, v6

    move v6, v4

    .line 1735
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    if-nez v4, :cond_4

    const/16 v4, 0x6e

    .line 1737
    aput-char v4, v5, v6

    add-int/lit8 v4, v6, 0x1

    const/16 v7, 0x75

    .line 1738
    aput-char v7, v5, v4

    add-int/lit8 v4, v6, 0x2

    const/16 v7, 0x6c

    .line 1739
    aput-char v7, v5, v4

    add-int/lit8 v4, v6, 0x3

    .line 1740
    aput-char v7, v5, v4

    add-int/lit8 v6, v6, 0x4

    goto :goto_2

    .line 1745
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-eqz v1, :cond_5

    add-int/lit8 v7, v6, 0x1

    .line 1747
    iget-char v8, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v8, v5, v6

    move v6, v7

    .line 1749
    :cond_5
    invoke-static {v5, v6, v4}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([CII)I

    move-result v4

    if-eqz v1, :cond_6

    add-int/lit8 v6, v4, 0x1

    .line 1751
    iget-char v7, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v7, v5, v4

    goto :goto_2

    :cond_6
    move v6, v4

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    const/16 p1, 0x5d

    .line 1755
    aput-char p1, v5, v6

    add-int/2addr v6, v3

    .line 1756
    iput v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

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

    .line 1762
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeNull()V

    return-void

    .line 1766
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1767
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v0, 0x17

    add-int/2addr v2, v3

    .line 1769
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 1770
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1773
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x5b

    .line 1774
    aput-char v4, v2, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    if-eqz v1, :cond_2

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x2c

    .line 1778
    aput-char v5, v2, v3

    move v3, v4

    .line 1780
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_3

    const/16 v4, 0x6e

    .line 1782
    aput-char v4, v2, v3

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x75

    .line 1783
    aput-char v5, v2, v4

    add-int/lit8 v4, v3, 0x2

    const/16 v5, 0x6c

    .line 1784
    aput-char v5, v2, v4

    add-int/lit8 v4, v3, 0x3

    .line 1785
    aput-char v5, v2, v4

    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    .line 1790
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1791
    iget-object v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->isWriteAsString(JJ)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v7, v3, 0x1

    .line 1793
    iget-char v8, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v8, v2, v3

    move v3, v7

    .line 1795
    :cond_4
    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([CIJ)I

    move-result v3

    if-eqz v6, :cond_5

    add-int/lit8 v4, v3, 0x1

    .line 1797
    iget-char v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v5, v2, v3

    move v3, v4

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const/16 p1, 0x5d

    .line 1801
    aput-char p1, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 1802
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeLocalDate(Ljava/time/LocalDate;)V
    .locals 4

    if-nez p1, :cond_0

    .line 2068
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeNull()V

    return-void

    .line 2072
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 2073
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->dateFormat:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2074
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeLocalDateWithFormat(Ljava/time/LocalDate;Lcom/alibaba/fastjson2/JSONWriter$Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2079
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v1, v0, 0x12

    .line 2081
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 2082
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 2084
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v2, v0, 0x1

    .line 2085
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v3, v1, v0

    .line 2086
    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v3

    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p1

    invoke-static {v1, v2, v0, v3, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([CIIII)I

    move-result p1

    .line 2087
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    .line 2088
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeLocalDateTime(Ljava/time/LocalDateTime;)V
    .locals 5

    .line 2093
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v1, v0, 0x26

    .line 2095
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 2096
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 2099
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v2, v0, 0x1

    .line 2100
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v3, v1, v0

    .line 2101
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    .line 2102
    invoke-virtual {v0}, Ljava/time/LocalDate;->getYear()I

    move-result v3

    invoke-virtual {v0}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v4

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([CIIII)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x20

    .line 2103
    aput-char v3, v1, v0

    .line 2104
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([CILjava/time/LocalTime;)I

    move-result p1

    .line 2105
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    .line 2106
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeLocalTime(Ljava/time/LocalTime;)V
    .locals 4

    .line 2241
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v1, v0, 0x14

    .line 2243
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 2244
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 2247
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v2, v0, 0x1

    .line 2248
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v3, v1, v0

    .line 2249
    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([CILjava/time/LocalTime;)I

    move-result p1

    .line 2250
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    .line 2251
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeNameRaw([B)V
    .locals 1

    .line 2364
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeNameRaw([C)V
    .locals 6

    .line 1518
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    .line 1519
    array-length v1, p1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent:I

    add-int/2addr v1, v2

    .line 1520
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1521
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1524
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->startObject:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1525
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->startObject:Z

    goto :goto_1

    .line 1527
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x2c

    .line 1528
    aput-char v4, v1, v0

    .line 1529
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->pretty:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, v3, 0x1

    const/16 v4, 0xa

    .line 1530
    aput-char v4, v1, v3

    move v3, v2

    .line 1531
    :goto_0
    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent:I

    if-ge v3, v4, :cond_3

    add-int/lit8 v4, v0, 0x1

    const/16 v5, 0x9

    .line 1532
    aput-char v5, v1, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    .line 1536
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v3, p1

    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1537
    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeNameRaw([CII)V
    .locals 3

    .line 1542
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->indent:I

    add-int/2addr v0, v1

    .line 1543
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1544
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1547
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->startObject:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1548
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->startObject:Z

    goto :goto_0

    .line 1550
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    .line 1552
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1553
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeNull()V
    .locals 8

    .line 67
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v0, v0, 0x4

    .line 68
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 69
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 72
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    sget-wide v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    int-to-long v4, v4

    const/4 v6, 0x1

    shl-long/2addr v4, v6

    add-long/2addr v4, v0

    sget-wide v6, Lcom/alibaba/fastjson2/util/IOUtils;->NULL_64:J

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 73
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeOffsetDateTime(Ljava/time/OffsetDateTime;)V
    .locals 6

    if-nez p1, :cond_0

    .line 2305
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeNull()V

    return-void

    .line 2309
    :cond_0
    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    .line 2310
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v2, v1, 0x2d

    .line 2312
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 2313
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 2316
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v3, v1, 0x1

    .line 2317
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v4, v2, v1

    .line 2318
    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p1

    .line 2319
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    .line 2320
    invoke-virtual {v1}, Ljava/time/LocalDate;->getYear()I

    move-result v4

    invoke-virtual {v1}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v5

    invoke-virtual {v1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v1

    invoke-static {v2, v3, v4, v5, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([CIIII)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x54

    .line 2321
    aput-char v4, v2, v1

    .line 2322
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([CILjava/time/LocalTime;)I

    move-result p1

    .line 2323
    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x5a

    .line 2324
    aput-char v1, v2, p1

    goto :goto_0

    .line 2326
    :cond_2
    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2327
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 2328
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    .line 2330
    :goto_0
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    .line 2331
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeOffsetTime(Ljava/time/OffsetTime;)V
    .locals 5

    if-nez p1, :cond_0

    .line 2337
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeNull()V

    return-void

    .line 2341
    :cond_0
    invoke-virtual {p1}, Ljava/time/OffsetTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    .line 2342
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v2, v1, 0x19

    .line 2344
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 2345
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 2348
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v3, v1, 0x1

    .line 2349
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v4, v2, v1

    .line 2350
    invoke-virtual {p1}, Ljava/time/OffsetTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([CILjava/time/LocalTime;)I

    move-result p1

    .line 2351
    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x5a

    .line 2352
    aput-char v1, v2, p1

    goto :goto_0

    .line 2354
    :cond_2
    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2355
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 2356
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    .line 2358
    :goto_0
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    .line 2359
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeRaw(C)V
    .locals 3

    .line 1499
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 1500
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1502
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    aput-char p1, v0, v1

    return-void
.end method

.method public final writeRaw(CC)V
    .locals 3

    .line 1507
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v1, v0, 0x1

    .line 1508
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    add-int/lit8 v2, v0, 0x2

    .line 1509
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1511
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    aput-char p1, v2, v0

    .line 1512
    aput-char p2, v2, v1

    add-int/lit8 v0, v0, 0x2

    .line 1513
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeRaw(Ljava/lang/String;)V
    .locals 4

    .line 1364
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1365
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1366
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeRaw([B)V
    .locals 1

    .line 2478
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeRaw([CII)V
    .locals 2

    .line 1373
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/2addr v0, p3

    .line 1374
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1375
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1378
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1379
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeReference(Ljava/lang/String;)V
    .locals 3

    .line 1144
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->lastReference:Ljava/lang/String;

    .line 1146
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->REF_PREF:[C

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeRaw([CII)V

    .line 1147
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeString(Ljava/lang/String;)V

    .line 1148
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    .line 1149
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v0, v0

    if-ne p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 1150
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    const/16 v1, 0x7d

    aput-char v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    .line 1153
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 9

    if-nez p1, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeStringNull()V

    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v1

    .line 355
    :goto_0
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v7

    cmp-long v2, v5, v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v1

    .line 357
    :goto_1
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    .line 359
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 360
    iget v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x2

    .line 361
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v7, v7

    if-lt v6, v7, :cond_3

    .line 362
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    :cond_3
    move v6, v1

    :goto_2
    if-ge v6, v5, :cond_7

    .line 366
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_6

    if-eq v7, v3, :cond_6

    const/16 v8, 0x20

    if-lt v7, v8, :cond_6

    if-eqz v2, :cond_4

    const/16 v8, 0x3c

    if-eq v7, v8, :cond_6

    const/16 v8, 0x3e

    if-eq v7, v8, :cond_6

    const/16 v8, 0x28

    if-eq v7, v8, :cond_6

    const/16 v8, 0x29

    if-eq v7, v8, :cond_6

    :cond_4
    if-eqz v0, :cond_5

    const/16 v8, 0x7f

    if-le v7, v8, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    move v0, v4

    goto :goto_4

    :cond_7
    move v0, v1

    :goto_4
    if-nez v0, :cond_8

    .line 379
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    .line 380
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v6, v0, 0x1

    .line 381
    aput-char v3, v2, v0

    .line 382
    invoke-virtual {p1, v1, v5, v2, v6}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v6, v5

    .line 384
    aput-char v3, v2, v6

    add-int/2addr v6, v4

    .line 385
    iput v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void

    .line 389
    :cond_8
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeStringEscape(Ljava/lang/String;)V

    return-void
.end method

.method public final writeString(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 239
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 240
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    const/4 v0, 0x0

    .line 244
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    if-eqz v0, :cond_2

    .line 246
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 247
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 249
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    const/16 v4, 0x2c

    aput-char v4, v2, v3

    .line 252
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 253
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeString(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_3
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v0, v0

    if-ne p1, v0, :cond_4

    .line 257
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 259
    :cond_4
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    const/16 v1, 0x5d

    aput-char v1, p1, v0

    return-void
.end method

.method public final writeString([C)V
    .locals 6

    if-nez p1, :cond_0

    .line 2668
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeStringNull()V

    return-void

    .line 2672
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

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

    :goto_0
    move v3, v1

    .line 2674
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_4

    .line 2675
    aget-char v4, p1, v3

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_5

    .line 2676
    iget-char v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    if-eq v4, v5, :cond_5

    const/16 v5, 0x20

    if-ge v4, v5, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_5

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_5

    const/16 v5, 0x28

    if-eq v4, v5, :cond_5

    const/16 v5, 0x29

    if-ne v4, v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v2, v1

    :cond_5
    :goto_2
    if-nez v2, :cond_7

    .line 2689
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    array-length v2, p1

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    .line 2690
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v2, v2

    if-le v0, v2, :cond_6

    .line 2691
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 2694
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v3, v0, v2

    .line 2695
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    array-length v3, p1

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2696
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    .line 2697
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v1, p1, v0

    return-void

    .line 2701
    :cond_7
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeStringEscape([C)V

    return-void
.end method

.method public final writeString([CII)V
    .locals 4

    if-nez p1, :cond_0

    .line 2706
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeStringNull()V

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, p2

    :goto_0
    if-ge v1, p3, :cond_3

    .line 2712
    aget-char v2, p1, v1

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_2

    aget-char v2, p1, v1

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_5

    .line 2720
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x2

    .line 2721
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 2722
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 2725
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v2, v0, v1

    .line 2726
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2727
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    .line 2728
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    iget-char p3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char p3, p1, p2

    return-void

    .line 2732
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeStringEscape(Ljava/lang/String;)V

    return-void
.end method

.method public final writeString([CIIZ)V
    .locals 9

    .line 975
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 977
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    .line 978
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    if-eqz p4, :cond_1

    add-int/lit8 v3, v2, 0x2

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v0, :cond_2

    mul-int/lit8 v4, p3, 0x6

    goto :goto_2

    :cond_2
    mul-int/lit8 v4, p3, 0x2

    :goto_2
    add-int/2addr v3, v4

    .line 986
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v4, v4

    sub-int v4, v3, v4

    if-lez v4, :cond_3

    .line 987
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 990
    :cond_3
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    if-eqz p4, :cond_4

    add-int/lit8 v4, v2, 0x1

    .line 992
    aput-char v1, v3, v2

    move v2, v4

    :cond_4
    :goto_3
    if-ge p2, p3, :cond_9

    .line 996
    aget-char v4, p1, p2

    const/16 v5, 0x22

    const/16 v6, 0x5c

    if-eq v4, v5, :cond_7

    const/16 v5, 0x27

    if-eq v4, v5, :cond_7

    if-eq v4, v6, :cond_6

    const/16 v5, 0x31

    const/16 v7, 0x75

    const/16 v8, 0x30

    packed-switch v4, :pswitch_data_0

    if-eqz v0, :cond_5

    const/16 v5, 0x7f

    if-le v4, v5, :cond_5

    .line 1096
    aput-char v6, v3, v2

    add-int/lit8 v5, v2, 0x1

    .line 1097
    aput-char v7, v3, v5

    add-int/lit8 v5, v2, 0x2

    .line 1098
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0xc

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v3, v5

    add-int/lit8 v5, v2, 0x3

    .line 1099
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0x8

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v3, v5

    add-int/lit8 v5, v2, 0x4

    .line 1100
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v3, v5

    add-int/lit8 v5, v2, 0x5

    .line 1101
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v3, v5

    goto/16 :goto_6

    :cond_5
    add-int/lit8 v5, v2, 0x1

    .line 1104
    aput-char v4, v3, v2

    :goto_4
    move v2, v5

    goto/16 :goto_7

    .line 1086
    :pswitch_0
    aput-char v6, v3, v2

    add-int/lit8 v6, v2, 0x1

    .line 1087
    aput-char v7, v3, v6

    add-int/lit8 v6, v2, 0x2

    .line 1088
    aput-char v8, v3, v6

    add-int/lit8 v6, v2, 0x3

    .line 1089
    aput-char v8, v3, v6

    add-int/lit8 v6, v2, 0x4

    .line 1090
    aput-char v5, v3, v6

    add-int/lit8 v5, v2, 0x5

    add-int/lit8 v4, v4, -0x1a

    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    .line 1091
    aput-char v4, v3, v5

    goto/16 :goto_6

    .line 1072
    :pswitch_1
    aput-char v6, v3, v2

    add-int/lit8 v6, v2, 0x1

    .line 1073
    aput-char v7, v3, v6

    add-int/lit8 v6, v2, 0x2

    .line 1074
    aput-char v8, v3, v6

    add-int/lit8 v6, v2, 0x3

    .line 1075
    aput-char v8, v3, v6

    add-int/lit8 v6, v2, 0x4

    .line 1076
    aput-char v5, v3, v6

    add-int/lit8 v5, v2, 0x5

    add-int/lit8 v4, v4, -0x10

    add-int/2addr v4, v8

    int-to-char v4, v4

    .line 1077
    aput-char v4, v3, v5

    goto :goto_6

    .line 1011
    :pswitch_2
    aput-char v6, v3, v2

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x72

    .line 1012
    aput-char v5, v3, v4

    goto :goto_5

    .line 1026
    :pswitch_3
    aput-char v6, v3, v2

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x66

    .line 1027
    aput-char v5, v3, v4

    goto :goto_5

    .line 1054
    :pswitch_4
    aput-char v6, v3, v2

    add-int/lit8 v5, v2, 0x1

    .line 1055
    aput-char v7, v3, v5

    add-int/lit8 v5, v2, 0x2

    .line 1056
    aput-char v8, v3, v5

    add-int/lit8 v5, v2, 0x3

    .line 1057
    aput-char v8, v3, v5

    add-int/lit8 v5, v2, 0x4

    .line 1058
    aput-char v8, v3, v5

    add-int/lit8 v5, v2, 0x5

    add-int/lit8 v4, v4, -0xa

    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    .line 1059
    aput-char v4, v3, v5

    goto :goto_6

    .line 1016
    :pswitch_5
    aput-char v6, v3, v2

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x6e

    .line 1017
    aput-char v5, v3, v4

    goto :goto_5

    .line 1031
    :pswitch_6
    aput-char v6, v3, v2

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x74

    .line 1032
    aput-char v5, v3, v4

    goto :goto_5

    .line 1021
    :pswitch_7
    aput-char v6, v3, v2

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x62

    .line 1022
    aput-char v5, v3, v4

    :goto_5
    add-int/lit8 v2, v2, 0x2

    goto :goto_7

    .line 1043
    :pswitch_8
    aput-char v6, v3, v2

    add-int/lit8 v5, v2, 0x1

    .line 1044
    aput-char v7, v3, v5

    add-int/lit8 v5, v2, 0x2

    .line 1045
    aput-char v8, v3, v5

    add-int/lit8 v5, v2, 0x3

    .line 1046
    aput-char v8, v3, v5

    add-int/lit8 v5, v2, 0x4

    .line 1047
    aput-char v8, v3, v5

    add-int/lit8 v5, v2, 0x5

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    .line 1048
    aput-char v4, v3, v5

    :goto_6
    add-int/lit8 v2, v2, 0x6

    goto :goto_7

    .line 1006
    :cond_6
    aput-char v6, v3, v2

    add-int/lit8 v5, v2, 0x1

    .line 1007
    aput-char v4, v3, v5

    goto :goto_5

    :cond_7
    if-ne v4, v1, :cond_8

    add-int/lit8 v5, v2, 0x1

    .line 1001
    aput-char v6, v3, v2

    move v2, v5

    :cond_8
    add-int/lit8 v5, v2, 0x1

    .line 1003
    aput-char v4, v3, v2

    goto/16 :goto_4

    :goto_7
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_3

    :cond_9
    if-eqz p4, :cond_a

    add-int/lit8 p1, v2, 0x1

    .line 1111
    aput-char v1, v3, v2

    move v2, p1

    .line 1113
    :cond_a
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

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

.method public final writeString([Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    .line 1118
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeArrayNull()V

    return-void

    .line 1122
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->startArray()V

    const/4 v0, 0x0

    .line 1123
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    if-eqz v0, :cond_1

    .line 1125
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeComma()V

    .line 1128
    :cond_1
    aget-object v1, p1, v0

    if-nez v1, :cond_3

    .line 1130
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->isEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    .line 1131
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 1133
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeNull()V

    goto :goto_1

    .line 1137
    :cond_3
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeString(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1139
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->endArray()V

    return-void
.end method

.method protected final writeStringEscape(Ljava/lang/String;)V
    .locals 13

    .line 393
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 394
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    .line 395
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v3

    .line 396
    :goto_0
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v7, v9

    cmp-long v4, v7, v4

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v3

    .line 398
    :goto_1
    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    mul-int/lit8 v7, v0, 0x6

    add-int/2addr v7, v5

    add-int/lit8 v7, v7, 0x2

    .line 399
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 401
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v8, v5, 0x1

    .line 402
    aput-char v1, v7, v5

    :goto_2
    if-ge v3, v0, :cond_8

    .line 404
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v9, 0x22

    const/16 v10, 0x5c

    if-eq v5, v9, :cond_6

    const/16 v9, 0x3c

    const/16 v11, 0x75

    const/16 v12, 0x30

    if-eq v5, v9, :cond_4

    const/16 v9, 0x3e

    if-eq v5, v9, :cond_4

    if-eq v5, v10, :cond_3

    const/16 v9, 0x31

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    if-eqz v2, :cond_2

    const/16 v9, 0x7f

    if-le v5, v9, :cond_2

    .line 520
    aput-char v10, v7, v8

    add-int/lit8 v9, v8, 0x1

    .line 521
    aput-char v11, v7, v9

    add-int/lit8 v9, v8, 0x2

    .line 522
    sget-object v10, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    ushr-int/lit8 v11, v5, 0xc

    and-int/lit8 v11, v11, 0xf

    aget-char v10, v10, v11

    aput-char v10, v7, v9

    add-int/lit8 v9, v8, 0x3

    .line 523
    sget-object v10, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    ushr-int/lit8 v11, v5, 0x8

    and-int/lit8 v11, v11, 0xf

    aget-char v10, v10, v11

    aput-char v10, v7, v9

    add-int/lit8 v9, v8, 0x4

    .line 524
    sget-object v10, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    ushr-int/lit8 v11, v5, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v10, v10, v11

    aput-char v10, v7, v9

    add-int/lit8 v9, v8, 0x5

    .line 525
    sget-object v10, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v10, v5

    aput-char v5, v7, v9

    goto/16 :goto_5

    :cond_2
    add-int/lit8 v9, v8, 0x1

    .line 528
    aput-char v5, v7, v8

    :goto_3
    move v8, v9

    goto/16 :goto_6

    .line 494
    :pswitch_0
    aput-char v10, v7, v8

    add-int/lit8 v10, v8, 0x1

    .line 495
    aput-char v11, v7, v10

    add-int/lit8 v10, v8, 0x2

    .line 496
    aput-char v12, v7, v10

    add-int/lit8 v10, v8, 0x3

    .line 497
    aput-char v12, v7, v10

    add-int/lit8 v10, v8, 0x4

    .line 498
    aput-char v9, v7, v10

    add-int/lit8 v9, v8, 0x5

    add-int/lit8 v5, v5, -0x1a

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    .line 499
    aput-char v5, v7, v9

    goto/16 :goto_5

    .line 480
    :pswitch_1
    aput-char v10, v7, v8

    add-int/lit8 v10, v8, 0x1

    .line 481
    aput-char v11, v7, v10

    add-int/lit8 v10, v8, 0x2

    .line 482
    aput-char v12, v7, v10

    add-int/lit8 v10, v8, 0x3

    .line 483
    aput-char v12, v7, v10

    add-int/lit8 v10, v8, 0x4

    .line 484
    aput-char v9, v7, v10

    add-int/lit8 v9, v8, 0x5

    add-int/lit8 v5, v5, -0x10

    add-int/2addr v5, v12

    int-to-char v5, v5

    .line 485
    aput-char v5, v7, v9

    goto :goto_5

    .line 419
    :pswitch_2
    aput-char v10, v7, v8

    add-int/lit8 v5, v8, 0x1

    const/16 v9, 0x72

    .line 420
    aput-char v9, v7, v5

    goto :goto_4

    .line 434
    :pswitch_3
    aput-char v10, v7, v8

    add-int/lit8 v5, v8, 0x1

    const/16 v9, 0x66

    .line 435
    aput-char v9, v7, v5

    goto :goto_4

    .line 462
    :pswitch_4
    aput-char v10, v7, v8

    add-int/lit8 v9, v8, 0x1

    .line 463
    aput-char v11, v7, v9

    add-int/lit8 v9, v8, 0x2

    .line 464
    aput-char v12, v7, v9

    add-int/lit8 v9, v8, 0x3

    .line 465
    aput-char v12, v7, v9

    add-int/lit8 v9, v8, 0x4

    .line 466
    aput-char v12, v7, v9

    add-int/lit8 v9, v8, 0x5

    add-int/lit8 v5, v5, -0xa

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    .line 467
    aput-char v5, v7, v9

    goto :goto_5

    .line 424
    :pswitch_5
    aput-char v10, v7, v8

    add-int/lit8 v5, v8, 0x1

    const/16 v9, 0x6e

    .line 425
    aput-char v9, v7, v5

    goto :goto_4

    .line 439
    :pswitch_6
    aput-char v10, v7, v8

    add-int/lit8 v5, v8, 0x1

    const/16 v9, 0x74

    .line 440
    aput-char v9, v7, v5

    goto :goto_4

    .line 429
    :pswitch_7
    aput-char v10, v7, v8

    add-int/lit8 v5, v8, 0x1

    const/16 v9, 0x62

    .line 430
    aput-char v9, v7, v5

    :goto_4
    add-int/lit8 v8, v8, 0x2

    goto :goto_6

    .line 451
    :pswitch_8
    aput-char v10, v7, v8

    add-int/lit8 v9, v8, 0x1

    .line 452
    aput-char v11, v7, v9

    add-int/lit8 v9, v8, 0x2

    .line 453
    aput-char v12, v7, v9

    add-int/lit8 v9, v8, 0x3

    .line 454
    aput-char v12, v7, v9

    add-int/lit8 v9, v8, 0x4

    .line 455
    aput-char v12, v7, v9

    add-int/lit8 v9, v8, 0x5

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    .line 456
    aput-char v5, v7, v9

    :goto_5
    add-int/lit8 v8, v8, 0x6

    goto :goto_6

    .line 414
    :cond_3
    aput-char v10, v7, v8

    add-int/lit8 v9, v8, 0x1

    .line 415
    aput-char v5, v7, v9

    goto :goto_4

    :cond_4
    :pswitch_9
    if-eqz v4, :cond_5

    .line 507
    aput-char v10, v7, v8

    add-int/lit8 v9, v8, 0x1

    .line 508
    aput-char v11, v7, v9

    add-int/lit8 v9, v8, 0x2

    .line 509
    aput-char v12, v7, v9

    add-int/lit8 v9, v8, 0x3

    .line 510
    aput-char v12, v7, v9

    add-int/lit8 v9, v8, 0x4

    .line 511
    sget-object v10, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    ushr-int/lit8 v11, v5, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v10, v10, v11

    aput-char v10, v7, v9

    add-int/lit8 v9, v8, 0x5

    .line 512
    sget-object v10, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v10, v5

    aput-char v5, v7, v9

    goto :goto_5

    :cond_5
    add-int/lit8 v9, v8, 0x1

    .line 515
    aput-char v5, v7, v8

    goto/16 :goto_3

    :cond_6
    :pswitch_a
    if-ne v5, v1, :cond_7

    add-int/lit8 v9, v8, 0x1

    .line 409
    aput-char v10, v7, v8

    move v8, v9

    :cond_7
    add-int/lit8 v9, v8, 0x1

    .line 411
    aput-char v5, v7, v8

    goto/16 :goto_3

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 533
    :cond_8
    aput-char v1, v7, v8

    add-int/2addr v8, v6

    .line 534
    iput v8, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

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

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_a
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method protected final writeStringEscape([B)V
    .locals 12

    .line 828
    array-length v0, p1

    .line 829
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    .line 830
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v3

    .line 831
    :goto_0
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v7, v9

    cmp-long v4, v7, v4

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v3

    .line 833
    :goto_1
    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    mul-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x2

    .line 834
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 836
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v7, v5, 0x1

    .line 837
    aput-char v1, v0, v5

    .line 838
    :goto_2
    array-length v5, p1

    if-ge v3, v5, :cond_8

    .line 839
    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    const/16 v8, 0x22

    const/16 v9, 0x5c

    if-eq v5, v8, :cond_6

    const/16 v8, 0x3c

    const/16 v10, 0x75

    const/16 v11, 0x30

    if-eq v5, v8, :cond_4

    const/16 v8, 0x3e

    if-eq v5, v8, :cond_4

    if-eq v5, v9, :cond_3

    const/16 v8, 0x31

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    if-eqz v2, :cond_2

    const/16 v8, 0x7f

    if-le v5, v8, :cond_2

    .line 956
    aput-char v9, v0, v7

    add-int/lit8 v8, v7, 0x1

    .line 957
    aput-char v10, v0, v8

    add-int/lit8 v8, v7, 0x2

    .line 958
    aput-char v11, v0, v8

    add-int/lit8 v8, v7, 0x3

    .line 959
    aput-char v11, v0, v8

    add-int/lit8 v8, v7, 0x4

    .line 960
    sget-object v9, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    ushr-int/lit8 v10, v5, 0x4

    and-int/lit8 v10, v10, 0xf

    aget-char v9, v9, v10

    aput-char v9, v0, v8

    add-int/lit8 v8, v7, 0x5

    .line 961
    sget-object v9, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v9, v5

    aput-char v5, v0, v8

    goto/16 :goto_5

    :cond_2
    add-int/lit8 v8, v7, 0x1

    .line 964
    aput-char v5, v0, v7

    :goto_3
    move v7, v8

    goto/16 :goto_6

    .line 930
    :pswitch_0
    aput-char v9, v0, v7

    add-int/lit8 v9, v7, 0x1

    .line 931
    aput-char v10, v0, v9

    add-int/lit8 v9, v7, 0x2

    .line 932
    aput-char v11, v0, v9

    add-int/lit8 v9, v7, 0x3

    .line 933
    aput-char v11, v0, v9

    add-int/lit8 v9, v7, 0x4

    .line 934
    aput-char v8, v0, v9

    add-int/lit8 v8, v7, 0x5

    add-int/lit8 v5, v5, -0x1a

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    .line 935
    aput-char v5, v0, v8

    goto/16 :goto_5

    .line 916
    :pswitch_1
    aput-char v9, v0, v7

    add-int/lit8 v9, v7, 0x1

    .line 917
    aput-char v10, v0, v9

    add-int/lit8 v9, v7, 0x2

    .line 918
    aput-char v11, v0, v9

    add-int/lit8 v9, v7, 0x3

    .line 919
    aput-char v11, v0, v9

    add-int/lit8 v9, v7, 0x4

    .line 920
    aput-char v8, v0, v9

    add-int/lit8 v8, v7, 0x5

    add-int/lit8 v5, v5, -0x10

    add-int/2addr v5, v11

    int-to-char v5, v5

    .line 921
    aput-char v5, v0, v8

    goto :goto_5

    .line 855
    :pswitch_2
    aput-char v9, v0, v7

    add-int/lit8 v5, v7, 0x1

    const/16 v8, 0x72

    .line 856
    aput-char v8, v0, v5

    goto :goto_4

    .line 870
    :pswitch_3
    aput-char v9, v0, v7

    add-int/lit8 v5, v7, 0x1

    const/16 v8, 0x66

    .line 871
    aput-char v8, v0, v5

    goto :goto_4

    .line 898
    :pswitch_4
    aput-char v9, v0, v7

    add-int/lit8 v8, v7, 0x1

    .line 899
    aput-char v10, v0, v8

    add-int/lit8 v8, v7, 0x2

    .line 900
    aput-char v11, v0, v8

    add-int/lit8 v8, v7, 0x3

    .line 901
    aput-char v11, v0, v8

    add-int/lit8 v8, v7, 0x4

    .line 902
    aput-char v11, v0, v8

    add-int/lit8 v8, v7, 0x5

    add-int/lit8 v5, v5, -0xa

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    .line 903
    aput-char v5, v0, v8

    goto :goto_5

    .line 860
    :pswitch_5
    aput-char v9, v0, v7

    add-int/lit8 v5, v7, 0x1

    const/16 v8, 0x6e

    .line 861
    aput-char v8, v0, v5

    goto :goto_4

    .line 875
    :pswitch_6
    aput-char v9, v0, v7

    add-int/lit8 v5, v7, 0x1

    const/16 v8, 0x74

    .line 876
    aput-char v8, v0, v5

    goto :goto_4

    .line 865
    :pswitch_7
    aput-char v9, v0, v7

    add-int/lit8 v5, v7, 0x1

    const/16 v8, 0x62

    .line 866
    aput-char v8, v0, v5

    :goto_4
    add-int/lit8 v7, v7, 0x2

    goto :goto_6

    .line 887
    :pswitch_8
    aput-char v9, v0, v7

    add-int/lit8 v8, v7, 0x1

    .line 888
    aput-char v10, v0, v8

    add-int/lit8 v8, v7, 0x2

    .line 889
    aput-char v11, v0, v8

    add-int/lit8 v8, v7, 0x3

    .line 890
    aput-char v11, v0, v8

    add-int/lit8 v8, v7, 0x4

    .line 891
    aput-char v11, v0, v8

    add-int/lit8 v8, v7, 0x5

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    .line 892
    aput-char v5, v0, v8

    :goto_5
    add-int/lit8 v7, v7, 0x6

    goto :goto_6

    .line 850
    :cond_3
    aput-char v9, v0, v7

    add-int/lit8 v8, v7, 0x1

    .line 851
    aput-char v5, v0, v8

    goto :goto_4

    :cond_4
    :pswitch_9
    if-eqz v4, :cond_5

    .line 943
    aput-char v9, v0, v7

    add-int/lit8 v8, v7, 0x1

    .line 944
    aput-char v10, v0, v8

    add-int/lit8 v8, v7, 0x2

    .line 945
    aput-char v11, v0, v8

    add-int/lit8 v8, v7, 0x3

    .line 946
    aput-char v11, v0, v8

    add-int/lit8 v8, v7, 0x4

    .line 947
    sget-object v9, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    ushr-int/lit8 v10, v5, 0x4

    and-int/lit8 v10, v10, 0xf

    aget-char v9, v9, v10

    aput-char v9, v0, v8

    add-int/lit8 v8, v7, 0x5

    .line 948
    sget-object v9, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v9, v5

    aput-char v5, v0, v8

    goto :goto_5

    :cond_5
    add-int/lit8 v8, v7, 0x1

    .line 951
    aput-char v5, v0, v7

    goto/16 :goto_3

    :cond_6
    :pswitch_a
    if-ne v5, v1, :cond_7

    add-int/lit8 v8, v7, 0x1

    .line 845
    aput-char v9, v0, v7

    move v7, v8

    :cond_7
    add-int/lit8 v8, v7, 0x1

    .line 847
    aput-char v5, v0, v7

    goto/16 :goto_3

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 969
    :cond_8
    aput-char v1, v0, v7

    add-int/2addr v7, v6

    .line 970
    iput v7, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

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

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_a
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method protected final writeStringEscape([C)V
    .locals 12

    .line 683
    array-length v0, p1

    .line 684
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    .line 685
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v3

    .line 686
    :goto_0
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v7, v9

    cmp-long v4, v7, v4

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v3

    .line 688
    :goto_1
    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    mul-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x2

    .line 689
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 691
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v7, v5, 0x1

    .line 692
    aput-char v1, v0, v5

    .line 693
    :goto_2
    array-length v5, p1

    if-ge v3, v5, :cond_8

    .line 694
    aget-char v5, p1, v3

    const/16 v8, 0x22

    const/16 v9, 0x5c

    if-eq v5, v8, :cond_6

    const/16 v8, 0x3c

    const/16 v10, 0x75

    const/16 v11, 0x30

    if-eq v5, v8, :cond_4

    const/16 v8, 0x3e

    if-eq v5, v8, :cond_4

    if-eq v5, v9, :cond_3

    const/16 v8, 0x31

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    if-eqz v2, :cond_2

    const/16 v8, 0x7f

    if-le v5, v8, :cond_2

    .line 810
    aput-char v9, v0, v7

    add-int/lit8 v8, v7, 0x1

    .line 811
    aput-char v10, v0, v8

    add-int/lit8 v8, v7, 0x2

    .line 812
    sget-object v9, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    ushr-int/lit8 v10, v5, 0xc

    and-int/lit8 v10, v10, 0xf

    aget-char v9, v9, v10

    aput-char v9, v0, v8

    add-int/lit8 v8, v7, 0x3

    .line 813
    sget-object v9, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    ushr-int/lit8 v10, v5, 0x8

    and-int/lit8 v10, v10, 0xf

    aget-char v9, v9, v10

    aput-char v9, v0, v8

    add-int/lit8 v8, v7, 0x4

    .line 814
    sget-object v9, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    ushr-int/lit8 v10, v5, 0x4

    and-int/lit8 v10, v10, 0xf

    aget-char v9, v9, v10

    aput-char v9, v0, v8

    add-int/lit8 v8, v7, 0x5

    .line 815
    sget-object v9, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v9, v5

    aput-char v5, v0, v8

    goto/16 :goto_5

    :cond_2
    add-int/lit8 v8, v7, 0x1

    .line 818
    aput-char v5, v0, v7

    :goto_3
    move v7, v8

    goto/16 :goto_6

    .line 784
    :pswitch_0
    aput-char v9, v0, v7

    add-int/lit8 v9, v7, 0x1

    .line 785
    aput-char v10, v0, v9

    add-int/lit8 v9, v7, 0x2

    .line 786
    aput-char v11, v0, v9

    add-int/lit8 v9, v7, 0x3

    .line 787
    aput-char v11, v0, v9

    add-int/lit8 v9, v7, 0x4

    .line 788
    aput-char v8, v0, v9

    add-int/lit8 v8, v7, 0x5

    add-int/lit8 v5, v5, -0x1a

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    .line 789
    aput-char v5, v0, v8

    goto/16 :goto_5

    .line 770
    :pswitch_1
    aput-char v9, v0, v7

    add-int/lit8 v9, v7, 0x1

    .line 771
    aput-char v10, v0, v9

    add-int/lit8 v9, v7, 0x2

    .line 772
    aput-char v11, v0, v9

    add-int/lit8 v9, v7, 0x3

    .line 773
    aput-char v11, v0, v9

    add-int/lit8 v9, v7, 0x4

    .line 774
    aput-char v8, v0, v9

    add-int/lit8 v8, v7, 0x5

    add-int/lit8 v5, v5, -0x10

    add-int/2addr v5, v11

    int-to-char v5, v5

    .line 775
    aput-char v5, v0, v8

    goto :goto_5

    .line 709
    :pswitch_2
    aput-char v9, v0, v7

    add-int/lit8 v5, v7, 0x1

    const/16 v8, 0x72

    .line 710
    aput-char v8, v0, v5

    goto :goto_4

    .line 724
    :pswitch_3
    aput-char v9, v0, v7

    add-int/lit8 v5, v7, 0x1

    const/16 v8, 0x66

    .line 725
    aput-char v8, v0, v5

    goto :goto_4

    .line 752
    :pswitch_4
    aput-char v9, v0, v7

    add-int/lit8 v8, v7, 0x1

    .line 753
    aput-char v10, v0, v8

    add-int/lit8 v8, v7, 0x2

    .line 754
    aput-char v11, v0, v8

    add-int/lit8 v8, v7, 0x3

    .line 755
    aput-char v11, v0, v8

    add-int/lit8 v8, v7, 0x4

    .line 756
    aput-char v11, v0, v8

    add-int/lit8 v8, v7, 0x5

    add-int/lit8 v5, v5, -0xa

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    .line 757
    aput-char v5, v0, v8

    goto :goto_5

    .line 714
    :pswitch_5
    aput-char v9, v0, v7

    add-int/lit8 v5, v7, 0x1

    const/16 v8, 0x6e

    .line 715
    aput-char v8, v0, v5

    goto :goto_4

    .line 729
    :pswitch_6
    aput-char v9, v0, v7

    add-int/lit8 v5, v7, 0x1

    const/16 v8, 0x74

    .line 730
    aput-char v8, v0, v5

    goto :goto_4

    .line 719
    :pswitch_7
    aput-char v9, v0, v7

    add-int/lit8 v5, v7, 0x1

    const/16 v8, 0x62

    .line 720
    aput-char v8, v0, v5

    :goto_4
    add-int/lit8 v7, v7, 0x2

    goto :goto_6

    .line 741
    :pswitch_8
    aput-char v9, v0, v7

    add-int/lit8 v8, v7, 0x1

    .line 742
    aput-char v10, v0, v8

    add-int/lit8 v8, v7, 0x2

    .line 743
    aput-char v11, v0, v8

    add-int/lit8 v8, v7, 0x3

    .line 744
    aput-char v11, v0, v8

    add-int/lit8 v8, v7, 0x4

    .line 745
    aput-char v11, v0, v8

    add-int/lit8 v8, v7, 0x5

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    .line 746
    aput-char v5, v0, v8

    :goto_5
    add-int/lit8 v7, v7, 0x6

    goto :goto_6

    .line 704
    :cond_3
    aput-char v9, v0, v7

    add-int/lit8 v8, v7, 0x1

    .line 705
    aput-char v5, v0, v8

    goto :goto_4

    :cond_4
    :pswitch_9
    if-eqz v4, :cond_5

    .line 797
    aput-char v9, v0, v7

    add-int/lit8 v8, v7, 0x1

    .line 798
    aput-char v10, v0, v8

    add-int/lit8 v8, v7, 0x2

    .line 799
    aput-char v11, v0, v8

    add-int/lit8 v8, v7, 0x3

    .line 800
    aput-char v11, v0, v8

    add-int/lit8 v8, v7, 0x4

    .line 801
    sget-object v9, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    ushr-int/lit8 v10, v5, 0x4

    and-int/lit8 v10, v10, 0xf

    aget-char v9, v9, v10

    aput-char v9, v0, v8

    add-int/lit8 v8, v7, 0x5

    .line 802
    sget-object v9, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v9, v5

    aput-char v5, v0, v8

    goto :goto_5

    :cond_5
    add-int/lit8 v8, v7, 0x1

    .line 805
    aput-char v5, v0, v7

    goto/16 :goto_3

    :cond_6
    :pswitch_a
    if-ne v5, v1, :cond_7

    add-int/lit8 v8, v7, 0x1

    .line 699
    aput-char v9, v0, v7

    move v7, v8

    :cond_7
    add-int/lit8 v8, v7, 0x1

    .line 701
    aput-char v5, v0, v7

    goto/16 :goto_3

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 823
    :cond_8
    aput-char v1, v0, v7

    add-int/2addr v7, v6

    .line 824
    iput v7, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

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

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_a
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method protected final writeStringEscapeUTF16([B)V
    .locals 13

    .line 538
    array-length v0, p1

    .line 539
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    .line 540
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v3

    .line 541
    :goto_0
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v7, v9

    cmp-long v4, v7, v4

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v3

    .line 543
    :goto_1
    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    mul-int/lit8 v7, v0, 0x6

    add-int/2addr v7, v5

    add-int/lit8 v7, v7, 0x2

    .line 544
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 546
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v8, v5, 0x1

    .line 547
    aput-char v1, v7, v5

    :goto_2
    if-ge v3, v0, :cond_8

    .line 549
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget v9, Lsun/misc/Unsafe;->ARRAY_BYTE_BASE_OFFSET:I

    int-to-long v9, v9

    int-to-long v11, v3

    add-long/2addr v9, v11

    invoke-virtual {v5, p1, v9, v10}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v5

    const/16 v9, 0x22

    const/16 v10, 0x5c

    if-eq v5, v9, :cond_6

    const/16 v9, 0x3c

    const/16 v11, 0x75

    const/16 v12, 0x30

    if-eq v5, v9, :cond_4

    const/16 v9, 0x3e

    if-eq v5, v9, :cond_4

    if-eq v5, v10, :cond_3

    const/16 v9, 0x31

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    if-eqz v2, :cond_2

    const/16 v9, 0x7f

    if-le v5, v9, :cond_2

    .line 665
    aput-char v10, v7, v8

    add-int/lit8 v9, v8, 0x1

    .line 666
    aput-char v11, v7, v9

    add-int/lit8 v9, v8, 0x2

    .line 667
    sget-object v10, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    ushr-int/lit8 v11, v5, 0xc

    and-int/lit8 v11, v11, 0xf

    aget-char v10, v10, v11

    aput-char v10, v7, v9

    add-int/lit8 v9, v8, 0x3

    .line 668
    sget-object v10, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    ushr-int/lit8 v11, v5, 0x8

    and-int/lit8 v11, v11, 0xf

    aget-char v10, v10, v11

    aput-char v10, v7, v9

    add-int/lit8 v9, v8, 0x4

    .line 669
    sget-object v10, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    ushr-int/lit8 v11, v5, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v10, v10, v11

    aput-char v10, v7, v9

    add-int/lit8 v9, v8, 0x5

    .line 670
    sget-object v10, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v10, v5

    aput-char v5, v7, v9

    goto/16 :goto_5

    :cond_2
    add-int/lit8 v9, v8, 0x1

    .line 673
    aput-char v5, v7, v8

    :goto_3
    move v8, v9

    goto/16 :goto_6

    .line 639
    :pswitch_0
    aput-char v10, v7, v8

    add-int/lit8 v10, v8, 0x1

    .line 640
    aput-char v11, v7, v10

    add-int/lit8 v10, v8, 0x2

    .line 641
    aput-char v12, v7, v10

    add-int/lit8 v10, v8, 0x3

    .line 642
    aput-char v12, v7, v10

    add-int/lit8 v10, v8, 0x4

    .line 643
    aput-char v9, v7, v10

    add-int/lit8 v9, v8, 0x5

    add-int/lit8 v5, v5, -0x1a

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    .line 644
    aput-char v5, v7, v9

    goto/16 :goto_5

    .line 625
    :pswitch_1
    aput-char v10, v7, v8

    add-int/lit8 v10, v8, 0x1

    .line 626
    aput-char v11, v7, v10

    add-int/lit8 v10, v8, 0x2

    .line 627
    aput-char v12, v7, v10

    add-int/lit8 v10, v8, 0x3

    .line 628
    aput-char v12, v7, v10

    add-int/lit8 v10, v8, 0x4

    .line 629
    aput-char v9, v7, v10

    add-int/lit8 v9, v8, 0x5

    add-int/lit8 v5, v5, -0x10

    add-int/2addr v5, v12

    int-to-char v5, v5

    .line 630
    aput-char v5, v7, v9

    goto :goto_5

    .line 564
    :pswitch_2
    aput-char v10, v7, v8

    add-int/lit8 v5, v8, 0x1

    const/16 v9, 0x72

    .line 565
    aput-char v9, v7, v5

    goto :goto_4

    .line 579
    :pswitch_3
    aput-char v10, v7, v8

    add-int/lit8 v5, v8, 0x1

    const/16 v9, 0x66

    .line 580
    aput-char v9, v7, v5

    goto :goto_4

    .line 607
    :pswitch_4
    aput-char v10, v7, v8

    add-int/lit8 v9, v8, 0x1

    .line 608
    aput-char v11, v7, v9

    add-int/lit8 v9, v8, 0x2

    .line 609
    aput-char v12, v7, v9

    add-int/lit8 v9, v8, 0x3

    .line 610
    aput-char v12, v7, v9

    add-int/lit8 v9, v8, 0x4

    .line 611
    aput-char v12, v7, v9

    add-int/lit8 v9, v8, 0x5

    add-int/lit8 v5, v5, -0xa

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    .line 612
    aput-char v5, v7, v9

    goto :goto_5

    .line 569
    :pswitch_5
    aput-char v10, v7, v8

    add-int/lit8 v5, v8, 0x1

    const/16 v9, 0x6e

    .line 570
    aput-char v9, v7, v5

    goto :goto_4

    .line 584
    :pswitch_6
    aput-char v10, v7, v8

    add-int/lit8 v5, v8, 0x1

    const/16 v9, 0x74

    .line 585
    aput-char v9, v7, v5

    goto :goto_4

    .line 574
    :pswitch_7
    aput-char v10, v7, v8

    add-int/lit8 v5, v8, 0x1

    const/16 v9, 0x62

    .line 575
    aput-char v9, v7, v5

    :goto_4
    add-int/lit8 v8, v8, 0x2

    goto :goto_6

    .line 596
    :pswitch_8
    aput-char v10, v7, v8

    add-int/lit8 v9, v8, 0x1

    .line 597
    aput-char v11, v7, v9

    add-int/lit8 v9, v8, 0x2

    .line 598
    aput-char v12, v7, v9

    add-int/lit8 v9, v8, 0x3

    .line 599
    aput-char v12, v7, v9

    add-int/lit8 v9, v8, 0x4

    .line 600
    aput-char v12, v7, v9

    add-int/lit8 v9, v8, 0x5

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    .line 601
    aput-char v5, v7, v9

    :goto_5
    add-int/lit8 v8, v8, 0x6

    goto :goto_6

    .line 559
    :cond_3
    aput-char v10, v7, v8

    add-int/lit8 v9, v8, 0x1

    .line 560
    aput-char v5, v7, v9

    goto :goto_4

    :cond_4
    :pswitch_9
    if-eqz v4, :cond_5

    .line 652
    aput-char v10, v7, v8

    add-int/lit8 v9, v8, 0x1

    .line 653
    aput-char v11, v7, v9

    add-int/lit8 v9, v8, 0x2

    .line 654
    aput-char v12, v7, v9

    add-int/lit8 v9, v8, 0x3

    .line 655
    aput-char v12, v7, v9

    add-int/lit8 v9, v8, 0x4

    .line 656
    sget-object v10, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    ushr-int/lit8 v11, v5, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v10, v10, v11

    aput-char v10, v7, v9

    add-int/lit8 v9, v8, 0x5

    .line 657
    sget-object v10, Lcom/alibaba/fastjson2/JSONWriterUTF16;->DIGITS:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v10, v5

    aput-char v5, v7, v9

    goto :goto_5

    :cond_5
    add-int/lit8 v9, v8, 0x1

    .line 660
    aput-char v5, v7, v8

    goto/16 :goto_3

    :cond_6
    :pswitch_a
    if-ne v5, v1, :cond_7

    add-int/lit8 v9, v8, 0x1

    .line 554
    aput-char v10, v7, v8

    move v8, v9

    :cond_7
    add-int/lit8 v9, v8, 0x1

    .line 556
    aput-char v5, v7, v8

    goto/16 :goto_3

    :goto_6
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_2

    .line 678
    :cond_8
    aput-char v1, v7, v8

    add-int/2addr v8, v6

    .line 679
    iput v8, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

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

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_a
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public writeStringLatin1([B)V
    .locals 10

    if-nez p1, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeStringNull()V

    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

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

    .line 270
    :goto_0
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    .line 271
    array-length v4, p1

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    .line 272
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 273
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 277
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v5, v3, 0x1

    .line 278
    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v6, v4, v3

    .line 280
    array-length v6, p1

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_6

    aget-byte v8, p1, v7

    const/16 v9, 0x5c

    if-eq v8, v9, :cond_5

    .line 281
    iget-char v9, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    if-eq v8, v9, :cond_5

    const/16 v9, 0x20

    if-ge v8, v9, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    const/16 v9, 0x3c

    if-eq v8, v9, :cond_5

    const/16 v9, 0x3e

    if-eq v8, v9, :cond_5

    const/16 v9, 0x28

    if-eq v8, v9, :cond_5

    const/16 v9, 0x29

    if-ne v8, v9, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v9, v5, 0x1

    int-to-char v8, v8

    .line 291
    aput-char v8, v4, v5

    add-int/lit8 v7, v7, 0x1

    move v5, v9

    goto :goto_1

    :cond_5
    :goto_2
    move v1, v2

    :cond_6
    if-nez v1, :cond_7

    .line 295
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char p1, v4, v5

    add-int/2addr v5, v2

    .line 296
    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void

    .line 300
    :cond_7
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    .line 301
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeStringEscape([B)V

    return-void
.end method

.method public writeStringUTF16([B)V
    .locals 12

    if-nez p1, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeStringNull()V

    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v1

    .line 311
    :goto_0
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v7

    cmp-long v2, v5, v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v1

    .line 314
    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    .line 315
    array-length v5, p1

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x2

    .line 316
    iget-object v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v6, v6

    if-lt v5, v6, :cond_3

    .line 317
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 320
    :cond_3
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v6, v3, 0x1

    .line 321
    iget-char v7, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v7, v5, v3

    move v3, v1

    .line 323
    :goto_2
    array-length v7, p1

    if-ge v3, v7, :cond_7

    .line 324
    sget-object v7, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget v8, Lsun/misc/Unsafe;->ARRAY_BYTE_BASE_OFFSET:I

    int-to-long v8, v8

    int-to-long v10, v3

    add-long/2addr v8, v10

    invoke-virtual {v7, p1, v8, v9}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v7

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_6

    .line 325
    iget-char v8, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    if-eq v7, v8, :cond_6

    const/16 v8, 0x20

    if-lt v7, v8, :cond_6

    if-eqz v0, :cond_4

    const/16 v8, 0x3c

    if-eq v7, v8, :cond_6

    const/16 v8, 0x3e

    if-eq v7, v8, :cond_6

    const/16 v8, 0x28

    if-eq v7, v8, :cond_6

    const/16 v8, 0x29

    if-eq v7, v8, :cond_6

    :cond_4
    if-eqz v2, :cond_5

    const/16 v8, 0x7f

    if-le v7, v8, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v6, 0x1

    .line 335
    aput-char v7, v5, v6

    add-int/lit8 v3, v3, 0x2

    move v6, v8

    goto :goto_2

    :cond_6
    :goto_3
    move v1, v4

    :cond_7
    if-nez v1, :cond_8

    .line 339
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char p1, v5, v6

    add-int/2addr v6, v4

    .line 340
    iput v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void

    .line 344
    :cond_8
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeStringEscapeUTF16([B)V

    return-void
.end method

.method public final writeTimeHHMMSS8(III)V
    .locals 9

    .line 2222
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 v1, v0, 0xa

    .line 2224
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 2225
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 2228
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 2229
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    int-to-byte v3, v3

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 2230
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 v6, v0, 0x1

    int-to-long v6, v6

    const/4 v8, 0x1

    shl-long/2addr v6, v8

    add-long/2addr v4, v6

    sget-object v6, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget p1, v6, p1

    invoke-virtual {v3, v2, v4, v5, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 p1, v0, 0x3

    const/16 v3, 0x3a

    .line 2231
    aput-char v3, v2, p1

    .line 2232
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 v6, v0, 0x4

    int-to-long v6, v6

    shl-long/2addr v6, v8

    add-long/2addr v4, v6

    sget-object v6, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget p2, v6, p2

    invoke-virtual {p1, v2, v4, v5, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 p1, v0, 0x6

    .line 2233
    aput-char v3, v2, p1

    .line 2234
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 p2, v0, 0x7

    int-to-long v5, p2

    shl-long/2addr v5, v8

    add-long/2addr v3, v5

    sget-object p2, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget p2, p2, p3

    invoke-virtual {p1, v2, v3, v4, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v0, 0x9

    .line 2235
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    int-to-byte p1, p1

    int-to-char p1, p1

    aput-char p1, v2, v0

    .line 2236
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeUUID(Ljava/util/UUID;)V
    .locals 14

    if-nez p1, :cond_0

    .line 1331
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeNull()V

    return-void

    .line 1335
    :cond_0
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 1336
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 1338
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 p1, p1, 0x26

    .line 1339
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v4, v4

    if-lt p1, v4, :cond_1

    .line 1340
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 1343
    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    .line 1344
    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    const/16 v5, 0x22

    .line 1345
    aput-char v5, p1, v4

    add-int/lit8 v6, v4, 0x1

    const/16 v7, 0x38

    shr-long v8, v0, v7

    long-to-int v8, v8

    const/16 v9, 0x30

    shr-long v10, v0, v9

    long-to-int v10, v10

    .line 1346
    invoke-static {p1, v6, v8, v10}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->putLong([CIII)V

    add-int/lit8 v6, v4, 0x5

    const/16 v8, 0x28

    shr-long v10, v0, v8

    long-to-int v10, v10

    const/16 v11, 0x20

    shr-long v12, v0, v11

    long-to-int v12, v12

    .line 1347
    invoke-static {p1, v6, v10, v12}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->putLong([CIII)V

    add-int/lit8 v6, v4, 0x9

    const/16 v10, 0x2d

    .line 1348
    aput-char v10, p1, v6

    add-int/lit8 v6, v4, 0xa

    long-to-int v0, v0

    shr-int/lit8 v1, v0, 0x18

    shr-int/lit8 v12, v0, 0x10

    .line 1349
    invoke-static {p1, v6, v1, v12}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->putLong([CIII)V

    add-int/lit8 v1, v4, 0xe

    .line 1350
    aput-char v10, p1, v1

    add-int/lit8 v1, v4, 0xf

    shr-int/lit8 v6, v0, 0x8

    .line 1351
    invoke-static {p1, v1, v6, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->putLong([CIII)V

    add-int/lit8 v0, v4, 0x13

    .line 1352
    aput-char v10, p1, v0

    add-int/lit8 v0, v4, 0x14

    shr-long v6, v2, v7

    long-to-int v1, v6

    shr-long v6, v2, v9

    long-to-int v6, v6

    .line 1353
    invoke-static {p1, v0, v1, v6}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->putLong([CIII)V

    add-int/lit8 v0, v4, 0x18

    .line 1354
    aput-char v10, p1, v0

    add-int/lit8 v0, v4, 0x19

    shr-long v6, v2, v8

    long-to-int v1, v6

    shr-long v6, v2, v11

    long-to-int v6, v6

    .line 1355
    invoke-static {p1, v0, v1, v6}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->putLong([CIII)V

    add-int/lit8 v0, v4, 0x1d

    long-to-int v1, v2

    shr-int/lit8 v2, v1, 0x18

    shr-int/lit8 v3, v1, 0x10

    .line 1356
    invoke-static {p1, v0, v2, v3}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->putLong([CIII)V

    add-int/lit8 v0, v4, 0x21

    shr-int/lit8 v2, v1, 0x8

    .line 1357
    invoke-static {p1, v0, v2, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->putLong([CIII)V

    add-int/lit8 v4, v4, 0x25

    .line 1358
    aput-char v5, p1, v4

    .line 1359
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int/lit8 p1, p1, 0x26

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method

.method public final writeZonedDateTime(Ljava/time/ZonedDateTime;)V
    .locals 13

    if-nez p1, :cond_0

    .line 2257
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->writeNull()V

    return-void

    .line 2260
    :cond_0
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    .line 2261
    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    .line 2262
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2266
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

    .line 2269
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

    .line 2275
    :goto_1
    iget v6, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    add-int v9, v6, v3

    add-int/lit8 v9, v9, 0x26

    .line 2277
    iget-object v10, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    array-length v10, v10

    if-lt v9, v10, :cond_6

    .line 2278
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson2/JSONWriterUTF16;->ensureCapacity(I)V

    .line 2281
    :cond_6
    iget-object v9, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->chars:[C

    add-int/lit8 v10, v6, 0x1

    .line 2282
    iget-char v11, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char v11, v9, v6

    .line 2283
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v6

    .line 2284
    invoke-virtual {v6}, Ljava/time/LocalDate;->getYear()I

    move-result v11

    invoke-virtual {v6}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v12

    invoke-virtual {v6}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v6

    invoke-static {v9, v10, v11, v12, v6}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([CIIII)I

    move-result v6

    add-int/lit8 v10, v6, 0x1

    const/16 v11, 0x54

    .line 2285
    aput-char v11, v9, v6

    .line 2286
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {v9, v10, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([CILjava/time/LocalTime;)I

    move-result p1

    if-ne v3, v8, :cond_7

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x5a

    .line 2288
    aput-char v1, v9, p1

    goto :goto_3

    :cond_7
    if-eq v0, v5, :cond_9

    if-ne v0, v4, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 v0, p1, 0x1

    const/16 v3, 0x5b

    .line 2293
    aput-char v3, v9, p1

    .line 2294
    invoke-virtual {v1, v7, v2, v9, v0}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v0, v2

    add-int/lit8 p1, v0, 0x1

    const/16 v1, 0x5d

    .line 2296
    aput-char v1, v9, v0

    move v0, p1

    goto :goto_3

    .line 2290
    :cond_9
    :goto_2
    invoke-virtual {v1, v7, v2, v9, p1}, Ljava/lang/String;->getChars(II[CI)V

    add-int v0, p1, v2

    .line 2298
    :goto_3
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->quote:C

    aput-char p1, v9, v0

    add-int/2addr v0, v8

    .line 2299
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16;->off:I

    return-void
.end method
