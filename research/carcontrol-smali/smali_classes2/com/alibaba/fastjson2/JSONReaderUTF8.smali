.class Lcom/alibaba/fastjson2/JSONReaderUTF8;
.super Lcom/alibaba/fastjson2/JSONReader;
.source "JSONReaderUTF8.java"


# instance fields
.field protected final bytes:[B

.field protected final cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

.field protected final end:I

.field protected final in:Ljava/io/InputStream;

.field protected final length:I

.field protected nameAscii:Z

.field protected nameBegin:I

.field protected nameEnd:I

.field protected nameLength:I

.field protected referenceBegin:I

.field protected final start:I


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/InputStream;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;ZZ)V

    .line 40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    array-length v3, v3

    sub-int/2addr v3, v1

    and-int v1, v2, v3

    .line 41
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 42
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 43
    iget p1, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->bufferSize:I

    if-nez v1, :cond_0

    .line 45
    new-array v1, p1, [B

    :cond_0
    move v2, v0

    .line 51
    :cond_1
    :goto_0
    :try_start_0
    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {p2, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 65
    iput-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 66
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 67
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->length:I

    .line 68
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->in:Ljava/io/InputStream;

    .line 69
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->start:I

    .line 70
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 73
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    :cond_2
    return-void

    :cond_3
    add-int/2addr v2, v3

    .line 57
    :try_start_1
    array-length v3, v1

    if-ne v2, v3, :cond_1

    .line 58
    array-length v3, v1

    add-int/2addr v3, p1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "read error"

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 104
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/JSONReader;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;ZZ)V

    .line 106
    iput-object p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 107
    iput p4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 108
    iput p5, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->length:I

    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->in:Ljava/io/InputStream;

    .line 110
    iput p4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->start:I

    add-int/2addr p4, p5

    .line 111
    iput p4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 112
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 113
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    return-void
.end method

.method constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/nio/ByteBuffer;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 79
    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;ZZ)V

    .line 81
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    array-length v2, v2

    sub-int/2addr v2, v1

    and-int/2addr p1, v2

    .line 82
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    aget-object p1, v1, p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 83
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 84
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-eqz p1, :cond_0

    .line 85
    array-length v3, p1

    if-ge v3, v1, :cond_1

    .line 86
    :cond_0
    new-array p1, v1, [B

    .line 88
    :cond_1
    invoke-virtual {p2, p1, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 90
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 91
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 92
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->length:I

    .line 93
    iput-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->in:Ljava/io/InputStream;

    .line 94
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->start:I

    .line 95
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 96
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 98
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 8826
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    array-length v0, v0

    const/high16 v1, 0x100000

    if-ge v0, v1, :cond_0

    .line 8827
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8830
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 8832
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 10

    .line 3427
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    sub-int/2addr v0, v1

    .line 3428
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEscape:Z

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 3429
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    if-eqz v1, :cond_2

    .line 3430
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    if-eqz v1, :cond_1

    .line 3431
    new-array v1, v0, [C

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3433
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    add-int/2addr v4, v2

    aget-byte v3, v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3435
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3436
    :cond_1
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    if-eqz v1, :cond_2

    .line 3437
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 3438
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->LATIN1:Ljava/lang/Byte;

    invoke-interface {v1, v0, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3442
    :cond_2
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 3443
    iget-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    if-eqz v4, :cond_3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_1

    :cond_3
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_1
    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1

    .line 3447
    :cond_4
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    new-array v0, v0, [C

    .line 3449
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 3450
    :goto_2
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    if-ge v1, v3, :cond_c

    .line 3451
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v4, v3, v1

    if-gez v4, :cond_7

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, v4, 0x4

    const-string v6, "malformed input around byte "

    const/16 v7, 0x80

    packed-switch v5, :pswitch_data_0

    .line 3480
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    add-int/lit8 v5, v1, 0x1

    .line 3467
    aget-byte v5, v3, v5

    add-int/lit8 v8, v1, 0x2

    .line 3468
    aget-byte v3, v3, v8

    and-int/lit16 v9, v5, 0xc0

    if-ne v9, v7, :cond_5

    and-int/lit16 v9, v3, 0xc0

    if-ne v9, v7, :cond_5

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0xc

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x3

    goto :goto_3

    .line 3470
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    add-int/lit8 v5, v1, 0x1

    .line 3458
    aget-byte v3, v3, v5

    and-int/lit16 v5, v3, 0xc0

    if-ne v5, v7, :cond_6

    and-int/lit8 v4, v4, 0x1f

    shl-int/lit8 v4, v4, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x2

    :goto_3
    int-to-char v3, v3

    .line 3482
    aput-char v3, v0, v2

    goto/16 :goto_5

    .line 3460
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v5, 0x22

    const/16 v6, 0x5c

    if-ne v4, v6, :cond_a

    add-int/lit8 v1, v1, 0x1

    .line 3487
    aget-byte v4, v3, v1

    int-to-char v4, v4

    if-eq v4, v5, :cond_b

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_b

    const/16 v5, 0x40

    if-eq v4, v5, :cond_b

    if-eq v4, v6, :cond_b

    const/16 v5, 0x75

    if-eq v4, v5, :cond_9

    const/16 v5, 0x78

    if-eq v4, v5, :cond_8

    const/16 v3, 0x2a

    if-eq v4, v3, :cond_b

    const/16 v3, 0x2b

    if-eq v4, v3, :cond_b

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    .line 3517
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char1(I)C

    move-result v4

    goto :goto_4

    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 3498
    aget-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 3499
    aget-byte v3, v3, v1

    .line 3500
    invoke-static {v4, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2(II)C

    move-result v4

    goto :goto_4

    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 3490
    aget-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 3491
    aget-byte v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 3492
    aget-byte v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 3493
    aget-byte v3, v3, v1

    .line 3494
    invoke-static {v4, v5, v6, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char4(IIII)C

    move-result v4

    goto :goto_4

    :cond_a
    if-ne v4, v5, :cond_b

    goto :goto_6

    :cond_b
    :goto_4
    :pswitch_2
    int-to-char v3, v4

    .line 3523
    aput-char v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 3527
    :cond_c
    :goto_6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getNameHashCodeLCase()J
    .locals 17

    move-object/from16 v0, p0

    .line 3241
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    .line 3244
    :goto_0
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/16 v8, 0x27

    const/16 v9, 0x78

    const/16 v10, 0x75

    const/16 v11, 0x5c

    const/16 v12, 0x2d

    const/16 v13, 0x5f

    const/16 v15, 0x41

    const/16 v2, 0x22

    const/16 v3, 0x20

    if-ge v1, v7, :cond_b

    .line 3245
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v14, v7, v1

    if-ne v14, v11, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 3248
    aget-byte v14, v7, v1

    if-eq v14, v10, :cond_1

    if-eq v14, v9, :cond_0

    .line 3267
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char1(I)C

    move-result v14

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 3259
    aget-byte v14, v7, v1

    add-int/lit8 v1, v1, 0x1

    .line 3260
    aget-byte v7, v7, v1

    .line 3261
    invoke-static {v14, v7}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2(II)C

    move-result v14

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 3251
    aget-byte v14, v7, v1

    add-int/lit8 v1, v1, 0x1

    .line 3252
    aget-byte v9, v7, v1

    add-int/lit8 v1, v1, 0x1

    .line 3253
    aget-byte v10, v7, v1

    add-int/lit8 v1, v1, 0x1

    .line 3254
    aget-byte v7, v7, v1

    .line 3255
    invoke-static {v14, v9, v10, v7}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char4(IIII)C

    move-result v14

    goto :goto_2

    :cond_2
    const/16 v9, -0x3d

    if-eq v14, v9, :cond_4

    const/16 v9, -0x3e

    if-ne v14, v9, :cond_3

    goto :goto_1

    :cond_3
    if-ne v14, v2, :cond_5

    goto/16 :goto_7

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 3271
    aget-byte v7, v7, v1

    and-int/lit8 v9, v14, 0x1f

    shl-int/lit8 v9, v9, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v9

    int-to-char v14, v7

    :cond_5
    :goto_2
    const/16 v7, 0x8

    if-ge v4, v7, :cond_a

    const/16 v9, 0xff

    if-gt v14, v9, :cond_a

    if-ltz v14, :cond_a

    if-nez v4, :cond_6

    if-nez v14, :cond_6

    goto/16 :goto_6

    :cond_6
    if-eq v14, v13, :cond_7

    if-eq v14, v12, :cond_7

    if-ne v14, v3, :cond_8

    .line 3285
    :cond_7
    iget-object v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    add-int/lit8 v10, v1, 0x1

    aget-byte v9, v9, v10

    if-eq v9, v2, :cond_8

    if-eq v9, v8, :cond_8

    if-eq v9, v14, :cond_8

    goto :goto_5

    :cond_8
    if-lt v14, v15, :cond_9

    const/16 v2, 0x5a

    if-gt v14, v2, :cond_9

    add-int/lit8 v14, v14, 0x20

    int-to-char v14, v14

    :cond_9
    packed-switch v4, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    int-to-byte v2, v14

    int-to-long v2, v2

    const/16 v7, 0x38

    shl-long/2addr v2, v7

    const-wide v7, 0xffffffffffffffL

    goto :goto_3

    :pswitch_1
    int-to-byte v2, v14

    int-to-long v2, v2

    const/16 v7, 0x30

    shl-long/2addr v2, v7

    const-wide v7, 0xffffffffffffL

    goto :goto_3

    :pswitch_2
    int-to-byte v2, v14

    int-to-long v2, v2

    const/16 v7, 0x28

    shl-long/2addr v2, v7

    const-wide v7, 0xffffffffffL

    goto :goto_3

    :pswitch_3
    int-to-byte v2, v14

    int-to-long v7, v2

    shl-long v2, v7, v3

    const-wide v7, 0xffffffffL

    goto :goto_3

    :pswitch_4
    int-to-byte v2, v14

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    const-wide/32 v7, 0xffffff

    goto :goto_3

    :pswitch_5
    int-to-byte v2, v14

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    const-wide/32 v7, 0xffff

    goto :goto_3

    :pswitch_6
    int-to-byte v2, v14

    shl-int/2addr v2, v7

    int-to-long v2, v2

    const-wide/16 v7, 0xff

    :goto_3
    and-long/2addr v5, v7

    add-long/2addr v5, v2

    goto :goto_4

    :pswitch_7
    int-to-byte v2, v14

    int-to-long v5, v2

    :goto_4
    add-int/lit8 v4, v4, 0x1

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 3280
    :cond_a
    :goto_6
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    const-wide/16 v5, 0x0

    :cond_b
    :goto_7
    const-wide/16 v9, 0x0

    cmp-long v4, v5, v9

    if-eqz v4, :cond_c

    return-wide v5

    .line 3330
    :cond_c
    iget-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    const-wide v5, 0x100000001b3L

    const-wide v9, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    if-eqz v4, :cond_11

    iget-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEscape:Z

    if-nez v4, :cond_11

    .line 3331
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    :goto_8
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    if-ge v1, v4, :cond_10

    .line 3332
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v7, v4, v1

    int-to-char v7, v7

    if-lt v7, v15, :cond_d

    const/16 v11, 0x5a

    if-gt v7, v11, :cond_d

    add-int/lit8 v7, v7, 0x20

    int-to-char v7, v7

    :cond_d
    if-eq v7, v13, :cond_e

    if-eq v7, v12, :cond_e

    if-ne v7, v3, :cond_f

    :cond_e
    add-int/lit8 v11, v1, 0x1

    .line 3338
    aget-byte v4, v4, v11

    if-eq v4, v2, :cond_f

    if-eq v4, v8, :cond_f

    if-eq v4, v7, :cond_f

    goto :goto_9

    :cond_f
    int-to-long v3, v7

    xor-long/2addr v3, v9

    mul-long/2addr v3, v5

    move-wide v9, v3

    :goto_9
    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x20

    goto :goto_8

    :cond_10
    return-wide v9

    .line 3351
    :cond_11
    :goto_a
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v4, v3, v1

    if-ne v4, v11, :cond_14

    add-int/lit8 v1, v1, 0x1

    .line 3354
    aget-byte v4, v3, v1

    int-to-char v4, v4

    const/16 v7, 0x75

    if-eq v4, v7, :cond_13

    const/16 v8, 0x78

    if-eq v4, v8, :cond_12

    .line 3373
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char1(I)C

    move-result v3

    goto :goto_b

    :cond_12
    add-int/lit8 v1, v1, 0x1

    .line 3365
    aget-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 3366
    aget-byte v3, v3, v1

    .line 3367
    invoke-static {v4, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2(II)C

    move-result v3

    goto :goto_b

    :cond_13
    const/16 v8, 0x78

    add-int/lit8 v1, v1, 0x1

    .line 3357
    aget-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 3358
    aget-byte v7, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 3359
    aget-byte v8, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 3360
    aget-byte v3, v3, v1

    .line 3361
    invoke-static {v4, v7, v8, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char4(IIII)C

    move-result v3

    :goto_b
    add-int/lit8 v1, v1, 0x1

    const/16 v7, 0x5a

    goto :goto_c

    :cond_14
    if-ne v4, v2, :cond_15

    return-wide v9

    :cond_15
    if-ltz v4, :cond_17

    const/16 v7, 0x5a

    if-lt v4, v15, :cond_16

    if-gt v4, v7, :cond_16

    add-int/lit8 v4, v4, 0x20

    int-to-char v4, v4

    :cond_16
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_c

    :cond_17
    const/16 v7, 0x5a

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v8, v4, 0x4

    packed-switch v8, :pswitch_data_1

    .line 3409
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "malformed input around byte "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_8
    add-int/lit8 v8, v1, 0x1

    .line 3398
    aget-byte v8, v3, v8

    add-int/lit8 v16, v1, 0x2

    .line 3399
    aget-byte v3, v3, v16

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0xc

    and-int/lit8 v8, v8, 0x3f

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v4, v8

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v4

    int-to-char v3, v3

    add-int/lit8 v1, v1, 0x3

    goto :goto_c

    :pswitch_9
    add-int/lit8 v8, v1, 0x1

    .line 3391
    aget-byte v3, v3, v8

    and-int/lit8 v4, v4, 0x1f

    shl-int/lit8 v4, v4, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v4

    int-to-char v3, v3

    add-int/lit8 v1, v1, 0x2

    :goto_c
    if-eq v3, v13, :cond_19

    if-eq v3, v12, :cond_19

    const/16 v4, 0x20

    if-ne v3, v4, :cond_18

    goto :goto_d

    :cond_18
    int-to-long v2, v3

    xor-long/2addr v2, v9

    mul-long v9, v2, v5

    goto :goto_d

    :cond_19
    const/16 v4, 0x20

    :goto_d
    const/16 v2, 0x22

    goto/16 :goto_a

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_9
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final getRawInt()I
    .locals 6

    .line 940
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 941
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getRawLong()J
    .locals 6

    .line 948
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 949
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 10

    .line 5780
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->stringValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5781
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->stringValue:Ljava/lang/String;

    return-object v0

    .line 5784
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    sub-int/2addr v0, v1

    .line 5785
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEscape:Z

    if-nez v1, :cond_2

    .line 5786
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 5787
    iget-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    if-eqz v4, :cond_1

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_1
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_0
    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1

    .line 5791
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    new-array v0, v0, [C

    .line 5793
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    const/4 v2, 0x0

    .line 5795
    :goto_1
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v4, v3, v1

    if-gez v4, :cond_7

    and-int/lit16 v5, v4, 0xff

    shr-int/lit8 v6, v5, 0x4

    const-string v7, "malformed input around byte "

    const/16 v8, 0x80

    packed-switch v6, :pswitch_data_0

    shr-int/lit8 v6, v4, 0x3

    const/4 v9, -0x2

    if-ne v6, v9, :cond_6

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v1, 0x1

    .line 5823
    aget-byte v1, v3, v1

    add-int/lit8 v6, v5, 0x1

    .line 5824
    aget-byte v5, v3, v5

    add-int/lit8 v9, v6, 0x1

    .line 5825
    aget-byte v3, v3, v6

    shl-int/lit8 v4, v4, 0x12

    shl-int/lit8 v6, v1, 0xc

    xor-int/2addr v4, v6

    shl-int/lit8 v6, v5, 0x6

    xor-int/2addr v4, v6

    const v6, 0x381f80

    xor-int/2addr v6, v3

    xor-int/2addr v4, v6

    and-int/lit16 v1, v1, 0xc0

    if-ne v1, v8, :cond_5

    and-int/lit16 v1, v5, 0xc0

    if-ne v1, v8, :cond_5

    and-int/lit16 v1, v3, 0xc0

    if-ne v1, v8, :cond_5

    const/high16 v1, 0x10000

    if-lt v4, v1, :cond_5

    const/high16 v1, 0x110000

    if-ge v4, v1, :cond_5

    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v3, v4, 0xa

    const v5, 0xd7c0

    add-int/2addr v3, v5

    int-to-char v3, v3

    .line 5841
    aput-char v3, v0, v2

    and-int/lit16 v2, v4, 0x3ff

    const v3, 0xdc00

    add-int/2addr v2, v3

    int-to-char v2, v2

    .line 5842
    aput-char v2, v0, v1

    move v2, v1

    move v1, v9

    goto/16 :goto_4

    :pswitch_0
    add-int/lit8 v5, v1, 0x1

    .line 5810
    aget-byte v5, v3, v5

    add-int/lit8 v6, v1, 0x2

    .line 5811
    aget-byte v3, v3, v6

    and-int/lit16 v9, v5, 0xc0

    if-ne v9, v8, :cond_3

    and-int/lit16 v9, v3, 0xc0

    if-ne v9, v8, :cond_3

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0xc

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    and-int/lit8 v3, v3, 0x3f

    or-int v5, v4, v3

    add-int/lit8 v1, v1, 0x3

    goto :goto_2

    .line 5813
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    add-int/lit8 v5, v1, 0x1

    .line 5801
    aget-byte v3, v3, v5

    and-int/lit16 v5, v3, 0xc0

    if-ne v5, v8, :cond_4

    and-int/lit8 v4, v4, 0x1f

    shl-int/lit8 v4, v4, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int v5, v4, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 5803
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5839
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    :goto_2
    int-to-char v3, v5

    .line 5851
    aput-char v3, v0, v2

    goto :goto_4

    :cond_7
    const/16 v5, 0x22

    const/16 v6, 0x5c

    if-ne v4, v6, :cond_a

    add-int/lit8 v1, v1, 0x1

    .line 5856
    aget-byte v4, v3, v1

    int-to-char v4, v4

    if-eq v4, v5, :cond_b

    if-eq v4, v6, :cond_b

    const/16 v5, 0x75

    if-eq v4, v5, :cond_9

    const/16 v5, 0x78

    if-eq v4, v5, :cond_8

    .line 5876
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char1(I)C

    move-result v4

    goto :goto_3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 5867
    aget-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 5868
    aget-byte v3, v3, v1

    .line 5869
    invoke-static {v4, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2(II)C

    move-result v4

    goto :goto_3

    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 5859
    aget-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 5860
    aget-byte v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 5861
    aget-byte v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 5862
    aget-byte v3, v3, v1

    .line 5863
    invoke-static {v4, v5, v6, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char4(IIII)C

    move-result v4

    goto :goto_3

    :cond_a
    if-ne v4, v5, :cond_b

    .line 5886
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->stringValue:Ljava/lang/String;

    return-object v1

    :cond_b
    :goto_3
    int-to-char v3, v4

    .line 5882
    aput-char v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getStringLength()I
    .locals 6

    .line 6997
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6998
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v1, "string length only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7000
    :cond_1
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/4 v1, 0x0

    .line 7003
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7004
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    add-int/lit8 v4, v2, 0x8

    .line 7007
    iget v5, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v4, v5, :cond_2

    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 7008
    aget-byte v5, v3, v2

    if-eq v5, v0, :cond_2

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v3, v5

    if-eq v5, v0, :cond_2

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, v3, v5

    if-eq v5, v0, :cond_2

    add-int/lit8 v5, v2, 0x3

    aget-byte v5, v3, v5

    if-eq v5, v0, :cond_2

    add-int/lit8 v5, v2, 0x4

    aget-byte v5, v3, v5

    if-eq v5, v0, :cond_2

    add-int/lit8 v5, v2, 0x5

    aget-byte v5, v3, v5

    if-eq v5, v0, :cond_2

    add-int/lit8 v5, v2, 0x6

    aget-byte v5, v3, v5

    if-eq v5, v0, :cond_2

    add-int/lit8 v5, v2, 0x7

    aget-byte v5, v3, v5

    if-eq v5, v0, :cond_2

    const/16 v1, 0x8

    move v2, v4

    .line 7022
    :cond_2
    :goto_1
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v2, v4, :cond_4

    .line 7023
    aget-byte v4, v3, v2

    if-ne v4, v0, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return v1
.end method

.method public final info(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    .line 8799
    :goto_0
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    const/16 v5, 0xa

    if-ge v1, v4, :cond_1

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v1, v4, :cond_1

    .line 8800
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v4, v4, v1

    if-ne v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v3, v0

    goto :goto_0

    .line 8806
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    .line 8808
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 8809
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p1, "offset "

    .line 8812
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ", character "

    .line 8813
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ", line "

    .line 8814
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ", column "

    .line 8815
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ", fastjson-version "

    .line 8816
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "2.0.43"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-le v2, v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v5, 0x20

    .line 8817
    :goto_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8819
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->start:I

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->length:I

    const v4, 0xffff

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {p1, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 8820
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8821
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final isNull()Z
    .locals 2

    .line 6829
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x75

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReference()Z
    .locals 15

    .line 8572
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 8573
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 8574
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    const/4 v3, 0x0

    const/16 v4, 0x7b

    if-eq v1, v4, :cond_0

    return v3

    .line 8580
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v2, v1, :cond_1

    return v3

    .line 8584
    :cond_1
    aget-byte v1, v0, v2

    :goto_0
    const-wide/16 v4, 0x0

    const-wide v6, 0x100003700L

    const-wide/16 v8, 0x1

    const/16 v10, 0x20

    if-ltz v1, :cond_3

    if-gt v1, v10, :cond_3

    shl-long v11, v8, v1

    and-long/2addr v11, v6

    cmp-long v11, v11, v4

    if-eqz v11, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 8587
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v2, v1, :cond_2

    return v3

    .line 8590
    :cond_2
    aget-byte v1, v0, v2

    goto :goto_0

    :cond_3
    const/16 v11, 0x22

    if-eq v1, v11, :cond_4

    const/16 v11, 0x27

    if-ne v1, v11, :cond_c

    :cond_4
    add-int/lit8 v11, v2, 0x6

    .line 8594
    iget v12, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v11, v12, :cond_c

    add-int/lit8 v12, v2, 0x1

    aget-byte v12, v0, v12

    const/16 v13, 0x24

    if-ne v12, v13, :cond_c

    add-int/lit8 v12, v2, 0x2

    aget-byte v12, v0, v12

    const/16 v13, 0x72

    if-ne v12, v13, :cond_c

    add-int/lit8 v12, v2, 0x3

    aget-byte v12, v0, v12

    const/16 v13, 0x65

    if-ne v12, v13, :cond_c

    add-int/lit8 v12, v2, 0x4

    aget-byte v12, v0, v12

    const/16 v13, 0x66

    if-ne v12, v13, :cond_c

    add-int/lit8 v2, v2, 0x5

    aget-byte v2, v0, v2

    if-eq v2, v1, :cond_5

    goto :goto_3

    .line 8606
    :cond_5
    aget-byte v2, v0, v11

    :goto_1
    if-ltz v2, :cond_7

    if-gt v2, v10, :cond_7

    shl-long v12, v8, v2

    and-long/2addr v12, v6

    cmp-long v12, v12, v4

    if-eqz v12, :cond_7

    add-int/lit8 v11, v11, 0x1

    .line 8609
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v11, v2, :cond_6

    return v3

    .line 8612
    :cond_6
    aget-byte v2, v0, v11

    goto :goto_1

    :cond_7
    const/16 v12, 0x3a

    if-ne v2, v12, :cond_c

    const/4 v2, 0x1

    add-int/2addr v11, v2

    .line 8615
    iget v12, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v11, v12, :cond_8

    goto :goto_3

    .line 8619
    :cond_8
    aget-byte v12, v0, v11

    :goto_2
    if-ltz v12, :cond_a

    if-gt v12, v10, :cond_a

    shl-long v13, v8, v12

    and-long/2addr v13, v6

    cmp-long v13, v13, v4

    if-eqz v13, :cond_a

    add-int/lit8 v11, v11, 0x1

    .line 8622
    iget v12, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v11, v12, :cond_9

    return v3

    .line 8625
    :cond_9
    aget-byte v12, v0, v11

    goto :goto_2

    :cond_a
    if-eq v12, v1, :cond_b

    return v3

    .line 8632
    :cond_b
    iput v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->referenceBegin:I

    return v2

    :cond_c
    :goto_3
    return v3
.end method

.method public next()V
    .locals 9

    .line 627
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 628
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 629
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/16 v3, 0x1a

    if-lt v1, v2, :cond_0

    .line 630
    iput-char v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return-void

    .line 634
    :cond_0
    aget-byte v2, v0, v1

    :goto_0
    if-eqz v2, :cond_7

    const/16 v4, 0x20

    if-gt v2, v4, :cond_1

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v2

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v3, 0x2f

    if-ltz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 645
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v0, v2

    .line 646
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 648
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v0, v3, :cond_2

    .line 649
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    :cond_2
    return-void

    :cond_3
    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v4, v2, 0x4

    const-string v5, "malformed input around byte "

    const/16 v6, 0x80

    packed-switch v4, :pswitch_data_0

    .line 683
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v4, v1, -0x2

    .line 671
    aget-byte v4, v0, v4

    add-int/lit8 v7, v1, -0x1

    .line 672
    aget-byte v0, v0, v7

    and-int/lit16 v8, v4, 0xc0

    if-ne v8, v6, :cond_4

    and-int/lit16 v8, v0, 0xc0

    if-ne v8, v6, :cond_4

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v2, v4

    goto :goto_1

    .line 674
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v4, v1, -0x1

    .line 660
    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xc0

    if-ne v4, v6, :cond_6

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    :goto_1
    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v2

    .line 686
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v0, v0

    .line 687
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 688
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v0, v3, :cond_5

    .line 689
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    :cond_5
    return-void

    .line 662
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 637
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v2, :cond_8

    .line 638
    iput-char v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return-void

    .line 641
    :cond_8
    aget-byte v2, v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public nextIfArrayEnd()Z
    .locals 15

    .line 336
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_b

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_b

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 345
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 346
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    .line 347
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v3

    .line 351
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    add-int/lit8 v4, v0, 0x1

    .line 353
    aget-byte v0, v2, v0

    :goto_0
    if-eqz v0, :cond_9

    const-wide/16 v5, 0x0

    const-wide v7, 0x100003700L

    const-wide/16 v9, 0x1

    const/16 v11, 0x20

    if-gt v0, v11, :cond_2

    shl-long v12, v9, v0

    and-long/2addr v12, v7

    cmp-long v12, v12, v5

    if-eqz v12, :cond_2

    goto/16 :goto_4

    :cond_2
    const/16 v12, 0x2c

    if-ne v0, v12, :cond_5

    .line 364
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    add-int/lit8 v0, v4, 0x1

    .line 365
    aget-byte v4, v2, v4

    :goto_1
    move v14, v4

    move v4, v0

    move v0, v14

    if-eqz v0, :cond_3

    if-gt v0, v11, :cond_5

    shl-long v12, v9, v0

    and-long/2addr v12, v7

    cmp-long v12, v12, v5

    if-eqz v12, :cond_5

    .line 367
    :cond_3
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v4, v0, :cond_4

    .line 368
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 369
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    return v3

    :cond_4
    add-int/lit8 v0, v4, 0x1

    .line 372
    aget-byte v4, v2, v4

    goto :goto_1

    :cond_5
    if-gez v0, :cond_7

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, v0, 0x4

    const/16 v5, 0x80

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 392
    :pswitch_0
    aget-byte v1, v2, v4

    add-int/lit8 v6, v4, 0x1

    .line 393
    aget-byte v2, v2, v6

    and-int/lit16 v6, v1, 0xc0

    if-ne v6, v5, :cond_6

    and-int/lit16 v6, v2, 0xc0

    if-ne v6, v5, :cond_6

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    and-int/lit8 v1, v2, 0x3f

    or-int/2addr v0, v1

    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 382
    :pswitch_1
    aget-byte v1, v2, v4

    and-int/lit16 v2, v1, 0xc0

    if-ne v2, v5, :cond_6

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 403
    :cond_6
    :goto_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed input around byte "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    int-to-char v0, v0

    .line 406
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 407
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 409
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_8

    .line 410
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    :cond_8
    return v3

    .line 355
    :cond_9
    :goto_4
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v4, v0, :cond_a

    .line 356
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 357
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    return v3

    :cond_a
    add-int/lit8 v0, v4, 0x1

    .line 360
    aget-byte v4, v2, v4

    move v14, v4

    move v4, v0

    move v0, v14

    goto/16 :goto_0

    .line 338
    :cond_b
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal syntax: `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x60

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public nextIfArrayStart()Z
    .locals 10

    .line 272
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 277
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 278
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    .line 279
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v3

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    add-int/lit8 v4, v0, 0x1

    .line 285
    aget-byte v0, v1, v0

    :goto_0
    if-eqz v0, :cond_6

    const/16 v5, 0x20

    if-gt v0, v5, :cond_2

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v0

    const-wide v7, 0x100003700L

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    if-gez v0, :cond_4

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v2, v0, 0x4

    const/16 v5, 0x80

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 311
    :pswitch_0
    aget-byte v2, v1, v4

    add-int/lit8 v6, v4, 0x1

    .line 312
    aget-byte v1, v1, v6

    and-int/lit16 v6, v2, 0xc0

    if-ne v6, v5, :cond_3

    and-int/lit16 v6, v1, 0xc0

    if-ne v6, v5, :cond_3

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v0, v2

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 301
    :pswitch_1
    aget-byte v1, v1, v4

    and-int/lit16 v2, v1, 0xc0

    if-ne v2, v5, :cond_3

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 322
    :cond_3
    :goto_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed input around byte "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    int-to-char v0, v0

    .line 325
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 326
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 328
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_5

    .line 329
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    :cond_5
    return v3

    .line 287
    :cond_6
    :goto_3
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v4, v0, :cond_7

    .line 288
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 289
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    return v3

    :cond_7
    add-int/lit8 v0, v4, 0x1

    .line 292
    aget-byte v4, v1, v4

    move v9, v4

    move v4, v0

    move v0, v9

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public nextIfComma()Z
    .locals 9

    .line 198
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 199
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 200
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_0

    .line 202
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v0, v2

    .line 203
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v2, 0x1

    .line 206
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    .line 208
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/16 v4, 0x1a

    if-lt v1, v3, :cond_1

    .line 209
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 210
    iput-char v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v2

    .line 214
    :cond_1
    aget-byte v3, v0, v1

    :goto_0
    if-eqz v3, :cond_7

    const/16 v5, 0x20

    if-gt v3, v5, :cond_2

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v3

    const-wide v7, 0x100003700L

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    goto/16 :goto_3

    :cond_2
    if-ltz v3, :cond_3

    add-int/2addr v1, v2

    goto :goto_2

    :cond_3
    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v3, 0x4

    const-string v5, "malformed input around byte "

    const/16 v6, 0x80

    packed-switch v4, :pswitch_data_0

    .line 257
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v4, v1, -0x2

    .line 245
    aget-byte v4, v0, v4

    add-int/lit8 v7, v1, -0x1

    .line 246
    aget-byte v0, v0, v7

    and-int/lit16 v8, v4, 0xc0

    if-ne v8, v6, :cond_4

    and-int/lit16 v8, v0, 0xc0

    if-ne v8, v6, :cond_4

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0xc

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    goto :goto_1

    .line 248
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v4, v1, -0x1

    .line 234
    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xc0

    if-ne v4, v6, :cond_6

    and-int/lit8 v3, v3, 0x1f

    shl-int/lit8 v3, v3, 0x6

    :goto_1
    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v3, v0

    .line 261
    :goto_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v0, v3

    .line 262
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 263
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_5

    .line 264
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    :cond_5
    return v2

    .line 236
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 217
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v3, :cond_8

    .line 218
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 219
    iput-char v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v2

    .line 222
    :cond_8
    aget-byte v3, v0, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final nextIfInfinity()Z
    .locals 9

    .line 447
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 448
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 449
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    int-to-byte v2, v2

    const/16 v3, 0x49

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, v1, 0x6

    .line 450
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v2, v3, :cond_3

    aget-byte v4, v0, v1

    const/16 v5, 0x6e

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v0, v4

    const/16 v6, 0x66

    if-ne v4, v6, :cond_3

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, v0, v4

    const/16 v6, 0x69

    if-ne v4, v6, :cond_3

    add-int/lit8 v4, v1, 0x3

    aget-byte v4, v0, v4

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, v1, 0x4

    aget-byte v4, v0, v4

    if-ne v4, v6, :cond_3

    add-int/lit8 v4, v1, 0x5

    aget-byte v4, v0, v4

    const/16 v5, 0x74

    if-ne v4, v5, :cond_3

    aget-byte v2, v0, v2

    const/16 v4, 0x79

    if-ne v2, v4, :cond_3

    add-int/lit8 v1, v1, 0x7

    const/16 v2, 0x1a

    if-lt v1, v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 464
    aget-byte v1, v0, v1

    :goto_0
    const/16 v4, 0x20

    if-gt v1, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v1

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 466
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v3, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v3, 0x1

    .line 470
    aget-byte v3, v0, v3

    move v8, v3

    move v3, v1

    move v1, v8

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_1
    move v1, v3

    .line 474
    :goto_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v0, v2

    .line 475
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public nextIfMatch(C)Z
    .locals 16

    move-object/from16 v0, p0

    .line 118
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 119
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 120
    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v4, 0x1a

    :goto_0
    const-wide/16 v5, 0x0

    const-wide v7, 0x100003700L

    const-wide/16 v9, 0x1

    const/16 v11, 0x20

    if-gt v3, v11, :cond_1

    shl-long v12, v9, v3

    and-long/2addr v12, v7

    cmp-long v12, v12, v5

    if-eqz v12, :cond_1

    .line 122
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v2, v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v2, 0x1

    .line 125
    aget-byte v2, v1, v2

    move v15, v3

    move v3, v2

    move v2, v15

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    move/from16 v13, p1

    if-eq v3, v13, :cond_2

    return v12

    :cond_2
    const/16 v13, 0x2c

    const/4 v14, 0x1

    if-ne v3, v13, :cond_3

    move v12, v14

    .line 132
    :cond_3
    iput-boolean v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    .line 134
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v2, v3, :cond_4

    .line 135
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 136
    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v14

    .line 140
    :cond_4
    aget-byte v3, v1, v2

    :goto_1
    if-eqz v3, :cond_a

    if-gt v3, v11, :cond_5

    shl-long v12, v9, v3

    and-long/2addr v12, v7

    cmp-long v12, v12, v5

    if-eqz v12, :cond_5

    goto/16 :goto_4

    :cond_5
    if-ltz v3, :cond_6

    add-int/2addr v2, v14

    goto :goto_3

    :cond_6
    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v3, 0x4

    const-string v5, "malformed input around byte "

    const/16 v6, 0x80

    packed-switch v4, :pswitch_data_0

    .line 183
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v4, v2, -0x2

    .line 171
    aget-byte v4, v1, v4

    add-int/lit8 v7, v2, -0x1

    .line 172
    aget-byte v1, v1, v7

    and-int/lit16 v8, v4, 0xc0

    if-ne v8, v6, :cond_7

    and-int/lit16 v8, v1, 0xc0

    if-ne v8, v6, :cond_7

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0xc

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    goto :goto_2

    .line 174
    :cond_7
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v4, v2, -0x1

    .line 160
    aget-byte v1, v1, v4

    and-int/lit16 v4, v1, 0xc0

    if-ne v4, v6, :cond_9

    and-int/lit8 v3, v3, 0x1f

    shl-int/lit8 v3, v3, 0x6

    :goto_2
    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v3, v1

    .line 187
    :goto_3
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v1, v3

    .line 188
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 189
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_8

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    :cond_8
    return v14

    .line 162
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 143
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v2, v3, :cond_b

    .line 144
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 145
    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v14

    .line 148
    :cond_b
    aget-byte v3, v1, v2

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final nextIfMatchIdent(CCC)Z
    .locals 7

    .line 8295
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 8299
    :cond_0
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 p1, p1, 0x2

    .line 8300
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-gt p1, v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v0, v2

    if-ne v0, p2, :cond_6

    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    aget-byte p2, p2, v0

    if-eq p2, p3, :cond_1

    goto :goto_2

    .line 8304
    :cond_1
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/16 p3, 0x1a

    if-ne p1, p2, :cond_2

    .line 8305
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 8306
    iput-char p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v2

    .line 8311
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte p2, p2, p1

    int-to-char p2, p2

    move v0, p1

    :goto_0
    const/16 v3, 0x20

    if-gt p2, v3, :cond_4

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p2

    const-wide v5, 0x100003700L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 8315
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v0, p2, :cond_3

    goto :goto_1

    .line 8319
    :cond_3
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte p2, p2, v0

    int-to-char p2, p2

    goto :goto_0

    :cond_4
    move p3, p2

    :goto_1
    if-ne v0, p1, :cond_5

    return v1

    :cond_5
    add-int/2addr v0, v2

    .line 8325
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 8326
    iput-char p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v2

    :cond_6
    :goto_2
    return v1
.end method

.method public final nextIfMatchIdent(CCCC)Z
    .locals 7

    .line 8332
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 8336
    :cond_0
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 p1, p1, 0x3

    .line 8337
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-gt p1, v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v0, v2

    if-ne v0, p2, :cond_6

    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    aget-byte p2, p2, v0

    if-ne p2, p3, :cond_6

    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 p3, p3, 0x2

    aget-byte p2, p2, p3

    if-eq p2, p4, :cond_1

    goto :goto_2

    .line 8344
    :cond_1
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/16 p3, 0x1a

    if-ne p1, p2, :cond_2

    .line 8345
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 8346
    iput-char p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v2

    .line 8351
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte p2, p2, p1

    int-to-char p2, p2

    move p4, p1

    :goto_0
    const/16 v0, 0x20

    if-gt p2, v0, :cond_4

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p2

    const-wide v5, 0x100003700L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_4

    add-int/lit8 p4, p4, 0x1

    .line 8355
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne p4, p2, :cond_3

    goto :goto_1

    .line 8359
    :cond_3
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte p2, p2, p4

    int-to-char p2, p2

    goto :goto_0

    :cond_4
    move p3, p2

    :goto_1
    if-ne p4, p1, :cond_5

    const/16 p1, 0x28

    if-eq p3, p1, :cond_5

    const/16 p1, 0x5b

    if-eq p3, p1, :cond_5

    const/16 p1, 0x5d

    if-eq p3, p1, :cond_5

    const/16 p1, 0x29

    if-eq p3, p1, :cond_5

    const/16 p1, 0x3a

    if-eq p3, p1, :cond_5

    const/16 p1, 0x2c

    if-eq p3, p1, :cond_5

    return v1

    :cond_5
    add-int/2addr p4, v2

    .line 8365
    iput p4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 8366
    iput-char p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v2

    :cond_6
    :goto_2
    return v1
.end method

.method public final nextIfMatchIdent(CCCCC)Z
    .locals 7

    .line 8372
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 8376
    :cond_0
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 p1, p1, 0x4

    .line 8377
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-gt p1, v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v0, v2

    if-ne v0, p2, :cond_6

    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    aget-byte p2, p2, v0

    if-ne p2, p3, :cond_6

    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 p3, p3, 0x2

    aget-byte p2, p2, p3

    if-ne p2, p4, :cond_6

    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 p3, p3, 0x3

    aget-byte p2, p2, p3

    if-eq p2, p5, :cond_1

    goto :goto_2

    .line 8385
    :cond_1
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/16 p3, 0x1a

    if-ne p1, p2, :cond_2

    .line 8386
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 8387
    iput-char p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v2

    .line 8392
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte p2, p2, p1

    int-to-char p2, p2

    move p4, p1

    :goto_0
    const/16 p5, 0x20

    if-gt p2, p5, :cond_4

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p2

    const-wide v5, 0x100003700L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p5, v3, v5

    if-eqz p5, :cond_4

    add-int/lit8 p4, p4, 0x1

    .line 8396
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne p4, p2, :cond_3

    goto :goto_1

    .line 8400
    :cond_3
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte p2, p2, p4

    int-to-char p2, p2

    goto :goto_0

    :cond_4
    move p3, p2

    :goto_1
    if-ne p4, p1, :cond_5

    const/16 p1, 0x28

    if-eq p3, p1, :cond_5

    const/16 p1, 0x5b

    if-eq p3, p1, :cond_5

    const/16 p1, 0x5d

    if-eq p3, p1, :cond_5

    const/16 p1, 0x29

    if-eq p3, p1, :cond_5

    const/16 p1, 0x3a

    if-eq p3, p1, :cond_5

    const/16 p1, 0x2c

    if-eq p3, p1, :cond_5

    return v1

    :cond_5
    add-int/2addr p4, v2

    .line 8406
    iput p4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 8407
    iput-char p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v2

    :cond_6
    :goto_2
    return v1
.end method

.method public final nextIfMatchIdent(CCCCCC)Z
    .locals 5

    .line 8413
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 8417
    :cond_0
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 p1, p1, 0x5

    .line 8418
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-gt p1, v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v0, v2

    if-ne v0, p2, :cond_6

    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    aget-byte p2, p2, v0

    if-ne p2, p3, :cond_6

    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 p3, p3, 0x2

    aget-byte p2, p2, p3

    if-ne p2, p4, :cond_6

    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 p3, p3, 0x3

    aget-byte p2, p2, p3

    if-ne p2, p5, :cond_6

    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 p3, p3, 0x4

    aget-byte p2, p2, p3

    if-eq p2, p6, :cond_1

    goto :goto_2

    .line 8427
    :cond_1
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/16 p3, 0x1a

    if-ne p1, p2, :cond_2

    .line 8428
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 8429
    iput-char p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v2

    .line 8434
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte p2, p2, p1

    int-to-char p2, p2

    move p4, p1

    :goto_0
    const/16 p5, 0x20

    if-gt p2, p5, :cond_4

    const-wide/16 p5, 0x1

    shl-long/2addr p5, p2

    const-wide v3, 0x100003700L

    and-long/2addr p5, v3

    const-wide/16 v3, 0x0

    cmp-long p5, p5, v3

    if-eqz p5, :cond_4

    add-int/lit8 p4, p4, 0x1

    .line 8438
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne p4, p2, :cond_3

    goto :goto_1

    .line 8442
    :cond_3
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte p2, p2, p4

    int-to-char p2, p2

    goto :goto_0

    :cond_4
    move p3, p2

    :goto_1
    if-ne p4, p1, :cond_5

    const/16 p1, 0x28

    if-eq p3, p1, :cond_5

    const/16 p1, 0x5b

    if-eq p3, p1, :cond_5

    const/16 p1, 0x5d

    if-eq p3, p1, :cond_5

    const/16 p1, 0x29

    if-eq p3, p1, :cond_5

    const/16 p1, 0x3a

    if-eq p3, p1, :cond_5

    const/16 p1, 0x2c

    if-eq p3, p1, :cond_5

    return v1

    :cond_5
    add-int/2addr p4, v2

    .line 8448
    iput p4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 8449
    iput-char p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v2

    :cond_6
    :goto_2
    return v1
.end method

.method public final nextIfName4Match10(J)Z
    .locals 8

    .line 1245
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1246
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0xc

    .line 1249
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 1253
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v6, 0x9

    sub-long/2addr v4, v6

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long p1, v4, p1

    if-nez p1, :cond_3

    add-int/lit8 p1, v1, -0x1

    aget-byte p1, v0, p1

    const/16 p2, 0x3a

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 1259
    :cond_1
    aget-byte p1, v0, v1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x20

    if-gt p1, p2, :cond_2

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide v4, 0x100003700L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1262
    aget-byte p1, v0, v1

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    add-int/2addr v1, p2

    .line 1265
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 1266
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return p2

    :cond_3
    :goto_1
    return v3
.end method

.method public final nextIfName4Match11(J)Z
    .locals 8

    .line 1273
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1274
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0xd

    .line 1277
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 1281
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v6, 0xa

    sub-long/2addr v4, v6

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long p1, v4, p1

    if-nez p1, :cond_3

    add-int/lit8 p1, v1, -0x2

    aget-byte p1, v0, p1

    const/16 p2, 0x22

    if-ne p1, p2, :cond_3

    add-int/lit8 p1, v1, -0x1

    aget-byte p1, v0, p1

    const/16 p2, 0x3a

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 1288
    :cond_1
    aget-byte p1, v0, v1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x20

    if-gt p1, p2, :cond_2

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide v4, 0x100003700L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1291
    aget-byte p1, v0, v1

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    add-int/2addr v1, p2

    .line 1294
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 1295
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return p2

    :cond_3
    :goto_1
    return v3
.end method

.method public final nextIfName4Match12(JB)Z
    .locals 8

    .line 1302
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1303
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0xe

    .line 1306
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 1310
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v6, 0xb

    sub-long/2addr v4, v6

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long p1, v4, p1

    if-nez p1, :cond_3

    add-int/lit8 p1, v1, -0x3

    aget-byte p1, v0, p1

    if-ne p1, p3, :cond_3

    add-int/lit8 p1, v1, -0x2

    aget-byte p1, v0, p1

    const/16 p2, 0x22

    if-ne p1, p2, :cond_3

    add-int/lit8 p1, v1, -0x1

    aget-byte p1, v0, p1

    const/16 p2, 0x3a

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 1318
    :cond_1
    aget-byte p1, v0, v1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x20

    if-gt p1, p2, :cond_2

    const-wide/16 p2, 0x1

    shl-long/2addr p2, p1

    const-wide v2, 0x100003700L

    and-long/2addr p2, v2

    const-wide/16 v2, 0x0

    cmp-long p2, p2, v2

    if-eqz p2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1321
    aget-byte p1, v0, v1

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    add-int/2addr v1, p2

    .line 1324
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 1325
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return p2

    :cond_3
    :goto_1
    return v3
.end method

.method public final nextIfName4Match13(JI)Z
    .locals 10

    .line 1332
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1333
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0xf

    .line 1336
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 1340
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v8, 0xc

    sub-long/2addr v4, v8

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long p1, v4, p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v4, v6

    const-wide/16 v6, 0x4

    sub-long/2addr v4, v6

    .line 1341
    invoke-virtual {p1, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eq p1, p3, :cond_1

    goto :goto_1

    .line 1346
    :cond_1
    aget-byte p1, v0, v1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x20

    if-gt p1, p2, :cond_2

    const-wide/16 p2, 0x1

    shl-long/2addr p2, p1

    const-wide v2, 0x100003700L

    and-long/2addr p2, v2

    const-wide/16 v2, 0x0

    cmp-long p2, p2, v2

    if-eqz p2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1349
    aget-byte p1, v0, v1

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    add-int/2addr v1, p2

    .line 1352
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 1353
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return p2

    :cond_3
    :goto_1
    return v3
.end method

.method public final nextIfName4Match14(JI)Z
    .locals 10

    .line 1360
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1361
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x10

    .line 1364
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 1368
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v8, 0xd

    sub-long/2addr v4, v8

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long p1, v4, p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v4, v6

    const-wide/16 v6, 0x5

    sub-long/2addr v4, v6

    .line 1369
    invoke-virtual {p1, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p3, :cond_3

    add-int/lit8 p1, v1, -0x1

    aget-byte p1, v0, p1

    const/16 p2, 0x3a

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 1375
    :cond_1
    aget-byte p1, v0, v1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x20

    if-gt p1, p2, :cond_2

    const-wide/16 p2, 0x1

    shl-long/2addr p2, p1

    const-wide v2, 0x100003700L

    and-long/2addr p2, v2

    const-wide/16 v2, 0x0

    cmp-long p2, p2, v2

    if-eqz p2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1378
    aget-byte p1, v0, v1

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    add-int/2addr v1, p2

    .line 1381
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 1382
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return p2

    :cond_3
    :goto_1
    return v3
.end method

.method public final nextIfName4Match15(JI)Z
    .locals 10

    .line 1389
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1390
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x11

    .line 1393
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 1397
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v8, 0xe

    sub-long/2addr v4, v8

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long p1, v4, p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v4, v6

    const-wide/16 v6, 0x6

    sub-long/2addr v4, v6

    .line 1398
    invoke-virtual {p1, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p3, :cond_3

    add-int/lit8 p1, v1, -0x2

    aget-byte p1, v0, p1

    const/16 p2, 0x22

    if-ne p1, p2, :cond_3

    add-int/lit8 p1, v1, -0x1

    aget-byte p1, v0, p1

    const/16 p2, 0x3a

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 1405
    :cond_1
    aget-byte p1, v0, v1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x20

    if-gt p1, p2, :cond_2

    const-wide/16 p2, 0x1

    shl-long/2addr p2, p1

    const-wide v2, 0x100003700L

    and-long/2addr p2, v2

    const-wide/16 v2, 0x0

    cmp-long p2, p2, v2

    if-eqz p2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1408
    aget-byte p1, v0, v1

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    add-int/2addr v1, p2

    .line 1411
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 1412
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return p2

    :cond_3
    :goto_1
    return v3
.end method

.method public final nextIfName4Match16(JIB)Z
    .locals 10

    .line 1419
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1420
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x12

    .line 1423
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 1427
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v8, 0xf

    sub-long/2addr v4, v8

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long p1, v4, p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v4, v6

    const-wide/16 v6, 0x7

    sub-long/2addr v4, v6

    .line 1428
    invoke-virtual {p1, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p3, :cond_3

    add-int/lit8 p1, v1, -0x3

    aget-byte p1, v0, p1

    if-ne p1, p4, :cond_3

    add-int/lit8 p1, v1, -0x2

    aget-byte p1, v0, p1

    const/16 p2, 0x22

    if-ne p1, p2, :cond_3

    add-int/lit8 p1, v1, -0x1

    aget-byte p1, v0, p1

    const/16 p2, 0x3a

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 1436
    :cond_1
    aget-byte p1, v0, v1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x20

    if-gt p1, p2, :cond_2

    const-wide/16 p2, 0x1

    shl-long/2addr p2, p1

    const-wide v2, 0x100003700L

    and-long/2addr p2, v2

    const-wide/16 v2, 0x0

    cmp-long p2, p2, v2

    if-eqz p2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1439
    aget-byte p1, v0, v1

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    add-int/2addr v1, p2

    .line 1442
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 1443
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return p2

    :cond_3
    :goto_1
    return v3
.end method

.method public final nextIfName4Match17(JJ)Z
    .locals 10

    .line 1450
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1451
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x13

    .line 1454
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 1458
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v8, 0x10

    sub-long/2addr v4, v8

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long p1, v4, p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v4, v6

    const-wide/16 v6, 0x8

    sub-long/2addr v4, v6

    .line 1459
    invoke-virtual {p1, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, p3

    if-eqz p1, :cond_1

    goto :goto_1

    .line 1464
    :cond_1
    aget-byte p1, v0, v1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x20

    if-gt p1, p2, :cond_2

    const-wide/16 p2, 0x1

    shl-long/2addr p2, p1

    const-wide v2, 0x100003700L

    and-long/2addr p2, v2

    const-wide/16 v2, 0x0

    cmp-long p2, p2, v2

    if-eqz p2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1467
    aget-byte p1, v0, v1

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    add-int/2addr v1, p2

    .line 1470
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 1471
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return p2

    :cond_3
    :goto_1
    return v3
.end method

.method public final nextIfName4Match18(JJ)Z
    .locals 10

    .line 1478
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1479
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x14

    .line 1482
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 1486
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v8, 0x11

    sub-long/2addr v4, v8

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long p1, v4, p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v4, v6

    const-wide/16 v6, 0x9

    sub-long/2addr v4, v6

    .line 1487
    invoke-virtual {p1, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, p3

    if-nez p1, :cond_3

    add-int/lit8 p1, v1, -0x1

    aget-byte p1, v0, p1

    const/16 p2, 0x3a

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 1493
    :cond_1
    aget-byte p1, v0, v1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x20

    if-gt p1, p2, :cond_2

    const-wide/16 p2, 0x1

    shl-long/2addr p2, p1

    const-wide v2, 0x100003700L

    and-long/2addr p2, v2

    const-wide/16 v2, 0x0

    cmp-long p2, p2, v2

    if-eqz p2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1496
    aget-byte p1, v0, v1

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    add-int/2addr v1, p2

    .line 1499
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 1500
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return p2

    :cond_3
    :goto_1
    return v3
.end method

.method public final nextIfName4Match19(JJ)Z
    .locals 10

    .line 1507
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1508
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x15

    .line 1511
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 1515
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v8, 0x12

    sub-long/2addr v4, v8

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long p1, v4, p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v4, v6

    const-wide/16 v6, 0xa

    sub-long/2addr v4, v6

    .line 1516
    invoke-virtual {p1, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, p3

    if-nez p1, :cond_3

    add-int/lit8 p1, v1, -0x2

    aget-byte p1, v0, p1

    const/16 p2, 0x22

    if-ne p1, p2, :cond_3

    add-int/lit8 p1, v1, -0x1

    aget-byte p1, v0, p1

    const/16 p2, 0x3a

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 1523
    :cond_1
    aget-byte p1, v0, v1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x20

    if-gt p1, p2, :cond_2

    const-wide/16 p2, 0x1

    shl-long/2addr p2, p1

    const-wide v2, 0x100003700L

    and-long/2addr p2, v2

    const-wide/16 v2, 0x0

    cmp-long p2, p2, v2

    if-eqz p2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1526
    aget-byte p1, v0, v1

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    add-int/2addr v1, p2

    .line 1529
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 1530
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return p2

    :cond_3
    :goto_1
    return v3
.end method

.method public final nextIfName4Match2()Z
    .locals 7

    .line 1030
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1031
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x4

    .line 1034
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v1, -0x1

    .line 1038
    aget-byte v2, v0, v2

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_1

    return v3

    .line 1042
    :cond_1
    aget-byte v2, v0, v1

    :goto_0
    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x20

    if-gt v2, v3, :cond_2

    const-wide/16 v3, 0x1

    shl-long/2addr v3, v2

    const-wide v5, 0x100003700L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1045
    aget-byte v2, v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    add-int/2addr v1, v0

    .line 1048
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v1, v2

    .line 1049
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v0
.end method

.method public final nextIfName4Match20(JJB)Z
    .locals 10

    .line 1537
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1538
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x16

    .line 1541
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 1545
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v8, 0x13

    sub-long/2addr v4, v8

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long p1, v4, p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v4, v6

    const-wide/16 v6, 0xb

    sub-long/2addr v4, v6

    .line 1546
    invoke-virtual {p1, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, p3

    if-nez p1, :cond_3

    add-int/lit8 p1, v1, -0x3

    aget-byte p1, v0, p1

    if-ne p1, p5, :cond_3

    add-int/lit8 p1, v1, -0x2

    aget-byte p1, v0, p1

    const/16 p2, 0x22

    if-ne p1, p2, :cond_3

    add-int/lit8 p1, v1, -0x1

    aget-byte p1, v0, p1

    const/16 p2, 0x3a

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 1554
    :cond_1
    aget-byte p1, v0, v1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x20

    if-gt p1, p2, :cond_2

    const-wide/16 p2, 0x1

    shl-long/2addr p2, p1

    const-wide p4, 0x100003700L

    and-long/2addr p2, p4

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-eqz p2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1557
    aget-byte p1, v0, v1

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    add-int/2addr v1, p2

    .line 1560
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 1561
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return p2

    :cond_3
    :goto_1
    return v3
.end method

.method public final nextIfName4Match21(JJI)Z
    .locals 10

    .line 1568
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1569
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x17

    .line 1572
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 1576
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v8, 0x14

    sub-long/2addr v4, v8

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long p1, v4, p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v4, v6

    const-wide/16 v8, 0xc

    sub-long/2addr v4, v8

    .line 1577
    invoke-virtual {p1, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, p3

    if-nez p1, :cond_3

    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide p2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr p2, v6

    const-wide/16 v4, 0x4

    sub-long/2addr p2, v4

    .line 1578
    invoke-virtual {p1, v0, p2, p3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eq p1, p5, :cond_1

    goto :goto_1

    .line 1583
    :cond_1
    aget-byte p1, v0, v1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x20

    if-gt p1, p2, :cond_2

    const-wide/16 p2, 0x1

    shl-long/2addr p2, p1

    const-wide p4, 0x100003700L

    and-long/2addr p2, p4

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-eqz p2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1586
    aget-byte p1, v0, v1

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    add-int/2addr v1, p2

    .line 1589
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 1590
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return p2

    :cond_3
    :goto_1
    return v3
.end method

.method public final nextIfName4Match22(JJI)Z
    .locals 10

    .line 1597
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1598
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x18

    .line 1601
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 1605
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v8, 0x15

    sub-long/2addr v4, v8

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long p1, v4, p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v4, v6

    const-wide/16 v8, 0xd

    sub-long/2addr v4, v8

    .line 1606
    invoke-virtual {p1, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, p3

    if-nez p1, :cond_3

    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide p2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr p2, v6

    const-wide/16 v4, 0x5

    sub-long/2addr p2, v4

    .line 1607
    invoke-virtual {p1, v0, p2, p3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p5, :cond_3

    add-int/lit8 p1, v1, -0x1

    aget-byte p1, v0, p1

    const/16 p2, 0x3a

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 1613
    :cond_1
    aget-byte p1, v0, v1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x20

    if-gt p1, p2, :cond_2

    const-wide/16 p2, 0x1

    shl-long/2addr p2, p1

    const-wide p4, 0x100003700L

    and-long/2addr p2, p4

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-eqz p2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1616
    aget-byte p1, v0, v1

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    add-int/2addr v1, p2

    .line 1619
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 1620
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return p2

    :cond_3
    :goto_1
    return v3
.end method

.method public final nextIfName4Match23(JJI)Z
    .locals 10

    .line 1627
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1628
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x19

    .line 1631
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 1635
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v8, 0x16

    sub-long/2addr v4, v8

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long p1, v4, p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v4, v6

    const-wide/16 v8, 0xe

    sub-long/2addr v4, v8

    .line 1636
    invoke-virtual {p1, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, p3

    if-nez p1, :cond_3

    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide p2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr p2, v6

    const-wide/16 v4, 0x6

    sub-long/2addr p2, v4

    .line 1637
    invoke-virtual {p1, v0, p2, p3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p5, :cond_3

    add-int/lit8 p1, v1, -0x2

    aget-byte p1, v0, p1

    const/16 p2, 0x22

    if-ne p1, p2, :cond_3

    add-int/lit8 p1, v1, -0x1

    aget-byte p1, v0, p1

    const/16 p2, 0x3a

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 1644
    :cond_1
    aget-byte p1, v0, v1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x20

    if-gt p1, p2, :cond_2

    const-wide/16 p2, 0x1

    shl-long/2addr p2, p1

    const-wide p4, 0x100003700L

    and-long/2addr p2, p4

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-eqz p2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1647
    aget-byte p1, v0, v1

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    add-int/2addr v1, p2

    .line 1650
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 1651
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return p2

    :cond_3
    :goto_1
    return v3
.end method

.method public final nextIfName4Match24(JJIB)Z
    .locals 11

    move-object v0, p0

    .line 1658
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1659
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x1a

    .line 1662
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    return v4

    .line 1666
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    const-wide/16 v9, 0x17

    sub-long/2addr v5, v9

    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p1

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0xf

    sub-long/2addr v5, v9

    .line 1667
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p3

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0x7

    sub-long/2addr v5, v7

    .line 1668
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move/from16 v5, p5

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, v2, -0x3

    aget-byte v3, v1, v3

    move/from16 v5, p6

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, v2, -0x2

    aget-byte v3, v1, v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v1, v3

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_1

    goto :goto_1

    .line 1676
    :cond_1
    aget-byte v3, v1, v2

    :goto_0
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-gt v3, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 1679
    aget-byte v3, v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 1682
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v2, v3

    .line 1683
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v1

    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match25(JJJ)Z
    .locals 11

    move-object v0, p0

    .line 1690
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1691
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x1b

    .line 1694
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    return v4

    .line 1698
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    const-wide/16 v9, 0x18

    sub-long/2addr v5, v9

    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p1

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x10

    sub-long/2addr v5, v9

    .line 1699
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p3

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0x8

    sub-long/2addr v5, v7

    .line 1700
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p5

    if-eqz v3, :cond_1

    goto :goto_1

    .line 1705
    :cond_1
    aget-byte v3, v1, v2

    :goto_0
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-gt v3, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 1708
    aget-byte v3, v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 1711
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v2, v3

    .line 1712
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v1

    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match26(JJJ)Z
    .locals 11

    move-object v0, p0

    .line 1719
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1720
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x1c

    .line 1723
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    return v4

    .line 1727
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    const-wide/16 v9, 0x19

    sub-long/2addr v5, v9

    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p1

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x11

    sub-long/2addr v5, v9

    .line 1728
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p3

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0x9

    sub-long/2addr v5, v7

    .line 1729
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p5

    if-nez v3, :cond_3

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v1, v3

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_1

    goto :goto_1

    .line 1735
    :cond_1
    aget-byte v3, v1, v2

    :goto_0
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-gt v3, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 1738
    aget-byte v3, v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 1741
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v2, v3

    .line 1742
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v1

    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match27(JJJ)Z
    .locals 11

    move-object v0, p0

    .line 1749
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1750
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x1d

    .line 1753
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    return v4

    .line 1757
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    const-wide/16 v9, 0x1a

    sub-long/2addr v5, v9

    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p1

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x12

    sub-long/2addr v5, v9

    .line 1758
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p3

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0xa

    sub-long/2addr v5, v7

    .line 1759
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p5

    if-nez v3, :cond_3

    add-int/lit8 v3, v2, -0x2

    aget-byte v3, v1, v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v1, v3

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_1

    goto :goto_1

    .line 1766
    :cond_1
    aget-byte v3, v1, v2

    :goto_0
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-gt v3, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 1769
    aget-byte v3, v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 1772
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v2, v3

    .line 1773
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v1

    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match28(JJJB)Z
    .locals 11

    move-object v0, p0

    .line 1780
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1781
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x1e

    .line 1784
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    return v4

    .line 1788
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    const-wide/16 v9, 0x1b

    sub-long/2addr v5, v9

    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p1

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x13

    sub-long/2addr v5, v9

    .line 1789
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p3

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0xb

    sub-long/2addr v5, v7

    .line 1790
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p5

    if-nez v3, :cond_3

    add-int/lit8 v3, v2, -0x3

    aget-byte v3, v1, v3

    move/from16 v5, p7

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, v2, -0x2

    aget-byte v3, v1, v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v1, v3

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_1

    goto :goto_1

    .line 1798
    :cond_1
    aget-byte v3, v1, v2

    :goto_0
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-gt v3, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 1801
    aget-byte v3, v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 1804
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v2, v3

    .line 1805
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v1

    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match29(JJJI)Z
    .locals 11

    move-object v0, p0

    .line 1812
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1813
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x1f

    .line 1816
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    return v4

    .line 1820
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    const-wide/16 v9, 0x1c

    sub-long/2addr v5, v9

    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p1

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x14

    sub-long/2addr v5, v9

    .line 1821
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p3

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0xc

    sub-long/2addr v5, v9

    .line 1822
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p5

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0x4

    sub-long/2addr v5, v7

    .line 1823
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move/from16 v5, p7

    if-eq v3, v5, :cond_1

    goto :goto_1

    .line 1828
    :cond_1
    aget-byte v3, v1, v2

    :goto_0
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-gt v3, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 1831
    aget-byte v3, v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 1834
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v2, v3

    .line 1835
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v1

    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match3()Z
    .locals 7

    .line 1056
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1057
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x5

    .line 1060
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v1, -0x2

    .line 1064
    aget-byte v2, v0, v2

    const/16 v4, 0x22

    if-ne v2, v4, :cond_3

    add-int/lit8 v2, v1, -0x1

    aget-byte v2, v0, v2

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_1

    goto :goto_1

    .line 1068
    :cond_1
    aget-byte v2, v0, v1

    :goto_0
    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x20

    if-gt v2, v3, :cond_2

    const-wide/16 v3, 0x1

    shl-long/2addr v3, v2

    const-wide v5, 0x100003700L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1071
    aget-byte v2, v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    add-int/2addr v1, v0

    .line 1074
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v1, v2

    .line 1075
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v0

    :cond_3
    :goto_1
    return v3
.end method

.method public final nextIfName4Match30(JJJI)Z
    .locals 12

    move-object v0, p0

    .line 1842
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1843
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    const/16 v3, 0x20

    add-int/2addr v2, v3

    .line 1846
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v5, 0x0

    if-lt v2, v4, :cond_0

    return v5

    .line 1850
    :cond_0
    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v8, v2

    add-long/2addr v6, v8

    const-wide/16 v10, 0x1d

    sub-long/2addr v6, v10

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v6, p1

    if-nez v4, :cond_3

    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v6, v8

    const-wide/16 v10, 0x15

    sub-long/2addr v6, v10

    .line 1851
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v6, p3

    if-nez v4, :cond_3

    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v6, v8

    const-wide/16 v10, 0xd

    sub-long/2addr v6, v10

    .line 1852
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v6, p5

    if-nez v4, :cond_3

    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x5

    sub-long/2addr v6, v8

    .line 1853
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move/from16 v6, p7

    if-ne v4, v6, :cond_3

    add-int/lit8 v4, v2, -0x1

    aget-byte v4, v1, v4

    const/16 v6, 0x3a

    if-eq v4, v6, :cond_1

    goto :goto_1

    .line 1859
    :cond_1
    aget-byte v4, v1, v2

    :goto_0
    and-int/lit16 v4, v4, 0xff

    if-gt v4, v3, :cond_2

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    const-wide v7, 0x100003700L

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 1862
    aget-byte v4, v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 1865
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v2, v4

    .line 1866
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v1

    :cond_3
    :goto_1
    return v5
.end method

.method public final nextIfName4Match31(JJJI)Z
    .locals 11

    move-object v0, p0

    .line 1873
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1874
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x21

    .line 1877
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    return v4

    .line 1881
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    const-wide/16 v9, 0x1e

    sub-long/2addr v5, v9

    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p1

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x16

    sub-long/2addr v5, v9

    .line 1882
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p3

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0xe

    sub-long/2addr v5, v9

    .line 1883
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p5

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0x6

    sub-long/2addr v5, v7

    .line 1884
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move/from16 v5, p7

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, v2, -0x2

    aget-byte v3, v1, v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v1, v3

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_1

    goto :goto_1

    .line 1891
    :cond_1
    aget-byte v3, v1, v2

    :goto_0
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-gt v3, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 1894
    aget-byte v3, v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 1897
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v2, v3

    .line 1898
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v1

    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match32(JJJIB)Z
    .locals 12

    move-object v0, p0

    .line 1905
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1906
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    const/16 v3, 0x22

    add-int/2addr v2, v3

    .line 1909
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v5, 0x0

    if-lt v2, v4, :cond_0

    return v5

    .line 1913
    :cond_0
    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v8, v2

    add-long/2addr v6, v8

    const-wide/16 v10, 0x1f

    sub-long/2addr v6, v10

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v6, p1

    if-nez v4, :cond_3

    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v6, v8

    const-wide/16 v10, 0x17

    sub-long/2addr v6, v10

    .line 1914
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v6, p3

    if-nez v4, :cond_3

    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v6, v8

    const-wide/16 v10, 0xf

    sub-long/2addr v6, v10

    .line 1915
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v6, p5

    if-nez v4, :cond_3

    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x7

    sub-long/2addr v6, v8

    .line 1916
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move/from16 v6, p7

    if-ne v4, v6, :cond_3

    add-int/lit8 v4, v2, -0x3

    aget-byte v4, v1, v4

    move/from16 v6, p8

    if-ne v4, v6, :cond_3

    add-int/lit8 v4, v2, -0x2

    aget-byte v4, v1, v4

    if-ne v4, v3, :cond_3

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v1, v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 1924
    :cond_1
    aget-byte v3, v1, v2

    :goto_0
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-gt v3, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 1927
    aget-byte v3, v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 1930
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v2, v3

    .line 1931
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v1

    :cond_3
    :goto_1
    return v5
.end method

.method public final nextIfName4Match33(JJJJ)Z
    .locals 11

    move-object v0, p0

    .line 1938
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1939
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x23

    .line 1942
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    return v4

    .line 1946
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    const-wide/16 v9, 0x20

    sub-long/2addr v5, v9

    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p1

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x18

    sub-long/2addr v5, v9

    .line 1947
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p3

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x10

    sub-long/2addr v5, v9

    .line 1948
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p5

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0x8

    sub-long/2addr v5, v7

    .line 1949
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p7

    if-eqz v3, :cond_1

    goto :goto_1

    .line 1954
    :cond_1
    aget-byte v3, v1, v2

    :goto_0
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-gt v3, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 1957
    aget-byte v3, v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 1960
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v2, v3

    .line 1961
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v1

    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match34(JJJJ)Z
    .locals 11

    move-object v0, p0

    .line 1968
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1969
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x24

    .line 1972
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    return v4

    .line 1976
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    const-wide/16 v9, 0x21

    sub-long/2addr v5, v9

    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p1

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x19

    sub-long/2addr v5, v9

    .line 1977
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p3

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x11

    sub-long/2addr v5, v9

    .line 1978
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p5

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0x9

    sub-long/2addr v5, v7

    .line 1979
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p7

    if-nez v3, :cond_3

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v1, v3

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_1

    goto :goto_1

    .line 1985
    :cond_1
    aget-byte v3, v1, v2

    :goto_0
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-gt v3, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 1988
    aget-byte v3, v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 1991
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v2, v3

    .line 1992
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v1

    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match35(JJJJ)Z
    .locals 11

    move-object v0, p0

    .line 1999
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 2000
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x25

    .line 2003
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    return v4

    .line 2007
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    const-wide/16 v9, 0x22

    sub-long/2addr v5, v9

    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p1

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x1a

    sub-long/2addr v5, v9

    .line 2008
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p3

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x12

    sub-long/2addr v5, v9

    .line 2009
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p5

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0xa

    sub-long/2addr v5, v7

    .line 2010
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p7

    if-nez v3, :cond_3

    add-int/lit8 v3, v2, -0x2

    aget-byte v3, v1, v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v1, v3

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_1

    goto :goto_1

    .line 2017
    :cond_1
    aget-byte v3, v1, v2

    :goto_0
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-gt v3, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 2020
    aget-byte v3, v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 2023
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v2, v3

    .line 2024
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v1

    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match36(JJJJB)Z
    .locals 11

    move-object v0, p0

    .line 2031
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 2032
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x26

    .line 2035
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    return v4

    .line 2039
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    const-wide/16 v9, 0x23

    sub-long/2addr v5, v9

    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p1

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x1b

    sub-long/2addr v5, v9

    .line 2040
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p3

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x13

    sub-long/2addr v5, v9

    .line 2041
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p5

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0xb

    sub-long/2addr v5, v7

    .line 2042
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p7

    if-nez v3, :cond_3

    add-int/lit8 v3, v2, -0x3

    aget-byte v3, v1, v3

    move/from16 v5, p9

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, v2, -0x2

    aget-byte v3, v1, v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v1, v3

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_1

    goto :goto_1

    .line 2050
    :cond_1
    aget-byte v3, v1, v2

    :goto_0
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-gt v3, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 2053
    aget-byte v3, v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 2056
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v2, v3

    .line 2057
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v1

    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match37(JJJJI)Z
    .locals 11

    move-object v0, p0

    .line 2064
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 2065
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x27

    .line 2068
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    return v4

    .line 2072
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    const-wide/16 v9, 0x24

    sub-long/2addr v5, v9

    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p1

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x1c

    sub-long/2addr v5, v9

    .line 2073
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p3

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x14

    sub-long/2addr v5, v9

    .line 2074
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p5

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0xc

    sub-long/2addr v5, v9

    .line 2075
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p7

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0x4

    sub-long/2addr v5, v7

    .line 2076
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move/from16 v5, p9

    if-eq v3, v5, :cond_1

    goto :goto_1

    .line 2081
    :cond_1
    aget-byte v3, v1, v2

    :goto_0
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-gt v3, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 2084
    aget-byte v3, v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 2087
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v2, v3

    .line 2088
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v1

    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match38(JJJJI)Z
    .locals 11

    move-object v0, p0

    .line 2095
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 2096
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x28

    .line 2099
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    return v4

    .line 2103
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    const-wide/16 v9, 0x25

    sub-long/2addr v5, v9

    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p1

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x1d

    sub-long/2addr v5, v9

    .line 2104
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p3

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x15

    sub-long/2addr v5, v9

    .line 2105
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p5

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0xd

    sub-long/2addr v5, v9

    .line 2106
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p7

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0x5

    sub-long/2addr v5, v7

    .line 2107
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move/from16 v5, p9

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v1, v3

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_1

    goto :goto_1

    .line 2113
    :cond_1
    aget-byte v3, v1, v2

    :goto_0
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-gt v3, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 2116
    aget-byte v3, v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 2119
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v2, v3

    .line 2120
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v1

    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match39(JJJJI)Z
    .locals 11

    move-object v0, p0

    .line 2127
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 2128
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x29

    .line 2131
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    return v4

    .line 2135
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    const-wide/16 v9, 0x26

    sub-long/2addr v5, v9

    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p1

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x1e

    sub-long/2addr v5, v9

    .line 2136
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p3

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x16

    sub-long/2addr v5, v9

    .line 2137
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p5

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0xe

    sub-long/2addr v5, v9

    .line 2138
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p7

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0x6

    sub-long/2addr v5, v7

    .line 2139
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move/from16 v5, p9

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, v2, -0x2

    aget-byte v3, v1, v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v1, v3

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_1

    goto :goto_1

    .line 2146
    :cond_1
    aget-byte v3, v1, v2

    :goto_0
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-gt v3, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 2149
    aget-byte v3, v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 2152
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v2, v3

    .line 2153
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v1

    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match4(B)Z
    .locals 6

    .line 1082
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1083
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x6

    .line 1086
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v1, -0x3

    .line 1090
    aget-byte v2, v0, v2

    if-ne v2, p1, :cond_3

    add-int/lit8 p1, v1, -0x2

    aget-byte p1, v0, p1

    const/16 v2, 0x22

    if-ne p1, v2, :cond_3

    add-int/lit8 p1, v1, -0x1

    aget-byte p1, v0, p1

    const/16 v2, 0x3a

    if-eq p1, v2, :cond_1

    goto :goto_1

    .line 1094
    :cond_1
    aget-byte p1, v0, v1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    const/16 v2, 0x20

    if-gt p1, v2, :cond_2

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide v4, 0x100003700L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1097
    aget-byte p1, v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    add-int/2addr v1, v0

    .line 1100
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 1101
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v0

    :cond_3
    :goto_1
    return v3
.end method

.method public final nextIfName4Match40(JJJJIB)Z
    .locals 11

    move-object v0, p0

    .line 2160
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 2161
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x2a

    .line 2164
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    return v4

    .line 2168
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    const-wide/16 v9, 0x27

    sub-long/2addr v5, v9

    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p1

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x1f

    sub-long/2addr v5, v9

    .line 2169
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p3

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x17

    sub-long/2addr v5, v9

    .line 2170
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p5

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0xf

    sub-long/2addr v5, v9

    .line 2171
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p7

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0x7

    sub-long/2addr v5, v7

    .line 2172
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move/from16 v5, p9

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, v2, -0x3

    aget-byte v3, v1, v3

    move/from16 v5, p10

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, v2, -0x2

    aget-byte v3, v1, v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v1, v3

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_1

    goto :goto_1

    .line 2180
    :cond_1
    aget-byte v3, v1, v2

    :goto_0
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-gt v3, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 2183
    aget-byte v3, v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 2186
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v2, v3

    .line 2187
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v1

    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match41(JJJJJ)Z
    .locals 11

    move-object v0, p0

    .line 2194
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 2195
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x2b

    .line 2198
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    return v4

    .line 2202
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    const-wide/16 v9, 0x28

    sub-long/2addr v5, v9

    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p1

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x20

    sub-long/2addr v5, v9

    .line 2203
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p3

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x18

    sub-long/2addr v5, v9

    .line 2204
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p5

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x10

    sub-long/2addr v5, v9

    .line 2205
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p7

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0x8

    sub-long/2addr v5, v7

    .line 2206
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p9

    if-eqz v3, :cond_1

    goto :goto_1

    .line 2211
    :cond_1
    aget-byte v3, v1, v2

    :goto_0
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-gt v3, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 2214
    aget-byte v3, v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 2217
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v2, v3

    .line 2218
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v1

    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match42(JJJJJ)Z
    .locals 11

    move-object v0, p0

    .line 2225
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 2226
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x2c

    .line 2229
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    return v4

    .line 2233
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    const-wide/16 v9, 0x29

    sub-long/2addr v5, v9

    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p1

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x21

    sub-long/2addr v5, v9

    .line 2234
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p3

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x19

    sub-long/2addr v5, v9

    .line 2235
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p5

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x11

    sub-long/2addr v5, v9

    .line 2236
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p7

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0x9

    sub-long/2addr v5, v7

    .line 2237
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p9

    if-nez v3, :cond_3

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v1, v3

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_1

    goto :goto_1

    .line 2243
    :cond_1
    aget-byte v3, v1, v2

    :goto_0
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-gt v3, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 2246
    aget-byte v3, v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 2249
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v2, v3

    .line 2250
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v1

    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match43(JJJJJ)Z
    .locals 11

    move-object v0, p0

    .line 2257
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 2258
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x2d

    .line 2261
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    return v4

    .line 2265
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    const-wide/16 v9, 0x2a

    sub-long/2addr v5, v9

    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p1

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x22

    sub-long/2addr v5, v9

    .line 2266
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p3

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x1a

    sub-long/2addr v5, v9

    .line 2267
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p5

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v9, 0x12

    sub-long/2addr v5, v9

    .line 2268
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p7

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0xa

    sub-long/2addr v5, v7

    .line 2269
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v5, p9

    if-nez v3, :cond_3

    add-int/lit8 v3, v2, -0x2

    aget-byte v3, v1, v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v1, v3

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_1

    goto :goto_1

    .line 2276
    :cond_1
    aget-byte v3, v1, v2

    :goto_0
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-gt v3, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 2279
    aget-byte v3, v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 2282
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v2, v3

    .line 2283
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v1

    :cond_3
    :goto_1
    return v4
.end method

.method public final nextIfName4Match5(I)Z
    .locals 8

    .line 1108
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1109
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x7

    .line 1112
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 1116
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v6, 0x4

    sub-long/2addr v4, v6

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-eq v2, p1, :cond_1

    return v3

    .line 1120
    :cond_1
    aget-byte p1, v0, v1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    const/16 v2, 0x20

    if-gt p1, v2, :cond_2

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide v4, 0x100003700L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1123
    aget-byte p1, v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    add-int/2addr v1, v0

    .line 1126
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 1127
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v0
.end method

.method public final nextIfName4Match6(I)Z
    .locals 8

    .line 1134
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1135
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x8

    .line 1138
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 1142
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v6, 0x5

    sub-long/2addr v4, v6

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, p1, :cond_3

    add-int/lit8 p1, v1, -0x1

    aget-byte p1, v0, p1

    const/16 v2, 0x3a

    if-eq p1, v2, :cond_1

    goto :goto_1

    .line 1146
    :cond_1
    aget-byte p1, v0, v1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    const/16 v2, 0x20

    if-gt p1, v2, :cond_2

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide v4, 0x100003700L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1149
    aget-byte p1, v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    add-int/2addr v1, v0

    .line 1152
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 1153
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v0

    :cond_3
    :goto_1
    return v3
.end method

.method public final nextIfName4Match7(I)Z
    .locals 8

    .line 1160
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1161
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x9

    .line 1164
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 1168
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v6, 0x6

    sub-long/2addr v4, v6

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, p1, :cond_3

    add-int/lit8 p1, v1, -0x2

    aget-byte p1, v0, p1

    const/16 v2, 0x22

    if-ne p1, v2, :cond_3

    add-int/lit8 p1, v1, -0x1

    aget-byte p1, v0, p1

    const/16 v2, 0x3a

    if-eq p1, v2, :cond_1

    goto :goto_1

    .line 1175
    :cond_1
    aget-byte p1, v0, v1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    const/16 v2, 0x20

    if-gt p1, v2, :cond_2

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide v4, 0x100003700L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1178
    aget-byte p1, v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    add-int/2addr v1, v0

    .line 1181
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 1182
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v0

    :cond_3
    :goto_1
    return v3
.end method

.method public final nextIfName4Match8(IB)Z
    .locals 8

    .line 1189
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1190
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0xa

    .line 1193
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 1197
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v6, 0x7

    sub-long/2addr v4, v6

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, p1, :cond_3

    add-int/lit8 p1, v1, -0x3

    aget-byte p1, v0, p1

    if-ne p1, p2, :cond_3

    add-int/lit8 p1, v1, -0x2

    aget-byte p1, v0, p1

    const/16 p2, 0x22

    if-ne p1, p2, :cond_3

    add-int/lit8 p1, v1, -0x1

    aget-byte p1, v0, p1

    const/16 p2, 0x3a

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 1205
    :cond_1
    aget-byte p1, v0, v1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x20

    if-gt p1, p2, :cond_2

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide v4, 0x100003700L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1208
    aget-byte p1, v0, v1

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    add-int/2addr v1, p2

    .line 1211
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 1212
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return p2

    :cond_3
    :goto_1
    return v3
.end method

.method public final nextIfName4Match9(J)Z
    .locals 8

    .line 1219
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1220
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0xb

    .line 1223
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 1227
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v6, 0x8

    sub-long/2addr v4, v6

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long p1, v4, p1

    if-eqz p1, :cond_1

    return v3

    .line 1231
    :cond_1
    aget-byte p1, v0, v1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x20

    if-gt p1, p2, :cond_2

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide v4, 0x100003700L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1234
    aget-byte p1, v0, v1

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    add-int/2addr v1, p2

    .line 1237
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 1238
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return p2
.end method

.method public final nextIfName8Match0()Z
    .locals 7

    .line 1008
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 1009
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x7

    .line 1012
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v1, v2, :cond_0

    const/16 v0, 0x1a

    .line 1013
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/4 v0, 0x0

    return v0

    .line 1017
    :cond_0
    aget-byte v2, v0, v1

    :goto_0
    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x20

    if-gt v2, v3, :cond_1

    const-wide/16 v3, 0x1

    shl-long/2addr v3, v2

    const-wide v5, 0x100003700L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 1020
    aget-byte v2, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    add-int/2addr v1, v0

    .line 1023
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v1, v2

    .line 1024
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v0
.end method

.method public final nextIfName8Match1()Z
    .locals 7

    .line 982
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 983
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x8

    .line 986
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v1, -0x1

    .line 990
    aget-byte v2, v0, v2

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_1

    return v3

    .line 994
    :cond_1
    aget-byte v2, v0, v1

    :goto_0
    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x20

    if-gt v2, v3, :cond_2

    const-wide/16 v3, 0x1

    shl-long/2addr v3, v2

    const-wide v5, 0x100003700L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 997
    aget-byte v2, v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    add-int/2addr v1, v0

    .line 1000
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v1, v2

    .line 1001
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v0
.end method

.method public final nextIfName8Match2()Z
    .locals 7

    .line 956
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 957
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x9

    .line 960
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v1, -0x2

    .line 964
    aget-byte v2, v0, v2

    const/16 v4, 0x22

    if-ne v2, v4, :cond_3

    add-int/lit8 v2, v1, -0x1

    aget-byte v2, v0, v2

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_1

    goto :goto_1

    .line 968
    :cond_1
    aget-byte v2, v0, v1

    :goto_0
    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x20

    if-gt v2, v3, :cond_2

    const-wide/16 v3, 0x1

    shl-long/2addr v3, v2

    const-wide v5, 0x100003700L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 971
    aget-byte v2, v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    add-int/2addr v1, v0

    .line 974
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v1, v2

    .line 975
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v0

    :cond_3
    :goto_1
    return v3
.end method

.method public final nextIfNull()Z
    .locals 4

    .line 6939
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 6940
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 6941
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v3, 0x6e

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x2

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v2, v3, :cond_0

    aget-byte v0, v1, v0

    const/16 v1, 0x75

    if-ne v0, v1, :cond_0

    .line 6945
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readNull()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nextIfNullOrEmptyString()Z
    .locals 17

    move-object/from16 v0, p0

    .line 8197
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 8198
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    .line 8199
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 8200
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x6e

    if-ne v1, v7, :cond_0

    add-int/lit8 v7, v3, 0x2

    if-ge v7, v2, :cond_0

    .line 8201
    aget-byte v8, v4, v3

    const/16 v9, 0x75

    if-ne v8, v9, :cond_0

    add-int/lit8 v8, v3, 0x1

    aget-byte v8, v4, v8

    const/16 v9, 0x6c

    if-ne v8, v9, :cond_0

    aget-byte v7, v4, v7

    if-ne v7, v9, :cond_0

    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_0
    const/16 v7, 0x22

    if-eq v1, v7, :cond_1

    const/16 v7, 0x27

    if-ne v1, v7, :cond_e

    :cond_1
    if-ge v3, v2, :cond_e

    .line 8208
    aget-byte v7, v4, v3

    if-ne v7, v1, :cond_e

    add-int/2addr v3, v6

    :goto_0
    const/16 v1, 0x1a

    if-ne v3, v2, :cond_2

    move v7, v1

    goto :goto_1

    .line 8214
    :cond_2
    aget-byte v7, v4, v3

    int-to-char v7, v7

    :goto_1
    const-wide/16 v8, 0x0

    const-wide v10, 0x100003700L

    const-wide/16 v12, 0x1

    const/16 v14, 0x20

    if-ltz v7, :cond_4

    if-gt v7, v14, :cond_4

    shl-long v15, v12, v7

    and-long/2addr v15, v10

    cmp-long v15, v15, v8

    if-eqz v15, :cond_4

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_3

    .line 8219
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 8220
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    return v6

    .line 8223
    :cond_3
    aget-byte v7, v4, v3

    goto :goto_1

    :cond_4
    const/16 v15, 0x2c

    if-ne v7, v15, :cond_5

    move v5, v6

    .line 8226
    :cond_5
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v5, :cond_7

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_6

    move v7, v1

    goto :goto_2

    .line 8231
    :cond_6
    aget-byte v7, v4, v3

    :cond_7
    :goto_2
    if-lt v3, v2, :cond_8

    .line 8236
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 8237
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    return v6

    :cond_8
    :goto_3
    if-ltz v7, :cond_a

    if-gt v7, v14, :cond_a

    shl-long v15, v12, v7

    and-long/2addr v15, v10

    cmp-long v5, v15, v8

    if-eqz v5, :cond_a

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_9

    .line 8244
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v6

    .line 8247
    :cond_9
    aget-byte v7, v4, v3

    goto :goto_3

    :cond_a
    if-ltz v7, :cond_b

    add-int/2addr v3, v6

    .line 8251
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v1, v7

    .line 8252
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v6

    :cond_b
    and-int/lit16 v1, v7, 0xff

    shr-int/lit8 v2, v1, 0x4

    const-string v5, "malformed input around byte "

    const/16 v7, 0x80

    packed-switch v2, :pswitch_data_0

    .line 8286
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v2, v3, -0x2

    .line 8273
    aget-byte v2, v4, v2

    add-int/lit8 v8, v3, -0x1

    .line 8274
    aget-byte v4, v4, v8

    and-int/lit16 v9, v2, 0xc0

    if-ne v9, v7, :cond_c

    and-int/lit16 v9, v4, 0xc0

    if-ne v9, v7, :cond_c

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0xc

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    and-int/lit8 v2, v4, 0x3f

    goto :goto_4

    .line 8276
    :cond_c
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v3, -0x1

    .line 8262
    aget-byte v2, v4, v2

    and-int/lit16 v4, v2, 0xc0

    if-ne v4, v7, :cond_d

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v2, v2, 0x3f

    :goto_4
    or-int/2addr v1, v2

    int-to-char v1, v1

    .line 8288
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v1, v1

    .line 8289
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v6

    .line 8264
    :cond_d
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    return v5

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public nextIfObjectEnd()Z
    .locals 15

    .line 546
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_b

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_b

    const/16 v2, 0x7d

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 555
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 556
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    .line 557
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v3

    .line 561
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    add-int/lit8 v4, v0, 0x1

    .line 563
    aget-byte v0, v2, v0

    :goto_0
    if-eqz v0, :cond_9

    const-wide/16 v5, 0x0

    const-wide v7, 0x100003700L

    const-wide/16 v9, 0x1

    const/16 v11, 0x20

    if-gt v0, v11, :cond_2

    shl-long v12, v9, v0

    and-long/2addr v12, v7

    cmp-long v12, v12, v5

    if-eqz v12, :cond_2

    goto/16 :goto_4

    :cond_2
    const/16 v12, 0x2c

    if-ne v0, v12, :cond_5

    .line 574
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    add-int/lit8 v0, v4, 0x1

    .line 575
    aget-byte v4, v2, v4

    :goto_1
    move v14, v4

    move v4, v0

    move v0, v14

    if-eqz v0, :cond_3

    if-gt v0, v11, :cond_5

    shl-long v12, v9, v0

    and-long/2addr v12, v7

    cmp-long v12, v12, v5

    if-eqz v12, :cond_5

    .line 577
    :cond_3
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v4, v0, :cond_4

    .line 578
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 579
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    return v3

    :cond_4
    add-int/lit8 v0, v4, 0x1

    .line 582
    aget-byte v4, v2, v4

    goto :goto_1

    :cond_5
    if-gez v0, :cond_7

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, v0, 0x4

    const/16 v5, 0x80

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 602
    :pswitch_0
    aget-byte v1, v2, v4

    add-int/lit8 v6, v4, 0x1

    .line 603
    aget-byte v2, v2, v6

    and-int/lit16 v6, v1, 0xc0

    if-ne v6, v5, :cond_6

    and-int/lit16 v6, v2, 0xc0

    if-ne v6, v5, :cond_6

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    and-int/lit8 v1, v2, 0x3f

    or-int/2addr v0, v1

    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 592
    :pswitch_1
    aget-byte v1, v2, v4

    and-int/lit16 v2, v1, 0xc0

    if-ne v2, v5, :cond_6

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 613
    :cond_6
    :goto_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed input around byte "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    int-to-char v0, v0

    .line 616
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 617
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 619
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_8

    .line 620
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    :cond_8
    return v3

    .line 565
    :cond_9
    :goto_4
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v4, v0, :cond_a

    .line 566
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 567
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    return v3

    :cond_a
    add-int/lit8 v0, v4, 0x1

    .line 570
    aget-byte v4, v2, v4

    move v14, v4

    move v4, v0

    move v0, v14

    goto/16 :goto_0

    .line 548
    :cond_b
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal syntax: `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x60

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public nextIfObjectStart()Z
    .locals 10

    .line 482
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 487
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 488
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    .line 489
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v3

    .line 493
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    add-int/lit8 v4, v0, 0x1

    .line 495
    aget-byte v0, v1, v0

    :goto_0
    if-eqz v0, :cond_6

    const/16 v5, 0x20

    if-gt v0, v5, :cond_2

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v0

    const-wide v7, 0x100003700L

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    if-gez v0, :cond_4

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v2, v0, 0x4

    const/16 v5, 0x80

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 521
    :pswitch_0
    aget-byte v2, v1, v4

    add-int/lit8 v6, v4, 0x1

    .line 522
    aget-byte v1, v1, v6

    and-int/lit16 v6, v2, 0xc0

    if-ne v6, v5, :cond_3

    and-int/lit16 v6, v1, 0xc0

    if-ne v6, v5, :cond_3

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v0, v2

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 511
    :pswitch_1
    aget-byte v1, v1, v4

    and-int/lit16 v2, v1, 0xc0

    if-ne v2, v5, :cond_3

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 532
    :cond_3
    :goto_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed input around byte "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    int-to-char v0, v0

    .line 535
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 536
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 538
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_5

    .line 539
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    :cond_5
    return v3

    .line 497
    :cond_6
    :goto_3
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v4, v0, :cond_7

    .line 498
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 499
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    return v3

    :cond_7
    add-int/lit8 v0, v4, 0x1

    .line 502
    aget-byte v4, v1, v4

    move v9, v4

    move v4, v0

    move v0, v9

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final nextIfSet()Z
    .locals 9

    .line 417
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 418
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 419
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    int-to-byte v2, v2

    const/16 v3, 0x53

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, v1, 0x1

    .line 420
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v2, v3, :cond_3

    aget-byte v4, v0, v1

    const/16 v5, 0x65

    if-ne v4, v5, :cond_3

    aget-byte v2, v0, v2

    const/16 v4, 0x74

    if-ne v2, v4, :cond_3

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0x1a

    if-lt v1, v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 428
    aget-byte v1, v0, v1

    :goto_0
    const/16 v4, 0x20

    if-gt v1, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v1

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 430
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v3, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v3, 0x1

    .line 434
    aget-byte v3, v0, v3

    move v8, v3

    move v3, v1

    move v1, v8

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_1
    move v1, v3

    .line 438
    :goto_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v0, v2

    .line 439
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public final nextIfValue4Match10(J)Z
    .locals 8

    .line 2586
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 2587
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0xb

    .line 2590
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 2594
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v6, 0x8

    sub-long/2addr v4, v6

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long p1, v4, p1

    if-eqz p1, :cond_1

    return v3

    .line 2598
    :cond_1
    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x2c

    if-eq p1, p2, :cond_2

    const/16 v2, 0x7d

    if-eq p1, v2, :cond_2

    const/16 v2, 0x5d

    if-eq p1, v2, :cond_2

    return v3

    :cond_2
    const/4 v2, 0x1

    if-ne p1, p2, :cond_4

    .line 2604
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    add-int/lit8 v1, v1, 0x1

    .line 2606
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v1, p1, :cond_3

    const/16 p1, 0x1a

    goto :goto_0

    :cond_3
    aget-byte p1, v0, v1

    goto :goto_1

    :cond_4
    :goto_0
    const/16 p2, 0x20

    if-gt p1, p2, :cond_5

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    const-wide v5, 0x100003700L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-eqz p2, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 2611
    aget-byte p1, v0, v1

    :goto_1
    and-int/lit16 p1, p1, 0xff

    goto :goto_0

    :cond_5
    add-int/2addr v1, v2

    .line 2614
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 2615
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v2
.end method

.method public final nextIfValue4Match11(J)Z
    .locals 8

    .line 2622
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 2623
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0xc

    .line 2626
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 2630
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v6, 0x9

    sub-long/2addr v4, v6

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long p1, v4, p1

    if-nez p1, :cond_6

    add-int/lit8 p1, v1, -0x1

    aget-byte p1, v0, p1

    const/16 p2, 0x22

    if-eq p1, p2, :cond_1

    goto :goto_2

    .line 2636
    :cond_1
    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x2c

    if-eq p1, p2, :cond_2

    const/16 v2, 0x7d

    if-eq p1, v2, :cond_2

    const/16 v2, 0x5d

    if-eq p1, v2, :cond_2

    return v3

    :cond_2
    const/4 v2, 0x1

    if-ne p1, p2, :cond_4

    .line 2642
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    add-int/lit8 v1, v1, 0x1

    .line 2644
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v1, p1, :cond_3

    const/16 p1, 0x1a

    goto :goto_0

    :cond_3
    aget-byte p1, v0, v1

    goto :goto_1

    :cond_4
    :goto_0
    const/16 p2, 0x20

    if-gt p1, p2, :cond_5

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    const-wide v5, 0x100003700L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-eqz p2, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 2649
    aget-byte p1, v0, v1

    :goto_1
    and-int/lit16 p1, p1, 0xff

    goto :goto_0

    :cond_5
    add-int/2addr v1, v2

    .line 2652
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 2653
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v2

    :cond_6
    :goto_2
    return v3
.end method

.method public final nextIfValue4Match2()Z
    .locals 8

    .line 2290
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 2291
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x3

    .line 2294
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 2298
    :cond_0
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_1

    const/16 v5, 0x7d

    if-eq v2, v5, :cond_1

    const/16 v5, 0x5d

    if-eq v2, v5, :cond_1

    return v3

    :cond_1
    const/4 v3, 0x1

    if-ne v2, v4, :cond_3

    .line 2304
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    add-int/lit8 v1, v1, 0x1

    .line 2306
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v1, v2, :cond_2

    const/16 v2, 0x1a

    goto :goto_0

    :cond_2
    aget-byte v2, v0, v1

    goto :goto_1

    :cond_3
    :goto_0
    const/16 v4, 0x20

    if-gt v2, v4, :cond_4

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v2

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 2311
    aget-byte v2, v0, v1

    :goto_1
    and-int/lit16 v2, v2, 0xff

    goto :goto_0

    :cond_4
    add-int/2addr v1, v3

    .line 2314
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v0, v2

    .line 2315
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v3
.end method

.method public final nextIfValue4Match3()Z
    .locals 8

    .line 2322
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 2323
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x4

    .line 2326
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v1, -0x1

    .line 2330
    aget-byte v2, v0, v2

    const/16 v4, 0x22

    if-eq v2, v4, :cond_1

    return v3

    .line 2334
    :cond_1
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_2

    const/16 v5, 0x7d

    if-eq v2, v5, :cond_2

    const/16 v5, 0x5d

    if-eq v2, v5, :cond_2

    return v3

    :cond_2
    const/4 v3, 0x1

    if-ne v2, v4, :cond_4

    .line 2340
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    add-int/lit8 v1, v1, 0x1

    .line 2342
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v1, v2, :cond_3

    const/16 v2, 0x1a

    goto :goto_0

    :cond_3
    aget-byte v2, v0, v1

    goto :goto_1

    :cond_4
    :goto_0
    const/16 v4, 0x20

    if-gt v2, v4, :cond_5

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v2

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 2347
    aget-byte v2, v0, v1

    :goto_1
    and-int/lit16 v2, v2, 0xff

    goto :goto_0

    :cond_5
    add-int/2addr v1, v3

    .line 2350
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v0, v2

    .line 2351
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v3
.end method

.method public final nextIfValue4Match4(B)Z
    .locals 8

    .line 2358
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 2359
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x5

    .line 2362
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v1, -0x2

    .line 2366
    aget-byte v2, v0, v2

    if-ne v2, p1, :cond_6

    add-int/lit8 p1, v1, -0x1

    aget-byte p1, v0, p1

    const/16 v2, 0x22

    if-eq p1, v2, :cond_1

    goto :goto_2

    .line 2370
    :cond_1
    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    const/16 v2, 0x2c

    if-eq p1, v2, :cond_2

    const/16 v4, 0x7d

    if-eq p1, v4, :cond_2

    const/16 v4, 0x5d

    if-eq p1, v4, :cond_2

    return v3

    :cond_2
    const/4 v3, 0x1

    if-ne p1, v2, :cond_4

    .line 2376
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    add-int/lit8 v1, v1, 0x1

    .line 2378
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v1, p1, :cond_3

    const/16 p1, 0x1a

    goto :goto_0

    :cond_3
    aget-byte p1, v0, v1

    goto :goto_1

    :cond_4
    :goto_0
    const/16 v2, 0x20

    if-gt p1, v2, :cond_5

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 2383
    aget-byte p1, v0, v1

    :goto_1
    and-int/lit16 p1, p1, 0xff

    goto :goto_0

    :cond_5
    add-int/2addr v1, v3

    .line 2386
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 2387
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :cond_6
    :goto_2
    return v3
.end method

.method public final nextIfValue4Match5(BB)Z
    .locals 7

    .line 2394
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 2395
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x6

    .line 2398
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v1, -0x3

    .line 2402
    aget-byte v2, v0, v2

    if-ne v2, p1, :cond_6

    add-int/lit8 p1, v1, -0x2

    aget-byte p1, v0, p1

    if-ne p1, p2, :cond_6

    add-int/lit8 p1, v1, -0x1

    aget-byte p1, v0, p1

    const/16 p2, 0x22

    if-eq p1, p2, :cond_1

    goto :goto_2

    .line 2409
    :cond_1
    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x2c

    if-eq p1, p2, :cond_2

    const/16 v2, 0x7d

    if-eq p1, v2, :cond_2

    const/16 v2, 0x5d

    if-eq p1, v2, :cond_2

    return v3

    :cond_2
    const/4 v2, 0x1

    if-ne p1, p2, :cond_4

    .line 2415
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    add-int/lit8 v1, v1, 0x1

    .line 2417
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v1, p1, :cond_3

    const/16 p1, 0x1a

    goto :goto_0

    :cond_3
    aget-byte p1, v0, v1

    goto :goto_1

    :cond_4
    :goto_0
    const/16 p2, 0x20

    if-gt p1, p2, :cond_5

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    const-wide v5, 0x100003700L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-eqz p2, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 2422
    aget-byte p1, v0, v1

    :goto_1
    and-int/lit16 p1, p1, 0xff

    goto :goto_0

    :cond_5
    add-int/2addr v1, v2

    .line 2425
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 2426
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v2

    :cond_6
    :goto_2
    return v3
.end method

.method public final nextIfValue4Match6(I)Z
    .locals 8

    .line 2433
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 2434
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x7

    .line 2437
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 2441
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v6, 0x4

    sub-long/2addr v4, v6

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-eq v2, p1, :cond_1

    return v3

    .line 2445
    :cond_1
    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    const/16 v2, 0x2c

    if-eq p1, v2, :cond_2

    const/16 v4, 0x7d

    if-eq p1, v4, :cond_2

    const/16 v4, 0x5d

    if-eq p1, v4, :cond_2

    return v3

    :cond_2
    const/4 v3, 0x1

    if-ne p1, v2, :cond_4

    .line 2451
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    add-int/lit8 v1, v1, 0x1

    .line 2453
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v1, p1, :cond_3

    const/16 p1, 0x1a

    goto :goto_0

    :cond_3
    aget-byte p1, v0, v1

    goto :goto_1

    :cond_4
    :goto_0
    const/16 v2, 0x20

    if-gt p1, v2, :cond_5

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 2458
    aget-byte p1, v0, v1

    :goto_1
    and-int/lit16 p1, p1, 0xff

    goto :goto_0

    :cond_5
    add-int/2addr v1, v3

    .line 2461
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 2462
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v3
.end method

.method public final nextIfValue4Match7(I)Z
    .locals 8

    .line 2469
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 2470
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x8

    .line 2473
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 2477
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v6, 0x5

    sub-long/2addr v4, v6

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, p1, :cond_6

    add-int/lit8 p1, v1, -0x1

    aget-byte p1, v0, p1

    const/16 v2, 0x22

    if-eq p1, v2, :cond_1

    goto :goto_2

    .line 2483
    :cond_1
    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    const/16 v2, 0x2c

    if-eq p1, v2, :cond_2

    const/16 v4, 0x7d

    if-eq p1, v4, :cond_2

    const/16 v4, 0x5d

    if-eq p1, v4, :cond_2

    return v3

    :cond_2
    const/4 v3, 0x1

    if-ne p1, v2, :cond_4

    .line 2489
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    add-int/lit8 v1, v1, 0x1

    .line 2491
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v1, p1, :cond_3

    const/16 p1, 0x1a

    goto :goto_0

    :cond_3
    aget-byte p1, v0, v1

    goto :goto_1

    :cond_4
    :goto_0
    const/16 v2, 0x20

    if-gt p1, v2, :cond_5

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 2496
    aget-byte p1, v0, v1

    :goto_1
    and-int/lit16 p1, p1, 0xff

    goto :goto_0

    :cond_5
    add-int/2addr v1, v3

    .line 2499
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 2500
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :cond_6
    :goto_2
    return v3
.end method

.method public final nextIfValue4Match8(IB)Z
    .locals 8

    .line 2507
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 2508
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x9

    .line 2511
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 2515
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v6, 0x6

    sub-long/2addr v4, v6

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, p1, :cond_6

    add-int/lit8 p1, v1, -0x2

    aget-byte p1, v0, p1

    if-ne p1, p2, :cond_6

    add-int/lit8 p1, v1, -0x1

    aget-byte p1, v0, p1

    const/16 p2, 0x22

    if-eq p1, p2, :cond_1

    goto :goto_2

    .line 2522
    :cond_1
    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x2c

    if-eq p1, p2, :cond_2

    const/16 v2, 0x7d

    if-eq p1, v2, :cond_2

    const/16 v2, 0x5d

    if-eq p1, v2, :cond_2

    return v3

    :cond_2
    const/4 v2, 0x1

    if-ne p1, p2, :cond_4

    .line 2528
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    add-int/lit8 v1, v1, 0x1

    .line 2530
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v1, p1, :cond_3

    const/16 p1, 0x1a

    goto :goto_0

    :cond_3
    aget-byte p1, v0, v1

    goto :goto_1

    :cond_4
    :goto_0
    const/16 p2, 0x20

    if-gt p1, p2, :cond_5

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    const-wide v5, 0x100003700L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-eqz p2, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 2535
    aget-byte p1, v0, v1

    :goto_1
    and-int/lit16 p1, p1, 0xff

    goto :goto_0

    :cond_5
    add-int/2addr v1, v2

    .line 2538
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 2539
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v2

    :cond_6
    :goto_2
    return v3
.end method

.method public final nextIfValue4Match9(IBB)Z
    .locals 8

    .line 2546
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 2547
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0xa

    .line 2550
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 2554
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v6, 0x7

    sub-long/2addr v4, v6

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, p1, :cond_6

    add-int/lit8 p1, v1, -0x3

    aget-byte p1, v0, p1

    if-ne p1, p2, :cond_6

    add-int/lit8 p1, v1, -0x2

    aget-byte p1, v0, p1

    if-ne p1, p3, :cond_6

    add-int/lit8 p1, v1, -0x1

    aget-byte p1, v0, p1

    const/16 p2, 0x22

    if-eq p1, p2, :cond_1

    goto :goto_2

    .line 2562
    :cond_1
    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x2c

    if-eq p1, p2, :cond_2

    const/16 p3, 0x7d

    if-eq p1, p3, :cond_2

    const/16 p3, 0x5d

    if-eq p1, p3, :cond_2

    return v3

    :cond_2
    const/4 p3, 0x1

    if-ne p1, p2, :cond_4

    .line 2568
    iput-boolean p3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    add-int/lit8 v1, v1, 0x1

    .line 2570
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v1, p1, :cond_3

    const/16 p1, 0x1a

    goto :goto_0

    :cond_3
    aget-byte p1, v0, v1

    goto :goto_1

    :cond_4
    :goto_0
    const/16 p2, 0x20

    if-gt p1, p2, :cond_5

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide v4, 0x100003700L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 2575
    aget-byte p1, v0, v1

    :goto_1
    and-int/lit16 p1, p1, 0xff

    goto :goto_0

    :cond_5
    add-int/2addr v1, p3

    .line 2578
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char p1, p1

    .line 2579
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return p3

    :cond_6
    :goto_2
    return v3
.end method

.method public final readBigDecimal()Ljava/math/BigDecimal;
    .locals 24

    move-object/from16 v1, p0

    .line 7769
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 7775
    iget-char v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1a

    const/16 v6, 0x22

    if-eq v2, v6, :cond_1

    iget-char v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v6, 0x27

    if-ne v2, v6, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_2

    .line 7776
    :cond_1
    :goto_0
    iget-char v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 7777
    iget v6, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v6, v0, v6

    int-to-char v6, v6

    iput-char v6, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 7779
    iget-char v6, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v6, v2, :cond_3

    .line 7780
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v2, v4, :cond_2

    .line 7781
    iput-char v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1

    .line 7783
    :cond_2
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v0, v2

    int-to-char v0, v0

    iput-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 7785
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nextIfComma()Z

    return-object v3

    .line 7790
    :cond_3
    :goto_2
    iget v6, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7791
    iget-char v7, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v8, 0x2b

    const/16 v9, 0x2d

    const/4 v10, 0x1

    if-ne v7, v9, :cond_4

    .line 7792
    iput-boolean v10, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->negative:Z

    .line 7793
    iget v7, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v7, v0, v7

    int-to-char v7, v7

    iput-char v7, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_3

    .line 7795
    :cond_4
    iput-boolean v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->negative:Z

    .line 7796
    iget-char v7, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v7, v8, :cond_5

    .line 7797
    iget v7, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v7, v0, v7

    int-to-char v7, v7

    iput-char v7, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 7801
    :cond_5
    :goto_3
    iput-byte v10, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    const-wide/16 v11, 0x0

    move v7, v4

    move v15, v7

    move-wide v13, v11

    .line 7804
    :goto_4
    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v17, 0x1f

    const/16 v8, 0x39

    const-wide/16 v18, 0xa

    const/16 v9, 0x30

    if-lt v3, v9, :cond_a

    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v3, v8, :cond_a

    if-nez v7, :cond_8

    mul-long v20, v13, v18

    or-long v22, v13, v18

    ushr-long v22, v22, v17

    cmp-long v3, v22, v11

    if-eqz v3, :cond_7

    .line 7808
    div-long v22, v20, v18

    cmp-long v3, v22, v13

    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    move v7, v10

    goto :goto_6

    .line 7809
    :cond_7
    :goto_5
    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    sub-int/2addr v3, v9

    int-to-long v13, v3

    add-long v13, v20, v13

    .line 7815
    :cond_8
    :goto_6
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v15, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v3, v15, :cond_9

    .line 7816
    iput-char v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 7817
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v3, v10

    iput v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    move v15, v10

    goto :goto_7

    .line 7820
    :cond_9
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v8, v3, 0x1

    iput v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v3, v0, v3

    int-to-char v3, v3

    iput-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v15, v10

    const/16 v8, 0x2b

    const/16 v9, 0x2d

    goto :goto_4

    .line 7823
    :cond_a
    :goto_7
    iput-short v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->scale:S

    .line 7824
    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v4, 0x2e

    const/4 v5, 0x2

    if-ne v3, v4, :cond_f

    .line 7825
    iput-byte v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    .line 7826
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v3, v0, v3

    int-to-char v3, v3

    iput-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 7827
    :goto_8
    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-lt v3, v9, :cond_f

    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v3, v8, :cond_f

    .line 7829
    iget-short v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->scale:S

    add-int/2addr v3, v10

    int-to-short v3, v3

    iput-short v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->scale:S

    if-nez v7, :cond_d

    mul-long v3, v13, v18

    or-long v22, v13, v18

    ushr-long v22, v22, v17

    cmp-long v15, v22, v11

    if-eqz v15, :cond_c

    .line 7832
    div-long v22, v3, v18

    cmp-long v15, v22, v13

    if-nez v15, :cond_b

    goto :goto_9

    :cond_b
    move v7, v10

    goto :goto_a

    .line 7833
    :cond_c
    :goto_9
    iget-char v13, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    sub-int/2addr v13, v9

    int-to-long v13, v13

    add-long/2addr v3, v13

    move-wide v13, v3

    .line 7839
    :cond_d
    :goto_a
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v3, v4, :cond_e

    const/16 v3, 0x1a

    .line 7840
    iput-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 7841
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v3, v10

    iput v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    move v15, v10

    goto :goto_b

    .line 7844
    :cond_e
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v3, v0, v3

    int-to-char v3, v3

    iput-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v15, v10

    goto :goto_8

    .line 7849
    :cond_f
    :goto_b
    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v4, 0x65

    if-eq v3, v4, :cond_11

    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v4, 0x45

    if-ne v3, v4, :cond_10

    goto :goto_c

    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_f

    .line 7851
    :cond_11
    :goto_c
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v3, v0, v3

    int-to-char v3, v3

    iput-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 7853
    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_12

    .line 7855
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v3, v0, v3

    int-to-char v3, v3

    iput-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v4, v10

    const/4 v3, 0x0

    goto :goto_d

    .line 7856
    :cond_12
    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_13

    .line 7857
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v3, v0, v3

    int-to-char v3, v3

    iput-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :cond_13
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 7860
    :goto_d
    iget-char v11, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-lt v11, v9, :cond_16

    iget-char v11, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v11, v8, :cond_16

    .line 7862
    iget-char v11, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    sub-int/2addr v11, v9

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v11

    const/16 v11, 0x3ff

    if-gt v3, v11, :cond_15

    .line 7868
    iget v11, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v12, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v11, v12, :cond_14

    const/16 v11, 0x1a

    .line 7869
    iput-char v11, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 7870
    iget v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v8, v10

    iput v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    move v15, v10

    goto :goto_e

    .line 7873
    :cond_14
    iget v11, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v11, v0, v11

    int-to-char v11, v11

    iput-char v11, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v15, v10

    goto :goto_d

    .line 7865
    :cond_15
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "too large exp value : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_e
    if-eqz v4, :cond_17

    neg-int v3, v3

    :cond_17
    int-to-short v4, v3

    .line 7880
    iput-short v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->exponent:S

    .line 7881
    iput-byte v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    .line 7884
    :goto_f
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    if-ne v4, v6, :cond_21

    .line 7885
    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v5, 0x6e

    const/16 v8, 0x75

    if-ne v4, v5, :cond_1a

    .line 7886
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v4, v0, v4

    if-ne v4, v8, :cond_21

    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v4, v0, v4

    const/16 v5, 0x6c

    if-ne v4, v5, :cond_21

    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v8, v4, 0x1

    iput v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v4, v0, v4

    if-ne v4, v5, :cond_21

    .line 7890
    iget-object v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v8, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_19

    .line 7894
    iput-boolean v10, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    .line 7896
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v4, v5, :cond_18

    const/16 v4, 0x1a

    .line 7897
    iput-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 7898
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v4, v10

    iput v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    goto/16 :goto_11

    .line 7900
    :cond_18
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v4, v0, v4

    int-to-char v4, v4

    iput-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto/16 :goto_11

    .line 7891
    :cond_19
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "long value not support input null"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7904
    :cond_1a
    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v5, 0x74

    if-ne v4, v5, :cond_1c

    .line 7905
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v4, v0, v4

    const/16 v5, 0x72

    if-ne v4, v5, :cond_21

    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v4, v0, v4

    if-ne v4, v8, :cond_21

    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v4, v0, v4

    const/16 v5, 0x65

    if-ne v4, v5, :cond_21

    .line 7911
    sget-object v4, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 7912
    iget v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v5, v8, :cond_1b

    const/16 v5, 0x1a

    .line 7913
    iput-char v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 7914
    iget v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v5, v10

    iput v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    goto :goto_10

    .line 7916
    :cond_1b
    iget v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v8, v5, 0x1

    iput v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v5, v0, v5

    int-to-char v5, v5

    iput-char v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_10

    .line 7919
    :cond_1c
    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v5, 0x66

    if-ne v4, v5, :cond_1e

    .line 7920
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v4, v4, 0x4

    iget v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-gt v4, v5, :cond_21

    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v8, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-long v11, v5

    add-long/2addr v8, v11

    invoke-virtual {v4, v0, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    sget v5, Lcom/alibaba/fastjson2/util/IOUtils;->ALSE:I

    if-ne v4, v5, :cond_21

    .line 7922
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v4, v4, 0x4

    iput v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7923
    sget-object v4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 7925
    iget v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v5, v8, :cond_1d

    const/16 v5, 0x1a

    .line 7926
    iput-char v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 7927
    iget v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v5, v10

    iput v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    goto :goto_10

    .line 7929
    :cond_1d
    iget v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v8, v5, 0x1

    iput v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v5, v0, v5

    int-to-char v5, v5

    iput-char v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_10

    .line 7932
    :cond_1e
    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v5, 0x7b

    if-ne v4, v5, :cond_1f

    if-nez v2, :cond_1f

    .line 7934
    new-instance v4, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    const-wide/16 v8, 0x0

    .line 7935
    invoke-virtual {v1, v4, v8, v9}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readObject(Ljava/lang/Object;J)V

    .line 7936
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->decimal(Lcom/alibaba/fastjson2/JSONObject;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 7938
    iput-boolean v10, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    :goto_10
    move-object/from16 v16, v4

    move v4, v10

    move v15, v4

    goto :goto_13

    .line 7939
    :cond_1f
    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_21

    if-nez v2, :cond_21

    .line 7941
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readArray()Ljava/util/List;

    move-result-object v4

    .line 7942
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 7946
    iput-boolean v10, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    :goto_11
    move v4, v10

    move v15, v4

    goto :goto_12

    .line 7943
    :cond_20
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    const/4 v4, 0x0

    :goto_12
    const/16 v16, 0x0

    .line 7950
    :goto_13
    iget v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    sub-int/2addr v5, v6

    if-eqz v2, :cond_24

    .line 7953
    iget-char v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v8, v2, :cond_22

    .line 7954
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    sub-int/2addr v0, v10

    iput v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7955
    iput-char v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 7956
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readString()Ljava/lang/String;

    move-result-object v0

    .line 7958
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 7960
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 7963
    :cond_22
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v2, v8, :cond_23

    const/16 v2, 0x1a

    .line 7964
    iput-char v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_14

    .line 7966
    :cond_23
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v8, v2, 0x1

    iput v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v2, v0, v2

    int-to-char v2, v2

    iput-char v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :cond_24
    :goto_14
    if-nez v4, :cond_2f

    if-nez v3, :cond_26

    if-nez v7, :cond_26

    const-wide/16 v2, 0x0

    cmp-long v7, v13, v2

    if-eqz v7, :cond_26

    .line 7972
    iget-boolean v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->negative:Z

    if-eqz v2, :cond_25

    neg-long v13, v13

    :cond_25
    iget-short v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->scale:S

    invoke-static {v13, v14, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v16

    move v4, v10

    :cond_26
    if-nez v4, :cond_27

    sub-int/2addr v6, v10

    .line 7977
    invoke-static {v0, v6, v5}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseBigDecimal([BII)Ljava/math/BigDecimal;

    move-result-object v2

    move-object/from16 v16, v2

    .line 7980
    :cond_27
    iget-char v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v3, 0x42

    const/16 v4, 0x4c

    if-eq v2, v4, :cond_28

    iget-char v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v5, 0x46

    if-eq v2, v5, :cond_28

    iget-char v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v5, 0x44

    if-eq v2, v5, :cond_28

    iget-char v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v2, v3, :cond_28

    iget-char v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v5, 0x53

    if-ne v2, v5, :cond_2f

    .line 7981
    :cond_28
    iget-char v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x44

    if-eq v2, v3, :cond_2c

    const/16 v3, 0x46

    if-eq v2, v3, :cond_2b

    if-eq v2, v4, :cond_2a

    const/16 v3, 0x53

    if-eq v2, v3, :cond_29

    goto :goto_15

    :cond_29
    const/16 v2, 0xa

    .line 7986
    iput-byte v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_15

    :cond_2a
    const/16 v2, 0xb

    .line 7989
    iput-byte v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_15

    :cond_2b
    const/16 v2, 0xc

    .line 7992
    iput-byte v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_15

    :cond_2c
    const/16 v2, 0xd

    .line 7995
    iput-byte v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_15

    :cond_2d
    const/16 v2, 0x9

    .line 7983
    iput-byte v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    .line 8000
    :goto_15
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v2, v3, :cond_2e

    const/16 v2, 0x1a

    .line 8001
    iput-char v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_16

    .line 8003
    :cond_2e
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v2, v0, v2

    int-to-char v2, v2

    iput-char v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 8008
    :cond_2f
    :goto_16
    iget-char v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const-wide v3, 0x100003700L

    const-wide/16 v5, 0x1

    const/16 v7, 0x20

    if-gt v2, v7, :cond_31

    iget-char v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v8, v5, v2

    and-long/2addr v8, v3

    const-wide/16 v11, 0x0

    cmp-long v2, v8, v11

    if-eqz v2, :cond_31

    .line 8009
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v2, v3, :cond_30

    const/16 v2, 0x1a

    .line 8010
    iput-char v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_16

    .line 8012
    :cond_30
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v2, v0, v2

    int-to-char v2, v2

    iput-char v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_16

    .line 8016
    :cond_31
    iget-char v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v8, 0x2c

    if-ne v2, v8, :cond_32

    goto :goto_17

    :cond_32
    const/4 v10, 0x0

    :goto_17
    iput-boolean v10, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v10, :cond_35

    .line 8018
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v2, v8, :cond_33

    const/16 v2, 0x1a

    .line 8019
    iput-char v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_19

    .line 8021
    :cond_33
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v8, v2, 0x1

    iput v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v2, v0, v2

    int-to-char v2, v2

    iput-char v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 8022
    :goto_18
    iget-char v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v2, v7, :cond_35

    iget-char v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v8, v5, v2

    and-long/2addr v8, v3

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_35

    .line 8023
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v2, v8, :cond_34

    const/16 v2, 0x1a

    .line 8024
    iput-char v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_18

    :cond_34
    const/16 v2, 0x1a

    .line 8026
    iget v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v8, v0, v8

    int-to-char v8, v8

    iput-char v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_18

    :cond_35
    :goto_19
    if-eqz v15, :cond_36

    return-object v16

    .line 8035
    :cond_36
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "illegal input error"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readBoolValue()Z
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 8692
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    .line 8694
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 8695
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 8696
    iget-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v5, 0x75

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x74

    if-ne v4, v9, :cond_1

    add-int/lit8 v9, v3, 0x2

    .line 8697
    array-length v10, v2

    if-ge v9, v10, :cond_1

    aget-byte v10, v2, v3

    const/16 v11, 0x72

    if-ne v10, v11, :cond_1

    add-int/lit8 v10, v3, 0x1

    aget-byte v10, v2, v10

    if-ne v10, v5, :cond_1

    aget-byte v9, v2, v9

    const/16 v10, 0x65

    if-ne v9, v10, :cond_1

    add-int/lit8 v3, v3, 0x3

    :cond_0
    :goto_0
    move v4, v8

    goto/16 :goto_2

    :cond_1
    const/16 v9, 0x66

    if-ne v4, v9, :cond_2

    add-int/lit8 v9, v3, 0x4

    .line 8705
    array-length v10, v2

    if-gt v9, v10, :cond_2

    sget-object v10, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v11, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v13, v3

    add-long/2addr v11, v13

    .line 8707
    invoke-virtual {v10, v2, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v10

    sget v11, Lcom/alibaba/fastjson2/util/IOUtils;->ALSE:I

    if-ne v10, v11, :cond_2

    move v4, v1

    move v3, v9

    goto/16 :goto_2

    :cond_2
    const/16 v9, 0x2d

    if-eq v4, v9, :cond_16

    const/16 v9, 0x30

    if-lt v4, v9, :cond_3

    const/16 v10, 0x39

    if-gt v4, v10, :cond_3

    goto/16 :goto_9

    :cond_3
    const/16 v10, 0x6e

    if-ne v4, v10, :cond_6

    add-int/lit8 v10, v3, 0x2

    .line 8724
    array-length v11, v2

    if-ge v10, v11, :cond_6

    aget-byte v11, v2, v3

    if-ne v11, v5, :cond_6

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v11, 0x6c

    if-ne v5, v11, :cond_6

    aget-byte v5, v2, v10

    if-ne v5, v11, :cond_6

    .line 8729
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v9, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v4, v9

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    .line 8733
    iput-boolean v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    add-int/lit8 v3, v3, 0x3

    :cond_4
    :goto_1
    move v4, v1

    goto :goto_2

    .line 8730
    :cond_5
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "boolean value not support input null"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/16 v5, 0x22

    if-ne v4, v5, :cond_15

    add-int/lit8 v4, v3, 0x1

    .line 8737
    array-length v10, v2

    const-string v11, "can not convert to boolean : "

    if-ge v4, v10, :cond_10

    aget-byte v4, v2, v4

    if-ne v4, v5, :cond_10

    .line 8740
    aget-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x2

    if-eq v4, v9, :cond_4

    const/16 v5, 0x4e

    if-ne v4, v5, :cond_7

    goto :goto_1

    :cond_7
    const/16 v5, 0x31

    if-eq v4, v5, :cond_0

    const/16 v5, 0x59

    if-ne v4, v5, :cond_8

    goto/16 :goto_0

    .line 8747
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8769
    :goto_2
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/16 v9, 0x1a

    if-ne v3, v5, :cond_9

    move v5, v3

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v2, v3

    int-to-char v3, v3

    :goto_3
    const-wide v10, 0x100003700L

    const-wide/16 v12, 0x1

    const/16 v14, 0x20

    if-gt v3, v14, :cond_b

    shl-long v15, v12, v3

    and-long/2addr v15, v10

    cmp-long v15, v15, v6

    if-eqz v15, :cond_b

    .line 8772
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v5, v3, :cond_a

    :goto_4
    move v3, v9

    goto :goto_3

    :cond_a
    add-int/lit8 v3, v5, 0x1

    .line 8775
    aget-byte v5, v2, v5

    int-to-char v5, v5

    move/from16 v17, v5

    move v5, v3

    move/from16 v3, v17

    goto :goto_3

    :cond_b
    const/16 v15, 0x2c

    if-ne v3, v15, :cond_c

    move v1, v8

    .line 8779
    :cond_c
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v1, :cond_f

    .line 8780
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v5, v1, :cond_d

    goto :goto_6

    :cond_d
    add-int/lit8 v1, v5, 0x1

    aget-byte v3, v2, v5

    goto :goto_7

    :goto_5
    if-gt v3, v14, :cond_f

    shl-long v15, v12, v3

    and-long/2addr v15, v10

    cmp-long v1, v15, v6

    if-eqz v1, :cond_f

    .line 8783
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v5, v1, :cond_e

    :goto_6
    move v3, v9

    goto :goto_5

    :cond_e
    add-int/lit8 v1, v5, 0x1

    .line 8786
    aget-byte v3, v2, v5

    :goto_7
    int-to-char v3, v3

    move v5, v1

    goto :goto_5

    .line 8790
    :cond_f
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 8791
    iput-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v4

    .line 8750
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    .line 8751
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    return v8

    :cond_11
    const-string v3, "false"

    .line 8755
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    return v1

    .line 8759
    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_8

    .line 8763
    :cond_13
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8760
    :cond_14
    :goto_8
    iput-boolean v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    return v1

    .line 8766
    :cond_15
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syntax error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8712
    :cond_16
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readNumber()Ljava/lang/Number;

    .line 8713
    iget-byte v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    if-ne v2, v8, :cond_1a

    .line 8714
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->NonZeroNumberCastToBooleanAsTrue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_19

    .line 8715
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag0:I

    if-nez v2, :cond_17

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag1:I

    if-nez v2, :cond_17

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag2:I

    if-nez v2, :cond_17

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    if-eqz v2, :cond_18

    :cond_17
    move v1, v8

    :cond_18
    return v1

    .line 8717
    :cond_19
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag0:I

    if-nez v2, :cond_1a

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag1:I

    if-nez v2, :cond_1a

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag2:I

    if-nez v2, :cond_1a

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    if-ne v2, v8, :cond_1a

    move v1, v8

    :cond_1a
    return v1
.end method

.method public final readDoubleValue()D
    .locals 24

    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 4464
    iput-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    .line 4469
    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 4471
    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const-wide/16 v4, 0x0

    const/16 v6, 0x1a

    const/4 v7, 0x1

    const/16 v8, 0x22

    if-eq v3, v8, :cond_1

    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v8, 0x27

    if-ne v3, v8, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_2

    .line 4472
    :cond_1
    :goto_0
    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4473
    iget v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v8, v2, v8

    int-to-char v8, v8

    iput-char v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4475
    iget-char v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v8, v3, :cond_3

    .line 4476
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v0, v3, :cond_2

    .line 4477
    iput-char v6, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1

    .line 4479
    :cond_2
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v0, 0x1

    iput v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    int-to-char v0, v0

    iput-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4481
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nextIfComma()Z

    .line 4482
    iput-boolean v7, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    return-wide v4

    .line 4487
    :cond_3
    :goto_2
    iget v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 4488
    iget-char v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v10, 0x2b

    const/16 v11, 0x2d

    if-ne v9, v11, :cond_4

    .line 4489
    iput-boolean v7, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->negative:Z

    .line 4490
    iget v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v12, v9, 0x1

    iput v12, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v9, v2, v9

    int-to-char v9, v9

    iput-char v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_3

    .line 4492
    :cond_4
    iput-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->negative:Z

    .line 4493
    iget-char v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v9, v10, :cond_5

    .line 4494
    iget v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v12, v9, 0x1

    iput v12, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v9, v2, v9

    int-to-char v9, v9

    iput-char v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4498
    :cond_5
    :goto_3
    iput-byte v7, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    move v9, v0

    move/from16 v16, v9

    const-wide/16 v14, 0x0

    .line 4501
    :goto_4
    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const-wide/16 v19, 0xa

    const/16 v5, 0x39

    const/16 v12, 0x30

    if-lt v4, v12, :cond_9

    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v4, v5, :cond_9

    if-nez v9, :cond_7

    mul-long v22, v14, v19

    .line 4504
    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    sub-int/2addr v4, v12

    int-to-long v10, v4

    add-long v22, v22, v10

    cmp-long v4, v22, v14

    if-gez v4, :cond_6

    move v9, v7

    goto :goto_5

    :cond_6
    move-wide/from16 v14, v22

    .line 4512
    :cond_7
    :goto_5
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v10, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v4, v10, :cond_8

    .line 4513
    iput-char v6, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4514
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v4, v7

    iput v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    move/from16 v16, v7

    goto :goto_6

    .line 4517
    :cond_8
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v4, v2, v4

    int-to-char v4, v4

    iput-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move/from16 v16, v7

    const/16 v10, 0x2b

    const/16 v11, 0x2d

    goto :goto_4

    .line 4520
    :cond_9
    :goto_6
    iput-short v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->scale:S

    .line 4521
    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v10, 0x2e

    const/4 v11, 0x2

    if-ne v4, v10, :cond_d

    .line 4522
    iput-byte v11, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    .line 4523
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v10, v4, 0x1

    iput v10, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v4, v2, v4

    int-to-char v4, v4

    iput-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4524
    :goto_7
    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-lt v4, v12, :cond_d

    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v4, v5, :cond_d

    .line 4526
    iget-short v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->scale:S

    add-int/2addr v4, v7

    int-to-short v4, v4

    iput-short v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->scale:S

    if-nez v9, :cond_b

    mul-long v22, v14, v19

    .line 4528
    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    sub-int/2addr v4, v12

    int-to-long v11, v4

    add-long v22, v22, v11

    cmp-long v4, v22, v14

    if-gez v4, :cond_a

    move v9, v7

    goto :goto_8

    :cond_a
    move-wide/from16 v14, v22

    .line 4536
    :cond_b
    :goto_8
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v11, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v4, v11, :cond_c

    .line 4537
    iput-char v6, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4538
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v4, v7

    iput v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    move/from16 v16, v7

    goto :goto_9

    .line 4541
    :cond_c
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v4, 0x1

    iput v11, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v4, v2, v4

    int-to-char v4, v4

    iput-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move/from16 v16, v7

    const/4 v11, 0x2

    const/16 v12, 0x30

    goto :goto_7

    .line 4546
    :cond_d
    :goto_9
    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v11, 0x65

    if-eq v4, v11, :cond_f

    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v12, 0x45

    if-ne v4, v12, :cond_e

    goto :goto_a

    :cond_e
    move v4, v0

    goto/16 :goto_d

    .line 4548
    :cond_f
    :goto_a
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v12, v4, 0x1

    iput v12, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v4, v2, v4

    int-to-char v4, v4

    iput-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4550
    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v12, 0x2d

    if-ne v4, v12, :cond_10

    .line 4552
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v12, v4, 0x1

    iput v12, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v4, v2, v4

    int-to-char v4, v4

    iput-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v4, v0

    move v12, v7

    goto :goto_b

    .line 4553
    :cond_10
    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v12, 0x2b

    if-ne v4, v12, :cond_11

    .line 4554
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v12, v4, 0x1

    iput v12, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v4, v2, v4

    int-to-char v4, v4

    iput-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :cond_11
    move v4, v0

    move v12, v4

    .line 4557
    :goto_b
    iget-char v13, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v10, 0x30

    if-lt v13, v10, :cond_14

    iget-char v13, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v13, v5, :cond_14

    .line 4559
    iget-char v13, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    sub-int/2addr v13, v10

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v13

    const/16 v13, 0x3ff

    if-gt v4, v13, :cond_13

    .line 4565
    iget v13, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v13, v0, :cond_12

    .line 4566
    iput-char v6, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4567
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v0, v7

    iput v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    move/from16 v16, v7

    goto :goto_c

    .line 4570
    :cond_12
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v13, v0, 0x1

    iput v13, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    int-to-char v0, v0

    iput-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move/from16 v16, v7

    const/4 v0, 0x0

    goto :goto_b

    .line 4562
    :cond_13
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "too large exp value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_c
    if-eqz v12, :cond_15

    neg-int v4, v4

    :cond_15
    int-to-short v0, v4

    .line 4577
    iput-short v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->exponent:S

    const/4 v0, 0x2

    .line 4578
    iput-byte v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    .line 4581
    :goto_d
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    if-ne v0, v8, :cond_20

    .line 4582
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v5, 0x6e

    const/16 v10, 0x75

    if-ne v0, v5, :cond_18

    .line 4583
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v5, v0, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    if-ne v0, v10, :cond_20

    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v5, v0, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    const/16 v5, 0x6c

    if-ne v0, v5, :cond_20

    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v10, v0, 0x1

    iput v10, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    if-ne v0, v5, :cond_20

    .line 4588
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v10, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v12, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-nez v0, :cond_17

    .line 4592
    iput-boolean v7, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    .line 4594
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v0, v5, :cond_16

    .line 4595
    iput-char v6, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4596
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v0, v7

    iput v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    goto/16 :goto_f

    .line 4598
    :cond_16
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v5, v0, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    int-to-char v0, v0

    iput-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto/16 :goto_f

    .line 4589
    :cond_17
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "long value not support input null"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4601
    :cond_18
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v5, 0x74

    if-ne v0, v5, :cond_1a

    .line 4602
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v5, v0, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    const/16 v5, 0x72

    if-ne v0, v5, :cond_20

    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v5, v0, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    if-ne v0, v10, :cond_20

    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v5, v0, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    if-ne v0, v11, :cond_20

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 4609
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v0, v5, :cond_19

    .line 4610
    iput-char v6, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4611
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v0, v7

    iput v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    goto :goto_e

    .line 4613
    :cond_19
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v5, v0, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    int-to-char v0, v0

    iput-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :goto_e
    move v0, v7

    move/from16 v16, v0

    goto/16 :goto_11

    .line 4616
    :cond_1a
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v5, 0x66

    if-ne v0, v5, :cond_1c

    .line 4617
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v0, v0, 0x4

    iget v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-gt v0, v5, :cond_20

    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v10, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-long v12, v5

    add-long/2addr v10, v12

    invoke-virtual {v0, v2, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    sget v5, Lcom/alibaba/fastjson2/util/IOUtils;->ALSE:I

    if-ne v0, v5, :cond_20

    .line 4619
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 4622
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v0, v5, :cond_1b

    .line 4623
    iput-char v6, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4624
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v0, v7

    iput v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    goto :goto_f

    .line 4626
    :cond_1b
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v5, v0, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    int-to-char v0, v0

    iput-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_f

    .line 4629
    :cond_1c
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v5, 0x7b

    if-ne v0, v5, :cond_1e

    if-nez v3, :cond_1e

    .line 4631
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readObject()Ljava/util/Map;

    move-result-object v0

    .line 4632
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4636
    iput-boolean v7, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    :goto_f
    move v0, v7

    move/from16 v16, v0

    goto :goto_10

    .line 4633
    :cond_1d
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4637
    :cond_1e
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v5, 0x5b

    if-ne v0, v5, :cond_20

    if-nez v3, :cond_20

    .line 4639
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readArray()Ljava/util/List;

    move-result-object v0

    .line 4640
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4644
    iput-boolean v7, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    goto :goto_f

    .line 4641
    :cond_1f
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/4 v0, 0x0

    :goto_10
    const-wide/16 v10, 0x0

    .line 4648
    :goto_11
    iget v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    sub-int/2addr v5, v8

    const/4 v12, 0x0

    if-eqz v3, :cond_23

    .line 4652
    iget-char v13, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v13, v3, :cond_21

    .line 4653
    iget v12, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    sub-int/2addr v12, v7

    iput v12, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 4654
    iput-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4655
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readString()Ljava/lang/String;

    move-result-object v12

    .line 4658
    :cond_21
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v13, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v3, v13, :cond_22

    .line 4659
    iput-char v6, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_12

    .line 4661
    :cond_22
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v13, v3, 0x1

    iput v13, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v3, v2, v3

    int-to-char v3, v3

    iput-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :cond_23
    :goto_12
    if-nez v0, :cond_37

    if-nez v9, :cond_2c

    const-wide/16 v20, 0x0

    cmp-long v3, v14, v20

    if-nez v3, :cond_24

    .line 4667
    iget-short v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->scale:S

    if-ne v3, v7, :cond_2c

    move v0, v7

    const-wide/16 v17, 0x0

    goto/16 :goto_16

    .line 4672
    :cond_24
    iget-short v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->scale:S

    sub-int/2addr v3, v4

    if-nez v3, :cond_26

    long-to-double v9, v14

    .line 4675
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->negative:Z

    if-eqz v0, :cond_25

    neg-double v9, v9

    :cond_25
    move v0, v7

    move-wide v6, v9

    goto :goto_14

    :cond_26
    long-to-double v6, v14

    move-wide/from16 v17, v10

    double-to-long v9, v6

    cmp-long v9, v9, v14

    if-nez v9, :cond_29

    if-lez v3, :cond_28

    .line 4680
    sget-object v9, Lcom/alibaba/fastjson2/JSONFactory;->DOUBLE_10_POW:[D

    array-length v9, v9

    if-ge v3, v9, :cond_28

    .line 4681
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->DOUBLE_10_POW:[D

    aget-wide v9, v0, v3

    div-double/2addr v6, v9

    .line 4682
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->negative:Z

    if-eqz v0, :cond_27

    :goto_13
    neg-double v6, v6

    :cond_27
    const/4 v0, 0x1

    goto :goto_14

    :cond_28
    if-gez v3, :cond_29

    .line 4686
    sget-object v9, Lcom/alibaba/fastjson2/JSONFactory;->DOUBLE_10_POW:[D

    array-length v9, v9

    neg-int v9, v9

    if-le v3, v9, :cond_29

    .line 4687
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->DOUBLE_10_POW:[D

    neg-int v9, v3

    aget-wide v9, v0, v9

    mul-double/2addr v6, v9

    .line 4688
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->negative:Z

    if-eqz v0, :cond_27

    goto :goto_13

    :cond_29
    move-wide/from16 v6, v17

    :goto_14
    if-nez v0, :cond_2b

    const/16 v9, -0x80

    if-le v3, v9, :cond_2b

    const/16 v9, 0x80

    if-ge v3, v9, :cond_2b

    .line 4696
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->negative:Z

    if-eqz v0, :cond_2a

    const/4 v0, -0x1

    goto :goto_15

    :cond_2a
    const/4 v0, 0x1

    :goto_15
    invoke-static {v0, v14, v15, v3}, Lcom/alibaba/fastjson2/util/TypeUtils;->doubleValue(IJI)D

    move-result-wide v6

    move-wide/from16 v17, v6

    const/4 v0, 0x1

    goto :goto_16

    :cond_2b
    move-wide/from16 v17, v6

    goto :goto_16

    :cond_2c
    move-wide/from16 v17, v10

    :goto_16
    if-nez v0, :cond_2e

    if-eqz v12, :cond_2d

    .line 4705
    :try_start_0
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v17, v5

    goto :goto_17

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 4707
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2d
    const/4 v0, 0x1

    sub-int/2addr v8, v0

    .line 4710
    invoke-static {v2, v8, v5}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseDouble([BII)D

    move-result-wide v3

    move-wide/from16 v17, v3

    goto :goto_18

    :cond_2e
    :goto_17
    const/4 v0, 0x1

    .line 4714
    :goto_18
    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v4, 0x44

    const/16 v5, 0x42

    const/16 v6, 0x4c

    if-eq v3, v6, :cond_2f

    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v7, 0x46

    if-eq v3, v7, :cond_2f

    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v3, v4, :cond_2f

    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v3, v5, :cond_2f

    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v7, 0x53

    if-ne v3, v7, :cond_36

    .line 4715
    :cond_2f
    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v3, v5, :cond_34

    if-eq v3, v4, :cond_33

    const/16 v4, 0x46

    if-eq v3, v4, :cond_32

    if-eq v3, v6, :cond_31

    const/16 v4, 0x53

    if-eq v3, v4, :cond_30

    goto :goto_19

    :cond_30
    const/16 v3, 0xa

    .line 4720
    iput-byte v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_19

    :cond_31
    const/16 v3, 0xb

    .line 4723
    iput-byte v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_19

    :cond_32
    const/16 v3, 0xc

    .line 4726
    iput-byte v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_19

    :cond_33
    const/16 v3, 0xd

    .line 4729
    iput-byte v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_19

    :cond_34
    const/16 v3, 0x9

    .line 4717
    iput-byte v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    .line 4734
    :goto_19
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v3, v4, :cond_35

    const/16 v3, 0x1a

    .line 4735
    iput-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1a

    .line 4737
    :cond_35
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v3, v2, v3

    int-to-char v3, v3

    iput-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :cond_36
    :goto_1a
    move-wide/from16 v10, v17

    goto :goto_1b

    :cond_37
    move v0, v7

    move-wide/from16 v17, v10

    .line 4742
    :goto_1b
    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const-wide v4, 0x100003700L

    const-wide/16 v6, 0x1

    const/16 v8, 0x20

    if-gt v3, v8, :cond_39

    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v12, v6, v3

    and-long/2addr v12, v4

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-eqz v3, :cond_39

    .line 4743
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v3, v4, :cond_38

    const/16 v3, 0x1a

    .line 4744
    iput-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1b

    .line 4746
    :cond_38
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v3, v2, v3

    int-to-char v3, v3

    iput-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1b

    .line 4750
    :cond_39
    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v12, 0x2c

    if-ne v3, v12, :cond_3a

    goto :goto_1c

    :cond_3a
    const/4 v0, 0x0

    :goto_1c
    iput-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v0, :cond_3d

    .line 4752
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v0, v3, :cond_3b

    const/16 v0, 0x1a

    .line 4753
    iput-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1e

    .line 4755
    :cond_3b
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v0, 0x1

    iput v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    int-to-char v0, v0

    iput-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4756
    :goto_1d
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v0, v8, :cond_3d

    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v12, v6, v0

    and-long/2addr v12, v4

    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-eqz v0, :cond_3d

    .line 4757
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v0, v3, :cond_3c

    const/16 v0, 0x1a

    .line 4758
    iput-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1d

    :cond_3c
    const/16 v0, 0x1a

    .line 4760
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v9, v3, 0x1

    iput v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v3, v2, v3

    int-to-char v3, v3

    iput-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1d

    :cond_3d
    :goto_1e
    if-eqz v16, :cond_3e

    return-wide v10

    .line 4769
    :cond_3e
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "illegal input error"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readFieldName()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    .line 3532
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const-wide/16 v2, 0x0

    const/16 v4, 0x22

    if-eq v1, v4, :cond_1

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v4, 0x27

    if-eq v1, v4, :cond_1

    .line 3533
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v4, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v6, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->isFirstIdentifier(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3534
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readFieldNameUnquote()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 3540
    :cond_1
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/4 v4, 0x1

    .line 3542
    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    const/4 v5, 0x0

    .line 3543
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEscape:Z

    .line 3544
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    move v7, v5

    .line 3545
    :goto_0
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/16 v9, 0x20

    if-ge v6, v8, :cond_c

    .line 3546
    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v10, v8, v6

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_4

    .line 3548
    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEscape:Z

    .line 3549
    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v8, v8, v6

    const/16 v9, 0x75

    if-eq v8, v9, :cond_3

    const/16 v9, 0x78

    if-eq v8, v9, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x4

    :goto_1
    add-int/2addr v6, v4

    goto/16 :goto_4

    :cond_4
    if-ne v10, v1, :cond_9

    .line 3567
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 3568
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    add-int/lit8 v6, v6, 0x1

    .line 3570
    aget-byte v1, v8, v6

    :goto_2
    and-int/lit16 v1, v1, 0xff

    if-gt v1, v9, :cond_5

    const-wide/16 v7, 0x1

    shl-long/2addr v7, v1

    const-wide v10, 0x100003700L

    and-long/2addr v7, v10

    cmp-long v7, v7, v2

    if-eqz v7, :cond_5

    add-int/lit8 v6, v6, 0x1

    .line 3574
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v1, v1, v6

    goto :goto_2

    :cond_5
    const/16 v7, 0x3a

    if-ne v1, v7, :cond_8

    add-int/2addr v6, v4

    .line 3581
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v6, v1, :cond_6

    const/16 v1, 0x1a

    goto :goto_3

    .line 3584
    :cond_6
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v1, v1, v6

    :goto_3
    if-gt v1, v9, :cond_7

    const-wide/16 v7, 0x1

    shl-long/2addr v7, v1

    const-wide v10, 0x100003700L

    and-long/2addr v7, v10

    cmp-long v7, v7, v2

    if-eqz v7, :cond_7

    add-int/lit8 v6, v6, 0x1

    .line 3589
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v1, v1, v6

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v6, 0x1

    .line 3592
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v1, v1

    .line 3593
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_5

    .line 3577
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syntax error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    if-ltz v10, :cond_a

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 3600
    :cond_a
    iget-boolean v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    if-eqz v8, :cond_b

    .line 3601
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    :cond_b
    and-int/lit16 v8, v10, 0xff

    shr-int/lit8 v8, v8, 0x4

    packed-switch v8, :pswitch_data_0

    .line 3616
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed input around byte "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    add-int/lit8 v6, v6, 0x3

    goto :goto_4

    :pswitch_1
    add-int/lit8 v6, v6, 0x2

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 3621
    :cond_c
    :goto_5
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    if-lt v1, v2, :cond_1a

    sub-int/2addr v1, v2

    .line 3626
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEscape:Z

    if-nez v2, :cond_19

    .line 3627
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    if-eqz v2, :cond_17

    const/16 v6, 0x38

    const/16 v7, 0x30

    const/16 v8, 0x28

    const/16 v10, 0x18

    const/16 v11, 0x10

    const/16 v12, 0x8

    packed-switch v1, :pswitch_data_1

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    :goto_6
    const-wide/16 v6, -0x1

    goto/16 :goto_c

    .line 3800
    :pswitch_2
    iget-object v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v14, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    add-int/lit8 v15, v14, 0x7

    aget-byte v15, v13, v15

    int-to-long v2, v15

    shl-long/2addr v2, v6

    add-int/lit8 v15, v14, 0x6

    aget-byte v15, v13, v15

    int-to-long v4, v15

    shl-long/2addr v4, v7

    add-long/2addr v2, v4

    add-int/lit8 v4, v14, 0x5

    aget-byte v4, v13, v4

    int-to-long v4, v4

    shl-long/2addr v4, v8

    add-long/2addr v2, v4

    add-int/lit8 v4, v14, 0x4

    aget-byte v4, v13, v4

    int-to-long v4, v4

    shl-long/2addr v4, v9

    add-long/2addr v2, v4

    add-int/lit8 v4, v14, 0x3

    aget-byte v4, v13, v4

    int-to-long v4, v4

    shl-long/2addr v4, v10

    add-long/2addr v2, v4

    add-int/lit8 v4, v14, 0x2

    aget-byte v4, v13, v4

    int-to-long v4, v4

    shl-long/2addr v4, v11

    add-long/2addr v2, v4

    add-int/lit8 v4, v14, 0x1

    aget-byte v4, v13, v4

    int-to-long v4, v4

    shl-long/2addr v4, v12

    add-long/2addr v2, v4

    aget-byte v4, v13, v14

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-int/lit8 v4, v14, 0xf

    .line 3809
    aget-byte v4, v13, v4

    int-to-long v4, v4

    shl-long/2addr v4, v6

    add-int/lit8 v6, v14, 0xe

    aget-byte v6, v13, v6

    int-to-long v11, v6

    shl-long v6, v11, v7

    add-long/2addr v4, v6

    add-int/lit8 v6, v14, 0xd

    aget-byte v6, v13, v6

    int-to-long v6, v6

    shl-long/2addr v6, v8

    add-long/2addr v4, v6

    add-int/lit8 v6, v14, 0xc

    aget-byte v6, v13, v6

    int-to-long v6, v6

    shl-long/2addr v6, v9

    add-long/2addr v4, v6

    add-int/lit8 v6, v14, 0xb

    aget-byte v6, v13, v6

    int-to-long v6, v6

    shl-long/2addr v6, v10

    add-long/2addr v4, v6

    add-int/lit8 v6, v14, 0xa

    aget-byte v6, v13, v6

    int-to-long v6, v6

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    add-long/2addr v4, v6

    add-int/lit8 v6, v14, 0x9

    aget-byte v6, v13, v6

    int-to-long v6, v6

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    add-long/2addr v4, v6

    add-int/2addr v14, v8

    aget-byte v6, v13, v14

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-wide v6, v4

    move-wide v4, v2

    goto/16 :goto_8

    .line 3781
    :pswitch_3
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    add-int/lit8 v4, v3, 0x6

    aget-byte v4, v2, v4

    int-to-long v4, v4

    shl-long/2addr v4, v7

    add-int/lit8 v11, v3, 0x5

    aget-byte v11, v2, v11

    int-to-long v11, v11

    shl-long/2addr v11, v8

    add-long/2addr v4, v11

    add-int/lit8 v11, v3, 0x4

    aget-byte v11, v2, v11

    int-to-long v11, v11

    shl-long/2addr v11, v9

    add-long/2addr v4, v11

    add-int/lit8 v11, v3, 0x3

    aget-byte v11, v2, v11

    int-to-long v11, v11

    shl-long/2addr v11, v10

    add-long/2addr v4, v11

    add-int/lit8 v11, v3, 0x2

    aget-byte v11, v2, v11

    int-to-long v11, v11

    const/16 v13, 0x10

    shl-long/2addr v11, v13

    add-long/2addr v4, v11

    add-int/lit8 v11, v3, 0x1

    aget-byte v11, v2, v11

    int-to-long v11, v11

    const/16 v13, 0x8

    shl-long/2addr v11, v13

    add-long/2addr v4, v11

    aget-byte v11, v2, v3

    int-to-long v11, v11

    add-long/2addr v4, v11

    add-int/lit8 v11, v3, 0xe

    .line 3789
    aget-byte v11, v2, v11

    int-to-long v11, v11

    shl-long/2addr v11, v6

    add-int/lit8 v6, v3, 0xd

    aget-byte v6, v2, v6

    int-to-long v13, v6

    shl-long v6, v13, v7

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0xc

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v8

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0xb

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v9

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0xa

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v10

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x9

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x8

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    add-long/2addr v11, v6

    add-int/lit8 v3, v3, 0x7

    aget-byte v2, v2, v3

    goto/16 :goto_7

    .line 3763
    :pswitch_4
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    add-int/lit8 v4, v3, 0x5

    aget-byte v4, v2, v4

    int-to-long v4, v4

    shl-long/2addr v4, v8

    add-int/lit8 v11, v3, 0x4

    aget-byte v11, v2, v11

    int-to-long v11, v11

    shl-long/2addr v11, v9

    add-long/2addr v4, v11

    add-int/lit8 v11, v3, 0x3

    aget-byte v11, v2, v11

    int-to-long v11, v11

    shl-long/2addr v11, v10

    add-long/2addr v4, v11

    add-int/lit8 v11, v3, 0x2

    aget-byte v11, v2, v11

    int-to-long v11, v11

    const/16 v13, 0x10

    shl-long/2addr v11, v13

    add-long/2addr v4, v11

    add-int/lit8 v11, v3, 0x1

    aget-byte v11, v2, v11

    int-to-long v11, v11

    const/16 v13, 0x8

    shl-long/2addr v11, v13

    add-long/2addr v4, v11

    aget-byte v11, v2, v3

    int-to-long v11, v11

    add-long/2addr v4, v11

    add-int/lit8 v11, v3, 0xd

    .line 3770
    aget-byte v11, v2, v11

    int-to-long v11, v11

    shl-long/2addr v11, v6

    add-int/lit8 v6, v3, 0xc

    aget-byte v6, v2, v6

    int-to-long v13, v6

    shl-long v6, v13, v7

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0xb

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v8

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0xa

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v9

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x9

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v10

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x8

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x8

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    add-long/2addr v11, v6

    add-int/lit8 v3, v3, 0x6

    aget-byte v2, v2, v3

    goto/16 :goto_7

    .line 3746
    :pswitch_5
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    add-int/lit8 v4, v3, 0x4

    aget-byte v4, v2, v4

    int-to-long v4, v4

    shl-long/2addr v4, v9

    add-int/lit8 v11, v3, 0x3

    aget-byte v11, v2, v11

    int-to-long v11, v11

    shl-long/2addr v11, v10

    add-long/2addr v4, v11

    add-int/lit8 v11, v3, 0x2

    aget-byte v11, v2, v11

    int-to-long v11, v11

    const/16 v13, 0x10

    shl-long/2addr v11, v13

    add-long/2addr v4, v11

    add-int/lit8 v11, v3, 0x1

    aget-byte v11, v2, v11

    int-to-long v11, v11

    const/16 v13, 0x8

    shl-long/2addr v11, v13

    add-long/2addr v4, v11

    aget-byte v11, v2, v3

    int-to-long v11, v11

    add-long/2addr v4, v11

    add-int/lit8 v11, v3, 0xc

    .line 3752
    aget-byte v11, v2, v11

    int-to-long v11, v11

    shl-long/2addr v11, v6

    add-int/lit8 v6, v3, 0xb

    aget-byte v6, v2, v6

    int-to-long v13, v6

    shl-long v6, v13, v7

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0xa

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v8

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x9

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v9

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x8

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v10

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x7

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x6

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    add-long/2addr v11, v6

    add-int/lit8 v3, v3, 0x5

    aget-byte v2, v2, v3

    goto/16 :goto_7

    .line 3730
    :pswitch_6
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    add-int/lit8 v4, v3, 0x3

    aget-byte v4, v2, v4

    shl-int/2addr v4, v10

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    const/16 v11, 0x10

    shl-int/2addr v5, v11

    add-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v11, 0x8

    shl-int/2addr v5, v11

    add-int/2addr v4, v5

    aget-byte v5, v2, v3

    add-int/2addr v4, v5

    int-to-long v4, v4

    add-int/lit8 v11, v3, 0xb

    .line 3735
    aget-byte v11, v2, v11

    int-to-long v11, v11

    shl-long/2addr v11, v6

    add-int/lit8 v6, v3, 0xa

    aget-byte v6, v2, v6

    int-to-long v13, v6

    shl-long v6, v13, v7

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x9

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v8

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x8

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v9

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x7

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v10

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x6

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x5

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    add-long/2addr v11, v6

    add-int/lit8 v3, v3, 0x4

    aget-byte v2, v2, v3

    goto/16 :goto_7

    .line 3715
    :pswitch_7
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    const/16 v5, 0x10

    shl-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v11, 0x8

    shl-int/2addr v5, v11

    add-int/2addr v4, v5

    aget-byte v5, v2, v3

    add-int/2addr v4, v5

    int-to-long v4, v4

    add-int/lit8 v11, v3, 0xa

    .line 3719
    aget-byte v11, v2, v11

    int-to-long v11, v11

    shl-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x9

    aget-byte v6, v2, v6

    int-to-long v13, v6

    shl-long v6, v13, v7

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x8

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v8

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x7

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v9

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x6

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v10

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x5

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x4

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    add-long/2addr v11, v6

    add-int/lit8 v3, v3, 0x3

    aget-byte v2, v2, v3

    goto/16 :goto_7

    .line 3701
    :pswitch_8
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    aget-byte v5, v2, v3

    add-int/2addr v4, v5

    int-to-long v4, v4

    add-int/lit8 v11, v3, 0x9

    .line 3704
    aget-byte v11, v2, v11

    int-to-long v11, v11

    shl-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x8

    aget-byte v6, v2, v6

    int-to-long v13, v6

    shl-long v6, v13, v7

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x7

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v8

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x6

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v9

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x5

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v10

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x4

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    add-long/2addr v11, v6

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    goto :goto_7

    .line 3689
    :pswitch_9
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    aget-byte v4, v2, v3

    int-to-long v4, v4

    add-int/lit8 v11, v3, 0x8

    .line 3690
    aget-byte v11, v2, v11

    int-to-long v11, v11

    shl-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x7

    aget-byte v6, v2, v6

    int-to-long v13, v6

    shl-long v6, v13, v7

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x6

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v8

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x5

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v9

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x4

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v10

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    add-long/2addr v11, v6

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    add-long/2addr v11, v6

    const/4 v6, 0x1

    add-int/2addr v3, v6

    aget-byte v2, v2, v3

    :goto_7
    int-to-long v2, v2

    add-long/2addr v2, v11

    move-wide v6, v2

    :goto_8
    const-wide/16 v2, -0x1

    goto/16 :goto_c

    .line 3678
    :pswitch_a
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    add-int/lit8 v4, v3, 0x7

    aget-byte v4, v2, v4

    int-to-long v4, v4

    shl-long/2addr v4, v6

    add-int/lit8 v6, v3, 0x6

    aget-byte v6, v2, v6

    int-to-long v11, v6

    shl-long v6, v11, v7

    add-long/2addr v4, v6

    add-int/lit8 v6, v3, 0x5

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v8

    add-long/2addr v4, v6

    add-int/lit8 v6, v3, 0x4

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v9

    add-long/2addr v4, v6

    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v10

    add-long/2addr v4, v6

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    add-long/2addr v4, v6

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    add-long/2addr v4, v6

    aget-byte v2, v2, v3

    goto/16 :goto_9

    .line 3668
    :pswitch_b
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    add-int/lit8 v4, v3, 0x6

    aget-byte v4, v2, v4

    int-to-long v4, v4

    shl-long/2addr v4, v7

    add-int/lit8 v6, v3, 0x5

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v8

    add-long/2addr v4, v6

    add-int/lit8 v6, v3, 0x4

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v9

    add-long/2addr v4, v6

    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v10

    add-long/2addr v4, v6

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    add-long/2addr v4, v6

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    add-long/2addr v4, v6

    aget-byte v2, v2, v3

    goto :goto_9

    .line 3659
    :pswitch_c
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    add-int/lit8 v4, v3, 0x5

    aget-byte v4, v2, v4

    int-to-long v4, v4

    shl-long/2addr v4, v8

    add-int/lit8 v6, v3, 0x4

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v9

    add-long/2addr v4, v6

    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v10

    add-long/2addr v4, v6

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    add-long/2addr v4, v6

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    add-long/2addr v4, v6

    aget-byte v2, v2, v3

    goto :goto_9

    .line 3651
    :pswitch_d
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    add-int/lit8 v4, v3, 0x4

    aget-byte v4, v2, v4

    int-to-long v4, v4

    shl-long/2addr v4, v9

    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v2, v6

    int-to-long v6, v6

    shl-long/2addr v6, v10

    add-long/2addr v4, v6

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    add-long/2addr v4, v6

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    add-long/2addr v4, v6

    aget-byte v2, v2, v3

    :goto_9
    int-to-long v2, v2

    add-long/2addr v2, v4

    goto :goto_b

    .line 3644
    :pswitch_e
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    add-int/lit8 v4, v3, 0x3

    aget-byte v4, v2, v4

    shl-int/2addr v4, v10

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    const/16 v6, 0x10

    shl-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    add-int/2addr v4, v5

    aget-byte v2, v2, v3

    goto :goto_a

    .line 3638
    :pswitch_f
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    const/16 v5, 0x10

    shl-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    add-int/2addr v4, v5

    aget-byte v2, v2, v3

    :goto_a
    add-int/2addr v4, v2

    int-to-long v2, v4

    :goto_b
    move-wide v4, v2

    const-wide/16 v2, -0x1

    goto/16 :goto_6

    .line 3633
    :pswitch_10
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-static {v3, v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toString(CC)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3631
    :pswitch_11
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toString(C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :goto_c
    cmp-long v8, v4, v2

    if-eqz v8, :cond_14

    cmp-long v2, v6, v2

    if-eqz v2, :cond_10

    xor-long v2, v4, v6

    ushr-long v8, v2, v9

    xor-long/2addr v2, v8

    long-to-int v2, v2

    .line 3826
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE2:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

    array-length v3, v3

    const/4 v8, 0x1

    sub-int/2addr v3, v8

    and-int v8, v2, v3

    .line 3827
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE2:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

    aget-object v2, v2, v8

    if-nez v2, :cond_f

    .line 3830
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    if-eqz v2, :cond_e

    .line 3831
    new-array v2, v1, [C

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v1, :cond_d

    .line 3833
    iget-object v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    add-int/2addr v10, v3

    aget-byte v9, v9, v10

    int-to-char v9, v9

    aput-char v9, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 3835
    :cond_d
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_e

    .line 3837
    :cond_e
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    sget-object v10, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v9, v1, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v1, v2

    .line 3840
    :goto_e
    sget-object v9, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE2:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

    new-instance v10, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

    move-object v2, v10

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;-><init>(Ljava/lang/String;JJ)V

    aput-object v10, v9, v8

    return-object v1

    .line 3842
    :cond_f
    iget-wide v8, v2, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->value0:J

    cmp-long v3, v8, v4

    if-nez v3, :cond_14

    iget-wide v3, v2, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->value1:J

    cmp-long v3, v3, v6

    if-nez v3, :cond_14

    .line 3843
    iget-object v1, v2, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->name:Ljava/lang/String;

    return-object v1

    :cond_10
    ushr-long v2, v4, v9

    xor-long/2addr v2, v4

    long-to-int v2, v2

    .line 3846
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;

    array-length v3, v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    and-int/2addr v2, v3

    .line 3847
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;

    aget-object v3, v3, v2

    if-nez v3, :cond_13

    .line 3850
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    if-eqz v3, :cond_12

    .line 3851
    new-array v3, v1, [C

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v1, :cond_11

    .line 3853
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    add-int/2addr v8, v6

    aget-byte v7, v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 3855
    :cond_11
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v3, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_10

    .line 3857
    :cond_12
    new-instance v3, Ljava/lang/String;

    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    sget-object v8, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v3, v6, v7, v1, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v1, v3

    .line 3860
    :goto_10
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;

    new-instance v6, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;

    invoke-direct {v6, v1, v4, v5}, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;-><init>(Ljava/lang/String;J)V

    aput-object v6, v3, v2

    return-object v1

    .line 3862
    :cond_13
    iget-wide v6, v3, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;->value:J

    cmp-long v2, v6, v4

    if-nez v2, :cond_14

    .line 3863
    iget-object v1, v3, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;->name:Ljava/lang/String;

    return-object v1

    .line 3868
    :cond_14
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    if-eqz v2, :cond_16

    .line 3869
    new-array v2, v1, [C

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v1, :cond_15

    .line 3871
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    add-int/2addr v4, v5

    aget-byte v3, v3, v4

    int-to-char v3, v3

    aput-char v3, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 3873
    :cond_15
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 3874
    :cond_16
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    if-eqz v2, :cond_17

    .line 3875
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 3876
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->LATIN1:Ljava/lang/Byte;

    invoke-interface {v2, v1, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 3880
    :cond_17
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 3881
    iget-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    if-eqz v5, :cond_18

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_12

    :cond_18
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_12
    invoke-direct {v2, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2

    .line 3885
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->getFieldName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3622
    :cond_1a
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syntax error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public readFieldNameHashCode()J
    .locals 19

    move-object/from16 v0, p0

    .line 2660
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 2661
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const-wide/16 v3, 0x0

    const/16 v5, 0x22

    if-eq v2, v5, :cond_4

    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v5, 0x27

    if-eq v2, v5, :cond_4

    .line 2662
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->isFirstIdentifier(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2663
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readFieldNameHashCodeUnquote()J

    move-result-wide v1

    return-wide v1

    .line 2665
    :cond_0
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->isNull()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 2670
    :cond_1
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_2

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    if-lez v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->getFieldName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal fieldName input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", previous fieldName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2673
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal fieldName input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2676
    :goto_0
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    const-wide/16 v1, -0x1

    return-wide v1

    .line 2679
    :cond_4
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/4 v5, 0x1

    .line 2681
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    const/4 v6, 0x0

    .line 2682
    iput-boolean v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEscape:Z

    .line 2683
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    add-int/lit8 v8, v7, 0x9

    .line 2687
    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/16 v13, 0x20

    const/16 v14, 0x8

    const/16 v15, 0x5c

    if-ge v8, v9, :cond_d

    .line 2690
    aget-byte v9, v1, v7

    if-ne v9, v2, :cond_5

    move-wide v5, v3

    goto/16 :goto_3

    :cond_5
    add-int/lit8 v6, v7, 0x1

    .line 2692
    aget-byte v3, v1, v6

    if-ne v3, v2, :cond_6

    if-eq v9, v15, :cond_6

    if-lez v9, :cond_6

    int-to-long v3, v9

    .line 2694
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 2695
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    add-int/lit8 v7, v7, 0x2

    move-wide v5, v3

    :goto_2
    const-wide/16 v3, 0x0

    goto/16 :goto_3

    :cond_6
    add-int/lit8 v4, v7, 0x2

    .line 2697
    aget-byte v6, v1, v4

    if-ne v6, v2, :cond_7

    if-eq v9, v15, :cond_7

    if-eq v3, v15, :cond_7

    if-ltz v9, :cond_7

    if-lez v3, :cond_7

    shl-int/2addr v3, v14

    add-int/2addr v3, v9

    int-to-long v8, v3

    const/4 v3, 0x2

    .line 2703
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 2704
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    add-int/lit8 v7, v7, 0x3

    move-wide v5, v8

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v7, 0x3

    .line 2706
    aget-byte v5, v1, v4

    if-ne v5, v2, :cond_8

    if-eq v9, v15, :cond_8

    if-eq v3, v15, :cond_8

    if-eq v6, v15, :cond_8

    if-ltz v9, :cond_8

    if-ltz v3, :cond_8

    if-lez v6, :cond_8

    shl-int/lit8 v5, v6, 0x10

    shl-int/2addr v3, v14

    add-int/2addr v5, v3

    add-int/2addr v5, v9

    int-to-long v5, v5

    const/4 v3, 0x3

    .line 2714
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 2715
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    add-int/lit8 v7, v7, 0x4

    goto :goto_2

    :cond_8
    add-int/lit8 v4, v7, 0x4

    .line 2717
    aget-byte v10, v1, v4

    if-ne v10, v2, :cond_9

    if-eq v9, v15, :cond_9

    if-eq v3, v15, :cond_9

    if-eq v6, v15, :cond_9

    if-eq v5, v15, :cond_9

    if-ltz v9, :cond_9

    if-ltz v3, :cond_9

    if-ltz v6, :cond_9

    if-lez v5, :cond_9

    shl-int/lit8 v5, v5, 0x18

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    shl-int/2addr v3, v14

    add-int/2addr v5, v3

    add-int/2addr v5, v9

    int-to-long v5, v5

    const/4 v3, 0x4

    .line 2726
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 2727
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    add-int/lit8 v7, v7, 0x5

    goto :goto_2

    :cond_9
    add-int/lit8 v4, v7, 0x5

    .line 2729
    aget-byte v12, v1, v4

    if-ne v12, v2, :cond_a

    if-eq v9, v15, :cond_a

    if-eq v3, v15, :cond_a

    if-eq v6, v15, :cond_a

    if-eq v5, v15, :cond_a

    if-eq v10, v15, :cond_a

    if-ltz v9, :cond_a

    if-ltz v3, :cond_a

    if-ltz v6, :cond_a

    if-ltz v5, :cond_a

    if-lez v10, :cond_a

    int-to-long v11, v10

    shl-long v10, v11, v13

    shl-int/lit8 v5, v5, 0x18

    int-to-long v13, v5

    add-long/2addr v10, v13

    shl-int/lit8 v5, v6, 0x10

    int-to-long v5, v5

    add-long/2addr v10, v5

    const/16 v5, 0x8

    shl-int/2addr v3, v5

    int-to-long v5, v3

    add-long/2addr v10, v5

    int-to-long v5, v9

    add-long/2addr v5, v10

    const/4 v3, 0x5

    .line 2739
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 2740
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    add-int/lit8 v7, v7, 0x6

    goto/16 :goto_2

    :cond_a
    add-int/lit8 v4, v7, 0x6

    .line 2742
    aget-byte v11, v1, v4

    if-ne v11, v2, :cond_b

    if-eq v9, v15, :cond_b

    if-eq v3, v15, :cond_b

    if-eq v6, v15, :cond_b

    if-eq v5, v15, :cond_b

    if-eq v10, v15, :cond_b

    if-eq v12, v15, :cond_b

    if-ltz v9, :cond_b

    if-ltz v3, :cond_b

    if-ltz v6, :cond_b

    if-ltz v5, :cond_b

    if-ltz v10, :cond_b

    if-lez v12, :cond_b

    int-to-long v11, v12

    const/16 v8, 0x28

    shl-long/2addr v11, v8

    int-to-long v13, v10

    const/16 v8, 0x20

    shl-long/2addr v13, v8

    add-long/2addr v11, v13

    shl-int/lit8 v5, v5, 0x18

    int-to-long v13, v5

    add-long/2addr v11, v13

    shl-int/lit8 v5, v6, 0x10

    int-to-long v5, v5

    add-long/2addr v11, v5

    const/16 v5, 0x8

    shl-int/2addr v3, v5

    int-to-long v5, v3

    add-long/2addr v11, v5

    int-to-long v5, v9

    add-long/2addr v5, v11

    const/4 v3, 0x6

    .line 2753
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 2754
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    add-int/lit8 v7, v7, 0x7

    goto/16 :goto_2

    :cond_b
    add-int/lit8 v4, v7, 0x7

    .line 2756
    aget-byte v13, v1, v4

    if-ne v13, v2, :cond_c

    if-eq v9, v15, :cond_c

    if-eq v3, v15, :cond_c

    if-eq v6, v15, :cond_c

    if-eq v5, v15, :cond_c

    if-eq v10, v15, :cond_c

    if-eq v12, v15, :cond_c

    if-eq v11, v15, :cond_c

    if-ltz v9, :cond_c

    if-ltz v3, :cond_c

    if-ltz v6, :cond_c

    if-ltz v5, :cond_c

    if-ltz v10, :cond_c

    if-ltz v12, :cond_c

    if-lez v11, :cond_c

    int-to-long v13, v11

    const/16 v8, 0x30

    shl-long/2addr v13, v8

    int-to-long v11, v12

    const/16 v8, 0x28

    shl-long/2addr v11, v8

    add-long/2addr v13, v11

    int-to-long v10, v10

    const/16 v8, 0x20

    shl-long/2addr v10, v8

    add-long/2addr v13, v10

    shl-int/lit8 v5, v5, 0x18

    int-to-long v10, v5

    add-long/2addr v13, v10

    shl-int/lit8 v5, v6, 0x10

    int-to-long v5, v5

    add-long/2addr v13, v5

    const/16 v5, 0x8

    shl-int/2addr v3, v5

    int-to-long v5, v3

    add-long/2addr v13, v5

    int-to-long v5, v9

    add-long/2addr v5, v13

    const/4 v3, 0x7

    .line 2768
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 2769
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    add-int/lit8 v7, v7, 0x8

    goto/16 :goto_2

    :cond_c
    add-int/lit8 v4, v7, 0x8

    .line 2771
    aget-byte v14, v1, v4

    if-ne v14, v2, :cond_d

    if-eq v9, v15, :cond_d

    if-eq v3, v15, :cond_d

    if-eq v6, v15, :cond_d

    if-eq v5, v15, :cond_d

    if-eq v10, v15, :cond_d

    if-eq v12, v15, :cond_d

    if-eq v11, v15, :cond_d

    if-eq v13, v15, :cond_d

    if-ltz v9, :cond_d

    if-ltz v3, :cond_d

    if-ltz v6, :cond_d

    if-ltz v5, :cond_d

    if-ltz v10, :cond_d

    if-ltz v12, :cond_d

    if-ltz v11, :cond_d

    if-lez v13, :cond_d

    int-to-long v13, v13

    const/16 v7, 0x38

    shl-long/2addr v13, v7

    move/from16 v18, v8

    int-to-long v7, v11

    const/16 v11, 0x30

    shl-long/2addr v7, v11

    add-long/2addr v13, v7

    int-to-long v7, v12

    const/16 v11, 0x28

    shl-long/2addr v7, v11

    add-long/2addr v13, v7

    int-to-long v7, v10

    const/16 v10, 0x20

    shl-long/2addr v7, v10

    add-long/2addr v13, v7

    shl-int/lit8 v5, v5, 0x18

    int-to-long v7, v5

    add-long/2addr v13, v7

    shl-int/lit8 v5, v6, 0x10

    int-to-long v5, v5

    add-long/2addr v13, v5

    const/16 v5, 0x8

    shl-int/2addr v3, v5

    int-to-long v6, v3

    add-long/2addr v13, v6

    int-to-long v6, v9

    add-long/2addr v6, v13

    .line 2784
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 2785
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    move-wide v5, v6

    move/from16 v7, v18

    goto/16 :goto_2

    :cond_d
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    :goto_3
    cmp-long v8, v5, v3

    const/16 v3, 0x75

    if-nez v8, :cond_17

    const/4 v4, 0x0

    .line 2791
    :goto_4
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v7, v8, :cond_17

    .line 2792
    aget-byte v8, v1, v7

    if-ne v8, v2, :cond_f

    if-nez v4, :cond_e

    .line 2796
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    goto/16 :goto_c

    .line 2800
    :cond_e
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 2801
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_c

    :cond_f
    const/16 v9, 0xff

    if-ne v8, v15, :cond_12

    const/4 v10, 0x1

    .line 2807
    iput-boolean v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEscape:Z

    add-int/lit8 v7, v7, 0x1

    .line 2808
    aget-byte v8, v1, v7

    if-eq v8, v3, :cond_11

    const/16 v10, 0x78

    if-eq v8, v10, :cond_10

    .line 2827
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char1(I)C

    move-result v8

    goto :goto_5

    :cond_10
    add-int/lit8 v7, v7, 0x1

    .line 2819
    aget-byte v8, v1, v7

    const/4 v10, 0x1

    add-int/2addr v7, v10

    .line 2820
    aget-byte v11, v1, v7

    .line 2821
    invoke-static {v8, v11}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2(II)C

    move-result v8

    goto :goto_5

    :cond_11
    const/4 v10, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 2811
    aget-byte v8, v1, v7

    add-int/2addr v7, v10

    .line 2812
    aget-byte v11, v1, v7

    add-int/2addr v7, v10

    .line 2813
    aget-byte v12, v1, v7

    add-int/2addr v7, v10

    .line 2814
    aget-byte v10, v1, v7

    .line 2815
    invoke-static {v8, v11, v12, v10}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char4(IIII)C

    move-result v8

    :goto_5
    if-le v8, v9, :cond_14

    const/4 v10, 0x0

    .line 2831
    iput-boolean v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    goto :goto_6

    :cond_12
    const/16 v10, -0x3d

    if-eq v8, v10, :cond_13

    const/16 v10, -0x3e

    if-ne v8, v10, :cond_14

    :cond_13
    add-int/lit8 v7, v7, 0x1

    .line 2834
    aget-byte v10, v1, v7

    and-int/lit8 v8, v8, 0x1f

    const/4 v11, 0x6

    shl-int/2addr v8, v11

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v8, v10

    int-to-char v8, v8

    const/4 v10, 0x0

    .line 2837
    iput-boolean v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    :cond_14
    :goto_6
    if-gt v8, v9, :cond_16

    if-ltz v8, :cond_16

    const/16 v9, 0x8

    if-ge v4, v9, :cond_16

    if-nez v4, :cond_15

    if-nez v8, :cond_15

    goto/16 :goto_b

    :cond_15
    packed-switch v4, :pswitch_data_0

    const/16 v9, 0x8

    const/16 v10, 0x30

    const/16 v11, 0x28

    :goto_7
    const/4 v8, 0x1

    goto/16 :goto_a

    :pswitch_0
    int-to-byte v8, v8

    int-to-long v8, v8

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    const-wide v10, 0xffffffffffffffL

    and-long/2addr v5, v10

    add-long/2addr v5, v8

    const/4 v8, 0x1

    const/16 v9, 0x8

    const/16 v10, 0x30

    goto :goto_8

    :pswitch_1
    int-to-byte v8, v8

    int-to-long v8, v8

    const/16 v10, 0x30

    shl-long/2addr v8, v10

    const-wide v11, 0xffffffffffffL

    and-long/2addr v5, v11

    add-long/2addr v5, v8

    const/4 v8, 0x1

    const/16 v9, 0x8

    :goto_8
    const/16 v11, 0x28

    goto :goto_a

    :pswitch_2
    const/16 v10, 0x30

    int-to-byte v8, v8

    int-to-long v8, v8

    const/16 v11, 0x28

    shl-long/2addr v8, v11

    const-wide v12, 0xffffffffffL

    goto :goto_9

    :pswitch_3
    const/16 v10, 0x30

    const/16 v11, 0x28

    int-to-byte v8, v8

    int-to-long v8, v8

    const/16 v12, 0x20

    shl-long/2addr v8, v12

    const-wide v12, 0xffffffffL

    goto :goto_9

    :pswitch_4
    const/16 v10, 0x30

    const/16 v11, 0x28

    int-to-byte v8, v8

    shl-int/lit8 v8, v8, 0x18

    int-to-long v8, v8

    const-wide/32 v12, 0xffffff

    goto :goto_9

    :pswitch_5
    const/16 v10, 0x30

    const/16 v11, 0x28

    int-to-byte v8, v8

    shl-int/lit8 v8, v8, 0x10

    int-to-long v8, v8

    const-wide/32 v12, 0xffff

    :goto_9
    and-long/2addr v5, v12

    add-long/2addr v5, v8

    const/4 v8, 0x1

    const/16 v9, 0x8

    goto :goto_a

    :pswitch_6
    const/16 v10, 0x30

    const/16 v11, 0x28

    int-to-byte v8, v8

    const/16 v9, 0x8

    shl-int/2addr v8, v9

    int-to-long v12, v8

    const-wide/16 v17, 0xff

    and-long v5, v5, v17

    add-long/2addr v5, v12

    goto :goto_7

    :pswitch_7
    const/16 v9, 0x8

    const/16 v10, 0x30

    const/16 v11, 0x28

    int-to-byte v5, v8

    int-to-long v5, v5

    goto :goto_7

    :goto_a
    add-int/2addr v7, v8

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 2842
    :cond_16
    :goto_b
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    const-wide/16 v5, 0x0

    :cond_17
    :goto_c
    const-wide/16 v8, 0x0

    cmp-long v4, v5, v8

    if-eqz v4, :cond_18

    goto :goto_f

    :cond_18
    const-wide v4, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    move-wide v5, v4

    const/4 v10, 0x0

    .line 2883
    :goto_d
    aget-byte v4, v1, v7

    if-ne v4, v15, :cond_1b

    const/4 v8, 0x1

    .line 2885
    iput-boolean v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEscape:Z

    add-int/lit8 v7, v7, 0x1

    .line 2886
    aget-byte v4, v1, v7

    if-eq v4, v3, :cond_1a

    const/16 v8, 0x78

    if-eq v4, v8, :cond_19

    .line 2905
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char1(I)C

    move-result v4

    const/4 v8, 0x1

    goto :goto_e

    :cond_19
    add-int/lit8 v7, v7, 0x1

    .line 2897
    aget-byte v4, v1, v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    .line 2898
    aget-byte v9, v1, v7

    .line 2899
    invoke-static {v4, v9}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2(II)C

    move-result v4

    goto :goto_e

    :cond_1a
    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 2889
    aget-byte v4, v1, v7

    add-int/2addr v7, v8

    .line 2890
    aget-byte v9, v1, v7

    add-int/2addr v7, v8

    .line 2891
    aget-byte v11, v1, v7

    add-int/2addr v7, v8

    .line 2892
    aget-byte v12, v1, v7

    .line 2893
    invoke-static {v4, v9, v11, v12}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char4(IIII)C

    move-result v4

    :goto_e
    add-int/2addr v7, v8

    int-to-long v11, v4

    xor-long v4, v5, v11

    const-wide v11, 0x100000001b3L

    mul-long/2addr v4, v11

    move-wide v5, v4

    const/4 v4, 0x6

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    goto/16 :goto_14

    :cond_1b
    const/4 v8, 0x1

    if-ne v4, v2, :cond_20

    .line 2915
    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 2916
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    add-int/2addr v7, v8

    .line 2964
    :goto_f
    aget-byte v2, v1, v7

    :goto_10
    const/16 v3, 0x20

    if-gt v2, v3, :cond_1c

    const-wide/16 v3, 0x1

    shl-long/2addr v3, v2

    const-wide v8, 0x100003700L

    and-long/2addr v3, v8

    const-wide/16 v8, 0x0

    cmp-long v3, v3, v8

    if-eqz v3, :cond_1c

    add-int/lit8 v7, v7, 0x1

    .line 2968
    aget-byte v2, v1, v7

    goto :goto_10

    :cond_1c
    const/16 v3, 0x3a

    if-ne v2, v3, :cond_1f

    const/4 v3, 0x1

    add-int/2addr v7, v3

    .line 2976
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v7, v2, :cond_1d

    const/16 v2, 0x1a

    goto :goto_11

    .line 2979
    :cond_1d
    aget-byte v2, v1, v7

    :goto_11
    const/16 v8, 0x20

    :goto_12
    if-gt v2, v8, :cond_1e

    const-wide/16 v3, 0x1

    shl-long/2addr v3, v2

    const-wide v9, 0x100003700L

    and-long/2addr v3, v9

    const-wide/16 v11, 0x0

    cmp-long v3, v3, v11

    if-eqz v3, :cond_1e

    add-int/lit8 v7, v7, 0x1

    .line 2984
    aget-byte v2, v1, v7

    goto :goto_12

    :cond_1e
    const/4 v9, 0x1

    add-int/2addr v7, v9

    .line 2987
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v1, v2

    .line 2988
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return-wide v5

    .line 2972
    :cond_1f
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expect \':\', but "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    move v9, v8

    const/16 v8, 0x20

    const-wide/16 v11, 0x0

    if-ltz v4, :cond_21

    add-int/lit8 v7, v7, 0x1

    move v3, v4

    const/4 v4, 0x6

    const/4 v8, 0x0

    goto/16 :goto_13

    :cond_21
    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v13, v4, 0x4

    const-string v14, "malformed input around byte "

    const/16 v3, 0x80

    packed-switch v13, :pswitch_data_1

    .line 2955
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_8
    add-int/lit8 v13, v7, 0x1

    .line 2941
    aget-byte v13, v1, v13

    add-int/lit8 v16, v7, 0x2

    .line 2942
    aget-byte v8, v1, v16

    and-int/lit16 v9, v13, 0xc0

    if-ne v9, v3, :cond_22

    and-int/lit16 v9, v8, 0xc0

    if-ne v9, v3, :cond_22

    and-int/lit8 v3, v4, 0xf

    shl-int/lit8 v3, v3, 0xc

    and-int/lit8 v4, v13, 0x3f

    const/4 v9, 0x6

    shl-int/2addr v4, v9

    or-int/2addr v3, v4

    and-int/lit8 v4, v8, 0x3f

    or-int/2addr v3, v4

    int-to-char v4, v3

    add-int/lit8 v7, v7, 0x3

    const/4 v3, 0x0

    .line 2950
    iput-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    move v8, v3

    move v3, v4

    const/4 v4, 0x6

    goto :goto_13

    .line 2944
    :cond_22
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_9
    add-int/lit8 v8, v7, 0x1

    .line 2929
    aget-byte v8, v1, v8

    and-int/lit16 v9, v8, 0xc0

    if-ne v9, v3, :cond_23

    and-int/lit8 v3, v4, 0x1f

    const/4 v4, 0x6

    shl-int/2addr v3, v4

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v3, v8

    int-to-char v3, v3

    add-int/lit8 v7, v7, 0x2

    const/4 v8, 0x0

    .line 2937
    iput-boolean v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    :goto_13
    int-to-long v13, v3

    xor-long/2addr v5, v13

    const-wide v13, 0x100000001b3L

    mul-long/2addr v5, v13

    :goto_14
    add-int/lit8 v10, v10, 0x1

    const/16 v3, 0x75

    goto/16 :goto_d

    .line 2931
    :cond_23
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_9
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final readFieldNameHashCodeUnquote()J
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 695
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEscape:Z

    .line 696
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    .line 697
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v6, v1

    const-wide/16 v7, 0x0

    .line 701
    :goto_0
    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/16 v5, 0x7d

    const/16 v11, 0x7b

    const/16 v12, 0x5d

    const/16 v13, 0x5b

    const/16 v14, 0xd

    const/16 v15, 0xc

    const-wide v16, 0x100003700L

    const-wide/16 v18, 0x1

    const/16 v3, 0x3a

    const/16 v1, 0x20

    const/16 v4, 0x1a

    if-gt v9, v10, :cond_6

    .line 702
    iget-char v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v9, v15, :cond_7

    if-eq v9, v14, :cond_7

    if-eq v9, v4, :cond_7

    if-eq v9, v3, :cond_7

    if-eq v9, v13, :cond_7

    if-eq v9, v12, :cond_7

    if-eq v9, v11, :cond_7

    if-eq v9, v5, :cond_7

    if-eq v9, v1, :cond_7

    const/16 v10, 0x21

    if-eq v9, v10, :cond_7

    packed-switch v9, :pswitch_data_0

    packed-switch v9, :pswitch_data_1

    packed-switch v9, :pswitch_data_2

    .line 741
    iget-char v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    .line 742
    iput-boolean v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEscape:Z

    .line 743
    iget-object v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v5, v10, 0x1

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v5, v9, v10

    int-to-char v5, v5

    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 744
    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v9, 0x22

    if-eq v5, v9, :cond_2

    if-eq v5, v3, :cond_2

    const/16 v9, 0x40

    if-eq v5, v9, :cond_2

    const/16 v9, 0x5c

    if-eq v5, v9, :cond_2

    const/16 v9, 0x75

    if-eq v5, v9, :cond_1

    const/16 v9, 0x78

    if-eq v5, v9, :cond_0

    const/16 v9, 0x2a

    if-eq v5, v9, :cond_2

    const/16 v9, 0x2b

    if-eq v5, v9, :cond_2

    packed-switch v5, :pswitch_data_3

    packed-switch v5, :pswitch_data_4

    .line 773
    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char1(I)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1

    .line 754
    :cond_0
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v5, v5, v9

    .line 755
    iget-object v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v9, v9, v10

    .line 756
    invoke-static {v5, v9}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2(II)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1

    .line 746
    :cond_1
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v5, v5, v9

    .line 747
    iget-object v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v9, v9, v10

    .line 748
    iget-object v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v10, v10, v11

    .line 749
    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v11, v11, v12

    .line 750
    invoke-static {v5, v9, v10, v11}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char4(IIII)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 778
    :cond_2
    :goto_1
    :pswitch_0
    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v9, 0x7f

    if-gt v5, v9, :cond_5

    const/16 v5, 0x8

    if-ge v6, v5, :cond_5

    if-nez v6, :cond_3

    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-nez v5, :cond_3

    goto :goto_5

    .line 785
    :cond_3
    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    int-to-byte v3, v3

    packed-switch v6, :pswitch_data_5

    goto :goto_3

    :pswitch_1
    int-to-long v9, v3

    const/16 v1, 0x38

    shl-long/2addr v9, v1

    const-wide v11, 0xffffffffffffffL

    goto :goto_2

    :pswitch_2
    int-to-long v9, v3

    const/16 v1, 0x30

    shl-long/2addr v9, v1

    const-wide v11, 0xffffffffffffL

    goto :goto_2

    :pswitch_3
    int-to-long v9, v3

    const/16 v1, 0x28

    shl-long/2addr v9, v1

    const-wide v11, 0xffffffffffL

    goto :goto_2

    :pswitch_4
    int-to-long v9, v3

    shl-long/2addr v9, v1

    const-wide v11, 0xffffffffL

    goto :goto_2

    :pswitch_5
    shl-int/lit8 v1, v3, 0x18

    int-to-long v9, v1

    const-wide/32 v11, 0xffffff

    goto :goto_2

    :pswitch_6
    shl-int/lit8 v1, v3, 0x10

    int-to-long v9, v1

    const-wide/32 v11, 0xffff

    goto :goto_2

    :pswitch_7
    shl-int/lit8 v1, v3, 0x8

    int-to-long v9, v1

    const-wide/16 v11, 0xff

    :goto_2
    and-long/2addr v7, v11

    add-long/2addr v7, v9

    goto :goto_3

    :pswitch_8
    int-to-long v7, v3

    .line 815
    :goto_3
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v3, :cond_4

    goto :goto_4

    .line 817
    :cond_4
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v3

    int-to-char v4, v1

    :goto_4
    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    goto/16 :goto_0

    .line 780
    :cond_5
    :goto_5
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 781
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    const/4 v5, 0x1

    add-int/2addr v2, v5

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    const-wide/16 v7, 0x0

    :cond_6
    const-wide/16 v9, 0x0

    goto :goto_7

    .line 727
    :cond_7
    :pswitch_9
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 728
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v2, v4, :cond_8

    .line 729
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    goto :goto_6

    .line 731
    :cond_8
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 733
    :goto_6
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v2, v1, :cond_6

    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v5, v18, v2

    and-long v5, v5, v16

    const-wide/16 v9, 0x0

    cmp-long v2, v5, v9

    if-eqz v2, :cond_9

    .line 734
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    goto :goto_6

    :cond_9
    :goto_7
    cmp-long v2, v7, v9

    if-eqz v2, :cond_a

    goto/16 :goto_d

    :cond_a
    const-wide v5, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    move-wide v7, v5

    const/4 v2, 0x0

    .line 828
    :goto_8
    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_f

    const/4 v5, 0x1

    .line 829
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEscape:Z

    .line 830
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v9, v6, 0x1

    iput v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v5, v5, v6

    int-to-char v5, v5

    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 831
    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v6, 0x22

    if-eq v5, v6, :cond_d

    if-eq v5, v3, :cond_d

    const/16 v9, 0x40

    if-eq v5, v9, :cond_d

    const/16 v10, 0x5c

    if-eq v5, v10, :cond_d

    const/16 v11, 0x75

    if-eq v5, v11, :cond_c

    const/16 v12, 0x78

    if-eq v5, v12, :cond_b

    const/16 v13, 0x2a

    if-eq v5, v13, :cond_e

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_e

    packed-switch v5, :pswitch_data_6

    packed-switch v5, :pswitch_data_7

    .line 860
    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char1(I)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_9

    :cond_b
    const/16 v6, 0x2b

    const/16 v13, 0x2a

    .line 841
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v9, v6, 0x1

    iput v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v5, v5, v6

    int-to-char v5, v5

    .line 842
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v6, v6, v9

    int-to-char v6, v6

    .line 843
    invoke-static {v5, v6}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2(II)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_9

    :cond_c
    const/16 v12, 0x78

    const/16 v13, 0x2a

    .line 833
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v9, v6, 0x1

    iput v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v5, v5, v6

    int-to-char v5, v5

    .line 834
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v6, v6, v9

    int-to-char v6, v6

    .line 835
    iget-object v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v9, v9, v10

    int-to-char v9, v9

    .line 836
    iget-object v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v10, v10, v11

    int-to-char v10, v10

    .line 837
    invoke-static {v5, v6, v9, v10}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char4(IIII)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_9

    :cond_d
    const/16 v13, 0x2a

    .line 864
    :cond_e
    :goto_9
    :pswitch_a
    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    int-to-long v5, v5

    xor-long/2addr v5, v7

    const-wide v7, 0x100000001b3L

    mul-long/2addr v5, v7

    .line 866
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    move-wide v7, v5

    const/16 v6, 0x5b

    const/16 v11, 0x7d

    const/16 v12, 0x21

    goto :goto_b

    :cond_f
    const/16 v13, 0x2a

    .line 870
    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v5, v15, :cond_11

    if-eq v5, v14, :cond_11

    if-eq v5, v4, :cond_11

    if-eq v5, v3, :cond_11

    const/16 v6, 0x5b

    if-eq v5, v6, :cond_11

    const/16 v9, 0x5d

    if-eq v5, v9, :cond_11

    const/16 v10, 0x7b

    if-eq v5, v10, :cond_11

    const/16 v11, 0x7d

    if-eq v5, v11, :cond_11

    if-eq v5, v1, :cond_11

    const/16 v12, 0x21

    if-eq v5, v12, :cond_11

    packed-switch v5, :pswitch_data_8

    packed-switch v5, :pswitch_data_9

    packed-switch v5, :pswitch_data_a

    .line 909
    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    int-to-long v9, v5

    xor-long/2addr v7, v9

    const-wide v9, 0x100000001b3L

    mul-long/2addr v7, v9

    .line 912
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v5, v9, :cond_10

    move v5, v4

    goto :goto_a

    .line 914
    :cond_10
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v5, v5, v9

    int-to-char v5, v5

    :goto_a
    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 895
    :cond_11
    :pswitch_b
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 896
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v2, v4, :cond_12

    .line 897
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    goto :goto_c

    .line 899
    :cond_12
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    .line 901
    :goto_c
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v2, v1, :cond_13

    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v5, v18, v2

    and-long v5, v5, v16

    const-wide/16 v9, 0x0

    cmp-long v2, v5, v9

    if-eqz v2, :cond_13

    .line 902
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    goto :goto_c

    .line 918
    :cond_13
    :goto_d
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v2, v3, :cond_16

    .line 919
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v2, v3, :cond_14

    .line 920
    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_e

    .line 922
    :cond_14
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v2, v2, v3

    int-to-char v2, v2

    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 925
    :goto_e
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v2, v1, :cond_16

    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v2, v18, v2

    and-long v2, v2, v16

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_16

    .line 926
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v2, v3, :cond_15

    .line 927
    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_f

    .line 930
    :cond_15
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v9, v3, 0x1

    iput v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v2, v2, v3

    int-to-char v2, v2

    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_e

    :cond_16
    :goto_f
    return-wide v7

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3c
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2d
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x3c
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x8
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x28
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x3c
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public final readFloatValue()F
    .locals 21

    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 4776
    iput-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    .line 4781
    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 4783
    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/4 v4, 0x0

    const/16 v5, 0x1a

    const/4 v6, 0x1

    const/16 v7, 0x22

    if-eq v3, v7, :cond_1

    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v7, 0x27

    if-ne v3, v7, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_2

    .line 4784
    :cond_1
    :goto_0
    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4785
    iget v7, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v7, v2, v7

    int-to-char v7, v7

    iput-char v7, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4787
    iget-char v7, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v7, v3, :cond_3

    .line 4788
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v0, v3, :cond_2

    .line 4789
    iput-char v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1

    .line 4791
    :cond_2
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v0, 0x1

    iput v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    int-to-char v0, v0

    iput-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4793
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nextIfComma()Z

    .line 4794
    iput-boolean v6, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    return v4

    .line 4799
    :cond_3
    :goto_2
    iget v7, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 4800
    iget-char v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v9, 0x2b

    const/16 v10, 0x2d

    if-ne v8, v10, :cond_4

    .line 4801
    iput-boolean v6, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->negative:Z

    .line 4802
    iget v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v8, v2, v8

    int-to-char v8, v8

    iput-char v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_3

    .line 4804
    :cond_4
    iput-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->negative:Z

    .line 4805
    iget-char v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v8, v9, :cond_5

    .line 4806
    iget v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v8, v2, v8

    int-to-char v8, v8

    iput-char v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4810
    :cond_5
    :goto_3
    iput-byte v6, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    move v8, v0

    move v15, v8

    const-wide/16 v13, 0x0

    .line 4814
    :goto_4
    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const-wide/16 v17, 0xa

    const/16 v11, 0x39

    const/16 v12, 0x30

    if-lt v4, v12, :cond_9

    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v4, v11, :cond_9

    if-nez v8, :cond_7

    mul-long v19, v13, v17

    .line 4817
    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    sub-int/2addr v4, v12

    int-to-long v9, v4

    add-long v19, v19, v9

    cmp-long v4, v19, v13

    if-gez v4, :cond_6

    move v8, v6

    goto :goto_5

    :cond_6
    move-wide/from16 v13, v19

    .line 4825
    :cond_7
    :goto_5
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v4, v9, :cond_8

    .line 4826
    iput-char v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4827
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v4, v6

    iput v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    move v15, v6

    goto :goto_6

    .line 4830
    :cond_8
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v9, v4, 0x1

    iput v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v4, v2, v4

    int-to-char v4, v4

    iput-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v15, v6

    const/16 v9, 0x2b

    const/16 v10, 0x2d

    goto :goto_4

    .line 4833
    :cond_9
    :goto_6
    iput-short v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->scale:S

    .line 4834
    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v9, 0x2e

    const/4 v10, 0x2

    if-ne v4, v9, :cond_d

    .line 4835
    iput-byte v10, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    .line 4836
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v9, v4, 0x1

    iput v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v4, v2, v4

    int-to-char v4, v4

    iput-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4837
    :goto_7
    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-lt v4, v12, :cond_d

    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v4, v11, :cond_d

    .line 4839
    iget-short v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->scale:S

    add-int/2addr v4, v6

    int-to-short v4, v4

    iput-short v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->scale:S

    if-nez v8, :cond_b

    mul-long v19, v13, v17

    .line 4841
    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    sub-int/2addr v4, v12

    int-to-long v10, v4

    add-long v19, v19, v10

    cmp-long v4, v19, v13

    if-gez v4, :cond_a

    move v8, v6

    goto :goto_8

    :cond_a
    move-wide/from16 v13, v19

    .line 4849
    :cond_b
    :goto_8
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v10, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v4, v10, :cond_c

    .line 4850
    iput-char v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4851
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v4, v6

    iput v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    move v15, v6

    goto :goto_9

    .line 4854
    :cond_c
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v10, v4, 0x1

    iput v10, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v4, v2, v4

    int-to-char v4, v4

    iput-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v15, v6

    const/4 v10, 0x2

    const/16 v11, 0x39

    goto :goto_7

    .line 4859
    :cond_d
    :goto_9
    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v10, 0x65

    if-eq v4, v10, :cond_f

    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v11, 0x45

    if-ne v4, v11, :cond_e

    goto :goto_a

    :cond_e
    move v4, v0

    goto/16 :goto_d

    .line 4861
    :cond_f
    :goto_a
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v4, 0x1

    iput v11, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v4, v2, v4

    int-to-char v4, v4

    iput-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4863
    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v11, 0x2d

    if-ne v4, v11, :cond_10

    .line 4865
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v4, 0x1

    iput v11, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v4, v2, v4

    int-to-char v4, v4

    iput-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v4, v0

    move v11, v6

    goto :goto_b

    .line 4866
    :cond_10
    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v11, 0x2b

    if-ne v4, v11, :cond_11

    .line 4867
    iget v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v4, 0x1

    iput v11, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v4, v2, v4

    int-to-char v4, v4

    iput-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :cond_11
    move v4, v0

    move v11, v4

    .line 4870
    :goto_b
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-lt v0, v12, :cond_14

    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v9, 0x39

    if-gt v0, v9, :cond_14

    .line 4872
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    sub-int/2addr v0, v12

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v0

    const/16 v0, 0x3ff

    if-gt v4, v0, :cond_13

    .line 4878
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v15, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v0, v15, :cond_12

    .line 4879
    iput-char v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4880
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v0, v6

    iput v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    move v15, v6

    goto :goto_c

    .line 4883
    :cond_12
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v15, v0, 0x1

    iput v15, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    int-to-char v0, v0

    iput-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v15, v6

    goto :goto_b

    .line 4875
    :cond_13
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "too large exp value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_c
    if-eqz v11, :cond_15

    neg-int v4, v4

    :cond_15
    int-to-short v0, v4

    .line 4890
    iput-short v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->exponent:S

    const/4 v0, 0x2

    .line 4891
    iput-byte v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    .line 4894
    :goto_d
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    if-ne v0, v7, :cond_20

    .line 4895
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v9, 0x6e

    const/16 v11, 0x75

    if-ne v0, v9, :cond_18

    .line 4896
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v9, v0, 0x1

    iput v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    if-ne v0, v11, :cond_20

    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v9, v0, 0x1

    iput v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    const/16 v9, 0x6c

    if-ne v0, v9, :cond_20

    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v10, v0, 0x1

    iput v10, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    if-ne v0, v9, :cond_20

    .line 4901
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v9, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v11, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-nez v0, :cond_17

    .line 4904
    iput-boolean v6, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    .line 4906
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v0, v9, :cond_16

    .line 4907
    iput-char v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4908
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v0, v6

    iput v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    goto/16 :goto_f

    .line 4910
    :cond_16
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v9, v0, 0x1

    iput v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    int-to-char v0, v0

    iput-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto/16 :goto_f

    .line 4902
    :cond_17
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "long value not support input null"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4913
    :cond_18
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v9, 0x74

    if-ne v0, v9, :cond_1a

    .line 4914
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v9, v0, 0x1

    iput v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    const/16 v9, 0x72

    if-ne v0, v9, :cond_20

    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v9, v0, 0x1

    iput v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    if-ne v0, v11, :cond_20

    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v9, v0, 0x1

    iput v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    if-ne v0, v10, :cond_20

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4921
    iget v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v10, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v9, v10, :cond_19

    .line 4922
    iput-char v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4923
    iget v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v9, v6

    iput v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    goto :goto_e

    .line 4925
    :cond_19
    iget v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v9, v2, v9

    int-to-char v9, v9

    iput-char v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :goto_e
    move/from16 v16, v0

    move v0, v6

    move v15, v0

    goto/16 :goto_11

    .line 4928
    :cond_1a
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v9, 0x66

    if-ne v0, v9, :cond_1c

    .line 4929
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v0, v0, 0x4

    iget v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-gt v0, v9, :cond_20

    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v9, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v11, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-long v11, v11

    add-long/2addr v9, v11

    invoke-virtual {v0, v2, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    sget v9, Lcom/alibaba/fastjson2/util/IOUtils;->ALSE:I

    if-ne v0, v9, :cond_20

    .line 4931
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 4934
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v0, v9, :cond_1b

    .line 4935
    iput-char v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_f

    .line 4937
    :cond_1b
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v9, v0, 0x1

    iput v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    int-to-char v0, v0

    iput-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_f

    .line 4940
    :cond_1c
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v9, 0x7b

    if-ne v0, v9, :cond_1e

    if-nez v3, :cond_1e

    .line 4942
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readObject()Ljava/util/Map;

    move-result-object v0

    .line 4943
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4947
    iput-boolean v6, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    :goto_f
    move v0, v6

    move v15, v0

    goto :goto_10

    .line 4944
    :cond_1d
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4948
    :cond_1e
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v9, 0x5b

    if-ne v0, v9, :cond_20

    if-nez v3, :cond_20

    .line 4950
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readArray()Ljava/util/List;

    move-result-object v0

    .line 4951
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4955
    iput-boolean v6, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    goto :goto_f

    .line 4952
    :cond_1f
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/4 v0, 0x0

    :goto_10
    const/16 v16, 0x0

    .line 4959
    :goto_11
    iget v9, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    sub-int/2addr v9, v7

    const/4 v10, 0x0

    if-eqz v3, :cond_23

    .line 4963
    iget-char v11, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v11, v3, :cond_21

    .line 4965
    iget v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    sub-int/2addr v8, v6

    iput v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 4966
    iput-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4967
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readString()Ljava/lang/String;

    move-result-object v10

    move v8, v6

    .line 4970
    :cond_21
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v11, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v3, v11, :cond_22

    .line 4971
    iput-char v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_12

    .line 4973
    :cond_22
    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v3, 0x1

    iput v11, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v3, v2, v3

    int-to-char v3, v3

    iput-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :cond_23
    :goto_12
    if-nez v0, :cond_34

    if-nez v8, :cond_2a

    .line 4979
    iget-short v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->scale:S

    sub-int/2addr v3, v4

    if-nez v3, :cond_25

    long-to-float v0, v13

    .line 4982
    iget-boolean v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->negative:Z

    if-eqz v4, :cond_24

    neg-float v0, v0

    :cond_24
    move/from16 v16, v0

    move v0, v6

    goto :goto_14

    :cond_25
    long-to-float v4, v13

    float-to-long v11, v4

    cmp-long v8, v11, v13

    if-nez v8, :cond_28

    if-lez v3, :cond_27

    .line 4987
    sget-object v8, Lcom/alibaba/fastjson2/JSONFactory;->FLOAT_10_POW:[F

    array-length v8, v8

    if-ge v3, v8, :cond_27

    .line 4988
    sget-object v8, Lcom/alibaba/fastjson2/JSONFactory;->FLOAT_10_POW:[F

    aget v8, v8, v3

    div-float/2addr v4, v8

    .line 4989
    iget-boolean v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->negative:Z

    if-eqz v8, :cond_26

    :goto_13
    neg-float v4, v4

    :cond_26
    move/from16 v16, v4

    goto :goto_14

    :cond_27
    if-gez v3, :cond_28

    .line 4992
    sget-object v8, Lcom/alibaba/fastjson2/JSONFactory;->FLOAT_10_POW:[F

    array-length v8, v8

    neg-int v8, v8

    if-le v3, v8, :cond_28

    .line 4993
    sget-object v8, Lcom/alibaba/fastjson2/JSONFactory;->FLOAT_10_POW:[F

    neg-int v11, v3

    aget v8, v8, v11

    mul-float/2addr v4, v8

    .line 4994
    iget-boolean v8, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->negative:Z

    if-eqz v8, :cond_26

    goto :goto_13

    :cond_28
    :goto_14
    if-nez v0, :cond_2a

    const/16 v4, -0x80

    if-le v3, v4, :cond_2a

    const/16 v4, 0x80

    if-ge v3, v4, :cond_2a

    .line 5001
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->negative:Z

    if-eqz v0, :cond_29

    const/4 v0, -0x1

    goto :goto_15

    :cond_29
    move v0, v6

    :goto_15
    invoke-static {v0, v13, v14, v3}, Lcom/alibaba/fastjson2/util/TypeUtils;->floatValue(IJI)F

    move-result v16

    move v0, v6

    :cond_2a
    if-nez v0, :cond_2c

    if-eqz v10, :cond_2b

    .line 5009
    :try_start_0
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_16

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 5011
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2b
    sub-int/2addr v7, v6

    .line 5014
    invoke-static {v2, v7, v9}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseFloat([BII)F

    move-result v0

    :goto_16
    move/from16 v16, v0

    .line 5018
    :cond_2c
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v3, 0x44

    const/16 v4, 0x42

    const/16 v7, 0x4c

    if-eq v0, v7, :cond_2d

    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v8, 0x46

    if-eq v0, v8, :cond_2d

    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v0, v3, :cond_2d

    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v0, v4, :cond_2d

    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v8, 0x53

    if-ne v0, v8, :cond_34

    .line 5019
    :cond_2d
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v0, v4, :cond_32

    if-eq v0, v3, :cond_31

    const/16 v3, 0x46

    if-eq v0, v3, :cond_30

    if-eq v0, v7, :cond_2f

    const/16 v3, 0x53

    if-eq v0, v3, :cond_2e

    goto :goto_17

    :cond_2e
    const/16 v0, 0xa

    .line 5024
    iput-byte v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_17

    :cond_2f
    const/16 v0, 0xb

    .line 5027
    iput-byte v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_17

    :cond_30
    const/16 v0, 0xc

    .line 5030
    iput-byte v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_17

    :cond_31
    const/16 v0, 0xd

    .line 5033
    iput-byte v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_17

    :cond_32
    const/16 v0, 0x9

    .line 5021
    iput-byte v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    .line 5038
    :goto_17
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v0, v3, :cond_33

    .line 5039
    iput-char v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_18

    .line 5041
    :cond_33
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v0, 0x1

    iput v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    int-to-char v0, v0

    iput-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 5046
    :cond_34
    :goto_18
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const-wide v3, 0x100003700L

    const-wide/16 v7, 0x1

    const/16 v9, 0x20

    if-gt v0, v9, :cond_36

    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v10, v7, v0

    and-long/2addr v10, v3

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-eqz v0, :cond_36

    .line 5047
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v0, v3, :cond_35

    .line 5048
    iput-char v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_18

    .line 5050
    :cond_35
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v0, 0x1

    iput v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    int-to-char v0, v0

    iput-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_18

    .line 5054
    :cond_36
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v10, 0x2c

    if-ne v0, v10, :cond_37

    move v0, v6

    goto :goto_19

    :cond_37
    const/4 v0, 0x0

    :goto_19
    iput-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v0, :cond_3a

    .line 5056
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v6, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v0, v6, :cond_38

    .line 5057
    iput-char v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1b

    .line 5059
    :cond_38
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v6, v0, 0x1

    iput v6, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    int-to-char v0, v0

    iput-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 5060
    :goto_1a
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v0, v9, :cond_3a

    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v10, v7, v0

    and-long/2addr v10, v3

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-eqz v0, :cond_3a

    .line 5061
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v6, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v0, v6, :cond_39

    .line 5062
    iput-char v5, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1a

    .line 5064
    :cond_39
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v6, v0, 0x1

    iput v6, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v2, v0

    int-to-char v0, v0

    iput-char v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1a

    :cond_3a
    :goto_1b
    if-eqz v15, :cond_3b

    return v16

    .line 5073
    :cond_3b
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "illegal input error"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readHex()[B
    .locals 17

    move-object/from16 v0, p0

    .line 8455
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x78

    if-ne v1, v2, :cond_0

    .line 8456
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 8458
    :cond_0
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 8459
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 8460
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    const/16 v4, 0x27

    const-string v5, "illegal state. "

    if-eq v1, v4, :cond_2

    const/16 v4, 0x22

    if-ne v1, v4, :cond_1

    goto :goto_0

    .line 8463
    :cond_1
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    add-int/lit8 v4, v2, 0x1

    :goto_1
    add-int/lit8 v6, v4, 0x1

    .line 8469
    aget-byte v4, v3, v4

    int-to-char v4, v4

    const/16 v7, 0x39

    const/16 v8, 0x30

    if-lt v4, v8, :cond_3

    if-le v4, v7, :cond_4

    :cond_3
    const/16 v9, 0x41

    if-lt v4, v9, :cond_5

    const/16 v9, 0x46

    if-gt v4, v9, :cond_5

    :cond_4
    move v4, v6

    goto :goto_1

    :cond_5
    if-ne v4, v1, :cond_16

    add-int/lit8 v1, v6, 0x1

    .line 8473
    aget-byte v4, v3, v6

    sub-int v6, v1, v2

    add-int/lit8 v6, v6, -0x2

    const/4 v9, 0x0

    if-nez v6, :cond_6

    new-array v1, v9, [B

    return-object v1

    .line 8485
    :cond_6
    rem-int/lit8 v10, v6, 0x2

    if-nez v10, :cond_15

    .line 8489
    div-int/lit8 v6, v6, 0x2

    new-array v5, v6, [B

    :goto_2
    const/4 v10, 0x1

    if-ge v9, v6, :cond_9

    .line 8491
    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    mul-int/lit8 v12, v9, 0x2

    add-int/2addr v12, v2

    aget-byte v13, v11, v12

    add-int/2addr v12, v10

    .line 8492
    aget-byte v10, v11, v12

    const/16 v11, 0x37

    if-gt v13, v7, :cond_7

    move v12, v8

    goto :goto_3

    :cond_7
    move v12, v11

    :goto_3
    sub-int/2addr v13, v12

    if-gt v10, v7, :cond_8

    move v11, v8

    :cond_8
    sub-int/2addr v10, v11

    shl-int/lit8 v11, v13, 0x4

    or-int/2addr v10, v11

    int-to-byte v10, v10

    .line 8496
    aput-byte v10, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_9
    const/16 v2, 0x1a

    :goto_4
    const-wide/16 v6, 0x0

    const-wide v8, 0x100003700L

    const-wide/16 v11, 0x1

    const/16 v13, 0x20

    if-gt v4, v13, :cond_b

    shl-long v14, v11, v4

    and-long/2addr v14, v8

    cmp-long v14, v14, v6

    if-eqz v14, :cond_b

    .line 8500
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v4, :cond_a

    move v4, v2

    goto :goto_4

    :cond_a
    add-int/lit8 v4, v1, 0x1

    .line 8503
    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    move/from16 v16, v4

    move v4, v1

    move/from16 v1, v16

    goto :goto_4

    :cond_b
    const/16 v14, 0x2c

    if-ne v4, v14, :cond_14

    .line 8507
    iget v14, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v14, :cond_c

    goto/16 :goto_9

    .line 8513
    :cond_c
    iput-boolean v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    :goto_5
    if-eqz v4, :cond_12

    if-gt v4, v13, :cond_d

    shl-long v14, v11, v4

    and-long/2addr v14, v8

    cmp-long v14, v14, v6

    if-eqz v14, :cond_d

    goto/16 :goto_8

    :cond_d
    if-ltz v4, :cond_e

    add-int/2addr v1, v10

    goto :goto_7

    :cond_e
    and-int/lit16 v2, v4, 0xff

    shr-int/lit8 v4, v2, 0x4

    const-string v6, "malformed input around byte "

    const/16 v7, 0x80

    packed-switch v4, :pswitch_data_0

    .line 8556
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v4, v1, -0x2

    .line 8544
    aget-byte v4, v3, v4

    add-int/lit8 v8, v1, -0x1

    .line 8545
    aget-byte v3, v3, v8

    and-int/lit16 v9, v4, 0xc0

    if-ne v9, v7, :cond_f

    and-int/lit16 v9, v3, 0xc0

    if-ne v9, v7, :cond_f

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v2, v4

    goto :goto_6

    .line 8547
    :cond_f
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v4, v1, -0x1

    .line 8533
    aget-byte v3, v3, v4

    and-int/lit16 v4, v3, 0xc0

    if-ne v4, v7, :cond_11

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    :goto_6
    and-int/lit8 v3, v3, 0x3f

    or-int v4, v2, v3

    .line 8560
    :goto_7
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v1, v4

    .line 8561
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 8562
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_10

    .line 8563
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    :cond_10
    return-object v5

    .line 8535
    :cond_11
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    :goto_8
    add-int/lit8 v1, v1, 0x1

    .line 8516
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v4, :cond_13

    .line 8517
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 8518
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return-object v5

    .line 8521
    :cond_13
    aget-byte v4, v3, v1

    goto/16 :goto_5

    .line 8508
    :cond_14
    :goto_9
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v1, v4

    .line 8509
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return-object v5

    .line 8486
    :cond_15
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8476
    :cond_16
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readIfNull()Z
    .locals 13

    .line 6791
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/4 v1, 0x0

    const/16 v2, 0x6e

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v0, v2

    const/16 v2, 0x75

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aget-byte v0, v0, v2

    const/16 v2, 0x6c

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v4, v4, 0x2

    aget-byte v0, v0, v4

    if-ne v0, v2, :cond_7

    .line 6795
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v0, v0, 0x3

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/16 v4, 0x1a

    if-ne v0, v2, :cond_0

    .line 6796
    iput-char v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_0

    .line 6798
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v0, v0, v2

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6800
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 6805
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const-wide/16 v5, 0x0

    const-wide v7, 0x100003700L

    const-wide/16 v9, 0x1

    const/16 v2, 0x20

    if-gt v0, v2, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v11, v9, v0

    and-long/2addr v11, v7

    cmp-long v0, v11, v5

    if-eqz v0, :cond_2

    .line 6806
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v0, v2, :cond_1

    .line 6807
    iput-char v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1

    .line 6809
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v0, v2

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1

    .line 6812
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v11, 0x2c

    if-ne v0, v11, :cond_3

    move v1, v3

    :cond_3
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v1, :cond_6

    .line 6813
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v0, v1, :cond_4

    move v0, v4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v1, 0x1

    iput v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v0, v1

    int-to-char v0, v0

    :goto_2
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6815
    :goto_3
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v0, v2, :cond_6

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v0, v9, v0

    and-long/2addr v0, v7

    cmp-long v0, v0, v5

    if-eqz v0, :cond_6

    .line 6816
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v0, v1, :cond_5

    .line 6817
    iput-char v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_3

    .line 6819
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v1, 0x1

    iput v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v0, v1

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_3

    :cond_6
    return v3

    :cond_7
    return v1
.end method

.method public final readInt32()Ljava/lang/Integer;
    .locals 16

    move-object/from16 v0, p0

    .line 4025
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 4026
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4031
    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide v7, 0x100003700L

    const-wide/16 v9, 0x1

    const/16 v11, 0x20

    const/16 v13, 0x1a

    const/16 v14, 0x22

    if-eq v3, v14, :cond_1

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v14, 0x27

    if-ne v3, v14, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_3

    .line 4032
    :cond_1
    :goto_0
    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4033
    iget-object v14, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v15, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v12, v15, 0x1

    iput v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v12, v14, v15

    int-to-char v12, v12

    iput-char v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4035
    iget-char v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v12, v3, :cond_5

    .line 4036
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v1, v2, :cond_2

    .line 4037
    iput-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_2

    .line 4039
    :cond_2
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4040
    :goto_1
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v1, v11, :cond_4

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v1, v9, v1

    and-long/2addr v1, v7

    cmp-long v1, v1, v5

    if-eqz v1, :cond_4

    .line 4041
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v2, :cond_3

    .line 4042
    iput-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1

    .line 4044
    :cond_3
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1

    .line 4048
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nextIfComma()Z

    :goto_2
    return-object v4

    .line 4054
    :cond_5
    :goto_3
    iget-char v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v14, 0x2d

    const/4 v15, 0x1

    if-ne v12, v14, :cond_6

    .line 4056
    iget-object v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v14, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v5, v14, 0x1

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v5, v12, v14

    int-to-char v5, v5

    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v5, v15

    goto :goto_4

    .line 4057
    :cond_6
    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_7

    .line 4058
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v12, v6, 0x1

    iput v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v5, v5, v6

    int-to-char v5, v5

    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :cond_7
    const/4 v5, 0x0

    :goto_4
    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 4062
    :goto_5
    iget-char v14, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v7, 0x30

    if-lt v14, v7, :cond_a

    iget-char v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v14, 0x39

    if-gt v8, v14, :cond_a

    mul-int/lit8 v8, v6, 0xa

    .line 4064
    iget-char v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    sub-int/2addr v12, v7

    add-int/2addr v8, v12

    if-ge v8, v6, :cond_8

    move v7, v15

    move v12, v7

    goto :goto_7

    .line 4071
    :cond_8
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v6, v7, :cond_9

    .line 4072
    iput-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4073
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v6, v15

    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    move v6, v8

    move v12, v15

    goto :goto_6

    .line 4076
    :cond_9
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v12, v7, 0x1

    iput v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v6, v6, v7

    int-to-char v6, v6

    iput-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v6, v8

    move v12, v15

    const-wide v7, 0x100003700L

    goto :goto_5

    :cond_a
    :goto_6
    const/4 v7, 0x0

    .line 4080
    :goto_7
    iget-char v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v14, 0x2e

    if-eq v8, v14, :cond_d

    iget-char v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v14, 0x65

    if-eq v8, v14, :cond_d

    iget-char v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v14, 0x45

    if-eq v8, v14, :cond_d

    iget-char v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v14, 0x74

    if-eq v8, v14, :cond_d

    iget-char v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v14, 0x66

    if-eq v8, v14, :cond_d

    iget-char v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v14, 0x6e

    if-eq v8, v14, :cond_d

    iget-char v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v14, 0x7b

    if-eq v8, v14, :cond_d

    iget-char v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v14, 0x5b

    if-eq v8, v14, :cond_d

    if-eqz v7, :cond_b

    goto :goto_8

    :cond_b
    if-eqz v3, :cond_c

    .line 4090
    iget-char v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v7, v3, :cond_c

    goto :goto_8

    :cond_c
    const/4 v7, 0x0

    goto :goto_9

    :cond_d
    :goto_8
    move v7, v15

    :goto_9
    if-eqz v7, :cond_f

    .line 4095
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 4096
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4097
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readNumber0()V

    .line 4098
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    if-eqz v1, :cond_e

    return-object v4

    .line 4101
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->getInt32Value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_f
    if-eqz v3, :cond_11

    .line 4105
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v2, :cond_10

    .line 4106
    iput-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_a

    .line 4108
    :cond_10
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4112
    :cond_11
    :goto_a
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x53

    const/16 v3, 0x46

    const/16 v4, 0x44

    const/16 v7, 0x42

    const/16 v8, 0x4c

    if-eq v1, v8, :cond_12

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v1, v3, :cond_12

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v1, v4, :cond_12

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v1, v7, :cond_12

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v1, v2, :cond_19

    .line 4113
    :cond_12
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v1, v7, :cond_17

    if-eq v1, v4, :cond_16

    if-eq v1, v3, :cond_15

    if-eq v1, v8, :cond_14

    if-eq v1, v2, :cond_13

    goto :goto_b

    :cond_13
    const/16 v1, 0xa

    .line 4118
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_b

    :cond_14
    const/16 v1, 0xb

    .line 4121
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_b

    :cond_15
    const/16 v1, 0xc

    .line 4124
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_b

    :cond_16
    const/16 v1, 0xd

    .line 4127
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_b

    :cond_17
    const/16 v1, 0x9

    .line 4115
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    .line 4132
    :goto_b
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v2, :cond_18

    .line 4133
    iput-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_c

    .line 4135
    :cond_18
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4139
    :cond_19
    :goto_c
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v1, v11, :cond_1b

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v1, v9, v1

    const-wide v3, 0x100003700L

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1b

    .line 4140
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v2, :cond_1a

    .line 4141
    iput-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_c

    .line 4143
    :cond_1a
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_c

    .line 4147
    :cond_1b
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_1c

    goto :goto_d

    :cond_1c
    const/4 v15, 0x0

    :goto_d
    iput-boolean v15, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v15, :cond_1f

    .line 4149
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v2, :cond_1d

    .line 4150
    iput-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_f

    .line 4152
    :cond_1d
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4153
    :goto_e
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v1, v11, :cond_1f

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v1, v9, v1

    const-wide v3, 0x100003700L

    and-long/2addr v1, v3

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-eqz v1, :cond_1f

    .line 4154
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v2, :cond_1e

    .line 4155
    iput-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_e

    .line 4157
    :cond_1e
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v14, v2, 0x1

    iput v14, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_e

    :cond_1f
    :goto_f
    if-eqz v12, :cond_21

    if-eqz v5, :cond_20

    neg-int v6, v6

    .line 4164
    :cond_20
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 4166
    :cond_21
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "illegal input error"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final readInt32Value()I
    .locals 19

    move-object/from16 v0, p0

    .line 3892
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 3893
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 3894
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    const/4 v4, 0x0

    const/16 v5, 0x22

    if-eq v2, v5, :cond_1

    const/16 v5, 0x27

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    .line 3900
    :cond_1
    :goto_0
    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 3901
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v6, v3, v6

    int-to-char v6, v6

    iput-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 3904
    :goto_1
    iget-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v7, 0x2d

    const/4 v8, 0x1

    if-ne v6, v7, :cond_2

    .line 3906
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v6, v3, v6

    int-to-char v6, v6

    iput-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v6, v8

    goto :goto_2

    .line 3907
    :cond_2
    iget-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_3

    .line 3908
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v6, v3, v6

    int-to-char v6, v6

    iput-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :cond_3
    move v6, v4

    :goto_2
    move v7, v4

    move v9, v7

    .line 3912
    :goto_3
    iget-char v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v11, 0x30

    const/16 v12, 0x1a

    if-lt v10, v11, :cond_6

    iget-char v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v13, 0x39

    if-gt v10, v13, :cond_6

    mul-int/lit8 v9, v7, 0xa

    .line 3914
    iget-char v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    sub-int/2addr v10, v11

    add-int/2addr v9, v10

    if-ge v9, v7, :cond_4

    move v9, v8

    move v10, v9

    goto :goto_4

    .line 3921
    :cond_4
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v7, v10, :cond_5

    .line 3922
    iput-char v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v10, v4

    move v7, v9

    move v9, v8

    goto :goto_4

    .line 3925
    :cond_5
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v10, v7, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v7, v3, v7

    int-to-char v7, v7

    iput-char v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v7, v9

    move v9, v8

    goto :goto_3

    :cond_6
    move v10, v4

    .line 3929
    :goto_4
    iget-char v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v13, 0x2e

    if-eq v11, v13, :cond_9

    iget-char v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v13, 0x65

    if-eq v11, v13, :cond_9

    iget-char v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v13, 0x45

    if-eq v11, v13, :cond_9

    iget-char v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v13, 0x74

    if-eq v11, v13, :cond_9

    iget-char v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v13, 0x66

    if-eq v11, v13, :cond_9

    iget-char v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v13, 0x6e

    if-eq v11, v13, :cond_9

    iget-char v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v13, 0x7b

    if-eq v11, v13, :cond_9

    iget-char v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v13, 0x5b

    if-eq v11, v13, :cond_9

    if-eqz v10, :cond_7

    goto :goto_5

    :cond_7
    if-eqz v5, :cond_8

    .line 3939
    iget-char v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v10, v5, :cond_8

    goto :goto_5

    :cond_8
    move v10, v4

    goto :goto_6

    :cond_9
    :goto_5
    move v10, v8

    :goto_6
    if-eqz v10, :cond_b

    .line 3944
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 3945
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 3946
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readNumber0()V

    .line 3947
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    if-ne v1, v8, :cond_a

    .line 3948
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    .line 3950
    :try_start_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValueExact()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 3952
    :catch_0
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "int overflow, value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3955
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->getInt32Value()I

    move-result v1

    return v1

    :cond_b
    if-eqz v5, :cond_f

    add-int/2addr v1, v8

    .line 3960
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    if-ne v1, v2, :cond_c

    move v1, v8

    goto :goto_7

    :cond_c
    move v1, v4

    :goto_7
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    .line 3961
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    if-eqz v1, :cond_d

    move v9, v8

    .line 3964
    :cond_d
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v1, v2, :cond_e

    move v1, v12

    goto :goto_8

    :cond_e
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v3, v1

    int-to-char v1, v1

    :goto_8
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 3967
    :cond_f
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x53

    const/16 v5, 0x46

    const/16 v10, 0x44

    const/16 v11, 0x42

    const/16 v13, 0x4c

    if-eq v1, v13, :cond_10

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v1, v5, :cond_10

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v1, v10, :cond_10

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v1, v11, :cond_10

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v1, v2, :cond_17

    .line 3968
    :cond_10
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v1, v11, :cond_15

    if-eq v1, v10, :cond_14

    if-eq v1, v5, :cond_13

    if-eq v1, v13, :cond_12

    if-eq v1, v2, :cond_11

    goto :goto_9

    :cond_11
    const/16 v1, 0xa

    .line 3973
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_9

    :cond_12
    const/16 v1, 0xb

    .line 3976
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_9

    :cond_13
    const/16 v1, 0xc

    .line 3979
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_9

    :cond_14
    const/16 v1, 0xd

    .line 3982
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_9

    :cond_15
    const/16 v1, 0x9

    .line 3970
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    .line 3987
    :goto_9
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v2, :cond_16

    .line 3988
    iput-char v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_a

    .line 3990
    :cond_16
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v3, v1

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 3994
    :cond_17
    :goto_a
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const-wide/16 v10, 0x0

    const-wide v13, 0x100003700L

    const-wide/16 v15, 0x1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_19

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v17, v15, v1

    and-long v17, v17, v13

    cmp-long v1, v17, v10

    if-eqz v1, :cond_19

    .line 3995
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v2, :cond_18

    .line 3996
    iput-char v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_a

    .line 3998
    :cond_18
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v3, v1

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_a

    .line 4002
    :cond_19
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v5, 0x2c

    if-ne v1, v5, :cond_1a

    move v4, v8

    :cond_1a
    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v4, :cond_1d

    .line 4003
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v1, v4, :cond_1b

    move v1, v12

    goto :goto_b

    :cond_1b
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v4, v1, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v3, v1

    int-to-char v1, v1

    :goto_b
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4005
    :goto_c
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v1, v2, :cond_1d

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v4, v15, v1

    and-long/2addr v4, v13

    cmp-long v1, v4, v10

    if-eqz v1, :cond_1d

    .line 4006
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v4, :cond_1c

    .line 4007
    iput-char v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_c

    .line 4009
    :cond_1c
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v4, v1, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v3, v1

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_c

    :cond_1d
    if-eqz v9, :cond_1f

    if-eqz v6, :cond_1e

    neg-int v7, v7

    :cond_1e
    return v7

    .line 4017
    :cond_1f
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "illegal input error"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final readInt64()Ljava/lang/Long;
    .locals 16

    move-object/from16 v0, p0

    .line 4307
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 4308
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4313
    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/4 v4, 0x0

    const-wide v5, 0x100003700L

    const-wide/16 v7, 0x1

    const/16 v9, 0x20

    const-wide/16 v10, 0x0

    const/16 v13, 0x1a

    const/16 v14, 0x22

    if-eq v3, v14, :cond_1

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v14, 0x27

    if-ne v3, v14, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    .line 4314
    :cond_1
    :goto_0
    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4315
    iget-object v14, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v15, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v12, v15, 0x1

    iput v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v12, v14, v15

    int-to-char v12, v12

    iput-char v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4317
    iget-char v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v12, v3, :cond_5

    .line 4318
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v1, v2, :cond_2

    .line 4319
    iput-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1

    .line 4321
    :cond_2
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4324
    :goto_1
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v1, v9, :cond_4

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v1, v7, v1

    and-long/2addr v1, v5

    cmp-long v1, v1, v10

    if-eqz v1, :cond_4

    .line 4325
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v2, :cond_3

    .line 4326
    iput-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1

    .line 4328
    :cond_3
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1

    .line 4332
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nextIfComma()Z

    return-object v4

    .line 4337
    :cond_5
    :goto_2
    iget-char v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v14, 0x2d

    if-ne v12, v14, :cond_8

    .line 4339
    iget-object v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v14, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v12, v12, v14

    int-to-char v12, v12

    iput-char v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4341
    iget-char v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v12, v3, :cond_7

    .line 4342
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v1, v2, :cond_6

    .line 4343
    iput-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_3

    .line 4345
    :cond_6
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4347
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nextIfComma()Z

    return-object v4

    :cond_7
    const/4 v4, 0x1

    goto :goto_4

    .line 4350
    :cond_8
    iget-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v12, 0x2b

    if-ne v4, v12, :cond_9

    .line 4351
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v14, v12, 0x1

    iput v14, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v4, v4, v12

    int-to-char v4, v4

    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :cond_9
    const/4 v4, 0x0

    :goto_4
    move-wide v14, v10

    const/4 v12, 0x0

    .line 4355
    :goto_5
    iget-char v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v11, 0x30

    if-lt v10, v11, :cond_c

    iget-char v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v5, 0x39

    if-gt v10, v5, :cond_c

    const-wide/16 v5, 0xa

    mul-long/2addr v5, v14

    .line 4357
    iget-char v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    sub-int/2addr v10, v11

    int-to-long v10, v10

    add-long/2addr v5, v10

    cmp-long v10, v5, v14

    if-gez v10, :cond_a

    const/4 v5, 0x1

    :goto_6
    const/4 v12, 0x1

    goto :goto_7

    .line 4365
    :cond_a
    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v10, v11, :cond_b

    .line 4366
    iput-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move-wide v14, v5

    const/4 v5, 0x0

    goto :goto_6

    .line 4369
    :cond_b
    iget-object v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v10, v10, v11

    int-to-char v10, v10

    iput-char v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move-wide v14, v5

    const-wide v5, 0x100003700L

    const/4 v12, 0x1

    goto :goto_5

    :cond_c
    const/4 v5, 0x0

    .line 4374
    :goto_7
    iget-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v10, 0x2e

    if-eq v6, v10, :cond_f

    iget-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v10, 0x65

    if-eq v6, v10, :cond_f

    iget-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v10, 0x45

    if-eq v6, v10, :cond_f

    iget-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v10, 0x74

    if-eq v6, v10, :cond_f

    iget-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v10, 0x66

    if-eq v6, v10, :cond_f

    iget-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v10, 0x6e

    if-eq v6, v10, :cond_f

    iget-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v10, 0x7b

    if-eq v6, v10, :cond_f

    iget-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v10, 0x5b

    if-eq v6, v10, :cond_f

    if-eqz v5, :cond_d

    goto :goto_8

    :cond_d
    if-eqz v3, :cond_e

    .line 4384
    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v5, v3, :cond_e

    goto :goto_8

    :cond_e
    const/4 v5, 0x0

    goto :goto_9

    :cond_f
    :goto_8
    const/4 v5, 0x1

    :goto_9
    if-eqz v5, :cond_10

    .line 4389
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 4390
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4391
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readNumber0()V

    .line 4392
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->getInt64()Ljava/lang/Long;

    move-result-object v1

    return-object v1

    :cond_10
    if-eqz v3, :cond_12

    .line 4396
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v2, :cond_11

    .line 4397
    iput-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_a

    .line 4399
    :cond_11
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4403
    :cond_12
    :goto_a
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x53

    const/16 v3, 0x46

    const/16 v5, 0x44

    const/16 v6, 0x42

    const/16 v10, 0x4c

    if-eq v1, v10, :cond_13

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v1, v3, :cond_13

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v1, v5, :cond_13

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v1, v6, :cond_13

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v1, v2, :cond_1a

    .line 4404
    :cond_13
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v1, v6, :cond_18

    if-eq v1, v5, :cond_17

    if-eq v1, v3, :cond_16

    if-eq v1, v10, :cond_15

    if-eq v1, v2, :cond_14

    goto :goto_b

    :cond_14
    const/16 v1, 0xa

    .line 4409
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_b

    :cond_15
    const/16 v1, 0xb

    .line 4412
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_b

    :cond_16
    const/16 v1, 0xc

    .line 4415
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_b

    :cond_17
    const/16 v1, 0xd

    .line 4418
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_b

    :cond_18
    const/16 v1, 0x9

    .line 4406
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    .line 4423
    :goto_b
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v2, :cond_19

    .line 4424
    iput-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_c

    .line 4426
    :cond_19
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4430
    :cond_1a
    :goto_c
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v1, v9, :cond_1c

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v1, v7, v1

    const-wide v5, 0x100003700L

    and-long/2addr v1, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_1c

    .line 4431
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v2, :cond_1b

    .line 4432
    iput-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_c

    .line 4434
    :cond_1b
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_c

    .line 4438
    :cond_1c
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_1d

    const/4 v1, 0x1

    goto :goto_d

    :cond_1d
    const/4 v1, 0x0

    :goto_d
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v1, :cond_20

    .line 4440
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v2, :cond_1e

    .line 4441
    iput-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_f

    .line 4443
    :cond_1e
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4444
    :goto_e
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v1, v9, :cond_20

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v1, v7, v1

    const-wide v5, 0x100003700L

    and-long/2addr v1, v5

    const-wide/16 v10, 0x0

    cmp-long v1, v1, v10

    if-eqz v1, :cond_20

    .line 4445
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v2, :cond_1f

    .line 4446
    iput-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_e

    .line 4448
    :cond_1f
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_e

    :cond_20
    :goto_f
    if-eqz v12, :cond_22

    if-eqz v4, :cond_21

    neg-long v14, v14

    .line 4455
    :cond_21
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 4457
    :cond_22
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "illegal input error"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final readInt64Value()J
    .locals 19

    move-object/from16 v0, p0

    .line 4174
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 4175
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4176
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 4181
    iget-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v6, 0x22

    if-eq v4, v6, :cond_1

    iget-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v6, 0x27

    if-ne v4, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 4182
    :cond_1
    :goto_0
    iget-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4183
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v6, v3, v6

    int-to-char v6, v6

    iput-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4186
    :goto_1
    iget-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v7, 0x2d

    const/4 v8, 0x1

    if-ne v6, v7, :cond_2

    .line 4188
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v6, v3, v6

    int-to-char v6, v6

    iput-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v6, v8

    goto :goto_2

    .line 4189
    :cond_2
    iget-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_3

    .line 4190
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v6, v3, v6

    int-to-char v6, v6

    iput-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :cond_3
    const/4 v6, 0x0

    :goto_2
    const-wide/16 v9, 0x0

    move-wide v11, v9

    const/4 v7, 0x0

    .line 4194
    :goto_3
    iget-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v14, 0x30

    const/16 v15, 0x1a

    if-lt v13, v14, :cond_6

    iget-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v5, 0x39

    if-gt v13, v5, :cond_6

    const-wide/16 v17, 0xa

    mul-long v17, v17, v11

    .line 4196
    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    sub-int/2addr v5, v14

    int-to-long v13, v5

    add-long v17, v17, v13

    cmp-long v5, v17, v11

    if-gez v5, :cond_4

    move v5, v8

    move v7, v5

    goto :goto_5

    .line 4203
    :cond_4
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v5, v7, :cond_5

    .line 4204
    iput-char v15, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v7, v8

    move-wide/from16 v11, v17

    goto :goto_4

    .line 4207
    :cond_5
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v7, v5, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v5, v3, v5

    int-to-char v5, v5

    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v7, v8

    move-wide/from16 v11, v17

    goto :goto_3

    :cond_6
    :goto_4
    const/4 v5, 0x0

    .line 4211
    :goto_5
    iget-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v14, 0x2e

    if-eq v13, v14, :cond_9

    iget-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v14, 0x65

    if-eq v13, v14, :cond_9

    iget-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v14, 0x45

    if-eq v13, v14, :cond_9

    iget-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v14, 0x74

    if-eq v13, v14, :cond_9

    iget-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v14, 0x66

    if-eq v13, v14, :cond_9

    iget-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v14, 0x6e

    if-eq v13, v14, :cond_9

    iget-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v14, 0x7b

    if-eq v13, v14, :cond_9

    iget-char v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v14, 0x5b

    if-eq v13, v14, :cond_9

    if-eqz v5, :cond_7

    goto :goto_6

    :cond_7
    if-eqz v4, :cond_8

    .line 4221
    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v5, v4, :cond_8

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    move v5, v8

    :goto_7
    if-eqz v5, :cond_b

    .line 4226
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 4227
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4228
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readNumber0()V

    .line 4229
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    if-ne v1, v8, :cond_a

    .line 4230
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    .line 4232
    :try_start_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValueExact()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 4234
    :catch_0
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "long overflow, value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4237
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->getInt64Value()J

    move-result-wide v1

    return-wide v1

    :cond_b
    if-eqz v4, :cond_f

    add-int/2addr v1, v8

    .line 4242
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    if-ne v1, v2, :cond_c

    move v1, v8

    goto :goto_8

    :cond_c
    const/4 v1, 0x0

    :goto_8
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    .line 4243
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    if-eqz v1, :cond_d

    move v7, v8

    .line 4246
    :cond_d
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v1, v2, :cond_e

    move v1, v15

    goto :goto_9

    :cond_e
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v3, v1

    int-to-char v1, v1

    :goto_9
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4249
    :cond_f
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x53

    const/16 v4, 0x46

    const/16 v5, 0x44

    const/16 v13, 0x42

    const/16 v14, 0x4c

    if-eq v1, v14, :cond_10

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v1, v4, :cond_10

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v1, v5, :cond_10

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v1, v13, :cond_10

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v1, v2, :cond_17

    .line 4250
    :cond_10
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v1, v13, :cond_15

    if-eq v1, v5, :cond_14

    if-eq v1, v4, :cond_13

    if-eq v1, v14, :cond_12

    if-eq v1, v2, :cond_11

    goto :goto_a

    :cond_11
    const/16 v1, 0xa

    .line 4255
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_a

    :cond_12
    const/16 v1, 0xb

    .line 4258
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_a

    :cond_13
    const/16 v1, 0xc

    .line 4261
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_a

    :cond_14
    const/16 v1, 0xd

    .line 4264
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_a

    :cond_15
    const/16 v1, 0x9

    .line 4252
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    .line 4269
    :goto_a
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v2, :cond_16

    .line 4270
    iput-char v15, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_b

    .line 4272
    :cond_16
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v3, v1

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4276
    :cond_17
    :goto_b
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const-wide v4, 0x100003700L

    const-wide/16 v13, 0x1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_19

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v17, v13, v1

    and-long v17, v17, v4

    cmp-long v1, v17, v9

    if-eqz v1, :cond_19

    .line 4277
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v2, :cond_18

    .line 4278
    iput-char v15, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_b

    .line 4280
    :cond_18
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v3, v1

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_b

    .line 4284
    :cond_19
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v8, 0x2c

    if-ne v1, v8, :cond_1a

    const/4 v1, 0x1

    goto :goto_c

    :cond_1a
    const/4 v1, 0x0

    :goto_c
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v1, :cond_1d

    .line 4285
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v1, v8, :cond_1b

    move v1, v15

    goto :goto_d

    :cond_1b
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v3, v1

    int-to-char v1, v1

    :goto_d
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 4287
    :goto_e
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v1, v2, :cond_1d

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v16, v13, v1

    and-long v16, v16, v4

    cmp-long v1, v16, v9

    if-eqz v1, :cond_1d

    .line 4288
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v8, :cond_1c

    .line 4289
    iput-char v15, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_e

    .line 4291
    :cond_1c
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v3, v1

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_e

    :cond_1d
    if-eqz v7, :cond_1f

    if-eqz v6, :cond_1e

    neg-long v11, v11

    :cond_1e
    return-wide v11

    .line 4299
    :cond_1f
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "illegal input error"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final readLocalDate()Ljava/time/LocalDate;
    .locals 11

    .line 7031
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 7032
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7033
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v3, 0x22

    if-eq v2, v3, :cond_0

    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v3, 0x27

    if-ne v2, v3, :cond_5

    .line 7034
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 7035
    iget-object v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->dateFormat:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmss19:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmssT19:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMdd8:Z

    if-nez v3, :cond_1

    iget-boolean v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->formatISO8601:Z

    if-eqz v2, :cond_5

    .line 7041
    :cond_1
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    add-int/lit8 v3, v1, 0xa

    .line 7043
    array-length v4, v0

    if-ge v3, v4, :cond_5

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v3, v4, :cond_5

    add-int/lit8 v4, v1, 0x4

    aget-byte v4, v0, v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_5

    add-int/lit8 v4, v1, 0x7

    aget-byte v4, v0, v4

    if-ne v4, v5, :cond_5

    aget-byte v3, v0, v3

    if-ne v3, v2, :cond_5

    .line 7049
    aget-byte v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    .line 7050
    aget-byte v3, v0, v3

    add-int/lit8 v4, v1, 0x2

    .line 7051
    aget-byte v4, v0, v4

    add-int/lit8 v5, v1, 0x3

    .line 7052
    aget-byte v5, v0, v5

    add-int/lit8 v6, v1, 0x5

    .line 7053
    aget-byte v6, v0, v6

    add-int/lit8 v7, v1, 0x6

    .line 7054
    aget-byte v7, v0, v7

    add-int/lit8 v8, v1, 0x8

    .line 7055
    aget-byte v8, v0, v8

    add-int/lit8 v9, v1, 0x9

    .line 7056
    aget-byte v0, v0, v9

    const/16 v9, 0x30

    if-lt v2, v9, :cond_5

    const/16 v10, 0x39

    if-gt v2, v10, :cond_5

    if-lt v3, v9, :cond_5

    if-gt v3, v10, :cond_5

    if-lt v4, v9, :cond_5

    if-gt v4, v10, :cond_5

    if-lt v5, v9, :cond_5

    if-gt v5, v10, :cond_5

    sub-int/2addr v2, v9

    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v3, v9

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    sub-int/2addr v4, v9

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v2, v4

    sub-int/2addr v5, v9

    add-int/2addr v2, v5

    if-lt v6, v9, :cond_5

    if-gt v6, v10, :cond_5

    if-lt v7, v9, :cond_5

    if-gt v7, v10, :cond_5

    sub-int/2addr v6, v9

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v7, v9

    add-int/2addr v6, v7

    if-lt v8, v9, :cond_5

    if-gt v8, v10, :cond_5

    if-lt v0, v9, :cond_5

    if-gt v0, v10, :cond_5

    sub-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v0, v9

    add-int/2addr v8, v0

    if-nez v2, :cond_2

    if-nez v6, :cond_2

    if-nez v8, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 7077
    :cond_2
    :try_start_0
    invoke-static {v2, v6, v8}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    add-int/lit8 v1, v1, 0xb

    .line 7083
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7084
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 7085
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v1, :cond_4

    .line 7086
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    .line 7080
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "read date error"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 7095
    :cond_5
    invoke-super {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public final readLocalDate10()Ljava/time/LocalDate;
    .locals 3

    .line 7404
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->isString()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7410
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate10([BI)Ljava/time/LocalDate;

    move-result-object v0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7418
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0xb

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7419
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 7420
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v1, :cond_2

    .line 7421
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    .line 7412
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "read date error"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 7405
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "localDate only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final readLocalDate11()Ljava/time/LocalDate;
    .locals 3

    .line 7428
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->isString()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7432
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate11([BI)Ljava/time/LocalDate;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7437
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0xb

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7438
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 7439
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v1, :cond_2

    .line 7440
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    :cond_2
    return-object v0

    .line 7429
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "localDate only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readLocalDate8()Ljava/time/LocalDate;
    .locals 3

    .line 7362
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->isString()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7368
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate8([BI)Ljava/time/LocalDate;

    move-result-object v0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7373
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x9

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7374
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 7375
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v1, :cond_1

    .line 7376
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 7370
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "read date error"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 7363
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "localDate only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readLocalDate9()Ljava/time/LocalDate;
    .locals 3

    .line 7383
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->isString()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7389
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate9([BI)Ljava/time/LocalDate;

    move-result-object v0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7394
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7395
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 7396
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v1, :cond_1

    .line 7397
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 7391
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "read date error"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 7384
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "localDate only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final readLocalDateTime12()Ljava/time/LocalDateTime;
    .locals 3

    .line 7606
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->isString()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7610
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime12([BI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7615
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7616
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 7617
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v1, :cond_2

    .line 7618
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    :cond_2
    return-object v0

    .line 7607
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final readLocalDateTime14()Ljava/time/LocalDateTime;
    .locals 3

    .line 7625
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->isString()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7629
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime14([BI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7634
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7635
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 7636
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v1, :cond_2

    .line 7637
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    :cond_2
    return-object v0

    .line 7626
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final readLocalDateTime16()Ljava/time/LocalDateTime;
    .locals 3

    .line 7644
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->isString()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7648
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime16([BI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7653
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x11

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7654
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 7655
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v1, :cond_2

    .line 7656
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    :cond_2
    return-object v0

    .line 7645
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final readLocalDateTime17()Ljava/time/LocalDateTime;
    .locals 3

    .line 7447
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->isString()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7451
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime17([BI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7456
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x12

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7457
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 7458
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v1, :cond_2

    .line 7459
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    :cond_2
    return-object v0

    .line 7448
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final readLocalDateTime18()Ljava/time/LocalDateTime;
    .locals 3

    .line 7663
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->isString()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7667
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime18([BI)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 7669
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x13

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7670
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 7671
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v1, :cond_1

    .line 7672
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    :cond_1
    return-object v0

    .line 7664
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final readLocalDateTime19()Ljava/time/LocalDateTime;
    .locals 3

    .line 7679
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->isString()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7683
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime19([BI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7688
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7689
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 7690
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v1, :cond_2

    .line 7691
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    :cond_2
    return-object v0

    .line 7680
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final readLocalDateTime20()Ljava/time/LocalDateTime;
    .locals 3

    .line 7698
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->isString()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7702
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime20([BI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7707
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x15

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7708
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 7709
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v1, :cond_2

    .line 7710
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    :cond_2
    return-object v0

    .line 7699
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final readLocalDateTimeX(I)Ljava/time/LocalDateTime;
    .locals 3

    .line 7743
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->isString()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7748
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v0, v0, v1

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    .line 7749
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime([BII)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 7750
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_0

    .line 7752
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTimeX([BII)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 7759
    :cond_1
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr p1, v2

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7760
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 7761
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x2c

    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v2, :cond_3

    .line 7762
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    :cond_3
    return-object v0

    .line 7744
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final readLocalTime10()Ljava/time/LocalTime;
    .locals 3

    .line 7526
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->isString()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7530
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime10([BI)Ljava/time/LocalTime;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7535
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0xb

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7536
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 7537
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v1, :cond_2

    .line 7538
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    :cond_2
    return-object v0

    .line 7527
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "localTime only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final readLocalTime11()Ljava/time/LocalTime;
    .locals 3

    .line 7546
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->isString()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7550
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime11([BI)Ljava/time/LocalTime;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7555
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0xc

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7556
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 7557
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v1, :cond_2

    .line 7558
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    :cond_2
    return-object v0

    .line 7547
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "localTime only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final readLocalTime12()Ljava/time/LocalTime;
    .locals 3

    .line 7566
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->isString()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7570
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime12([BI)Ljava/time/LocalTime;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7575
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7576
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 7577
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v1, :cond_2

    .line 7578
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    :cond_2
    return-object v0

    .line 7567
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "localTime only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final readLocalTime18()Ljava/time/LocalTime;
    .locals 3

    .line 7586
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->isString()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7590
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime18([BI)Ljava/time/LocalTime;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7595
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x13

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7596
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 7597
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v1, :cond_2

    .line 7598
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    :cond_2
    return-object v0

    .line 7587
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "localTime only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final readLocalTime5()Ljava/time/LocalTime;
    .locals 3

    .line 7466
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 7467
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "localTime only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7470
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime5([BI)Ljava/time/LocalTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 7475
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7476
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 7477
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v1, :cond_4

    .line 7478
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    :cond_4
    return-object v0
.end method

.method protected final readLocalTime8()Ljava/time/LocalTime;
    .locals 3

    .line 7486
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 7487
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "localTime only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7490
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime8([BI)Ljava/time/LocalTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 7495
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x9

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7496
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 7497
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v1, :cond_4

    .line 7498
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    :cond_4
    return-object v0
.end method

.method protected final readLocalTime9()Ljava/time/LocalTime;
    .locals 3

    .line 7506
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 7507
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "localTime only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7510
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime8([BI)Ljava/time/LocalTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 7515
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7516
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 7517
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v1, :cond_4

    .line 7518
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    :cond_4
    return-object v0
.end method

.method public final readMillis19()J
    .locals 6

    .line 7717
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 7719
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7722
    :cond_1
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x12

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/4 v3, 0x1

    if-lt v1, v2, :cond_2

    .line 7723
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    const-wide/16 v0, 0x0

    return-wide v0

    .line 7727
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v4, v4, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Ljava/time/ZoneId;

    invoke-static {v1, v2, v4}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis19([BILjava/time/ZoneId;)J

    move-result-wide v1

    .line 7729
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v5, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v5, v5, 0x13

    aget-byte v4, v4, v5

    if-ne v4, v0, :cond_5

    .line 7732
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7733
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 7734
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v4, 0x2c

    if-ne v0, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v3, :cond_4

    .line 7735
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    :cond_4
    return-wide v1

    .line 7730
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "illegal date input"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readNull()V
    .locals 14

    .line 6953
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 6954
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 6955
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6956
    aget-byte v2, v0, v1

    const/16 v3, 0x75

    if-ne v2, v3, :cond_7

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, v0, v2

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_7

    add-int/lit8 v2, v1, 0x2

    aget-byte v2, v0, v2

    if-ne v2, v3, :cond_7

    add-int/lit8 v2, v1, 0x3

    .line 6959
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/16 v4, 0x1a

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    .line 6962
    :cond_0
    aget-byte v2, v0, v2

    int-to-char v2, v2

    :goto_0
    add-int/lit8 v1, v1, 0x4

    :goto_1
    const-wide/16 v5, 0x0

    const-wide v7, 0x100003700L

    const-wide/16 v9, 0x1

    const/16 v3, 0x20

    if-gt v2, v3, :cond_2

    shl-long v11, v9, v2

    and-long/2addr v11, v7

    cmp-long v11, v11, v5

    if-eqz v11, :cond_2

    .line 6970
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 6973
    aget-byte v1, v0, v1

    int-to-char v1, v1

    move v13, v2

    move v2, v1

    move v1, v13

    goto :goto_1

    :cond_2
    const/16 v11, 0x2c

    if-ne v2, v11, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    .line 6976
    :goto_2
    iput-boolean v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v11, :cond_6

    .line 6977
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v2, :cond_4

    :goto_3
    move v2, v4

    goto :goto_5

    :cond_4
    add-int/lit8 v2, v1, 0x1

    .line 6980
    aget-byte v1, v0, v1

    :goto_4
    int-to-char v1, v1

    move v13, v2

    move v2, v1

    move v1, v13

    :goto_5
    if-gt v2, v3, :cond_6

    shl-long v11, v9, v2

    and-long/2addr v11, v7

    cmp-long v11, v11, v5

    if-eqz v11, :cond_6

    .line 6984
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v1, 0x1

    .line 6987
    aget-byte v1, v0, v1

    goto :goto_4

    .line 6991
    :cond_6
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6992
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    return-void

    .line 6966
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "json syntax error, not match null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readNullOrNewDate()Ljava/util/Date;
    .locals 14

    .line 6835
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const-wide/16 v2, 0x0

    const-wide v4, 0x100003700L

    const-wide/16 v6, 0x1

    const/16 v8, 0x20

    const/16 v9, 0x1a

    const/4 v10, 0x1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x75

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v1, v10

    aget-byte v0, v0, v1

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v11, 0x2

    aget-byte v0, v0, v11

    if-ne v0, v1, :cond_1

    .line 6839
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v0, v1, :cond_0

    .line 6840
    iput-char v9, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_0

    .line 6842
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6844
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    const/4 v0, 0x0

    goto/16 :goto_7

    .line 6845
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v0, v10

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v0, v1, :cond_14

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x65

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v11, v10

    aget-byte v0, v0, v11

    const/16 v11, 0x77

    if-ne v0, v11, :cond_14

    .line 6848
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v0, v0, 0x3

    iget v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v0, v11, :cond_2

    .line 6849
    iput-char v9, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1

    .line 6851
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v11, 0x2

    aget-byte v0, v0, v11

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6853
    :goto_1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 6855
    :goto_2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v0, v8, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v11, v6, v0

    and-long/2addr v11, v4

    cmp-long v0, v11, v2

    if-eqz v0, :cond_4

    .line 6856
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v0, v11, :cond_3

    .line 6857
    iput-char v9, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_2

    .line 6859
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v0, v11

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_2

    .line 6863
    :cond_4
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v0, v0, 0x4

    iget v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const-string v12, "json syntax error, not match new Date"

    if-ge v0, v11, :cond_13

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v11, 0x44

    if-ne v0, v11, :cond_13

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v0, v11

    const/16 v11, 0x61

    if-ne v0, v11, :cond_13

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v11, v10

    aget-byte v0, v0, v11

    const/16 v11, 0x74

    if-ne v0, v11, :cond_13

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v11, 0x2

    aget-byte v0, v0, v11

    if-ne v0, v1, :cond_13

    .line 6868
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v0, v1, :cond_5

    .line 6869
    iput-char v9, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_3

    .line 6871
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6873
    :goto_3
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 6878
    :goto_4
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v0, v8, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v0, v6, v0

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 6879
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v0, v1, :cond_6

    .line 6880
    iput-char v9, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_4

    .line 6882
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v1, 0x1

    iput v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v0, v1

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_4

    .line 6886
    :cond_7
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x28

    if-ne v0, v1, :cond_12

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v0, v1, :cond_12

    .line 6889
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v1, 0x1

    iput v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v0, v1

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6891
    :goto_5
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v0, v8, :cond_9

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v0, v6, v0

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 6892
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v0, v1, :cond_8

    .line 6893
    iput-char v9, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_5

    .line 6895
    :cond_8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v1, 0x1

    iput v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v0, v1

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_5

    .line 6899
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readInt64Value()J

    move-result-wide v0

    .line 6901
    iget-char v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v13, 0x29

    if-ne v11, v13, :cond_11

    .line 6904
    iget v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v12, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v11, v12, :cond_a

    .line 6905
    iput-char v9, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_6

    .line 6907
    :cond_a
    iget-object v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v12, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v11, v11, v12

    int-to-char v11, v11

    iput-char v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6910
    :goto_6
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object v0, v11

    .line 6915
    :goto_7
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v1, v8, :cond_c

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v11, v6, v1

    and-long/2addr v11, v4

    cmp-long v1, v11, v2

    if-eqz v1, :cond_c

    .line 6916
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v11, :cond_b

    .line 6917
    iput-char v9, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_7

    .line 6919
    :cond_b
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v11

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_7

    .line 6922
    :cond_c
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v11, 0x2c

    if-ne v1, v11, :cond_d

    goto :goto_8

    :cond_d
    const/4 v10, 0x0

    :goto_8
    iput-boolean v10, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v10, :cond_10

    .line 6923
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v10, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v1, v10, :cond_e

    move v1, v9

    goto :goto_9

    :cond_e
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v10, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v10

    int-to-char v1, v1

    :goto_9
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6925
    :goto_a
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v1, v8, :cond_10

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v10, v6, v1

    and-long/2addr v10, v4

    cmp-long v1, v10, v2

    if-eqz v1, :cond_10

    .line 6926
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v10, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v10, :cond_f

    .line 6927
    iput-char v9, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_a

    .line 6929
    :cond_f
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v10, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v10

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_a

    :cond_10
    return-object v0

    .line 6902
    :cond_11
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6887
    :cond_12
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6875
    :cond_13
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6912
    :cond_14
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json syntax error, not match null or new Date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readNumber(Lcom/alibaba/fastjson2/reader/ValueConsumer;Z)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 6587
    iput-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    .line 6588
    iput-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->boolValue:Z

    .line 6589
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag0:I

    .line 6590
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag1:I

    .line 6591
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag2:I

    .line 6592
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    .line 6593
    iput-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->negative:Z

    .line 6594
    iput-short v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->exponent:S

    .line 6595
    iput-short v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->scale:S

    .line 6598
    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v4, 0x22

    if-eq v3, v4, :cond_1

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v4, 0x27

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    .line 6599
    :cond_1
    :goto_0
    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6600
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v4, v4, v5

    int-to-char v4, v4

    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6602
    :goto_1
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 6604
    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v6, 0x2d

    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    .line 6605
    iput-boolean v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->negative:Z

    .line 6606
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v5, v5, v8

    int-to-char v5, v5

    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6610
    :cond_2
    iput-byte v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    move v5, v2

    move v8, v5

    .line 6611
    :goto_2
    iget-char v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v10, 0x39

    const/16 v11, 0x30

    if-lt v9, v11, :cond_5

    iget-char v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v9, v10, :cond_5

    if-nez v5, :cond_4

    .line 6614
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    mul-int/lit8 v8, v8, 0xa

    iget-char v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    sub-int/2addr v9, v11

    add-int/2addr v8, v9

    .line 6615
    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    if-ge v8, v9, :cond_3

    move v5, v7

    goto :goto_3

    .line 6618
    :cond_3
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    .line 6621
    :cond_4
    :goto_3
    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v8, v8, v9

    int-to-char v8, v8

    iput-char v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v8, v7

    goto :goto_2

    .line 6624
    :cond_5
    iget-char v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v12, 0x2e

    const/4 v13, 0x2

    if-ne v9, v12, :cond_8

    .line 6625
    iput-byte v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    .line 6626
    iget-object v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v14, v12, 0x1

    iput v14, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v9, v9, v12

    int-to-char v9, v9

    iput-char v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6627
    :goto_4
    iget-char v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-lt v9, v11, :cond_8

    iget-char v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v9, v10, :cond_8

    if-nez v5, :cond_7

    .line 6630
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    mul-int/lit8 v8, v8, 0xa

    iget-char v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    sub-int/2addr v9, v11

    add-int/2addr v8, v9

    .line 6631
    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    if-ge v8, v9, :cond_6

    move v5, v7

    goto :goto_5

    .line 6634
    :cond_6
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    .line 6638
    :cond_7
    :goto_5
    iget-short v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->scale:S

    add-int/2addr v8, v7

    int-to-short v8, v8

    iput-short v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->scale:S

    .line 6639
    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v12, v9, 0x1

    iput v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v8, v8, v9

    int-to-char v8, v8

    iput-char v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v8, v7

    goto :goto_4

    :cond_8
    if-eqz v5, :cond_a

    .line 6644
    iget-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->negative:Z

    if-eqz v5, :cond_9

    move v5, v4

    goto :goto_6

    :cond_9
    add-int/lit8 v5, v4, -0x1

    .line 6645
    :goto_6
    iget-object v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    sub-int/2addr v12, v7

    invoke-virtual {v0, v9, v5, v12}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bigInt([BII)V

    .line 6648
    :cond_a
    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v9, 0x65

    if-eq v5, v9, :cond_b

    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v12, 0x45

    if-ne v5, v12, :cond_11

    .line 6651
    :cond_b
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v14, v12, 0x1

    iput v14, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v5, v5, v12

    int-to-char v5, v5

    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6653
    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v5, v6, :cond_c

    .line 6655
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v12, v6, 0x1

    iput v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v5, v5, v6

    int-to-char v5, v5

    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v6, v2

    move v5, v7

    goto :goto_7

    .line 6656
    :cond_c
    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_d

    .line 6657
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v12, v6, 0x1

    iput v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v5, v5, v6

    int-to-char v5, v5

    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :cond_d
    move v5, v2

    move v6, v5

    .line 6660
    :goto_7
    iget-char v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-lt v12, v11, :cond_f

    iget-char v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v12, v10, :cond_f

    .line 6662
    iget-char v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    sub-int/2addr v8, v11

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v6, v8

    const/16 v8, 0x3ff

    if-gt v6, v8, :cond_e

    .line 6667
    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v14, v12, 0x1

    iput v14, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v8, v8, v12

    int-to-char v8, v8

    iput-char v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v8, v7

    goto :goto_7

    .line 6665
    :cond_e
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "too large exp value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    if-eqz v5, :cond_10

    neg-int v6, v6

    :cond_10
    int-to-short v5, v6

    .line 6674
    iput-short v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->exponent:S

    .line 6675
    iput-byte v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    .line 6678
    :cond_11
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    sub-int/2addr v5, v4

    .line 6680
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    if-ne v6, v4, :cond_16

    .line 6681
    iget-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v10, 0x6e

    const/16 v11, 0x75

    if-ne v6, v10, :cond_12

    .line 6682
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v6, v6, v9

    if-ne v6, v11, :cond_16

    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v6, v6, v9

    const/16 v9, 0x6c

    if-ne v6, v9, :cond_16

    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v6, v6, v10

    if-ne v6, v9, :cond_16

    .line 6687
    iput-boolean v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    const/4 v6, 0x5

    .line 6688
    iput-byte v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    .line 6689
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v6, v6, v8

    int-to-char v6, v6

    iput-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :goto_8
    move v8, v7

    goto/16 :goto_9

    .line 6691
    :cond_12
    iget-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v10, 0x74

    const/4 v12, 0x4

    if-ne v6, v10, :cond_13

    .line 6692
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v14, v10, 0x1

    iput v14, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v6, v6, v10

    const/16 v10, 0x72

    if-ne v6, v10, :cond_16

    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v14, v10, 0x1

    iput v14, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v6, v6, v10

    if-ne v6, v11, :cond_16

    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v6, v6, v10

    if-ne v6, v9, :cond_16

    .line 6697
    iput-boolean v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->boolValue:Z

    .line 6698
    iput-byte v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    .line 6699
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v6, v6, v8

    int-to-char v6, v6

    iput-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_8

    .line 6701
    :cond_13
    iget-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v9, 0x66

    if-ne v6, v9, :cond_14

    .line 6702
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v6, v12

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-gt v6, v9, :cond_16

    sget-object v6, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    sget-wide v10, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v14, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-long v14, v14

    add-long/2addr v10, v14

    invoke-virtual {v6, v9, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    sget v9, Lcom/alibaba/fastjson2/util/IOUtils;->ALSE:I

    if-ne v6, v9, :cond_16

    .line 6704
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v6, v12

    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 6705
    iput-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->boolValue:Z

    .line 6706
    iput-byte v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    .line 6707
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v6, v6, v8

    int-to-char v6, v6

    iput-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_8

    .line 6709
    :cond_14
    iget-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v9, 0x7b

    if-ne v6, v9, :cond_15

    if-nez v3, :cond_15

    .line 6711
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readObject()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->complex:Ljava/lang/Object;

    const/4 v1, 0x6

    .line 6712
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    return-void

    .line 6714
    :cond_15
    iget-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v9, 0x5b

    if-ne v6, v9, :cond_16

    if-nez v3, :cond_16

    .line 6716
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readArray()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->complex:Ljava/lang/Object;

    const/4 v1, 0x7

    .line 6717
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    return-void

    :cond_16
    :goto_9
    if-eqz v3, :cond_18

    .line 6723
    iget-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v6, v3, :cond_17

    .line 6724
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    sub-int/2addr v1, v7

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 6725
    iput-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6726
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readString0()V

    const/4 v1, 0x3

    .line 6727
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    return-void

    .line 6730
    :cond_17
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v9, v6, 0x1

    iput v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v3, v3, v6

    int-to-char v3, v3

    iput-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6733
    :cond_18
    :goto_a
    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const-wide/16 v9, 0x0

    const-wide v11, 0x100003700L

    const-wide/16 v14, 0x1

    const/16 v6, 0x1a

    const/16 v2, 0x20

    if-gt v3, v2, :cond_1a

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v16, v14, v3

    and-long v16, v16, v11

    cmp-long v3, v16, v9

    if-eqz v3, :cond_1a

    .line 6734
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v2, v3, :cond_19

    .line 6735
    iput-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_b

    .line 6737
    :cond_19
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v6, v3, 0x1

    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v2, v2, v3

    int-to-char v2, v2

    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :goto_b
    const/4 v2, 0x0

    goto :goto_a

    .line 6741
    :cond_1a
    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v13, 0x2c

    if-ne v3, v13, :cond_1b

    move v3, v7

    goto :goto_c

    :cond_1b
    const/4 v3, 0x0

    :goto_c
    iput-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v3, :cond_1e

    .line 6742
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v7, v13, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v3, v3, v13

    int-to-char v3, v3

    iput-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6744
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v3, v7, :cond_1c

    .line 6745
    iput-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_e

    .line 6747
    :cond_1c
    :goto_d
    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v3, v2, :cond_1e

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v17, v14, v3

    and-long v17, v17, v11

    cmp-long v3, v17, v9

    if-eqz v3, :cond_1e

    .line 6748
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v3, v7, :cond_1d

    .line 6749
    iput-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_d

    .line 6751
    :cond_1d
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v13, v7, 0x1

    iput v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v3, v3, v7

    int-to-char v3, v3

    iput-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_d

    :cond_1e
    :goto_e
    if-nez p2, :cond_20

    .line 6757
    iget-byte v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    const/4 v6, 0x1

    if-eq v3, v6, :cond_1f

    iget-byte v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    const/4 v7, 0x2

    if-ne v3, v7, :cond_21

    .line 6758
    :cond_1f
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    sub-int/2addr v4, v6

    invoke-interface {v1, v2, v4, v5}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept([BII)V

    return-void

    :cond_20
    const/4 v6, 0x1

    .line 6762
    :cond_21
    iget-byte v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    if-ne v3, v6, :cond_25

    .line 6763
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag0:I

    if-nez v3, :cond_23

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag1:I

    if-nez v3, :cond_23

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag2:I

    if-nez v3, :cond_23

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_23

    .line 6764
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->negative:Z

    if-eqz v2, :cond_22

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    neg-int v2, v2

    goto :goto_f

    :cond_22
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    .line 6765
    :goto_f
    invoke-interface {v1, v2}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept(I)V

    return-void

    .line 6769
    :cond_23
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag0:I

    if-nez v3, :cond_25

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag1:I

    if-nez v3, :cond_25

    .line 6770
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 6771
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag2:I

    int-to-long v9, v7

    and-long/2addr v5, v9

    const-wide/32 v9, 0x7fffffff

    cmp-long v7, v5, v9

    if-gtz v7, :cond_25

    shl-long/2addr v5, v2

    add-long/2addr v5, v3

    .line 6775
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->negative:Z

    if-eqz v2, :cond_24

    neg-long v5, v5

    .line 6776
    :cond_24
    invoke-interface {v1, v5, v6}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept(J)V

    return-void

    .line 6782
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->getNumber()Ljava/lang/Number;

    move-result-object v2

    .line 6783
    invoke-interface {v1, v2}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept(Ljava/lang/Number;)V

    if-eqz v8, :cond_26

    return-void

    .line 6785
    :cond_26
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "illegal input error"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final readNumber0()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 6308
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    .line 6309
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag0:I

    .line 6310
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag1:I

    .line 6311
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag2:I

    .line 6312
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    .line 6313
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->negative:Z

    .line 6314
    iput-short v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->exponent:S

    .line 6315
    iput-short v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->scale:S

    .line 6316
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 6319
    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v4, 0x1a

    const/4 v5, 0x1

    const/16 v6, 0x22

    if-eq v3, v6, :cond_1

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v6, 0x27

    if-ne v3, v6, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_2

    .line 6320
    :cond_1
    :goto_0
    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6321
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v6, v6, v7

    int-to-char v6, v6

    iput-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6323
    iget-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v6, v3, :cond_3

    .line 6324
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v1, v2, :cond_2

    .line 6325
    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1

    .line 6327
    :cond_2
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6329
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nextIfComma()Z

    .line 6330
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    return-void

    .line 6335
    :cond_3
    :goto_2
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 6338
    iget-char v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const-string v8, "illegal input"

    const/16 v9, 0x2b

    const/16 v10, 0x2d

    if-ne v7, v10, :cond_5

    .line 6339
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-eq v7, v11, :cond_4

    .line 6343
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->negative:Z

    .line 6344
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v7, v7, v8

    int-to-char v7, v7

    iput-char v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_3

    .line 6340
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6346
    :cond_5
    iget-char v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v7, v9, :cond_7

    .line 6347
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-eq v7, v11, :cond_6

    .line 6350
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v7, v7, v8

    int-to-char v7, v7

    iput-char v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_3

    .line 6348
    :cond_6
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_3
    const v7, -0xccccccc

    .line 6357
    iput-byte v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    move v8, v1

    move v11, v8

    .line 6358
    :goto_4
    iget-char v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v13, 0x39

    const/16 v14, 0xa

    const/16 v15, 0x30

    if-lt v12, v15, :cond_b

    iget-char v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v12, v13, :cond_b

    if-nez v8, :cond_9

    .line 6361
    iget-char v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    sub-int/2addr v11, v15

    .line 6362
    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    mul-int/2addr v12, v14

    iput v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    .line 6363
    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    if-ge v12, v7, :cond_8

    :goto_5
    move v8, v5

    goto :goto_6

    .line 6366
    :cond_8
    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    sub-int/2addr v12, v11

    iput v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    .line 6367
    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    if-ge v11, v7, :cond_9

    goto :goto_5

    .line 6372
    :cond_9
    :goto_6
    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v11, v12, :cond_a

    .line 6373
    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6374
    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v11, v5

    iput v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    move v11, v5

    goto :goto_7

    .line 6377
    :cond_a
    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v11, v11, v12

    int-to-char v11, v11

    iput-char v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v11, v5

    goto :goto_4

    .line 6380
    :cond_b
    :goto_7
    iget-char v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x2e

    const/4 v9, 0x2

    if-ne v12, v1, :cond_f

    .line 6381
    iput-byte v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    .line 6382
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v10, v12, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v12

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6383
    :goto_8
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-lt v1, v15, :cond_f

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v1, v13, :cond_f

    if-nez v8, :cond_d

    .line 6386
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    sub-int/2addr v1, v15

    .line 6387
    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    mul-int/2addr v10, v14

    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    .line 6388
    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    if-ge v10, v7, :cond_c

    :goto_9
    move v8, v5

    goto :goto_a

    .line 6391
    :cond_c
    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    sub-int/2addr v10, v1

    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    .line 6392
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    if-ge v1, v7, :cond_d

    goto :goto_9

    .line 6398
    :cond_d
    :goto_a
    iget-short v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->scale:S

    add-int/2addr v1, v5

    int-to-short v1, v1

    iput-short v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->scale:S

    .line 6399
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v1, v10, :cond_e

    .line 6400
    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6401
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    move v11, v5

    goto :goto_b

    .line 6404
    :cond_e
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v10

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v11, v5

    goto :goto_8

    :cond_f
    :goto_b
    if-eqz v8, :cond_13

    .line 6409
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->negative:Z

    if-eqz v1, :cond_10

    move v1, v6

    goto :goto_c

    :cond_10
    add-int/lit8 v1, v6, -0x1

    .line 6410
    :goto_c
    iget-short v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->scale:S

    if-lez v7, :cond_11

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    sub-int/2addr v7, v9

    goto :goto_d

    :cond_11
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    sub-int/2addr v7, v5

    :goto_d
    sub-int/2addr v7, v1

    const/16 v8, 0x26

    if-le v7, v8, :cond_12

    const/16 v7, 0x8

    .line 6412
    iput-byte v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    .line 6413
    new-instance v7, Ljava/lang/String;

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    sub-int/2addr v10, v5

    sub-int/2addr v10, v1

    invoke-direct {v7, v8, v1, v10}, Ljava/lang/String;-><init>([BII)V

    iput-object v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->stringValue:Ljava/lang/String;

    goto :goto_e

    .line 6415
    :cond_12
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    sub-int/2addr v8, v5

    invoke-virtual {v0, v7, v1, v8}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bigInt([BII)V

    goto :goto_e

    .line 6418
    :cond_13
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    neg-int v1, v1

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->mag3:I

    .line 6421
    :goto_e
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v7, 0x65

    if-eq v1, v7, :cond_14

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v8, 0x45

    if-ne v1, v8, :cond_1b

    .line 6424
    :cond_14
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v8

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6426
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v8, 0x2d

    if-ne v1, v8, :cond_15

    .line 6428
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v8

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v8, v5

    const/4 v1, 0x0

    goto :goto_f

    .line 6429
    :cond_15
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v8, 0x2b

    if-ne v1, v8, :cond_16

    .line 6430
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v8

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :cond_16
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 6433
    :goto_f
    iget-char v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-lt v10, v15, :cond_19

    iget-char v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v10, v13, :cond_19

    .line 6435
    iget-char v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    sub-int/2addr v10, v15

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v10

    const/16 v10, 0x3ff

    if-gt v1, v10, :cond_18

    .line 6441
    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v10, v11, :cond_17

    .line 6442
    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v11, v5

    goto :goto_10

    .line 6445
    :cond_17
    iget-object v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v10, v10, v11

    int-to-char v10, v10

    iput-char v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    move v11, v5

    goto :goto_f

    .line 6438
    :cond_18
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "too large exp value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_19
    :goto_10
    if-eqz v8, :cond_1a

    neg-int v1, v1

    :cond_1a
    int-to-short v1, v1

    .line 6452
    iput-short v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->exponent:S

    .line 6453
    iput-byte v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    .line 6456
    :cond_1b
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    if-ne v1, v6, :cond_1d

    .line 6457
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v6, 0x6e

    const/16 v8, 0x75

    if-ne v1, v6, :cond_1e

    .line 6458
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v6

    if-ne v1, v8, :cond_1d

    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v6

    const/16 v6, 0x6c

    if-ne v1, v6, :cond_1d

    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v7

    if-ne v1, v6, :cond_1d

    .line 6463
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->wasNull:Z

    const/4 v1, 0x5

    .line 6464
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    .line 6465
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v1, v6, :cond_1c

    .line 6466
    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6467
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    goto :goto_11

    .line 6469
    :cond_1c
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v6

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :goto_11
    move v11, v5

    :cond_1d
    const/4 v1, 0x0

    goto/16 :goto_13

    .line 6472
    :cond_1e
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v6, 0x74

    const/4 v9, 0x4

    if-ne v1, v6, :cond_20

    .line 6473
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v10, v6, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v6

    const/16 v6, 0x72

    if-ne v1, v6, :cond_1d

    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v10, v6, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v6

    if-ne v1, v8, :cond_1d

    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v8, v6, 0x1

    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v6

    if-ne v1, v7, :cond_1d

    .line 6478
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->boolValue:Z

    .line 6479
    iput-byte v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    .line 6480
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v1, v6, :cond_1f

    .line 6481
    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6482
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    goto :goto_11

    .line 6484
    :cond_1f
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v6

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_11

    .line 6487
    :cond_20
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v6, 0x66

    if-ne v1, v6, :cond_22

    .line 6488
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v1, v9

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-gt v1, v6, :cond_1d

    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    sget-wide v7, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-long v12, v10

    add-long/2addr v7, v12

    invoke-virtual {v1, v6, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    sget v6, Lcom/alibaba/fastjson2/util/IOUtils;->ALSE:I

    if-ne v1, v6, :cond_1d

    .line 6490
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    const/4 v1, 0x0

    .line 6491
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->boolValue:Z

    .line 6492
    iput-byte v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    .line 6493
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v6, v7, :cond_21

    .line 6494
    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6495
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    goto :goto_12

    .line 6497
    :cond_21
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v6, v6, v7

    int-to-char v6, v6

    iput-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :goto_12
    move v11, v5

    goto :goto_13

    :cond_22
    const/4 v1, 0x0

    .line 6500
    iget-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v7, 0x7b

    if-ne v6, v7, :cond_23

    if-nez v3, :cond_23

    .line 6502
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readObject()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->complex:Ljava/lang/Object;

    const/4 v1, 0x6

    .line 6503
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    return-void

    .line 6505
    :cond_23
    iget-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_24

    if-nez v3, :cond_24

    .line 6507
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readArray()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->complex:Ljava/lang/Object;

    const/4 v1, 0x7

    .line 6508
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    return-void

    :cond_24
    :goto_13
    if-eqz v3, :cond_27

    .line 6514
    iget-char v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v6, v3, :cond_25

    .line 6515
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 6516
    iput-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6517
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readString0()V

    const/4 v1, 0x3

    .line 6518
    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    return-void

    .line 6522
    :cond_25
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v2, v3, :cond_26

    .line 6523
    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_14

    .line 6525
    :cond_26
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v6, v3, 0x1

    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v2, v2, v3

    int-to-char v2, v2

    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6529
    :cond_27
    :goto_14
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v3, 0x53

    const/16 v6, 0x46

    const/16 v7, 0x44

    const/16 v8, 0x42

    const/16 v9, 0x4c

    if-eq v2, v9, :cond_28

    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v2, v6, :cond_28

    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v2, v7, :cond_28

    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v2, v8, :cond_28

    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v2, v3, :cond_2f

    .line 6530
    :cond_28
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v2, v8, :cond_2d

    if-eq v2, v7, :cond_2c

    if-eq v2, v6, :cond_2b

    if-eq v2, v9, :cond_2a

    if-eq v2, v3, :cond_29

    goto :goto_15

    .line 6535
    :cond_29
    iput-byte v14, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_15

    :cond_2a
    const/16 v2, 0xb

    .line 6538
    iput-byte v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_15

    :cond_2b
    const/16 v2, 0xc

    .line 6541
    iput-byte v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_15

    :cond_2c
    const/16 v2, 0xd

    .line 6544
    iput-byte v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    goto :goto_15

    :cond_2d
    const/16 v2, 0x9

    .line 6532
    iput-byte v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueType:B

    .line 6549
    :goto_15
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v2, v3, :cond_2e

    .line 6550
    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_16

    .line 6552
    :cond_2e
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v6, v3, 0x1

    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v2, v2, v3

    int-to-char v2, v2

    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6556
    :cond_2f
    :goto_16
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const-wide v6, 0x100003700L

    const-wide/16 v8, 0x1

    const/16 v3, 0x20

    if-gt v2, v3, :cond_31

    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v12, v8, v2

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-eqz v2, :cond_31

    .line 6557
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v2, v3, :cond_30

    .line 6558
    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_16

    .line 6560
    :cond_30
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v6, v3, 0x1

    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v2, v2, v3

    int-to-char v2, v2

    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_16

    .line 6564
    :cond_31
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v10, 0x2c

    if-ne v2, v10, :cond_32

    move v1, v5

    :cond_32
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v1, :cond_35

    .line 6565
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v2, :cond_33

    .line 6566
    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_18

    .line 6568
    :cond_33
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v5, v2, 0x1

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6569
    :goto_17
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v1, v3, :cond_35

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v1, v8, v1

    and-long/2addr v1, v6

    const-wide/16 v12, 0x0

    cmp-long v1, v1, v12

    if-eqz v1, :cond_35

    .line 6570
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v2, :cond_34

    .line 6571
    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_17

    .line 6573
    :cond_34
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v5, v2, 0x1

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_17

    :cond_35
    :goto_18
    if-eqz v11, :cond_36

    return-void

    .line 6580
    :cond_36
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "illegal input error"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final readOffsetDateTime()Ljava/time/OffsetDateTime;
    .locals 20

    move-object/from16 v1, p0

    .line 7099
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 7100
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7101
    iget-object v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 7102
    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v6, 0x22

    if-eq v4, v6, :cond_1

    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v6, 0x27

    if-ne v4, v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, v1

    goto/16 :goto_b

    .line 7103
    :cond_1
    :goto_0
    iget-object v4, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->dateFormat:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-boolean v4, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmss19:Z

    if-nez v4, :cond_2

    iget-boolean v4, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmssT19:Z

    if-nez v4, :cond_2

    iget-boolean v4, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMdd8:Z

    if-nez v4, :cond_2

    iget-boolean v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->formatISO8601:Z

    if-eqz v3, :cond_0

    .line 7109
    :cond_2
    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    add-int/lit8 v4, v2, 0x13

    .line 7112
    array-length v6, v0

    if-ge v4, v6, :cond_0

    iget v6, v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v4, v6, :cond_0

    add-int/lit8 v6, v2, 0x4

    aget-byte v6, v0, v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_0

    add-int/lit8 v6, v2, 0x7

    aget-byte v6, v0, v6

    if-ne v6, v7, :cond_0

    add-int/lit8 v6, v2, 0xa

    aget-byte v6, v0, v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_3

    const/16 v7, 0x54

    if-ne v6, v7, :cond_0

    :cond_3
    add-int/lit8 v6, v2, 0xd

    aget-byte v6, v0, v6

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_0

    add-int/lit8 v6, v2, 0x10

    aget-byte v6, v0, v6

    if-ne v6, v7, :cond_0

    .line 7120
    aget-byte v6, v0, v2

    add-int/lit8 v7, v2, 0x1

    .line 7121
    aget-byte v7, v0, v7

    add-int/lit8 v8, v2, 0x2

    .line 7122
    aget-byte v8, v0, v8

    add-int/lit8 v9, v2, 0x3

    .line 7123
    aget-byte v9, v0, v9

    add-int/lit8 v10, v2, 0x5

    .line 7124
    aget-byte v10, v0, v10

    add-int/lit8 v11, v2, 0x6

    .line 7125
    aget-byte v11, v0, v11

    add-int/lit8 v12, v2, 0x8

    .line 7126
    aget-byte v12, v0, v12

    add-int/lit8 v13, v2, 0x9

    .line 7127
    aget-byte v13, v0, v13

    add-int/lit8 v14, v2, 0xb

    .line 7128
    aget-byte v14, v0, v14

    add-int/lit8 v15, v2, 0xc

    .line 7129
    aget-byte v15, v0, v15

    add-int/lit8 v16, v2, 0xe

    .line 7130
    aget-byte v5, v0, v16

    add-int/lit8 v16, v2, 0xf

    move/from16 v17, v4

    .line 7131
    aget-byte v4, v0, v16

    add-int/lit8 v16, v2, 0x11

    move/from16 v18, v3

    .line 7132
    aget-byte v3, v0, v16

    add-int/lit8 v16, v2, 0x12

    .line 7133
    aget-byte v1, v0, v16

    move-object/from16 v16, v0

    const/16 v0, 0x30

    if-lt v6, v0, :cond_16

    move/from16 v19, v2

    const/16 v2, 0x39

    if-gt v6, v2, :cond_16

    if-lt v7, v0, :cond_16

    if-gt v7, v2, :cond_16

    if-lt v8, v0, :cond_16

    if-gt v8, v2, :cond_16

    if-lt v9, v0, :cond_16

    if-gt v9, v2, :cond_16

    sub-int/2addr v6, v0

    mul-int/lit16 v6, v6, 0x3e8

    sub-int/2addr v7, v0

    mul-int/lit8 v7, v7, 0x64

    add-int/2addr v6, v7

    sub-int/2addr v8, v0

    mul-int/lit8 v8, v8, 0xa

    add-int/2addr v6, v8

    sub-int/2addr v9, v0

    add-int/2addr v6, v9

    if-lt v10, v0, :cond_14

    if-gt v10, v2, :cond_14

    if-lt v11, v0, :cond_14

    if-gt v11, v2, :cond_14

    sub-int/2addr v10, v0

    mul-int/lit8 v10, v10, 0xa

    sub-int/2addr v11, v0

    add-int/2addr v10, v11

    if-lt v12, v0, :cond_12

    if-gt v12, v2, :cond_12

    if-lt v13, v0, :cond_12

    if-gt v13, v2, :cond_12

    sub-int/2addr v12, v0

    mul-int/lit8 v12, v12, 0xa

    sub-int/2addr v13, v0

    add-int/2addr v12, v13

    if-lt v14, v0, :cond_10

    if-gt v14, v2, :cond_10

    if-lt v15, v0, :cond_10

    if-gt v15, v2, :cond_10

    sub-int/2addr v14, v0

    mul-int/lit8 v14, v14, 0xa

    sub-int/2addr v15, v0

    add-int/2addr v14, v15

    if-lt v5, v0, :cond_e

    if-gt v5, v2, :cond_e

    if-lt v4, v0, :cond_e

    if-gt v4, v2, :cond_e

    sub-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v4, v0

    add-int/2addr v5, v4

    if-lt v3, v0, :cond_c

    if-gt v3, v2, :cond_c

    if-lt v1, v0, :cond_c

    if-gt v1, v2, :cond_c

    sub-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v1, v0

    add-int/2addr v3, v1

    if-nez v6, :cond_4

    if-nez v10, :cond_4

    if-nez v12, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    .line 7202
    :cond_4
    :try_start_0
    invoke-static {v6, v10, v12}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v19, 0x1f

    move/from16 v1, v17

    :goto_2
    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v8, p0

    if-ge v1, v2, :cond_6

    .line 7210
    iget v9, v8, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v1, v9, :cond_6

    move-object/from16 v9, v16

    array-length v10, v9

    if-ge v1, v10, :cond_7

    .line 7211
    aget-byte v10, v9, v1

    move/from16 v11, v18

    if-ne v10, v11, :cond_5

    add-int/lit8 v10, v1, -0x1

    aget-byte v10, v9, v10

    const/16 v12, 0x5a

    if-ne v10, v12, :cond_5

    sub-int v2, v1, v17

    add-int/lit8 v2, v2, -0x2

    sub-int v1, v1, v19

    add-int/2addr v1, v7

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v16, v9

    move/from16 v18, v11

    goto :goto_2

    :cond_6
    move-object/from16 v9, v16

    :cond_7
    move v2, v4

    move v1, v6

    :goto_3
    if-ne v2, v4, :cond_8

    const/16 v4, 0x15

    if-ne v1, v4, :cond_18

    :cond_8
    if-gtz v2, :cond_9

    move v2, v6

    goto :goto_4

    :cond_9
    add-int/lit8 v4, v19, 0x14

    .line 7218
    invoke-static {v9, v2, v4}, Lcom/alibaba/fastjson2/util/DateUtils;->readNanos([BII)I

    move-result v2

    .line 7219
    :goto_4
    invoke-static {v14, v5, v3, v2}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v2

    .line 7220
    invoke-static {v0, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 7221
    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v0, v2}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    .line 7222
    iget v2, v8, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v2, v1

    iput v2, v8, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7223
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 7224
    iget-char v1, v8, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_a

    move v6, v7

    :cond_a
    iput-boolean v6, v8, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v6, :cond_b

    .line 7225
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    :cond_b
    return-object v0

    :catch_0
    move-exception v0

    move-object/from16 v8, p0

    move-object v1, v0

    .line 7205
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "read date error"

    invoke-virtual {v8, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_c
    move-object/from16 v8, p0

    .line 7193
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 v5, 0x0

    goto :goto_5

    .line 7194
    :cond_d
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v5

    :goto_5
    return-object v5

    :cond_e
    move-object/from16 v8, p0

    .line 7183
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 v5, 0x0

    goto :goto_6

    .line 7184
    :cond_f
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v5

    :goto_6
    return-object v5

    :cond_10
    move-object/from16 v8, p0

    .line 7173
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object v0

    if-nez v0, :cond_11

    const/4 v5, 0x0

    goto :goto_7

    .line 7174
    :cond_11
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v5

    :goto_7
    return-object v5

    :cond_12
    move-object/from16 v8, p0

    .line 7163
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object v0

    if-nez v0, :cond_13

    const/4 v5, 0x0

    goto :goto_8

    .line 7164
    :cond_13
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v5

    :goto_8
    return-object v5

    :cond_14
    move-object/from16 v8, p0

    .line 7153
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object v0

    if-nez v0, :cond_15

    const/4 v5, 0x0

    goto :goto_9

    .line 7154
    :cond_15
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v5

    :goto_9
    return-object v5

    :cond_16
    move-object/from16 v8, p0

    .line 7144
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object v0

    if-nez v0, :cond_17

    const/4 v5, 0x0

    goto :goto_a

    .line 7145
    :cond_17
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v5

    :goto_a
    return-object v5

    .line 7232
    :cond_18
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object v0

    if-nez v0, :cond_19

    const/4 v5, 0x0

    goto :goto_c

    .line 7233
    :cond_19
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v5

    :goto_c
    return-object v5
.end method

.method public final readOffsetTime()Ljava/time/OffsetTime;
    .locals 15

    .line 7238
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 7239
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7240
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 7241
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const-string v4, "illegal offsetTime"

    const/16 v5, 0x22

    if-eq v3, v5, :cond_0

    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v5, 0x27

    if-ne v3, v5, :cond_c

    .line 7242
    :cond_0
    iget-object v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->dateFormat:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 7243
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    add-int/lit8 v3, v1, 0x8

    .line 7245
    array-length v5, v0

    if-ge v3, v5, :cond_c

    iget v5, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v3, v5, :cond_c

    add-int/lit8 v5, v1, 0x2

    aget-byte v5, v0, v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_c

    add-int/lit8 v5, v1, 0x5

    aget-byte v5, v0, v5

    if-ne v5, v6, :cond_c

    .line 7250
    aget-byte v5, v0, v1

    add-int/lit8 v6, v1, 0x1

    .line 7251
    aget-byte v6, v0, v6

    add-int/lit8 v7, v1, 0x3

    .line 7252
    aget-byte v7, v0, v7

    add-int/lit8 v8, v1, 0x4

    .line 7253
    aget-byte v8, v0, v8

    add-int/lit8 v9, v1, 0x6

    .line 7254
    aget-byte v9, v0, v9

    add-int/lit8 v10, v1, 0x7

    .line 7255
    aget-byte v10, v0, v10

    const/16 v11, 0x30

    if-lt v5, v11, :cond_b

    const/16 v12, 0x39

    if-gt v5, v12, :cond_b

    if-lt v6, v11, :cond_b

    if-gt v6, v12, :cond_b

    sub-int/2addr v5, v11

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v6, v11

    add-int/2addr v5, v6

    if-lt v7, v11, :cond_a

    if-gt v7, v12, :cond_a

    if-lt v8, v11, :cond_a

    if-gt v8, v12, :cond_a

    sub-int/2addr v7, v11

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, v11

    add-int/2addr v7, v8

    if-lt v9, v11, :cond_9

    if-gt v9, v12, :cond_9

    if-lt v10, v11, :cond_9

    if-gt v10, v12, :cond_9

    sub-int/2addr v9, v11

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v11

    add-int/2addr v9, v10

    add-int/lit8 v4, v1, 0x19

    const/4 v6, -0x1

    move v8, v3

    move v10, v6

    :goto_0
    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ge v8, v4, :cond_4

    .line 7286
    iget v13, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v8, v13, :cond_4

    array-length v13, v0

    if-ge v8, v13, :cond_4

    .line 7287
    aget-byte v13, v0, v8

    if-ne v10, v6, :cond_2

    const/16 v14, 0x5a

    if-eq v13, v14, :cond_1

    const/16 v14, 0x2b

    if-eq v13, v14, :cond_1

    const/16 v14, 0x2d

    if-ne v13, v14, :cond_2

    :cond_1
    sub-int v10, v8, v3

    sub-int/2addr v10, v12

    :cond_2
    if-ne v13, v2, :cond_3

    sub-int/2addr v8, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    move v8, v11

    :goto_1
    if-gtz v10, :cond_5

    move v2, v11

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v1, 0x9

    .line 7297
    invoke-static {v0, v10, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->readNanos([BII)I

    move-result v2

    :goto_2
    add-int/lit8 v3, v8, -0x9

    sub-int/2addr v3, v10

    if-gt v3, v12, :cond_6

    .line 7302
    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    goto :goto_3

    .line 7304
    :cond_6
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x9

    add-int/2addr v1, v10

    invoke-direct {v4, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 7305
    invoke-static {v4}, Ljava/time/ZoneOffset;->of(Ljava/lang/String;)Ljava/time/ZoneOffset;

    move-result-object v0

    .line 7307
    :goto_3
    invoke-static {v5, v7, v9, v2}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v1

    .line 7308
    invoke-static {v1, v0}, Ljava/time/OffsetTime;->of(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    .line 7309
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v1, v8

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7310
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 7311
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_7

    move v11, v12

    :cond_7
    iput-boolean v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v11, :cond_8

    .line 7312
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    :cond_8
    return-object v0

    .line 7281
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7272
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7263
    :cond_b
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7318
    :cond_c
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readPattern()Ljava/lang/String;
    .locals 14

    .line 8146
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_8

    .line 8150
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 8152
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v2, v2, v0

    int-to-char v2, v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 8157
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v0, v2, :cond_0

    .line 8161
    :goto_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    sub-int v4, v0, v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 8163
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/16 v4, 0x1a

    if-ne v0, v3, :cond_2

    .line 8164
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 8165
    iput-char v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return-object v1

    .line 8169
    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v3, v3, v0

    :goto_1
    int-to-char v3, v3

    const-wide/16 v5, 0x0

    const-wide v7, 0x100003700L

    const-wide/16 v9, 0x1

    const/16 v11, 0x20

    if-gt v3, v11, :cond_3

    shl-long v12, v9, v3

    and-long/2addr v12, v7

    cmp-long v12, v12, v5

    if-eqz v12, :cond_3

    .line 8171
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    add-int/lit8 v0, v0, 0x1

    aget-byte v3, v3, v0

    goto :goto_1

    :cond_3
    const/16 v12, 0x2c

    if-ne v3, v12, :cond_4

    move v12, v2

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    .line 8174
    :goto_2
    iput-boolean v12, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v12, :cond_6

    add-int/2addr v0, v2

    .line 8175
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 8178
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v0, v2

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 8180
    :goto_3
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v0, v11, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v2, v9, v0

    and-long/2addr v2, v7

    cmp-long v0, v2, v5

    if-eqz v0, :cond_7

    .line 8181
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v0, v2, :cond_5

    .line 8182
    iput-char v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_3

    .line 8184
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v0, v2

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_3

    :cond_6
    add-int/2addr v0, v2

    .line 8188
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v0, v3

    .line 8189
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :cond_7
    return-object v1

    .line 8147
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "illegal pattern"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readReference()Ljava/lang/String;
    .locals 13

    .line 8638
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->referenceBegin:I

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 8641
    :cond_0
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 8642
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v0, v0, v1

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 8643
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readString()Ljava/lang/String;

    move-result-object v0

    .line 8645
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const-wide/16 v2, 0x0

    const-wide v4, 0x100003700L

    const-wide/16 v6, 0x1

    const/16 v8, 0x20

    const/16 v9, 0x1a

    const/4 v10, 0x1

    if-gt v1, v8, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v11, v6, v1

    and-long/2addr v11, v4

    cmp-long v1, v11, v2

    if-eqz v1, :cond_2

    .line 8646
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v1, v10

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 8647
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->length:I

    if-lt v1, v2, :cond_1

    .line 8648
    iput-char v9, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return-object v0

    .line 8651
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_0

    .line 8654
    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v11, 0x7d

    if-ne v1, v11, :cond_a

    .line 8658
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v1, v11, :cond_3

    .line 8659
    iput-char v9, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1

    .line 8661
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v11

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 8664
    :goto_1
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v1, v8, :cond_5

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v11, v6, v1

    and-long/2addr v11, v4

    cmp-long v1, v11, v2

    if-eqz v1, :cond_5

    .line 8665
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v11, :cond_4

    .line 8666
    iput-char v9, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1

    .line 8668
    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v11

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1

    .line 8672
    :cond_5
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v11, 0x2c

    if-ne v1, v11, :cond_6

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    :goto_2
    iput-boolean v10, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v10, :cond_9

    .line 8673
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v10, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v10

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 8675
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v10, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v10, :cond_7

    .line 8676
    iput-char v9, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_4

    .line 8678
    :cond_7
    :goto_3
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v1, v8, :cond_9

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v10, v6, v1

    and-long/2addr v10, v4

    cmp-long v1, v10, v2

    if-eqz v1, :cond_9

    .line 8679
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v10, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v1, v10, :cond_8

    .line 8680
    iput-char v9, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_3

    .line 8682
    :cond_8
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v10, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v10

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_3

    :cond_9
    :goto_4
    return-object v0

    .line 8655
    :cond_a
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal reference : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readString()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    .line 6024
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x74

    const/16 v3, 0x6e

    const/16 v4, 0x66

    const/16 v5, 0x22

    if-eq v1, v5, :cond_7

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v6, 0x27

    if-ne v1, v6, :cond_0

    goto :goto_1

    .line 6270
    :cond_0
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v5, 0x2b

    if-eq v1, v5, :cond_6

    const/16 v5, 0x2d

    if-eq v1, v5, :cond_6

    const/16 v5, 0x5b

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_3

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 6301
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal input : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6276
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readObject()Ljava/util/Map;

    move-result-object v1

    .line 6275
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 6297
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readNull()V

    const/4 v1, 0x0

    return-object v1

    .line 6294
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readBoolValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->boolValue:Z

    .line 6295
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->boolValue:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "true"

    goto :goto_0

    :cond_4
    const-string v1, "false"

    :goto_0
    return-object v1

    .line 6273
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readArray()Ljava/util/List;

    move-result-object v1

    .line 6272
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->toString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 6289
    :cond_6
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readNumber0()V

    .line 6290
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->getNumber()Ljava/lang/Number;

    move-result-object v1

    .line 6291
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 6025
    :cond_7
    :goto_1
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6027
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    const/4 v7, 0x0

    .line 6030
    iput-boolean v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueEscape:Z

    const/4 v8, 0x1

    move v9, v6

    move v10, v7

    move v11, v8

    .line 6033
    :goto_2
    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v9, v12, :cond_2a

    .line 6037
    iget-object v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v12, v12, v9

    const/16 v13, 0x78

    const/16 v14, 0x75

    const/16 v15, 0x5c

    if-ne v12, v15, :cond_a

    .line 6039
    iput-boolean v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueEscape:Z

    .line 6040
    iget-object v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    add-int/lit8 v9, v9, 0x1

    aget-byte v12, v12, v9

    if-eq v12, v14, :cond_9

    if-eq v12, v13, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v9, v9, 0x2

    goto :goto_3

    :cond_9
    add-int/lit8 v9, v9, 0x4

    :goto_3
    add-int/2addr v9, v8

    move v2, v7

    goto/16 :goto_f

    :cond_a
    const-string v7, "malformed input around byte "

    if-ltz v12, :cond_28

    if-ne v12, v1, :cond_27

    .line 6093
    iget-boolean v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueEscape:Z

    if-eqz v12, :cond_18

    .line 6094
    new-array v9, v10, [C

    const/4 v10, 0x0

    .line 6097
    :goto_4
    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v12, v11, v6

    const/16 v16, 0xc

    if-ne v12, v15, :cond_13

    add-int/lit8 v6, v6, 0x1

    .line 6099
    aget-byte v12, v11, v6

    if-eq v12, v5, :cond_12

    if-eq v12, v15, :cond_12

    const/16 v5, 0x62

    if-eq v12, v5, :cond_10

    if-eq v12, v4, :cond_11

    if-eq v12, v3, :cond_f

    const/16 v5, 0x72

    if-eq v12, v5, :cond_e

    if-eq v12, v13, :cond_d

    if-eq v12, v2, :cond_c

    if-eq v12, v14, :cond_b

    .line 6134
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char1(I)C

    move-result v16

    goto :goto_5

    :cond_b
    add-int/lit8 v6, v6, 0x1

    .line 6102
    aget-byte v5, v11, v6

    add-int/2addr v6, v8

    .line 6103
    aget-byte v12, v11, v6

    add-int/2addr v6, v8

    .line 6104
    aget-byte v2, v11, v6

    add-int/2addr v6, v8

    .line 6105
    aget-byte v11, v11, v6

    .line 6106
    invoke-static {v5, v12, v2, v11}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char4(IIII)C

    move-result v16

    goto :goto_5

    :cond_c
    const/16 v16, 0x9

    goto :goto_5

    :cond_d
    add-int/lit8 v6, v6, 0x1

    .line 6110
    aget-byte v2, v11, v6

    add-int/2addr v6, v8

    .line 6111
    aget-byte v5, v11, v6

    .line 6112
    invoke-static {v2, v5}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2(II)C

    move-result v16

    goto :goto_5

    :cond_e
    const/16 v16, 0xd

    goto :goto_5

    :cond_f
    const/16 v16, 0xa

    goto :goto_5

    :cond_10
    const/16 v16, 0x8

    :cond_11
    :goto_5
    move/from16 v12, v16

    :cond_12
    int-to-char v2, v12

    .line 6137
    aput-char v2, v9, v10

    add-int/2addr v6, v8

    goto/16 :goto_6

    :cond_13
    if-ne v12, v1, :cond_14

    .line 6201
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v9}, Ljava/lang/String;-><init>([C)V

    move v9, v6

    goto/16 :goto_8

    :cond_14
    if-ltz v12, :cond_15

    int-to-char v2, v12

    .line 6143
    aput-char v2, v9, v10

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    :cond_15
    and-int/lit16 v2, v12, 0xff

    shr-int/lit8 v2, v2, 0x4

    packed-switch v2, :pswitch_data_1

    shr-int/lit8 v2, v12, 0x3

    const/4 v5, -0x2

    if-ne v2, v5, :cond_17

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v6, 0x1

    .line 6170
    aget-byte v5, v11, v6

    add-int/lit8 v6, v2, 0x1

    .line 6171
    aget-byte v2, v11, v2

    add-int/lit8 v3, v6, 0x1

    .line 6172
    aget-byte v6, v11, v6

    shl-int/lit8 v11, v12, 0x12

    shl-int/lit8 v12, v5, 0xc

    xor-int/2addr v11, v12

    shl-int/lit8 v12, v2, 0x6

    xor-int/2addr v11, v12

    const v12, 0x381f80

    xor-int/2addr v12, v6

    xor-int/2addr v11, v12

    and-int/lit16 v5, v5, 0xc0

    const/16 v12, 0x80

    if-ne v5, v12, :cond_16

    and-int/lit16 v2, v2, 0xc0

    if-ne v2, v12, :cond_16

    and-int/lit16 v2, v6, 0xc0

    if-ne v2, v12, :cond_16

    const/high16 v2, 0x10000

    if-lt v11, v2, :cond_16

    const/high16 v2, 0x110000

    if-ge v11, v2, :cond_16

    add-int/lit8 v2, v10, 0x1

    ushr-int/lit8 v5, v11, 0xa

    const v6, 0xd7c0

    add-int/2addr v5, v6

    int-to-char v5, v5

    .line 6188
    aput-char v5, v9, v10

    and-int/lit16 v5, v11, 0x3ff

    const v6, 0xdc00

    add-int/2addr v5, v6

    int-to-char v5, v5

    .line 6189
    aput-char v5, v9, v2

    move v10, v2

    move v6, v3

    goto :goto_6

    :pswitch_1
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v6, 0x1

    .line 6158
    aget-byte v5, v11, v6

    add-int/lit8 v6, v2, 0x1

    .line 6159
    aget-byte v2, v11, v2

    and-int/lit8 v11, v12, 0xf

    shl-int/lit8 v11, v11, 0xc

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v5, v11

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v5

    int-to-char v2, v2

    .line 6160
    aput-char v2, v9, v10

    goto :goto_6

    :pswitch_2
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v6, 0x1

    .line 6151
    aget-byte v5, v11, v6

    and-int/lit8 v6, v12, 0x1f

    shl-int/lit8 v6, v6, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v6

    int-to-char v5, v5

    .line 6152
    aput-char v5, v9, v10

    move v6, v2

    :goto_6
    add-int/2addr v10, v8

    const/16 v2, 0x74

    const/16 v3, 0x6e

    const/16 v5, 0x22

    goto/16 :goto_4

    .line 6186
    :cond_16
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6194
    :cond_17
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    if-eqz v11, :cond_1e

    .line 6203
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    sub-int v1, v9, v1

    if-ne v1, v8, :cond_19

    .line 6205
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toString(C)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_8

    :cond_19
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a

    .line 6207
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v3, v8

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toString(CC)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 6211
    :cond_1a
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    if-eqz v2, :cond_1c

    .line 6212
    new-array v2, v1, [C

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_1b

    .line 6214
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v5, v3

    aget-byte v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 6217
    :cond_1b
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_8

    .line 6218
    :cond_1c
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    if-eqz v1, :cond_1d

    .line 6219
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-static {v1, v2, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 6220
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->LATIN1:Ljava/lang/Byte;

    invoke-interface {v2, v1, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_8

    .line 6222
    :cond_1d
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    sub-int v4, v9, v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_8

    .line 6225
    :cond_1e
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    sub-int v4, v9, v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 6228
    :goto_8
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1f

    .line 6229
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_1f
    add-int/2addr v9, v8

    .line 6233
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/16 v3, 0x1a

    if-eq v9, v2, :cond_26

    .line 6234
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    add-int/lit8 v6, v9, 0x1

    aget-byte v2, v2, v9

    :goto_9
    move v9, v6

    const/16 v6, 0x20

    if-gt v2, v6, :cond_21

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v2

    const-wide v10, 0x100003700L

    and-long/2addr v6, v10

    cmp-long v6, v6, v4

    if-eqz v6, :cond_21

    .line 6236
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v9, v2, :cond_20

    goto :goto_d

    .line 6239
    :cond_20
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    add-int/lit8 v6, v9, 0x1

    aget-byte v2, v2, v9

    goto :goto_9

    :cond_21
    const/16 v6, 0x2c

    if-ne v2, v6, :cond_22

    move v7, v8

    goto :goto_a

    :cond_22
    const/4 v7, 0x0

    .line 6243
    :goto_a
    iput-boolean v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v7, :cond_25

    .line 6244
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v9, v2, :cond_23

    goto :goto_c

    .line 6247
    :cond_23
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    add-int/lit8 v6, v9, 0x1

    aget-byte v2, v2, v9

    :goto_b
    move v9, v6

    const/16 v6, 0x20

    if-gt v2, v6, :cond_25

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v2

    const-wide v10, 0x100003700L

    and-long/2addr v6, v10

    cmp-long v6, v6, v4

    if-eqz v6, :cond_25

    .line 6249
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v9, v2, :cond_24

    goto :goto_c

    .line 6253
    :cond_24
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    add-int/lit8 v6, v9, 0x1

    aget-byte v2, v2, v9

    goto :goto_b

    :cond_25
    move v3, v2

    :goto_c
    int-to-char v2, v3

    .line 6259
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6260
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    return-object v1

    .line 6264
    :cond_26
    :goto_d
    iput-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/4 v2, 0x0

    .line 6265
    iput-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    .line 6266
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    return-object v1

    :cond_27
    const/4 v2, 0x0

    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_28
    const/4 v2, 0x0

    and-int/lit16 v3, v12, 0xff

    shr-int/lit8 v3, v3, 0x4

    packed-switch v3, :pswitch_data_2

    shr-int/lit8 v3, v12, 0x3

    const/4 v5, -0x2

    if-ne v3, v5, :cond_29

    add-int/lit8 v9, v9, 0x4

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :pswitch_3
    add-int/lit8 v9, v9, 0x3

    goto :goto_e

    :pswitch_4
    add-int/lit8 v9, v9, 0x2

    :goto_e
    move v11, v2

    :goto_f
    add-int/2addr v10, v8

    move v7, v2

    const/16 v2, 0x74

    const/16 v3, 0x6e

    const/16 v5, 0x22

    goto/16 :goto_2

    .line 6086
    :cond_29
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6034
    :cond_2a
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "invalid escape character EOI"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final readString(Lcom/alibaba/fastjson2/reader/ValueConsumer;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5079
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 5081
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    const/4 v4, 0x0

    .line 5083
    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueEscape:Z

    move v5, v3

    move v6, v4

    .line 5086
    :goto_0
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v7, v7, v5

    const/16 v8, 0x78

    const/16 v9, 0x75

    const/16 v10, 0x5c

    const/4 v11, 0x1

    if-ne v7, v10, :cond_2

    .line 5088
    iput-boolean v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueEscape:Z

    .line 5089
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v7, v7, v5

    if-eq v7, v9, :cond_1

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x4

    :goto_1
    add-int/2addr v5, v11

    goto/16 :goto_9

    :cond_2
    const-string v13, "malformed input around byte "

    if-ltz v7, :cond_13

    if-ne v7, v2, :cond_12

    .line 5136
    iget-boolean v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueEscape:Z

    const/16 v14, 0x22

    if-eqz v7, :cond_b

    .line 5137
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    sub-int/2addr v5, v2

    .line 5139
    new-array v2, v6, [C

    move v7, v4

    .line 5142
    :goto_2
    iget-object v15, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v12, v15, v3

    if-ne v12, v10, :cond_5

    add-int/lit8 v3, v3, 0x1

    .line 5144
    aget-byte v12, v15, v3

    if-eq v12, v14, :cond_7

    if-eq v12, v10, :cond_7

    if-eq v12, v9, :cond_4

    if-eq v12, v8, :cond_3

    .line 5164
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char1(I)C

    move-result v12

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 5155
    aget-byte v12, v15, v3

    add-int/2addr v3, v11

    .line 5156
    aget-byte v15, v15, v3

    .line 5157
    invoke-static {v12, v15}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2(II)C

    move-result v12

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 5147
    aget-byte v12, v15, v3

    add-int/2addr v3, v11

    .line 5148
    aget-byte v8, v15, v3

    add-int/2addr v3, v11

    .line 5149
    aget-byte v9, v15, v3

    add-int/2addr v3, v11

    .line 5150
    aget-byte v15, v15, v3

    .line 5151
    invoke-static {v12, v8, v9, v15}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char4(IIII)C

    move-result v12

    goto :goto_4

    :cond_5
    if-ne v12, v14, :cond_7

    if-eqz p2, :cond_6

    .line 5230
    invoke-static {}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->of()Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object v5

    .line 5231
    invoke-virtual {v5, v2, v4, v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeString([CII)V

    .line 5232
    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONWriter;->getBytes()[B

    move-result-object v2

    .line 5233
    array-length v5, v2

    invoke-interface {v1, v2, v4, v5}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept([BII)V

    goto :goto_3

    .line 5235
    :cond_6
    new-array v5, v5, [B

    .line 5236
    invoke-static {v2, v4, v6, v5, v4}, Lcom/alibaba/fastjson2/util/IOUtils;->encodeUTF8([CII[BI)I

    move-result v2

    .line 5237
    invoke-interface {v1, v5, v4, v2}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept([BII)V

    :goto_3
    move v5, v3

    goto/16 :goto_6

    :cond_7
    :goto_4
    if-ltz v12, :cond_8

    int-to-char v8, v12

    .line 5172
    aput-char v8, v2, v7

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    :cond_8
    and-int/lit16 v8, v12, 0xff

    shr-int/lit8 v8, v8, 0x4

    packed-switch v8, :pswitch_data_0

    shr-int/lit8 v8, v12, 0x3

    const/4 v9, -0x2

    if-ne v8, v9, :cond_a

    add-int/lit8 v3, v3, 0x1

    .line 5201
    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    add-int/lit8 v9, v3, 0x1

    aget-byte v3, v8, v3

    add-int/lit8 v15, v9, 0x1

    .line 5202
    aget-byte v9, v8, v9

    add-int/lit8 v10, v15, 0x1

    .line 5203
    aget-byte v8, v8, v15

    shl-int/lit8 v12, v12, 0x12

    shl-int/lit8 v15, v3, 0xc

    xor-int/2addr v12, v15

    shl-int/lit8 v15, v9, 0x6

    xor-int/2addr v12, v15

    const v15, 0x381f80

    xor-int/2addr v15, v8

    xor-int/2addr v12, v15

    and-int/lit16 v3, v3, 0xc0

    const/16 v15, 0x80

    if-ne v3, v15, :cond_9

    and-int/lit16 v3, v9, 0xc0

    if-ne v3, v15, :cond_9

    and-int/lit16 v3, v8, 0xc0

    if-ne v3, v15, :cond_9

    const/high16 v3, 0x10000

    if-lt v12, v3, :cond_9

    const/high16 v3, 0x110000

    if-ge v12, v3, :cond_9

    add-int/lit8 v3, v7, 0x1

    ushr-int/lit8 v8, v12, 0xa

    const v9, 0xd7c0

    add-int/2addr v8, v9

    int-to-char v8, v8

    .line 5219
    aput-char v8, v2, v7

    and-int/lit16 v7, v12, 0x3ff

    const v8, 0xdc00

    add-int/2addr v7, v8

    int-to-char v7, v7

    .line 5220
    aput-char v7, v2, v3

    move v7, v3

    move v3, v10

    goto :goto_5

    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    .line 5189
    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    add-int/lit8 v9, v3, 0x1

    aget-byte v3, v8, v3

    add-int/lit8 v15, v9, 0x1

    .line 5190
    aget-byte v8, v8, v9

    and-int/lit8 v9, v12, 0xf

    shl-int/lit8 v9, v9, 0xc

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v3, v9

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v3, v8

    int-to-char v3, v3

    .line 5191
    aput-char v3, v2, v7

    move v3, v15

    goto :goto_5

    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    .line 5182
    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    add-int/lit8 v9, v3, 0x1

    aget-byte v3, v8, v3

    and-int/lit8 v8, v12, 0x1f

    shl-int/lit8 v8, v8, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v8

    int-to-char v3, v3

    .line 5183
    aput-char v3, v2, v7

    move v3, v9

    :goto_5
    add-int/2addr v7, v11

    const/16 v8, 0x78

    const/16 v9, 0x75

    const/16 v10, 0x5c

    goto/16 :goto_2

    .line 5217
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5225
    :cond_a
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5240
    :cond_b
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    if-eqz p2, :cond_c

    sub-int/2addr v3, v11

    .line 5241
    :cond_c
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    sub-int v6, v5, v6

    if-eqz p2, :cond_d

    add-int/lit8 v6, v6, 0x2

    :cond_d
    if-eqz p2, :cond_e

    const/16 v7, 0x27

    if-ne v2, v7, :cond_e

    .line 5243
    new-array v2, v6, [B

    .line 5244
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    sub-int/2addr v7, v11

    invoke-static {v3, v7, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5245
    aput-byte v14, v2, v4

    add-int/lit8 v3, v6, -0x1

    .line 5246
    aput-byte v14, v2, v3

    .line 5247
    invoke-interface {v1, v2, v4, v6}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept([BII)V

    goto :goto_6

    .line 5249
    :cond_e
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    invoke-interface {v1, v2, v3, v6}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept([BII)V

    .line 5253
    :goto_6
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    add-int/2addr v5, v11

    aget-byte v1, v1, v5

    :goto_7
    const/16 v2, 0x20

    if-gt v1, v2, :cond_f

    const-wide/16 v2, 0x1

    shl-long/2addr v2, v1

    const-wide v6, 0x100003700L

    and-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_f

    .line 5255
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v1, v1, v5

    goto :goto_7

    :cond_f
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_10

    move v4, v11

    .line 5258
    :cond_10
    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v4, :cond_11

    add-int/2addr v5, v11

    .line 5259
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 5260
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    goto :goto_8

    :cond_11
    add-int/2addr v5, v11

    .line 5262
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v1, v1

    .line 5263
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :goto_8
    return-void

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_13
    and-int/lit16 v8, v7, 0xff

    shr-int/lit8 v8, v8, 0x4

    packed-switch v8, :pswitch_data_1

    shr-int/lit8 v7, v7, 0x3

    const/4 v8, -0x2

    if-ne v7, v8, :cond_14

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :pswitch_2
    add-int/lit8 v5, v5, 0x3

    goto :goto_9

    :pswitch_3
    add-int/lit8 v5, v5, 0x2

    :goto_9
    add-int/2addr v6, v11

    goto/16 :goto_0

    .line 5131
    :cond_14
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected readString0()V
    .locals 15

    .line 5268
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 5270
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    const/4 v2, 0x0

    .line 5273
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueEscape:Z

    const/4 v3, 0x1

    move v4, v1

    move v5, v2

    move v6, v3

    .line 5276
    :goto_0
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v7, v7, v4

    const/16 v8, 0x78

    const/16 v9, 0x75

    const/16 v10, 0x5c

    if-ne v7, v10, :cond_2

    .line 5278
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueEscape:Z

    .line 5279
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v7, v7, v4

    if-eq v7, v9, :cond_1

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x4

    :goto_1
    add-int/2addr v4, v3

    goto/16 :goto_9

    :cond_2
    const/4 v11, -0x2

    const-string v12, "malformed input around byte "

    if-ltz v7, :cond_11

    if-ne v7, v0, :cond_10

    .line 5332
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->valueEscape:Z

    if-eqz v0, :cond_b

    .line 5333
    new-array v0, v5, [C

    move v4, v2

    .line 5336
    :goto_2
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v6, v5, v1

    const/16 v7, 0x22

    if-ne v6, v10, :cond_6

    add-int/lit8 v1, v1, 0x1

    .line 5338
    aget-byte v6, v5, v1

    if-eq v6, v7, :cond_5

    if-eq v6, v10, :cond_5

    if-eq v6, v9, :cond_4

    if-eq v6, v8, :cond_3

    .line 5358
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char1(I)C

    move-result v6

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 5349
    aget-byte v6, v5, v1

    add-int/2addr v1, v3

    .line 5350
    aget-byte v5, v5, v1

    .line 5351
    invoke-static {v6, v5}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2(II)C

    move-result v6

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 5341
    aget-byte v6, v5, v1

    add-int/2addr v1, v3

    .line 5342
    aget-byte v7, v5, v1

    add-int/2addr v1, v3

    .line 5343
    aget-byte v13, v5, v1

    add-int/2addr v1, v3

    .line 5344
    aget-byte v5, v5, v1

    .line 5345
    invoke-static {v6, v7, v13, v5}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char4(IIII)C

    move-result v6

    :cond_5
    :goto_3
    int-to-char v5, v6

    .line 5361
    aput-char v5, v0, v4

    add-int/2addr v1, v3

    goto/16 :goto_4

    :cond_6
    if-ne v6, v7, :cond_7

    .line 5425
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    move-object v0, v4

    move v4, v1

    goto/16 :goto_5

    :cond_7
    if-ltz v6, :cond_8

    int-to-char v5, v6

    .line 5367
    aput-char v5, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_8
    and-int/lit16 v7, v6, 0xff

    shr-int/lit8 v7, v7, 0x4

    packed-switch v7, :pswitch_data_0

    shr-int/lit8 v7, v6, 0x3

    if-ne v7, v11, :cond_a

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v7, v1, 0x1

    .line 5394
    aget-byte v1, v5, v1

    add-int/lit8 v13, v7, 0x1

    .line 5395
    aget-byte v7, v5, v7

    add-int/lit8 v14, v13, 0x1

    .line 5396
    aget-byte v5, v5, v13

    shl-int/lit8 v6, v6, 0x12

    shl-int/lit8 v13, v1, 0xc

    xor-int/2addr v6, v13

    shl-int/lit8 v13, v7, 0x6

    xor-int/2addr v6, v13

    const v13, 0x381f80

    xor-int/2addr v13, v5

    xor-int/2addr v6, v13

    and-int/lit16 v1, v1, 0xc0

    const/16 v13, 0x80

    if-ne v1, v13, :cond_9

    and-int/lit16 v1, v7, 0xc0

    if-ne v1, v13, :cond_9

    and-int/lit16 v1, v5, 0xc0

    if-ne v1, v13, :cond_9

    const/high16 v1, 0x10000

    if-lt v6, v1, :cond_9

    const/high16 v1, 0x110000

    if-ge v6, v1, :cond_9

    add-int/lit8 v1, v4, 0x1

    ushr-int/lit8 v5, v6, 0xa

    const v7, 0xd7c0

    add-int/2addr v5, v7

    int-to-char v5, v5

    .line 5412
    aput-char v5, v0, v4

    and-int/lit16 v4, v6, 0x3ff

    const v5, 0xdc00

    add-int/2addr v4, v5

    int-to-char v4, v4

    .line 5413
    aput-char v4, v0, v1

    move v4, v1

    move v1, v14

    goto :goto_4

    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v7, v1, 0x1

    .line 5382
    aget-byte v1, v5, v1

    add-int/lit8 v13, v7, 0x1

    .line 5383
    aget-byte v5, v5, v7

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0xc

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v1, v5

    int-to-char v1, v1

    .line 5384
    aput-char v1, v0, v4

    move v1, v13

    goto :goto_4

    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v7, v1, 0x1

    .line 5375
    aget-byte v1, v5, v1

    and-int/lit8 v5, v6, 0x1f

    shl-int/lit8 v5, v5, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v5

    int-to-char v1, v1

    .line 5376
    aput-char v1, v0, v4

    move v1, v7

    :goto_4
    add-int/2addr v4, v3

    goto/16 :goto_2

    .line 5410
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5418
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-eqz v6, :cond_c

    .line 5427
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v5, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v6, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    sub-int v6, v4, v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_5

    .line 5429
    :cond_c
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v5, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v6, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    sub-int v6, v4, v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 5432
    :goto_5
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    add-int/2addr v4, v3

    aget-byte v1, v1, v4

    :goto_6
    const/16 v5, 0x20

    if-gt v1, v5, :cond_d

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v1

    const-wide v7, 0x100003700L

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_d

    .line 5434
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v1, v1, v4

    goto :goto_6

    :cond_d
    const/16 v5, 0x2c

    if-ne v1, v5, :cond_e

    move v2, v3

    .line 5437
    :cond_e
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-ne v1, v5, :cond_f

    add-int/2addr v4, v3

    .line 5439
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 5440
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    goto :goto_7

    :cond_f
    add-int/2addr v4, v3

    .line 5442
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v1, v1

    .line 5443
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 5446
    :goto_7
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->stringValue:Ljava/lang/String;

    return-void

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_11
    and-int/lit16 v6, v7, 0xff

    shr-int/lit8 v6, v6, 0x4

    packed-switch v6, :pswitch_data_1

    shr-int/lit8 v6, v7, 0x3

    if-ne v6, v11, :cond_12

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :pswitch_2
    add-int/lit8 v4, v4, 0x3

    goto :goto_8

    :pswitch_3
    add-int/lit8 v4, v4, 0x2

    :goto_8
    move v6, v2

    :goto_9
    add-int/2addr v5, v3

    goto/16 :goto_0

    .line 5325
    :cond_12
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final readUUID()Ljava/util/UUID;
    .locals 22

    move-object/from16 v0, p0

    .line 8041
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/4 v2, 0x0

    const/16 v3, 0x6e

    if-ne v1, v3, :cond_0

    .line 8043
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readNull()V

    return-object v2

    :cond_0
    const/16 v3, 0x22

    if-eq v1, v3, :cond_2

    const/16 v3, 0x27

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 8048
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v2, "syntax error, can not read uuid"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8051
    :cond_2
    :goto_0
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 8052
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v5, v4, 0x24

    .line 8053
    array-length v6, v3

    const-wide/16 v9, 0x1

    const/16 v11, 0x2c

    const/16 v14, 0x20

    const-wide/16 v15, 0x0

    const/16 v17, 0x4

    const/16 v18, 0x1

    if-ge v5, v6, :cond_d

    aget-byte v5, v3, v5

    if-ne v5, v1, :cond_d

    add-int/lit8 v1, v4, 0x8

    .line 8054
    aget-byte v1, v3, v1

    int-to-char v1, v1

    add-int/lit8 v5, v4, 0xd

    .line 8055
    aget-byte v5, v3, v5

    int-to-char v5, v5

    add-int/lit8 v6, v4, 0x12

    .line 8056
    aget-byte v6, v3, v6

    int-to-char v6, v6

    add-int/lit8 v19, v4, 0x17

    .line 8057
    aget-byte v12, v3, v19

    int-to-char v12, v12

    const/16 v13, 0x2d

    if-ne v1, v13, :cond_15

    if-ne v5, v13, :cond_15

    if-ne v6, v13, :cond_15

    if-ne v12, v13, :cond_15

    move-wide v5, v15

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x8

    if-ge v1, v2, :cond_3

    shl-long v5, v5, v17

    .line 8061
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    add-int v12, v4, v1

    aget-byte v12, v3, v12

    add-int/lit8 v12, v12, -0x30

    aget-byte v2, v2, v12

    int-to-long v12, v2

    add-long/2addr v5, v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/16 v1, 0x9

    :goto_2
    const/16 v2, 0xd

    if-ge v1, v2, :cond_4

    shl-long v5, v5, v17

    .line 8064
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    add-int v12, v4, v1

    aget-byte v12, v3, v12

    add-int/lit8 v12, v12, -0x30

    aget-byte v2, v2, v12

    int-to-long v12, v2

    add-long/2addr v5, v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/16 v1, 0xe

    :goto_3
    const/16 v2, 0x12

    if-ge v1, v2, :cond_5

    shl-long v5, v5, v17

    .line 8067
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    add-int v12, v4, v1

    aget-byte v12, v3, v12

    add-int/lit8 v12, v12, -0x30

    aget-byte v2, v2, v12

    int-to-long v12, v2

    add-long/2addr v5, v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const/16 v1, 0x13

    move-wide v12, v15

    :goto_4
    const/16 v2, 0x17

    if-ge v1, v2, :cond_6

    shl-long v12, v12, v17

    .line 8072
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    add-int v20, v4, v1

    aget-byte v20, v3, v20

    add-int/lit8 v20, v20, -0x30

    aget-byte v2, v2, v20

    int-to-long v7, v2

    add-long/2addr v12, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    const/16 v1, 0x18

    :goto_5
    const/16 v2, 0x24

    if-ge v1, v2, :cond_7

    shl-long v7, v12, v17

    .line 8075
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    add-int v12, v4, v1

    aget-byte v12, v3, v12

    add-int/lit8 v12, v12, -0x30

    aget-byte v2, v2, v12

    int-to-long v12, v2

    add-long/2addr v12, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 8078
    :cond_7
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v5, v6, v12, v13}, Ljava/util/UUID;-><init>(JJ)V

    add-int/lit8 v4, v4, 0x25

    .line 8080
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v4, v2, :cond_8

    move v2, v4

    :goto_6
    const/16 v4, 0x1a

    goto :goto_7

    :cond_8
    add-int/lit8 v2, v4, 0x1

    .line 8083
    aget-byte v4, v3, v4

    int-to-char v4, v4

    :goto_7
    if-gt v4, v14, :cond_a

    shl-long v5, v9, v4

    const-wide v7, 0x100003700L

    and-long/2addr v5, v7

    cmp-long v5, v5, v15

    if-eqz v5, :cond_a

    .line 8087
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v2, v4, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v4, v2, 0x1

    .line 8090
    aget-byte v2, v3, v2

    int-to-char v2, v2

    move/from16 v21, v4

    move v4, v2

    move/from16 v2, v21

    goto :goto_7

    .line 8094
    :cond_a
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    if-ne v4, v11, :cond_b

    move/from16 v13, v18

    goto :goto_8

    :cond_b
    const/4 v13, 0x0

    .line 8095
    :goto_8
    iput-boolean v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v13, :cond_c

    .line 8096
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    goto :goto_9

    .line 8098
    :cond_c
    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :goto_9
    return-object v1

    :cond_d
    add-int/lit8 v5, v4, 0x20

    .line 8103
    array-length v6, v3

    if-ge v5, v6, :cond_15

    aget-byte v5, v3, v5

    if-ne v5, v1, :cond_15

    move-wide v5, v15

    const/4 v1, 0x0

    :goto_a
    const/16 v2, 0x10

    if-ge v1, v2, :cond_e

    shl-long v5, v5, v17

    .line 8106
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    add-int v7, v4, v1

    aget-byte v7, v3, v7

    add-int/lit8 v7, v7, -0x30

    aget-byte v2, v2, v7

    int-to-long v7, v2

    add-long/2addr v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_e
    move-wide v7, v15

    :goto_b
    if-ge v2, v14, :cond_f

    shl-long v7, v7, v17

    .line 8110
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    add-int v12, v4, v2

    aget-byte v12, v3, v12

    add-int/lit8 v12, v12, -0x30

    aget-byte v1, v1, v12

    int-to-long v12, v1

    add-long/2addr v7, v12

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 8112
    :cond_f
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v5, v6, v7, v8}, Ljava/util/UUID;-><init>(JJ)V

    add-int/lit8 v4, v4, 0x21

    .line 8114
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v4, v2, :cond_10

    move v2, v4

    :goto_c
    const/16 v4, 0x1a

    goto :goto_d

    :cond_10
    add-int/lit8 v2, v4, 0x1

    .line 8117
    aget-byte v4, v3, v4

    int-to-char v4, v4

    :goto_d
    if-gt v4, v14, :cond_12

    shl-long v5, v9, v4

    const-wide v7, 0x100003700L

    and-long/2addr v5, v7

    cmp-long v5, v5, v15

    if-eqz v5, :cond_12

    .line 8121
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v2, v4, :cond_11

    goto :goto_c

    :cond_11
    add-int/lit8 v4, v2, 0x1

    .line 8124
    aget-byte v2, v3, v2

    int-to-char v2, v2

    move/from16 v21, v4

    move v4, v2

    move/from16 v2, v21

    goto :goto_d

    .line 8128
    :cond_12
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    if-ne v4, v11, :cond_13

    move/from16 v13, v18

    goto :goto_e

    :cond_13
    const/4 v13, 0x0

    .line 8129
    :goto_e
    iput-boolean v13, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v13, :cond_14

    .line 8130
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    goto :goto_f

    .line 8132
    :cond_14
    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    :goto_f
    return-object v1

    .line 8137
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8138
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_16

    return-object v2

    .line 8141
    :cond_16
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    return-object v1
.end method

.method public readValueHashCode()J
    .locals 20

    move-object/from16 v0, p0

    .line 2995
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_1

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v3, 0x27

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 2996
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal character "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2999
    :cond_1
    :goto_0
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/4 v3, 0x1

    .line 3001
    iput-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    const/4 v4, 0x0

    .line 3002
    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEscape:Z

    .line 3003
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    const-wide/16 v6, 0x0

    move v8, v4

    move-wide v9, v6

    .line 3006
    :goto_1
    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/16 v12, 0x78

    const/16 v13, 0x75

    const/16 v14, 0x5c

    const/16 v15, 0x20

    if-ge v5, v11, :cond_b

    .line 3007
    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v4, v11, v5

    if-ne v4, v1, :cond_3

    if-nez v8, :cond_2

    .line 3012
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    :goto_2
    move-wide v9, v6

    goto/16 :goto_7

    .line 3016
    :cond_2
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 3017
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_7

    :cond_3
    if-ne v4, v14, :cond_6

    .line 3023
    iput-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEscape:Z

    .line 3024
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v11, v4, v5

    if-eq v11, v13, :cond_5

    if-eq v11, v12, :cond_4

    .line 3043
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char1(I)C

    move-result v4

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 3035
    aget-byte v11, v4, v5

    add-int/2addr v5, v3

    .line 3036
    aget-byte v4, v4, v5

    .line 3037
    invoke-static {v11, v4}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2(II)C

    move-result v4

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 3027
    aget-byte v11, v4, v5

    add-int/2addr v5, v3

    .line 3028
    aget-byte v2, v4, v5

    add-int/2addr v5, v3

    .line 3029
    aget-byte v12, v4, v5

    add-int/2addr v5, v3

    .line 3030
    aget-byte v4, v4, v5

    .line 3031
    invoke-static {v11, v2, v12, v4}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char4(IIII)C

    move-result v4

    goto :goto_3

    :cond_6
    const/16 v2, -0x3d

    if-eq v4, v2, :cond_7

    const/16 v2, -0x3e

    if-ne v4, v2, :cond_8

    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 3047
    aget-byte v2, v11, v5

    and-int/lit8 v4, v4, 0x1f

    shl-int/lit8 v4, v4, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v4

    int-to-char v4, v2

    :cond_8
    :goto_3
    const/16 v2, 0xff

    if-gt v4, v2, :cond_a

    if-ltz v4, :cond_a

    const/16 v2, 0x8

    if-ge v8, v2, :cond_a

    if-nez v8, :cond_9

    if-nez v4, :cond_9

    goto :goto_6

    :cond_9
    packed-switch v8, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    int-to-byte v2, v4

    int-to-long v11, v2

    const/16 v2, 0x38

    shl-long/2addr v11, v2

    const-wide v13, 0xffffffffffffffL

    goto :goto_4

    :pswitch_1
    int-to-byte v2, v4

    int-to-long v11, v2

    const/16 v2, 0x30

    shl-long/2addr v11, v2

    const-wide v13, 0xffffffffffffL

    goto :goto_4

    :pswitch_2
    int-to-byte v2, v4

    int-to-long v11, v2

    const/16 v2, 0x28

    shl-long/2addr v11, v2

    const-wide v13, 0xffffffffffL

    goto :goto_4

    :pswitch_3
    int-to-byte v2, v4

    int-to-long v11, v2

    shl-long/2addr v11, v15

    const-wide v13, 0xffffffffL

    goto :goto_4

    :pswitch_4
    int-to-byte v2, v4

    shl-int/lit8 v2, v2, 0x18

    int-to-long v11, v2

    const-wide/32 v13, 0xffffff

    goto :goto_4

    :pswitch_5
    int-to-byte v2, v4

    shl-int/lit8 v2, v2, 0x10

    int-to-long v11, v2

    const-wide/32 v13, 0xffff

    goto :goto_4

    :pswitch_6
    int-to-byte v4, v4

    shl-int/lit8 v2, v4, 0x8

    int-to-long v11, v2

    const-wide/16 v13, 0xff

    :goto_4
    and-long/2addr v9, v13

    add-long/2addr v9, v11

    goto :goto_5

    :pswitch_7
    int-to-byte v2, v4

    int-to-long v9, v2

    :goto_5
    add-int/2addr v5, v3

    add-int/lit8 v8, v8, 0x1

    const/16 v2, 0x22

    const/4 v4, 0x0

    goto/16 :goto_1

    .line 3054
    :cond_a
    :goto_6
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameBegin:I

    goto/16 :goto_2

    :cond_b
    :goto_7
    cmp-long v1, v9, v6

    if-eqz v1, :cond_c

    goto :goto_a

    :cond_c
    const-wide v1, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    move-wide v9, v1

    const/4 v1, 0x0

    .line 3094
    :goto_8
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v4, v2, v5

    const-wide v11, 0x100000001b3L

    if-ne v4, v14, :cond_f

    .line 3096
    iput-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEscape:Z

    .line 3097
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v2, v5

    if-eq v4, v13, :cond_e

    const/16 v8, 0x78

    if-eq v4, v8, :cond_d

    .line 3116
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char1(I)C

    move-result v2

    goto :goto_9

    :cond_d
    add-int/lit8 v5, v5, 0x1

    .line 3108
    aget-byte v4, v2, v5

    add-int/2addr v5, v3

    .line 3109
    aget-byte v2, v2, v5

    .line 3110
    invoke-static {v4, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char2(II)C

    move-result v2

    goto :goto_9

    :cond_e
    const/16 v8, 0x78

    add-int/lit8 v5, v5, 0x1

    .line 3100
    aget-byte v4, v2, v5

    add-int/2addr v5, v3

    .line 3101
    aget-byte v8, v2, v5

    add-int/2addr v5, v3

    .line 3102
    aget-byte v13, v2, v5

    add-int/2addr v5, v3

    .line 3103
    aget-byte v2, v2, v5

    .line 3104
    invoke-static {v4, v8, v13, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char4(IIII)C

    move-result v2

    :goto_9
    add-int/2addr v5, v3

    int-to-long v6, v2

    xor-long/2addr v6, v9

    mul-long/2addr v6, v11

    move-wide v9, v6

    const-wide/16 v18, 0x0

    goto/16 :goto_f

    :cond_f
    const/16 v6, 0x22

    if-ne v4, v6, :cond_16

    .line 3126
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameLength:I

    .line 3127
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameEnd:I

    add-int/2addr v5, v3

    .line 3207
    :goto_a
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    const/16 v2, 0x1a

    if-ne v5, v1, :cond_10

    move v1, v2

    goto :goto_b

    .line 3210
    :cond_10
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v1, v1, v5

    :goto_b
    const-wide v6, 0x100003700L

    const-wide/16 v11, 0x1

    if-gt v1, v15, :cond_11

    shl-long v13, v11, v1

    and-long/2addr v13, v6

    const-wide/16 v16, 0x0

    cmp-long v4, v13, v16

    if-eqz v4, :cond_11

    add-int/lit8 v5, v5, 0x1

    .line 3215
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v1, v1, v5

    goto :goto_b

    :cond_11
    const/16 v4, 0x2c

    if-ne v1, v4, :cond_12

    move v4, v3

    goto :goto_c

    :cond_12
    const/4 v4, 0x0

    .line 3218
    :goto_c
    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v4, :cond_15

    add-int/lit8 v5, v5, 0x1

    .line 3220
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ne v5, v1, :cond_13

    goto :goto_d

    .line 3223
    :cond_13
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v2, v1, v5

    :goto_d
    if-gt v2, v15, :cond_14

    shl-long v13, v11, v2

    and-long/2addr v13, v6

    const-wide/16 v18, 0x0

    cmp-long v1, v13, v18

    if-eqz v1, :cond_14

    add-int/lit8 v5, v5, 0x1

    .line 3228
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v2, v1, v5

    goto :goto_d

    :cond_14
    move v1, v2

    :cond_15
    add-int/2addr v5, v3

    .line 3232
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v1, v1

    .line 3233
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return-wide v9

    :cond_16
    const-wide/16 v18, 0x0

    if-ltz v4, :cond_17

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_e

    :cond_17
    and-int/lit16 v7, v4, 0xff

    shr-int/lit8 v7, v7, 0x4

    const-string v8, "malformed input around byte "

    const/16 v13, 0x80

    packed-switch v7, :pswitch_data_1

    const/4 v6, 0x0

    shr-int/lit8 v7, v4, 0x3

    const/4 v6, -0x2

    if-ne v7, v6, :cond_1b

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v5, 0x1

    .line 3167
    aget-byte v5, v2, v5

    add-int/lit8 v7, v6, 0x1

    .line 3168
    aget-byte v6, v2, v6

    add-int/lit8 v14, v7, 0x1

    .line 3169
    aget-byte v2, v2, v7

    shl-int/lit8 v4, v4, 0x12

    shl-int/lit8 v7, v5, 0xc

    xor-int/2addr v4, v7

    shl-int/lit8 v7, v6, 0x6

    xor-int/2addr v4, v7

    const v7, 0x381f80

    xor-int/2addr v7, v2

    xor-int/2addr v4, v7

    and-int/lit16 v5, v5, 0xc0

    if-ne v5, v13, :cond_1a

    and-int/lit16 v5, v6, 0xc0

    if-ne v5, v13, :cond_1a

    and-int/lit16 v2, v2, 0xc0

    if-ne v2, v13, :cond_1a

    const/high16 v2, 0x10000

    if-lt v4, v2, :cond_1a

    const/high16 v2, 0x110000

    if-ge v4, v2, :cond_1a

    ushr-int/lit8 v2, v4, 0xa

    const v5, 0xd7c0

    add-int/2addr v2, v5

    int-to-char v2, v2

    and-int/lit16 v4, v4, 0x3ff

    const v5, 0xdc00

    add-int/2addr v4, v5

    int-to-char v4, v4

    int-to-long v5, v2

    xor-long/2addr v5, v9

    mul-long/2addr v5, v11

    int-to-long v7, v4

    xor-long v4, v5, v7

    mul-long/2addr v4, v11

    add-int/lit8 v1, v1, 0x1

    move-wide v9, v4

    move v5, v14

    goto :goto_f

    :pswitch_8
    add-int/lit8 v7, v5, 0x1

    .line 3151
    aget-byte v7, v2, v7

    add-int/lit8 v16, v5, 0x2

    .line 3152
    aget-byte v2, v2, v16

    and-int/lit16 v6, v7, 0xc0

    if-ne v6, v13, :cond_18

    and-int/lit16 v6, v2, 0xc0

    if-ne v6, v13, :cond_18

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0xc

    and-int/lit8 v6, v7, 0x3f

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v4, v6

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v4

    int-to-char v4, v2

    add-int/lit8 v5, v5, 0x3

    const/4 v2, 0x0

    .line 3160
    iput-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    move v6, v2

    goto :goto_e

    .line 3154
    :cond_18
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_9
    add-int/lit8 v6, v5, 0x1

    .line 3139
    aget-byte v2, v2, v6

    and-int/lit16 v6, v2, 0xc0

    if-ne v6, v13, :cond_19

    and-int/lit8 v4, v4, 0x1f

    shl-int/lit8 v4, v4, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v4

    int-to-char v4, v2

    add-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    .line 3147
    iput-boolean v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nameAscii:Z

    :goto_e
    int-to-long v7, v4

    xor-long/2addr v7, v9

    mul-long/2addr v7, v11

    move-wide v9, v7

    goto :goto_f

    .line 3141
    :cond_19
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_f
    add-int/2addr v1, v3

    move-wide/from16 v6, v18

    const/16 v13, 0x75

    const/16 v14, 0x5c

    goto/16 :goto_8

    .line 3183
    :cond_1a
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3197
    :cond_1b
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_9
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method protected final readZonedDateTimeX(I)Ljava/time/ZonedDateTime;
    .locals 5

    .line 7323
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->isString()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x13

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x1e

    const/16 v2, 0x1d

    const/16 v3, 0x5a

    if-ne p1, v0, :cond_1

    .line 7332
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v4, v2

    aget-byte v0, v0, v4

    if-ne v0, v3, :cond_1

    .line 7333
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime29([BI)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 7334
    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v0, v2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x1c

    if-ne p1, v2, :cond_2

    .line 7335
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v4, v0

    aget-byte v2, v2, v4

    if-ne v2, v3, :cond_2

    .line 7336
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime28([BI)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 7337
    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v0, v2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v2, 0x1b

    if-ne p1, v0, :cond_3

    .line 7338
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v4, v2

    aget-byte v0, v0, v4

    if-ne v0, v3, :cond_3

    .line 7339
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime27([BI)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 7340
    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v0, v2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_4

    .line 7341
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x1a

    aget-byte v0, v0, v2

    if-ne v0, v3, :cond_4

    .line 7342
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime26([BI)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 7343
    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v0, v2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0

    .line 7345
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Ljava/time/ZoneId;

    invoke-static {v0, v2, p1, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime([BIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_5

    return-object v1

    .line 7352
    :cond_5
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 7353
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 7354
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x2c

    if-ne p1, v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v2, :cond_7

    .line 7355
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    :cond_7
    return-object v0

    .line 7324
    :cond_8
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final skipComment()V
    .locals 10

    .line 5956
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v0, 0x1

    .line 5957
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v1, v2, :cond_a

    .line 5961
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v0, v2, v0

    const/16 v3, 0x2a

    const/4 v4, 0x0

    const/16 v5, 0x2f

    const/4 v6, 0x1

    if-ne v0, v3, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    if-ne v0, v5, :cond_9

    move v0, v4

    :goto_0
    add-int/lit8 v7, v1, 0x1

    .line 5972
    aget-byte v1, v2, v1

    :goto_1
    if-eqz v0, :cond_2

    if-ne v1, v3, :cond_1

    .line 5977
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-gt v7, v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v1, v1, v7

    if-ne v1, v5, :cond_1

    add-int/lit8 v7, v7, 0x1

    :goto_2
    move v1, v6

    goto :goto_3

    :cond_1
    move v1, v4

    goto :goto_3

    :cond_2
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    goto :goto_2

    :goto_3
    const/16 v2, 0x1a

    if-eqz v1, :cond_6

    .line 5987
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v7, v0, :cond_3

    goto :goto_6

    .line 5992
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v0, v0, v7

    :goto_4
    const/16 v1, 0x20

    if-gt v0, v1, :cond_5

    const-wide/16 v3, 0x1

    shl-long/2addr v3, v0

    const-wide v8, 0x100003700L

    and-long/2addr v3, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v3, v8

    if-eqz v1, :cond_5

    add-int/lit8 v7, v7, 0x1

    .line 5996
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v7, v0, :cond_4

    goto :goto_5

    .line 6000
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v0, v0, v7

    goto :goto_4

    :cond_5
    move v2, v0

    :goto_5
    add-int/2addr v7, v6

    goto :goto_6

    .line 6007
    :cond_6
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v7, v1, :cond_8

    :goto_6
    int-to-char v0, v2

    .line 6014
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 6015
    iput v7, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    if-ne v2, v5, :cond_7

    .line 6018
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipComment()V

    :cond_7
    return-void

    .line 6011
    :cond_8
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    add-int/lit8 v2, v7, 0x1

    aget-byte v1, v1, v7

    move v7, v2

    goto :goto_1

    :cond_9
    return-void

    .line 5958
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final skipName()Z
    .locals 12

    .line 5451
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5452
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "not support unquoted name"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5454
    :cond_1
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 5456
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 5458
    :goto_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v3, v2, v1

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_2

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    if-ne v3, v0, :cond_6

    const/4 v0, 0x1

    add-int/2addr v1, v0

    .line 5466
    aget-byte v2, v2, v1

    :goto_2
    const-wide/16 v3, 0x0

    const-wide v5, 0x100003700L

    const-wide/16 v7, 0x1

    const/16 v9, 0x20

    if-gt v2, v9, :cond_3

    shl-long v10, v7, v2

    and-long/2addr v10, v5

    cmp-long v10, v10, v3

    if-eqz v10, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 5470
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v2, v2, v1

    goto :goto_2

    :cond_3
    const/16 v10, 0x3a

    if-ne v2, v10, :cond_5

    add-int/2addr v1, v0

    .line 5477
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v2, v2, v1

    :goto_3
    if-gt v2, v9, :cond_4

    shl-long v10, v7, v2

    and-long/2addr v10, v5

    cmp-long v10, v10, v3

    if-eqz v10, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 5481
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    aget-byte v2, v2, v1

    goto :goto_3

    :cond_4
    add-int/2addr v1, v0

    .line 5484
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v1, v2

    .line 5485
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return v0

    .line 5473
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syntax error, expect \',\', but \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected final skipString()V
    .locals 17

    move-object/from16 v0, p0

    .line 5890
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    int-to-byte v1, v1

    .line 5893
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    .line 5894
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v4, v3, 0x1

    .line 5895
    aget-byte v3, v2, v3

    :goto_0
    const/16 v5, 0x5c

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, v4, 0x1

    .line 5898
    aget-byte v4, v2, v4

    if-eq v4, v5, :cond_2

    const/16 v5, 0x22

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/16 v5, 0x75

    if-ne v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v3, 0x1

    .line 5907
    aget-byte v3, v2, v3

    goto :goto_0

    .line 5911
    :cond_1
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->char1(I)C

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v4, v3, 0x1

    .line 5901
    aget-byte v3, v2, v3

    goto :goto_0

    :cond_3
    const/16 v5, 0x1a

    if-ne v3, v1, :cond_4

    .line 5915
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v4, v1, :cond_5

    add-int/lit8 v1, v4, 0x1

    aget-byte v3, v2, v4

    goto :goto_4

    .line 5919
    :cond_4
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v4, v3, :cond_5

    add-int/lit8 v3, v4, 0x1

    .line 5920
    aget-byte v4, v2, v4

    :goto_2
    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    goto :goto_0

    :cond_5
    move v3, v5

    :goto_3
    const-wide/16 v6, 0x0

    const-wide v8, 0x100003700L

    const-wide/16 v10, 0x1

    const/16 v1, 0x20

    if-gt v3, v1, :cond_6

    shl-long v12, v10, v3

    and-long/2addr v12, v8

    cmp-long v12, v12, v6

    if-eqz v12, :cond_6

    add-int/lit8 v1, v4, 0x1

    .line 5928
    aget-byte v3, v2, v4

    :goto_4
    move v4, v1

    goto :goto_3

    :cond_6
    const/16 v12, 0x2c

    const/4 v13, 0x1

    if-ne v3, v12, :cond_7

    move v12, v13

    goto :goto_5

    :cond_7
    const/4 v12, 0x0

    .line 5931
    :goto_5
    iput-boolean v12, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v12, :cond_b

    .line 5932
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v4, v3, :cond_8

    .line 5933
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 5934
    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return-void

    .line 5938
    :cond_8
    aget-byte v3, v2, v4

    :goto_6
    if-gt v3, v1, :cond_a

    shl-long v14, v10, v3

    and-long/2addr v14, v8

    cmp-long v12, v14, v6

    if-eqz v12, :cond_a

    add-int/lit8 v4, v4, 0x1

    .line 5941
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v4, v3, :cond_9

    .line 5942
    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 5943
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    return-void

    .line 5946
    :cond_9
    aget-byte v3, v2, v4

    goto :goto_6

    :cond_a
    add-int/2addr v4, v13

    .line 5950
    :cond_b
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-char v1, v3

    .line 5951
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return-void
.end method

.method public final skipValue()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 5497
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    .line 5498
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v3, 0x22

    const-wide v7, 0x100003700L

    const-wide/16 v9, 0x1

    const/16 v11, 0x20

    const/16 v12, 0x7d

    const-string v14, "error, offset "

    const-string v15, ", char "

    const/4 v1, 0x1

    if-eq v2, v3, :cond_44

    const/16 v3, 0x27

    if-eq v2, v3, :cond_44

    const/16 v3, 0x2e

    const/16 v13, 0x2d

    const/16 v4, 0x53

    const/16 v5, 0x2b

    if-eq v2, v5, :cond_0

    if-eq v2, v4, :cond_1c

    const/16 v6, 0x5b

    if-eq v2, v6, :cond_18

    const/16 v6, 0x66

    if-eq v2, v6, :cond_11

    const/16 v6, 0x6e

    if-eq v2, v6, :cond_a

    const/16 v6, 0x74

    if-eq v2, v6, :cond_3

    const/16 v6, 0x7b

    if-eq v2, v6, :cond_1

    if-eq v2, v13, :cond_0

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 5755
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TODO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :pswitch_0
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 5516
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 5518
    :goto_0
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v2, v12, :cond_2

    .line 5519
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    goto/16 :goto_18

    .line 5522
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipName()Z

    .line 5523
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipValue()V

    goto :goto_0

    .line 5668
    :cond_3
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x3

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-gt v2, v3, :cond_9

    .line 5671
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v2, v2, v3

    const/16 v3, 0x72

    if-ne v2, v3, :cond_8

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v3, v1

    aget-byte v2, v2, v3

    const/16 v3, 0x75

    if-ne v2, v3, :cond_8

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    const/16 v3, 0x65

    if-ne v2, v3, :cond_8

    .line 5674
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 5675
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v2, v3, :cond_7

    .line 5676
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 5682
    :goto_1
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v2, v11, :cond_5

    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v2, v9, v2

    and-long/2addr v2, v7

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 5683
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v2, v3, :cond_4

    .line 5684
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_1

    :cond_4
    const/16 v2, 0x1a

    .line 5686
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return-void

    .line 5691
    :cond_5
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v2, v12, :cond_6

    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_45

    :cond_6
    return-void

    :cond_7
    const/16 v1, 0x1a

    .line 5678
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return-void

    .line 5672
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5669
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5721
    :cond_a
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x3

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-gt v2, v3, :cond_10

    .line 5724
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v2, v2, v3

    const/16 v3, 0x75

    if-ne v2, v3, :cond_f

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v3, v1

    aget-byte v2, v2, v3

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_f

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_f

    .line 5727
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 5728
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v2, v3, :cond_e

    .line 5729
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 5735
    :goto_2
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v2, v11, :cond_c

    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v2, v9, v2

    and-long/2addr v2, v7

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    .line 5736
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v2, v3, :cond_b

    .line 5737
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_2

    :cond_b
    const/16 v2, 0x1a

    .line 5739
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return-void

    .line 5744
    :cond_c
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v2, v12, :cond_d

    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_45

    :cond_d
    return-void

    :cond_e
    const/16 v1, 0x1a

    .line 5731
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return-void

    .line 5725
    :cond_f
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5722
    :cond_10
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5696
    :cond_11
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x4

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-lt v2, v3, :cond_13

    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    int-to-long v12, v6

    add-long/2addr v4, v12

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    sget v3, Lcom/alibaba/fastjson2/util/IOUtils;->ALSE:I

    if-ne v2, v3, :cond_12

    goto :goto_3

    .line 5697
    :cond_12
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5699
    :cond_13
    :goto_3
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 5700
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v2, v3, :cond_17

    .line 5701
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 5707
    :goto_4
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v2, v11, :cond_15

    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v2, v9, v2

    and-long/2addr v2, v7

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_15

    .line 5708
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v2, v3, :cond_14

    .line 5709
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_4

    :cond_14
    const/16 v2, 0x1a

    .line 5711
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return-void

    .line 5716
    :cond_15
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_16

    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_45

    :cond_16
    return-void

    :cond_17
    const/16 v1, 0x1a

    .line 5703
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return-void

    :cond_18
    const/16 v3, 0x5d

    .line 5500
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    const/4 v2, 0x0

    .line 5502
    :goto_5
    iget-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v4, v3, :cond_19

    .line 5503
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    goto/16 :goto_18

    :cond_19
    if-eqz v2, :cond_1b

    .line 5507
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-eqz v3, :cond_1a

    goto :goto_6

    .line 5508
    :cond_1a
    new-instance v1, Lcom/alibaba/fastjson2/JSONValidException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONValidException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    :goto_6
    const/4 v6, 0x0

    .line 5510
    iput-boolean v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    .line 5511
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipValue()V

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x5d

    goto :goto_5

    .line 5749
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nextIfSet()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 5750
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipValue()V

    goto/16 :goto_18

    .line 5753
    :cond_1d
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5545
    :goto_7
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v2, v13, :cond_1f

    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v2, v5, :cond_1e

    goto :goto_8

    :cond_1e
    move v2, v6

    goto :goto_9

    :cond_1f
    :goto_8
    move v2, v1

    :goto_9
    const-string v12, "illegal number, offset "

    if-eqz v2, :cond_21

    .line 5547
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v2, v6, :cond_20

    .line 5548
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v1, v6, 0x1

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v2, v6

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_a

    .line 5550
    :cond_20
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5553
    :cond_21
    :goto_a
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v1, v3, :cond_22

    const/4 v1, 0x1

    goto :goto_b

    :cond_22
    const/4 v1, 0x0

    :goto_b
    const/16 v2, 0x39

    const/16 v6, 0x30

    if-nez v1, :cond_26

    .line 5556
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-lt v1, v6, :cond_26

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v1, v2, :cond_26

    .line 5559
    :goto_c
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v1, v7, :cond_25

    .line 5560
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v7

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 5565
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-lt v1, v6, :cond_24

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-le v1, v2, :cond_23

    goto :goto_d

    :cond_23
    const-wide v7, 0x100003700L

    goto :goto_c

    :cond_24
    :goto_d
    const/4 v1, 0x1

    goto :goto_e

    :cond_25
    const/16 v1, 0x1a

    .line 5562
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return-void

    :cond_26
    const/4 v1, 0x0

    :goto_e
    if-eqz v1, :cond_28

    .line 5568
    iget-char v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v8, 0x4c

    if-eq v7, v8, :cond_27

    iget-char v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v8, 0x46

    if-eq v7, v8, :cond_27

    iget-char v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v8, 0x44

    if-eq v7, v8, :cond_27

    iget-char v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v8, 0x42

    if-eq v7, v8, :cond_27

    iget-char v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v7, v4, :cond_28

    .line 5569
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->next()V

    .line 5573
    :cond_28
    iget-char v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v7, v3, :cond_2d

    .line 5575
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v3, v7, :cond_2c

    .line 5576
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    iput-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 5582
    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-lt v3, v6, :cond_2b

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v3, v2, :cond_2b

    .line 5584
    :cond_29
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v3, v7, :cond_2a

    .line 5585
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    iput-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 5590
    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-lt v3, v6, :cond_2b

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-le v3, v2, :cond_29

    goto :goto_f

    :cond_2a
    const/16 v3, 0x1a

    .line 5587
    iput-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return-void

    :cond_2b
    :goto_f
    const/16 v3, 0x1a

    const/4 v3, 0x1

    goto :goto_10

    :cond_2c
    const/16 v3, 0x1a

    .line 5578
    iput-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return-void

    :cond_2d
    const/4 v3, 0x0

    :goto_10
    if-nez v1, :cond_2f

    if-eqz v3, :cond_2e

    goto :goto_11

    .line 5595
    :cond_2e
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5598
    :cond_2f
    :goto_11
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v3, 0x65

    if-eq v1, v3, :cond_30

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v3, 0x45

    if-ne v1, v3, :cond_36

    .line 5599
    :cond_30
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v7, v3, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 5602
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-eq v1, v5, :cond_32

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v1, v13, :cond_31

    goto :goto_12

    :cond_31
    const/4 v1, 0x0

    goto :goto_13

    .line 5604
    :cond_32
    :goto_12
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v1, v3, :cond_43

    .line 5605
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/4 v1, 0x1

    .line 5611
    :goto_13
    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-lt v3, v6, :cond_35

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v3, v2, :cond_35

    .line 5613
    :cond_33
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v1, v3, :cond_34

    .line 5614
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 5619
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-lt v1, v6, :cond_36

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-le v1, v2, :cond_33

    goto :goto_14

    :cond_34
    const/16 v1, 0x1a

    .line 5616
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return-void

    :cond_35
    if-nez v1, :cond_42

    .line 5625
    :cond_36
    :goto_14
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x4c

    if-eq v1, v2, :cond_37

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x46

    if-eq v1, v2, :cond_37

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x44

    if-eq v1, v2, :cond_37

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x42

    if-eq v1, v2, :cond_37

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-ne v1, v4, :cond_38

    .line 5626
    :cond_37
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v1, v2, :cond_41

    .line 5627
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 5634
    :cond_38
    :goto_15
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v1, v11, :cond_3a

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v1, v9, v1

    const-wide v3, 0x100003700L

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3a

    .line 5635
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v1, v2, :cond_39

    .line 5636
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_15

    :cond_39
    const/16 v1, 0x1a

    .line 5638
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return-void

    .line 5643
    :cond_3a
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_40

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_3b

    goto/16 :goto_17

    .line 5647
    :cond_3b
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3f

    const/4 v1, 0x1

    .line 5648
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    .line 5649
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v1, v2, :cond_3e

    .line 5653
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 5654
    :goto_16
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v1, v11, :cond_3d

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v1, v9, v1

    const-wide v3, 0x100003700L

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3d

    .line 5655
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 5656
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v1, v2, :cond_3c

    .line 5659
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_16

    .line 5657
    :cond_3c
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3d
    const/4 v1, 0x1

    .line 5661
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    .line 5662
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    return-void

    .line 5650
    :cond_3e
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5666
    :cond_3f
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_40
    :goto_17
    return-void

    :cond_41
    const/16 v1, 0x1a

    .line 5629
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    return-void

    .line 5621
    :cond_42
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5607
    :cond_43
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5529
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->skipString()V

    .line 5758
    :cond_45
    :goto_18
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_49

    const/4 v1, 0x1

    .line 5759
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    .line 5760
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v1, v2, :cond_48

    .line 5764
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    .line 5765
    :goto_19
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    if-gt v1, v11, :cond_47

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    shl-long v1, v9, v1

    const-wide v3, 0x100003700L

    and-long/2addr v1, v3

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_47

    .line 5766
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    .line 5767
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->end:I

    if-ge v1, v2, :cond_46

    .line 5770
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    goto :goto_19

    .line 5768
    :cond_46
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5772
    :cond_47
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    goto :goto_1a

    .line 5761
    :cond_48
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5773
    :cond_49
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->comma:Z

    if-nez v1, :cond_4b

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_4b

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_4b

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->ch:C

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_4a

    goto :goto_1a

    .line 5774
    :cond_4a
    new-instance v1, Lcom/alibaba/fastjson2/JSONValidException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONValidException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4b
    :goto_1a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
