.class final Lcom/alibaba/fastjson2/JSONReaderJSONB;
.super Lcom/alibaba/fastjson2/JSONReader;
.source "JSONReaderJSONB.java"


# static fields
.field static final BASE:J

.field static GB18030:Ljava/nio/charset/Charset;

.field static final SHANGHAI_ZONE_ID_NAME_BYTES:[B


# instance fields
.field protected final bytes:[B

.field protected final cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

.field protected final end:I

.field protected final length:I

.field protected strBegin:I

.field protected strlen:I

.field protected strtype:B

.field protected symbol0Begin:I

.field protected symbol0Hash:J

.field protected symbol0Length:I

.field protected symbol0StrType:B

.field protected final symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

.field protected symbols:[J

.field protected type:B

.field protected valueBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [B

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    const-string v0, "Asia/Shanghai"

    .line 27
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->SHANGHAI_ZONE_ID_NAME_BYTES:[B

    return-void
.end method

.method constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/InputStream;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;ZZ)V

    .line 54
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    array-length v3, v3

    sub-int/2addr v3, v0

    and-int v0, v2, v3

    .line 55
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 56
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 57
    iget v2, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->bufferSize:I

    if-nez v0, :cond_0

    .line 59
    new-array v0, v2, [B

    :cond_0
    move v3, v1

    .line 65
    :cond_1
    :goto_0
    :try_start_0
    array-length v4, v0

    sub-int/2addr v4, v3

    invoke-virtual {p2, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 79
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 80
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 81
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->length:I

    .line 82
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 83
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    return-void

    :cond_2
    add-int/2addr v3, v4

    .line 71
    :try_start_1
    array-length v4, v0

    if-ne v3, v4, :cond_1

    .line 72
    array-length v4, v0

    add-int/2addr v4, v2

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "read error"

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;ZZ)V

    .line 88
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 89
    iput p3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 90
    iput p4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->length:I

    add-int/2addr p3, p4

    .line 91
    iput p3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    .line 92
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 93
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    sget-object p3, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    array-length p3, p3

    sub-int/2addr p3, v0

    and-int/2addr p2, p3

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    return-void
.end method

.method static getInt([BI)I
    .locals 5

    .line 5412
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    .line 5413
    sget-boolean p1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method static getInt3([BII)I
    .locals 1

    add-int/lit8 p2, p2, -0x44

    shl-int/lit8 p2, p2, 0x10

    .line 171
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr p2, p0

    return p2
.end method

.method private getObjectReaderContext(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Class;Ljava/lang/ClassLoader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 2

    .line 1335
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1336
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1

    if-nez p3, :cond_0

    .line 1340
    :try_start_0
    const-class p3, Lcom/alibaba/fastjson2/JSON;

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    .line 1342
    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    if-eqz v1, :cond_2

    .line 1347
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1348
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private readBigInteger0(B)Ljava/math/BigInteger;
    .locals 6

    const/16 v0, -0x6f

    if-eq p1, v0, :cond_12

    const/16 v0, -0x47

    if-eq p1, v0, :cond_10

    const/16 v0, 0x48

    if-eq p1, v0, :cond_f

    const/16 v0, 0x7c

    const/4 v1, -0x1

    const/16 v2, 0x2e

    if-eq p1, v0, :cond_d

    const/16 v0, 0x79

    if-eq p1, v0, :cond_b

    const/16 v0, 0x7a

    if-eq p1, v0, :cond_9

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/16 v0, -0x10

    if-lt p1, v0, :cond_0

    const/16 v0, 0x2f

    if-gt p1, v0, :cond_0

    int-to-long v0, p1

    .line 4393
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x30

    if-lt p1, v0, :cond_1

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x38

    shl-int/lit8 p1, p1, 0x8

    .line 4397
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p1, v0

    int-to-long v0, p1

    .line 4399
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v0, 0x40

    if-lt p1, v0, :cond_2

    const/16 v0, 0x47

    if-gt p1, v0, :cond_2

    .line 4403
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt3([BII)I

    move-result p1

    .line 4404
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v0, p1

    .line 4405
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v0, -0x28

    if-lt p1, v0, :cond_3

    const/16 v1, -0x11

    if-gt p1, v1, :cond_3

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x8

    int-to-long v0, p1

    .line 4410
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 v0, -0x38

    if-lt p1, v0, :cond_4

    const/16 v0, -0x29

    if-gt p1, v0, :cond_4

    add-int/lit8 p1, p1, 0x30

    shl-int/lit8 p1, p1, 0x8

    .line 4414
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p1, v0

    int-to-long v0, p1

    .line 4416
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :cond_4
    const/16 v0, -0x40

    if-lt p1, v0, :cond_5

    const/16 v0, -0x39

    if-gt p1, v0, :cond_5

    add-int/lit8 p1, p1, 0x3c

    shl-int/lit8 p1, p1, 0x10

    .line 4420
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p1, v0

    int-to-long v0, p1

    .line 4423
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :cond_5
    const/16 v0, 0x49

    if-lt p1, v0, :cond_6

    const/16 v1, 0x78

    if-gt p1, v1, :cond_6

    sub-int/2addr p1, v0

    .line 4428
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readFixedAsciiString(I)Ljava/lang/String;

    move-result-object v0

    .line 4429
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4430
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 4434
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4335
    :pswitch_0
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 4336
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4337
    sget-boolean p1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 4302
    :pswitch_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte p1, p1, v0

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 4304
    :pswitch_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x1

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr p1, v0

    .line 4307
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v0, p1

    .line 4308
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 4321
    :pswitch_3
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    move-result p1

    .line 4322
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4323
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-long v0, p1

    .line 4324
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 4316
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result p1

    int-to-float p1, p1

    float-to-long v0, p1

    .line 4317
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 4328
    :pswitch_5
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 4329
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4330
    sget-boolean p1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    double-to-long v0, v0

    .line 4331
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 4358
    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    move-result-wide v0

    long-to-double v0, v0

    double-to-long v0, v0

    .line 4359
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 4300
    :pswitch_7
    sget-object p1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object p1

    .line 4297
    :pswitch_8
    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p1

    :pswitch_9
    const/4 p1, 0x0

    return-object p1

    .line 4372
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result p1

    .line 4373
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v4, p1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 4374
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4375
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ne p1, v1, :cond_a

    .line 4376
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 4378
    :cond_a
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 4362
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result p1

    .line 4363
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v4, p1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 4364
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4365
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ne p1, v1, :cond_c

    .line 4366
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 4368
    :cond_c
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 4382
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result p1

    .line 4383
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v4, p1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 4384
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4385
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ne p1, v1, :cond_e

    .line 4386
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 4388
    :cond_e
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 4311
    :cond_f
    :pswitch_a
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    move-result p1

    .line 4312
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v0, p1

    .line 4313
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 4347
    :cond_10
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result p1

    .line 4348
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    if-nez p1, :cond_11

    .line 4351
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_2

    .line 4353
    :cond_11
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p1, v1

    .line 4355
    :goto_2
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 4340
    :cond_12
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result p1

    .line 4341
    new-array v0, p1, [B

    .line 4342
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4343
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4344
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object p1

    :pswitch_data_0
    .packed-switch -0x51
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x44
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method private readBoolValue0(B)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 5004
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    const/16 v3, -0x51

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_1a

    const/16 v3, 0x4a

    const-string v7, "not support input "

    const/16 v12, 0x75

    const/16 v13, 0x59

    const/16 v6, 0x72

    const/16 v9, 0x66

    const/16 v11, 0x74

    const/16 v15, 0x45

    const/16 v8, 0x4e

    const/16 v10, 0x65

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/4 v14, 0x4

    if-eq v1, v3, :cond_c

    if-eqz v1, :cond_b

    if-eq v1, v5, :cond_a

    const/16 v3, 0x4d

    if-eq v1, v3, :cond_e

    if-eq v1, v8, :cond_10

    packed-switch v1, :pswitch_data_0

    .line 5132
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not support type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5105
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v3

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 5106
    new-array v3, v3, [B

    .line 5107
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    invoke-static {v2, v6, v3, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_0

    .line 5110
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_0
    const/16 v2, 0x7c

    if-ne v1, v2, :cond_1

    .line 5111
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 5113
    :goto_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 5114
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v1, -0x1

    .line 5116
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_1
    move v14, v1

    goto/16 :goto_2

    :sswitch_0
    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v14, 0x7

    goto :goto_2

    :sswitch_1
    const-string v3, "FALSE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v14, 0x6

    goto :goto_2

    :sswitch_2
    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v14, 0x5

    goto :goto_2

    :sswitch_3
    const-string v3, "TRUE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_1

    :sswitch_4
    const-string v3, "Y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    move/from16 v14, v16

    goto :goto_2

    :sswitch_5
    const-string v3, "N"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    move/from16 v14, v17

    goto :goto_2

    :sswitch_6
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    move v14, v5

    goto :goto_2

    :sswitch_7
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    move v14, v4

    :cond_9
    :goto_2
    packed-switch v14, :pswitch_data_1

    .line 5128
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    return v5

    :pswitch_2
    return v4

    :cond_a
    return v5

    :cond_b
    return v4

    .line 5017
    :cond_c
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v2, v1

    const/16 v3, 0x31

    if-eq v1, v3, :cond_19

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v2, v1

    if-ne v1, v13, :cond_d

    goto/16 :goto_4

    .line 5021
    :cond_d
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v2, v1

    const/16 v3, 0x30

    if-eq v1, v3, :cond_18

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v2, v1

    if-ne v1, v8, :cond_e

    goto/16 :goto_3

    .line 5026
    :cond_e
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v2, v1

    if-ne v1, v11, :cond_f

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v5

    aget-byte v1, v2, v1

    if-ne v1, v6, :cond_f

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x2

    aget-byte v1, v2, v1

    if-ne v1, v12, :cond_f

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x3

    aget-byte v1, v2, v1

    if-ne v1, v10, :cond_f

    .line 5031
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v14

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return v5

    .line 5034
    :cond_f
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v2, v1

    const/16 v3, 0x54

    if-ne v1, v3, :cond_10

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v5

    aget-byte v1, v2, v1

    const/16 v3, 0x52

    if-ne v1, v3, :cond_10

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x2

    aget-byte v1, v2, v1

    const/16 v3, 0x55

    if-ne v1, v3, :cond_10

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x3

    aget-byte v1, v2, v1

    if-ne v1, v15, :cond_10

    .line 5039
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v14

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return v5

    .line 5043
    :cond_10
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v2, v1

    if-ne v1, v9, :cond_11

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v5

    aget-byte v1, v2, v1

    const/16 v3, 0x61

    if-ne v1, v3, :cond_11

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x2

    aget-byte v1, v2, v1

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_11

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x3

    aget-byte v1, v2, v1

    const/16 v3, 0x73

    if-ne v1, v3, :cond_11

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v14

    aget-byte v1, v2, v1

    if-ne v1, v10, :cond_11

    .line 5049
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v2, 0x5

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return v4

    .line 5052
    :cond_11
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v2, v1

    const/16 v3, 0x46

    if-ne v1, v3, :cond_12

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v5

    aget-byte v1, v2, v1

    const/16 v3, 0x41

    if-ne v1, v3, :cond_12

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x2

    aget-byte v1, v2, v1

    const/16 v3, 0x4c

    if-ne v1, v3, :cond_12

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x3

    aget-byte v1, v2, v1

    const/16 v3, 0x53

    if-ne v1, v3, :cond_12

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v14

    aget-byte v1, v2, v1

    if-ne v1, v15, :cond_12

    .line 5058
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v2, 0x5

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return v4

    .line 5063
    :cond_12
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v1

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ne v1, v5, :cond_14

    .line 5065
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v2, v1

    if-ne v1, v13, :cond_13

    .line 5066
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return v5

    .line 5069
    :cond_13
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v2, v1

    if-ne v1, v8, :cond_17

    .line 5070
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return v5

    :cond_14
    if-ne v1, v14, :cond_15

    .line 5073
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v2, v1

    if-ne v1, v11, :cond_15

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v5

    aget-byte v1, v2, v1

    if-ne v1, v6, :cond_15

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x2

    aget-byte v1, v2, v1

    if-ne v1, v12, :cond_15

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x3

    aget-byte v1, v2, v1

    if-ne v1, v10, :cond_15

    .line 5079
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v14

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return v5

    .line 5081
    :cond_15
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_17

    .line 5082
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v2, v1

    if-ne v1, v9, :cond_16

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v5

    aget-byte v1, v2, v1

    const/16 v3, 0x61

    if-ne v1, v3, :cond_16

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x2

    aget-byte v1, v2, v1

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_16

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x3

    aget-byte v1, v2, v1

    const/16 v3, 0x73

    if-ne v1, v3, :cond_16

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v14

    aget-byte v1, v2, v1

    if-ne v1, v10, :cond_16

    .line 5087
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v2, 0x5

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return v4

    .line 5089
    :cond_16
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v2, v1

    const/16 v3, 0x46

    if-ne v1, v3, :cond_17

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v5

    aget-byte v1, v2, v1

    const/16 v3, 0x41

    if-ne v1, v3, :cond_17

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x2

    aget-byte v1, v2, v1

    const/16 v3, 0x4c

    if-ne v1, v3, :cond_17

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x3

    aget-byte v1, v2, v1

    const/16 v3, 0x53

    if-ne v1, v3, :cond_17

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v14

    aget-byte v1, v2, v1

    if-ne v1, v15, :cond_17

    .line 5094
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v2, 0x5

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return v4

    .line 5098
    :cond_17
    new-instance v1, Ljava/lang/String;

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 5099
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 5100
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5022
    :cond_18
    :goto_3
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return v4

    .line 5018
    :cond_19
    :goto_4
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return v5

    .line 5011
    :cond_1a
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v6, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-nez v1, :cond_1b

    .line 5014
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->wasNull:Z

    return v4

    .line 5012
    :cond_1b
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "long value not support input null"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x79
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_7
        0x31 -> :sswitch_6
        0x4e -> :sswitch_5
        0x59 -> :sswitch_4
        0x276d8e -> :sswitch_3
        0x36758e -> :sswitch_2
        0x3f92103 -> :sswitch_1
        0x5cb1923 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private readDecimal0(B)Ljava/math/BigDecimal;
    .locals 5

    const/16 v0, 0x48

    if-eq p1, v0, :cond_c

    const/16 v0, 0x7c

    if-eq p1, v0, :cond_b

    const/16 v0, 0x79

    if-eq p1, v0, :cond_a

    const/16 v0, 0x7a

    if-eq p1, v0, :cond_9

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/16 v0, -0x10

    if-lt p1, v0, :cond_0

    const/16 v0, 0x2f

    if-gt p1, v0, :cond_0

    int-to-long v0, p1

    .line 4227
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x30

    if-lt p1, v0, :cond_1

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x38

    shl-int/lit8 p1, p1, 0x8

    .line 4231
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p1, v0

    int-to-long v0, p1

    .line 4233
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v0, 0x40

    if-lt p1, v0, :cond_2

    const/16 v0, 0x47

    if-gt p1, v0, :cond_2

    .line 4237
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt3([BII)I

    move-result p1

    .line 4238
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v0, p1

    .line 4239
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v0, -0x28

    if-lt p1, v0, :cond_3

    const/16 v1, -0x11

    if-gt p1, v1, :cond_3

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x8

    int-to-long v0, p1

    .line 4244
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 v0, -0x38

    if-lt p1, v0, :cond_4

    const/16 v0, -0x29

    if-gt p1, v0, :cond_4

    add-int/lit8 p1, p1, 0x30

    shl-int/lit8 p1, p1, 0x8

    .line 4248
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p1, v0

    int-to-long v0, p1

    .line 4250
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    :cond_4
    const/16 v0, -0x40

    if-lt p1, v0, :cond_5

    const/16 v0, -0x39

    if-gt p1, v0, :cond_5

    add-int/lit8 p1, p1, 0x3c

    shl-int/lit8 p1, p1, 0x10

    .line 4254
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p1, v0

    int-to-long v0, p1

    .line 4257
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    :cond_5
    const/16 v0, 0x49

    if-lt p1, v0, :cond_6

    const/16 v1, 0x78

    if-gt p1, v1, :cond_6

    sub-int/2addr p1, v0

    .line 4262
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readFixedAsciiString(I)Ljava/lang/String;

    move-result-object v0

    .line 4263
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4264
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 4268
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4195
    :pswitch_0
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 4196
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4197
    sget-boolean p1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 4164
    :pswitch_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte p1, p1, v0

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 4166
    :pswitch_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x1

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr p1, v0

    .line 4169
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v0, p1

    .line 4170
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 4200
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    .line 4201
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 4182
    :pswitch_4
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    move-result p1

    .line 4183
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4184
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-long v0, p1

    .line 4185
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 4178
    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result p1

    int-to-float p1, p1

    float-to-long v0, p1

    .line 4179
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 4188
    :pswitch_6
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 4189
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4190
    sget-boolean p1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    double-to-long v0, v0

    .line 4191
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 4204
    :pswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    move-result-wide v0

    long-to-double v0, v0

    double-to-long v0, v0

    .line 4205
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 4162
    :pswitch_8
    sget-object p1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    return-object p1

    .line 4159
    :pswitch_9
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p1

    :pswitch_a
    const/4 p1, 0x0

    return-object p1

    .line 4220
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result p1

    .line 4221
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 4222
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4223
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 4208
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result p1

    .line 4209
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 4210
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4211
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 4214
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result p1

    .line 4215
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 4216
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4217
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 4173
    :cond_c
    :pswitch_b
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    move-result p1

    .line 4174
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v0, p1

    .line 4175
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch -0x51
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x45
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method private readDoubleValue0()D
    .locals 8

    .line 3846
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x4a

    if-eq v0, v1, :cond_16

    const/16 v1, -0x49

    if-eq v0, v1, :cond_14

    const/16 v1, -0x47

    if-eq v0, v1, :cond_12

    const/16 v1, 0x48

    if-eq v0, v1, :cond_10

    const/16 v1, 0x7c

    const/4 v2, -0x1

    const/16 v3, 0x2e

    if-eq v0, v1, :cond_e

    const/16 v1, 0x79

    if-eq v0, v1, :cond_c

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_a

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/16 v1, -0x10

    if-lt v0, v1, :cond_0

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_0

    int-to-double v0, v0

    return-wide v0

    :cond_0
    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x38

    shl-int/lit8 v0, v0, 0x8

    .line 3937
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    int-to-double v0, v0

    return-wide v0

    :cond_1
    const/16 v1, 0x40

    if-lt v0, v1, :cond_2

    const/16 v1, 0x47

    if-gt v0, v1, :cond_2

    .line 3942
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt3([BII)I

    move-result v0

    .line 3943
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-double v0, v0

    return-wide v0

    :cond_2
    const/16 v1, -0x28

    if-lt v0, v1, :cond_3

    const/16 v4, -0x11

    if-gt v0, v4, :cond_3

    const-wide/16 v2, -0x8

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0

    :cond_3
    const/16 v1, -0x38

    if-lt v0, v1, :cond_4

    const/16 v1, -0x29

    if-gt v0, v1, :cond_4

    add-int/lit8 v0, v0, 0x30

    shl-int/lit8 v0, v0, 0x8

    .line 3952
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    int-to-double v0, v0

    return-wide v0

    :cond_4
    const/16 v1, -0x40

    if-lt v0, v1, :cond_5

    const/16 v1, -0x39

    if-gt v0, v1, :cond_5

    add-int/lit8 v0, v0, 0x3c

    shl-int/lit8 v0, v0, 0x10

    .line 3957
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    int-to-double v0, v0

    return-wide v0

    :cond_5
    const/16 v1, 0x49

    if-lt v0, v1, :cond_7

    const/16 v4, 0x78

    if-gt v0, v4, :cond_7

    sub-int/2addr v0, v1

    .line 3964
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readFixedAsciiString(I)Ljava/lang/String;

    move-result-object v1

    .line 3965
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3966
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 3967
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 3969
    :cond_6
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 3974
    :cond_7
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TODO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3863
    :pswitch_0
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 3864
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3865
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v2, :cond_8

    goto :goto_0

    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_0
    long-to-double v0, v0

    return-wide v0

    .line 3855
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    int-to-double v0, v0

    return-wide v0

    .line 3857
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v2, v1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 3860
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-double v0, v0

    return-wide v0

    .line 3881
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    :pswitch_4
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :pswitch_5
    return-wide v4

    .line 3849
    :pswitch_6
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v6, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-nez v0, :cond_9

    .line 3852
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->wasNull:Z

    return-wide v4

    .line 3850
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "long value not support input null"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3903
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    .line 3904
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v4, v5, v0, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3905
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3906
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v2, :cond_b

    .line 3907
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 3909
    :cond_b
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 3883
    :cond_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    .line 3884
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v4, v5, v0, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3885
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3886
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v2, :cond_d

    .line 3887
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 3889
    :cond_d
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 3893
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    .line 3894
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v1, v4, v5, v0, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3895
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3896
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v2, :cond_f

    .line 3897
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 3899
    :cond_f
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 3869
    :cond_10
    :pswitch_7
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .line 3870
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3871
    sget-boolean v1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v1, :cond_11

    goto :goto_1

    :cond_11
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    :goto_1
    int-to-double v0, v0

    return-wide v0

    .line 3913
    :cond_12
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    .line 3914
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    if-nez v0, :cond_13

    .line 3917
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_2

    .line 3919
    :cond_13
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object v0, v2

    .line 3921
    :goto_2
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 3874
    :cond_14
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .line 3875
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3876
    sget-boolean v1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v1, :cond_15

    goto :goto_3

    :cond_15
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    :goto_3
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 3878
    :cond_16
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    int-to-float v0, v0

    float-to-double v0, v0

    return-wide v0

    :pswitch_data_0
    .packed-switch -0x51
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x44
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private readFloat0()F
    .locals 7

    .line 3692
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x47

    if-eq v0, v1, :cond_12

    const/16 v1, 0x48

    if-eq v0, v1, :cond_11

    const/16 v1, 0x7c

    const/4 v2, -0x1

    const/16 v3, 0x2e

    if-eq v0, v1, :cond_f

    const/16 v1, 0x79

    if-eq v0, v1, :cond_d

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_b

    const/4 v1, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/16 v1, -0x10

    if-lt v0, v1, :cond_0

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_0

    int-to-float v0, v0

    return v0

    :cond_0
    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x38

    shl-int/lit8 v0, v0, 0x8

    .line 3785
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0

    :cond_1
    const/16 v1, 0x40

    if-lt v0, v1, :cond_2

    const/16 v1, 0x47

    if-gt v0, v1, :cond_2

    .line 3790
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt3([BII)I

    move-result v0

    .line 3791
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-float v0, v0

    return v0

    :cond_2
    const/16 v1, -0x28

    if-lt v0, v1, :cond_3

    const/16 v4, -0x11

    if-gt v0, v4, :cond_3

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x8

    int-to-float v0, v0

    return v0

    :cond_3
    const/16 v1, -0x38

    if-lt v0, v1, :cond_4

    const/16 v1, -0x29

    if-gt v0, v1, :cond_4

    add-int/lit8 v0, v0, 0x30

    shl-int/lit8 v0, v0, 0x8

    .line 3800
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0

    :cond_4
    const/16 v1, -0x40

    if-lt v0, v1, :cond_5

    const/16 v1, -0x39

    if-gt v0, v1, :cond_5

    add-int/lit8 v0, v0, 0x3c

    shl-int/lit8 v0, v0, 0x10

    .line 3805
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0

    :cond_5
    const/16 v1, 0x49

    if-lt v0, v1, :cond_7

    const/16 v4, 0x78

    if-gt v0, v4, :cond_7

    sub-int/2addr v0, v1

    .line 3812
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readFixedAsciiString(I)Ljava/lang/String;

    move-result-object v1

    .line 3813
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3814
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 3815
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 3817
    :cond_6
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 3822
    :cond_7
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TODO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3709
    :pswitch_0
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 3710
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3711
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v2, :cond_8

    goto :goto_0

    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_0
    long-to-float v0, v0

    return v0

    .line 3701
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    int-to-float v0, v0

    return v0

    .line 3703
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v4

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 3706
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-float v0, v0

    return v0

    .line 3725
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 3720
    :pswitch_4
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 3721
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3722
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v2, :cond_9

    goto :goto_1

    :cond_9
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 3728
    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    move-result-wide v0

    long-to-double v0, v0

    double-to-float v0, v0

    return v0

    :pswitch_6
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :pswitch_7
    return v1

    .line 3695
    :pswitch_8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-nez v0, :cond_a

    .line 3698
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->wasNull:Z

    return v1

    .line 3696
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "long value not support input null"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3751
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    .line 3752
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v4, v5, v0, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3753
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3754
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v2, :cond_c

    .line 3755
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 3757
    :cond_c
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 3731
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    .line 3732
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v4, v5, v0, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3733
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3734
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v2, :cond_e

    .line 3735
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 3737
    :cond_e
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 3741
    :cond_f
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    .line 3742
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v1, v4, v5, v0, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3743
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3744
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v2, :cond_10

    .line 3745
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 3747
    :cond_10
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 3715
    :cond_11
    :pswitch_9
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    move-result v0

    .line 3716
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-float v0, v0

    return v0

    .line 3761
    :cond_12
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    .line 3762
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    if-nez v0, :cond_13

    .line 3765
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_2

    .line 3767
    :cond_13
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object v0, v2

    .line 3769
    :goto_2
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    int-to-float v0, v0

    return v0

    :pswitch_data_0
    .packed-switch -0x51
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x44
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method private readGB18030()V
    .locals 1

    .line 2933
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2934
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 2936
    sget-object v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->GB18030:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    const-string v0, "GB18030"

    .line 2937
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->GB18030:Ljava/nio/charset/Charset;

    :cond_0
    return-void
.end method

.method private readInt32Value0([BB)I
    .locals 5

    const/16 v0, -0x28

    if-lt p2, v0, :cond_0

    const/16 v1, -0x11

    if-gt p2, v1, :cond_0

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x8

    return p2

    :cond_0
    const/16 v0, -0x38

    if-lt p2, v0, :cond_1

    const/16 v0, -0x29

    if-gt p2, v0, :cond_1

    add-int/lit8 p2, p2, 0x30

    shl-int/lit8 p2, p2, 0x8

    .line 3446
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    add-int/2addr p2, p1

    return p2

    :cond_1
    const/16 v0, -0x40

    if-lt p2, v0, :cond_2

    const/16 v0, -0x39

    if-gt p2, v0, :cond_2

    add-int/lit8 p2, p2, 0x3c

    shl-int/lit8 p2, p2, 0x10

    .line 3451
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr p2, v0

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    add-int/2addr p2, p1

    return p2

    :cond_2
    const/16 v0, -0x54

    if-eq p2, v0, :cond_f

    const/16 v0, -0x53

    if-eq p2, v0, :cond_f

    const/16 v0, -0x47

    if-eq p2, v0, :cond_d

    const/16 v0, 0x7c

    const/4 v1, -0x1

    const/16 v2, 0x2e

    if-eq p2, v0, :cond_b

    const/16 v0, 0x79

    if-eq p2, v0, :cond_9

    const/16 v0, 0x7a

    if-eq p2, v0, :cond_7

    const/4 v0, 0x0

    const/4 v3, 0x1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    const/16 v0, 0x49

    if-lt p2, v0, :cond_4

    const/16 v3, 0x78

    if-gt p2, v3, :cond_4

    sub-int/2addr p2, v0

    .line 3548
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readFixedAsciiString(I)Ljava/lang/String;

    move-result-object p1

    .line 3549
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3550
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-ne p2, v1, :cond_3

    .line 3551
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    return p1

    .line 3553
    :cond_3
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result p1

    return p1

    .line 3558
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readInt32Value not support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", offset "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3482
    :pswitch_0
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    .line 3483
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3484
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p1

    :goto_0
    long-to-int p1, p1

    return p1

    .line 3471
    :pswitch_1
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte p1, p1, p2

    return p1

    .line 3473
    :pswitch_2
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr p2, v3

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte p1, p1, v0

    shl-int/lit8 p1, p1, 0x8

    add-int/2addr p2, p1

    .line 3476
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return p2

    .line 3489
    :pswitch_3
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    move-result p1

    .line 3490
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 p2, p2, 0x4

    iput p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3491
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-int p1, p1

    return p1

    .line 3487
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result p1

    int-to-float p1, p1

    float-to-int p1, p1

    return p1

    .line 3495
    :pswitch_5
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3496
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readDoubleValue()D

    move-result-wide p1

    double-to-int p1, p1

    return p1

    .line 3479
    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    move-result-wide p1

    long-to-int p1, p1

    return p1

    :pswitch_7
    return v3

    :pswitch_8
    return v0

    .line 3458
    :pswitch_9
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-nez p1, :cond_6

    .line 3462
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->wasNull:Z

    return v0

    .line 3459
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "int value not support input null"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3525
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result p2

    .line 3526
    new-instance v0, Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v3, p2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3527
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3528
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ne p1, v1, :cond_8

    .line 3529
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    return p1

    .line 3531
    :cond_8
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result p1

    return p1

    .line 3505
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result p2

    .line 3506
    new-instance v0, Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v3, p2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3507
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3508
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ne p1, v1, :cond_a

    .line 3509
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    return p1

    .line 3511
    :cond_a
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result p1

    return p1

    .line 3515
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result p2

    .line 3516
    new-instance v0, Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v3, p2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3517
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3518
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ne p1, v1, :cond_c

    .line 3519
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    return p1

    .line 3521
    :cond_c
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result p1

    return p1

    .line 3535
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result p1

    .line 3536
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBigInteger()Ljava/math/BigInteger;

    move-result-object p2

    if-nez p1, :cond_e

    .line 3539
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_1

    .line 3541
    :cond_e
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p1, v0

    .line 3543
    :goto_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result p1

    return p1

    .line 3501
    :cond_f
    :pswitch_a
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    move-result p1

    .line 3502
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 p2, p2, 0x4

    iput p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return p1

    nop

    :pswitch_data_0
    .packed-switch -0x51
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x44
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method private readInt64Value0([BB)J
    .locals 6

    const/16 v0, 0x30

    if-lt p2, v0, :cond_0

    const/16 v0, 0x3f

    if-gt p2, v0, :cond_0

    add-int/lit8 p2, p2, -0x38

    shl-int/lit8 p2, p2, 0x8

    .line 3283
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    add-int/2addr p2, p1

    int-to-long p1, p2

    return-wide p1

    :cond_0
    const/16 v0, -0x10

    if-lt p2, v0, :cond_1

    const/16 v0, 0x2f

    if-gt p2, v0, :cond_1

    int-to-long p1, p2

    return-wide p1

    :cond_1
    const/16 v0, 0x40

    if-lt p2, v0, :cond_2

    const/16 v0, 0x47

    if-gt p2, v0, :cond_2

    .line 3292
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {p1, v0, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt3([BII)I

    move-result p1

    .line 3293
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long p1, p1

    return-wide p1

    :cond_2
    const/16 v0, -0x47

    if-eq p2, v0, :cond_12

    const/16 v0, 0x48

    if-eq p2, v0, :cond_10

    const/16 v0, 0x7c

    const/4 v1, -0x1

    const/16 v2, 0x2e

    if-eq p2, v0, :cond_e

    const/16 v0, -0x44

    const/4 v3, 0x1

    if-eq p2, v0, :cond_d

    const/16 v0, -0x43

    if-eq p2, v0, :cond_c

    const/16 v0, 0x79

    if-eq p2, v0, :cond_a

    const/16 v0, 0x7a

    if-eq p2, v0, :cond_8

    const-wide/16 v4, 0x3e8

    packed-switch p2, :pswitch_data_0

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_1

    const/16 v0, 0x49

    if-lt p2, v0, :cond_4

    const/16 v3, 0x78

    if-gt p2, v3, :cond_4

    sub-int/2addr p2, v0

    .line 3395
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readFixedAsciiString(I)Ljava/lang/String;

    move-result-object p1

    .line 3396
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3397
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-ne p2, v1, :cond_3

    .line 3398
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p1

    return-wide p1

    .line 3400
    :cond_3
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide p1

    return-wide p1

    .line 3405
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readInt64Value not support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", offset "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3324
    :pswitch_0
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    .line 3325
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 p2, p2, 0x4

    iput p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3326
    sget-boolean p2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p2, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-long p1, p1

    return-wide p1

    .line 3334
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result p1

    int-to-float p1, p1

    float-to-long p1, p1

    return-wide p1

    .line 3330
    :pswitch_2
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3331
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readDoubleValue()D

    move-result-wide p1

    double-to-long p1, p1

    return-wide p1

    .line 3336
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    move-result-wide p1

    long-to-double p1, p1

    double-to-long p1, p1

    return-wide p1

    :pswitch_4
    const-wide/16 p1, 0x1

    return-wide p1

    :pswitch_5
    return-wide v4

    .line 3299
    :pswitch_6
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p1, v0

    cmp-long p1, p1, v4

    if-nez p1, :cond_6

    .line 3302
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->wasNull:Z

    return-wide v4

    .line 3300
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "long value not support input null"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3338
    :pswitch_7
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    move-result p1

    int-to-long p1, p1

    .line 3339
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const-wide/16 v0, 0x3c

    mul-long/2addr p1, v0

    mul-long/2addr p1, v4

    return-wide p1

    .line 3343
    :pswitch_8
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    move-result p1

    int-to-long p1, p1

    .line 3344
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    mul-long/2addr p1, v4

    return-wide p1

    .line 3348
    :pswitch_9
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    .line 3349
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3350
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p1

    :goto_1
    return-wide p1

    .line 3373
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result p2

    .line 3374
    new-instance v0, Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v3, p2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3375
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3376
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ne p1, v1, :cond_9

    .line 3377
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 3379
    :cond_9
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 3363
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result p2

    .line 3364
    new-instance v0, Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v3, p2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3365
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3366
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ne p1, v1, :cond_b

    .line 3367
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 3369
    :cond_b
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 3311
    :cond_c
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte p1, p1, p2

    int-to-long p1, p1

    return-wide p1

    .line 3313
    :cond_d
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr p2, v3

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte p1, p1, v0

    shl-int/lit8 p1, p1, 0x8

    add-int/2addr p2, p1

    .line 3316
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long p1, p2

    return-wide p1

    .line 3383
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result p2

    .line 3384
    new-instance v0, Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v3, p2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3385
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3386
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ne p1, v1, :cond_f

    .line 3387
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 3389
    :cond_f
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 3319
    :cond_10
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    .line 3320
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 p2, p2, 0x4

    iput p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3321
    sget-boolean p2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p2, :cond_11

    goto :goto_2

    :cond_11
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    :goto_2
    int-to-long p1, p1

    return-wide p1

    .line 3352
    :cond_12
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result p1

    .line 3353
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBigInteger()Ljava/math/BigInteger;

    move-result-object p2

    if-nez p1, :cond_13

    .line 3356
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_3

    .line 3358
    :cond_13
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p1, v0

    .line 3360
    :goto_3
    invoke-virtual {p1}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide p1

    return-wide p1

    :pswitch_data_0
    .packed-switch -0x55
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x51
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readLocalDate0(I)Ljava/time/LocalDate;
    .locals 3

    const/16 v0, -0x58

    if-ne p1, v0, :cond_0

    .line 4458
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, -0x56

    if-ne p1, v0, :cond_1

    .line 4462
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v0, 0x49

    if-lt p1, v0, :cond_3

    const/16 v0, 0x78

    if-gt p1, v0, :cond_3

    .line 4466
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getStringLength()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 4477
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_2

    .line 4478
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object p1

    .line 4479
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 4475
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate11()Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 4473
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate10()Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 4471
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate9()Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 4469
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate8()Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 4483
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TODO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/16 v0, 0x7a

    if-eq p1, v0, :cond_4

    const/16 v0, 0x79

    if-ne p1, v0, :cond_5

    :cond_4
    int-to-byte v0, p1

    .line 4487
    iput-byte v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 4488
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4489
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 4499
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate11()Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 4496
    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate10()Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 4494
    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate9()Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 4492
    :pswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate8()Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 4505
    :cond_5
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-byte p1, p1

    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private readLocalDateTime0(I)Ljava/time/LocalDateTime;
    .locals 3

    const/16 v0, -0x56

    if-ne p1, v0, :cond_0

    .line 4535
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x49

    if-lt p1, v0, :cond_7

    const/16 v0, 0x78

    if-gt p1, v0, :cond_7

    .line 4539
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getStringLength()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_4

    .line 4573
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDateTimeX(I)Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 4577
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readZonedDateTimeX(I)Ljava/time/ZonedDateTime;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 4579
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 4563
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDateTime20()Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 4561
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDateTime19()Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 4559
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDateTime18()Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 4557
    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDateTime17()Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 4555
    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDateTime16()Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 4552
    :pswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate11()Ljava/time/LocalDate;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 4553
    :cond_2
    sget-object v0, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p1, v0}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4549
    :pswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate10()Ljava/time/LocalDate;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 4550
    :cond_3
    sget-object v0, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p1, v0}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_1
    return-object v0

    .line 4546
    :pswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate9()Ljava/time/LocalDate;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    .line 4547
    :cond_4
    sget-object v0, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p1, v0}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_2
    return-object v0

    .line 4543
    :pswitch_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate8()Ljava/time/LocalDate;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_3

    .line 4544
    :cond_5
    sget-object v0, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p1, v0}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_3
    return-object v0

    .line 4586
    :cond_6
    :goto_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TODO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4589
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-byte p1, p1

    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 5

    .line 2901
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-gez v0, :cond_0

    .line 2902
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v0, v0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2906
    :cond_0
    sget v0, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    const/16 v1, 0x7a

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    const/16 v1, 0x2000

    if-ge v0, v1, :cond_1

    .line 2907
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v0, v3

    .line 2908
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    aget-object v0, v3, v0

    .line 2909
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [C

    if-nez v2, :cond_1

    new-array v2, v1, [C

    :cond_1
    if-eqz v2, :cond_2

    .line 2915
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->decodeUTF8([BII[C)I

    move-result p1

    .line 2916
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, p1}, Ljava/lang/String;-><init>([CII)V

    .line 2917
    array-length p1, v2

    const/high16 v1, 0x100000

    if-ge p1, v1, :cond_3

    .line 2918
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 2921
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2923
    :cond_3
    :goto_0
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 2925
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_4

    .line 2926
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method private readStringNonAscii(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    if-eqz p2, :cond_0

    .line 2865
    sget-object p2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 2866
    :cond_0
    iget-byte p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    const/16 v0, 0x7a

    if-ne p2, v0, :cond_1

    .line 2867
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readStringUTF8()Ljava/lang/String;

    move-result-object p1

    .line 2868
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_1
    const/16 v0, 0x7b

    if-ne p2, v0, :cond_2

    .line 2870
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result p2

    iput p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2871
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iput p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 2872
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_2
    const/16 v0, 0x7c

    if-ne p2, v0, :cond_3

    .line 2874
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readUTF16LE()Ljava/lang/String;

    move-result-object p1

    .line 2875
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_3
    const/16 v0, 0x7d

    if-ne p2, v0, :cond_5

    .line 2877
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readUTF16BE()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    .line 2881
    :cond_4
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_5
    const/16 v0, 0x7e

    if-ne p2, v0, :cond_8

    .line 2883
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readGB18030()V

    .line 2884
    sget-object p2, Lcom/alibaba/fastjson2/JSONReaderJSONB;->GB18030:Ljava/nio/charset/Charset;

    :goto_0
    if-eqz p1, :cond_7

    .line 2890
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_6

    .line 2891
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_6
    return-object p1

    .line 2896
    :cond_7
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2886
    :cond_8
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readStringTypeNotMatch()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readStringTypeNotMatch()Ljava/lang/String;
    .locals 6

    .line 3038
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    const/16 v1, -0x10

    if-lt v0, v1, :cond_0

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_0

    .line 3039
    invoke-static {v0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x38

    shl-int/lit8 v0, v0, 0x8

    .line 3041
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 3043
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, 0x40

    if-lt v0, v1, :cond_2

    const/16 v1, 0x47

    if-gt v0, v1, :cond_2

    .line 3045
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt3([BII)I

    move-result v0

    .line 3046
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3047
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v1, -0x28

    if-lt v0, v1, :cond_3

    const/16 v2, -0x11

    if-gt v0, v2, :cond_3

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x8

    .line 3050
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/16 v1, -0x38

    if-lt v0, v1, :cond_4

    const/16 v1, -0x29

    if-gt v0, v1, :cond_4

    add-int/lit8 v0, v0, 0x30

    shl-int/lit8 v0, v0, 0x8

    .line 3052
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 3054
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const/16 v1, -0x40

    if-lt v0, v1, :cond_5

    const/16 v1, -0x39

    if-gt v0, v1, :cond_5

    add-int/lit8 v0, v0, 0x3c

    shl-int/lit8 v0, v0, 0x10

    .line 3056
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 3059
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const/16 v1, -0x6e

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_11

    const/16 v1, -0x51

    if-eq v0, v1, :cond_10

    const/16 v1, 0x48

    if-eq v0, v1, :cond_e

    const/16 v1, -0x42

    if-eq v0, v1, :cond_c

    const/16 v1, -0x41

    if-eq v0, v1, :cond_e

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 3150
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readString not support type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3115
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    .line 3116
    new-array v1, v0, [B

    .line 3117
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {v3, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3118
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3119
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3122
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    .line 3123
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    if-nez v0, :cond_6

    .line 3126
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 3128
    :cond_6
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object v0, v2

    .line 3130
    :goto_0
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3140
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    move-result-wide v0

    .line 3139
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3079
    :pswitch_3
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .line 3080
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3081
    sget-boolean v1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 3082
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3077
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    int-to-float v0, v0

    .line 3076
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3085
    :pswitch_5
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 3086
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3087
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 3088
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3144
    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    move-result-wide v0

    long-to-double v0, v0

    .line 3145
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_7
    const-string v0, "1.0"

    return-object v0

    :pswitch_8
    const-string v0, "0.0"

    return-object v0

    .line 3098
    :pswitch_9
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .line 3099
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3100
    sget-boolean v1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v1, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    :goto_3
    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    .line 3101
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 3102
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/DateUtils;->toString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3091
    :pswitch_a
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .line 3092
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3093
    sget-boolean v1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v1, :cond_a

    goto :goto_4

    :cond_a
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    :goto_4
    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 3094
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 3095
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/DateUtils;->toString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3105
    :pswitch_b
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 3106
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3107
    new-instance v2, Ljava/util/Date;

    sget-boolean v3, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v3, :cond_b

    goto :goto_5

    :cond_b
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_5
    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 3108
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/DateUtils;->toString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3111
    :cond_c
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 3112
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3113
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v2, :cond_d

    goto :goto_6

    :cond_d
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_6
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3071
    :cond_e
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .line 3072
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3073
    sget-boolean v1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v1, :cond_f

    goto :goto_7

    :cond_f
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    :goto_7
    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    return-object v3

    .line 3133
    :cond_11
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3134
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_8

    :cond_12
    new-array v1, v1, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 3135
    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteThrowableClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;

    move-result-object v3

    :goto_8
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch -0x55
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x4e
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private readStringUTF8()Ljava/lang/String;
    .locals 5

    .line 2994
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x10

    if-lt v0, v1, :cond_0

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_0

    .line 2996
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 2997
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_1

    .line 2999
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, -0x38

    shl-int/lit8 v0, v0, 0x8

    .line 3000
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    goto :goto_0

    .line 3003
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 3005
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 3007
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-nez v0, :cond_5

    .line 3008
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->valueBytes:[B

    if-nez v0, :cond_2

    .line 3009
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->valueBytes:[B

    if-nez v0, :cond_2

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 3011
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->valueBytes:[B

    .line 3015
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    shl-int/lit8 v0, v0, 0x1

    .line 3016
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->valueBytes:[B

    array-length v2, v2

    if-le v0, v2, :cond_3

    .line 3017
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->valueBytes:[B

    .line 3020
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->valueBytes:[B

    invoke-static {v0, v2, v3, v4}, Lcom/alibaba/fastjson2/util/IOUtils;->decodeUTF8([BII[B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    .line 3022
    new-array v1, v0, [B

    .line 3023
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->valueBytes:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3024
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UTF16:Ljava/lang/Byte;

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3025
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3027
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 3028
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0

    :cond_5
    return-object v1
.end method

.method private readUTF16BE()Ljava/lang/String;
    .locals 5

    .line 2942
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2943
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 2945
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v0, :cond_1

    .line 2946
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    new-array v0, v0, [B

    .line 2947
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2948
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UTF16:Ljava/lang/Byte;

    invoke-interface {v1, v0, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2949
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 2951
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 2952
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private readUTF16LE()Ljava/lang/String;
    .locals 5

    .line 2962
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x10

    if-lt v0, v1, :cond_0

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_0

    .line 2964
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 2965
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_1

    .line 2967
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, -0x38

    shl-int/lit8 v0, v0, 0x8

    .line 2968
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    goto :goto_0

    .line 2971
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2973
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 2975
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-nez v0, :cond_2

    const-string v0, ""

    return-object v0

    .line 2979
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-nez v0, :cond_4

    .line 2980
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    new-array v0, v0, [B

    .line 2981
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2982
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UTF16:Ljava/lang/Byte;

    invoke-interface {v1, v0, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2983
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 2985
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 2986
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private readZonedDateTime0(I)Ljava/time/ZonedDateTime;
    .locals 8

    const/16 v0, -0x58

    if-eq p1, v0, :cond_4

    const/16 v0, -0x57

    if-eq p1, v0, :cond_3

    const/16 v0, -0x42

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    const/16 v0, 0x49

    if-lt p1, v0, :cond_0

    const/16 v1, 0x78

    if-gt p1, v1, :cond_0

    .line 4854
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sub-int/2addr p1, v0

    .line 4855
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readZonedDateTimeX(I)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    .line 4859
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type not support : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-byte p1, p1

    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 4810
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    move-result-wide v0

    .line 4811
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result p1

    int-to-long v2, p1

    .line 4812
    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object p1

    .line 4813
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p1, v0}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    .line 4816
    :pswitch_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    move-result p1

    int-to-long v0, p1

    .line 4817
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    .line 4818
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object p1

    .line 4819
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p1, v0}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    .line 4822
    :pswitch_3
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    move-result p1

    int-to-long v0, p1

    .line 4823
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4824
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object p1

    .line 4825
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p1, v0}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    .line 4847
    :cond_1
    :pswitch_4
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 4848
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4849
    sget-boolean p1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    .line 4850
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p1, v0}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    .line 4828
    :cond_3
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte p1, p1, v0

    shl-int/lit8 p1, p1, 0x8

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p1, v0

    .line 4829
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    .line 4830
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    .line 4831
    invoke-static {p1, v0, v1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p1

    .line 4832
    sget-object v0, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    sget-object v1, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p1, v0, v1}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    .line 4835
    :cond_4
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte p1, p1, v0

    shl-int/lit8 p1, p1, 0x8

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int v1, p1, v0

    .line 4836
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v2, p1, v0

    .line 4837
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v3, p1, v0

    .line 4838
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v4, p1, v0

    .line 4839
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v5, p1, v0

    .line 4840
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v6, p1, v0

    .line 4841
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v7

    .line 4842
    invoke-static/range {v1 .. v7}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 4843
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p1, v0}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch -0x55
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method autoTypeError()V
    .locals 3

    .line 1327
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auotype not support : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 14

    move-object v7, p0

    move-object v8, p1

    .line 1249
    iget-object v0, v7, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, v7, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/4 v9, 0x0

    const/16 v1, -0x6e

    if-ne v0, v1, :cond_8

    .line 1250
    iget v0, v7, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v10, 0x1

    add-int/2addr v0, v10

    iput v0, v7, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 1252
    iget-object v11, v7, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 1253
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readTypeHashCode()J

    move-result-wide v12

    cmp-long v0, p2, v12

    if-nez v0, :cond_0

    .line 1255
    invoke-virtual {v11, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 1256
    invoke-interface {v0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    if-ne v1, v8, :cond_0

    .line 1258
    iget-object v1, v11, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v1, v12, v13, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerIfAbsent(JLcom/alibaba/fastjson2/reader/ObjectReader;)V

    return-object v0

    .line 1263
    :cond_0
    iget-object v4, v11, Lcom/alibaba/fastjson2/JSONReader$Context;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    if-eqz v4, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p4

    move-wide v5, v12

    .line 1265
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->checkAutoTypeWithHandler(Ljava/lang/Class;JLcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 1271
    :cond_1
    iget-wide v0, v11, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long v0, v0, p4

    .line 1272
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    :goto_0
    if-nez v10, :cond_4

    .line 1274
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    return-object v9

    .line 1277
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->autoTypeError()V

    .line 1280
    :cond_4
    iget-object v2, v11, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v2, v12, v13}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1283
    invoke-interface {v2}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1285
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1287
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    if-eq v6, v10, :cond_5

    .line 1289
    invoke-direct {p0, v2, v3, v10}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getObjectReaderContext(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Class;Ljava/lang/ClassLoader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    :cond_5
    if-nez v2, :cond_7

    .line 1296
    iget-object v2, v11, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    if-nez v2, :cond_7

    .line 1298
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v10, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v10

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    return-object v9

    .line 1301
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->autoTypeError()V

    :cond_7
    move-object v9, v2

    .line 1305
    iget-object v0, v7, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, v7, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    iput-byte v0, v7, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    :cond_8
    return-object v9
.end method

.method checkAutoTypeWithHandler(Ljava/lang/Class;JLcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 6

    move-object v0, p4

    move-wide v1, p5

    move-object v3, p1

    move-wide v4, p2

    .line 1316
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(JLjava/lang/Class;J)Ljava/lang/Class;

    move-result-object p5

    if-nez p5, :cond_0

    .line 1318
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p4, p5, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object p5

    :cond_0
    if-eqz p5, :cond_1

    .line 1321
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public close()V
    .locals 3

    .line 5401
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->valueBytes:[B

    if-eqz v0, :cond_0

    .line 5402
    array-length v1, v0

    const/high16 v2, 0x100000

    if-ge v1, v2, :cond_0

    .line 5403
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public error(B)Ljava/lang/String;
    .locals 3

    .line 1378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1380
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->isString()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1382
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 1383
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v1, 0x0

    .line 1387
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    if-eqz v1, :cond_0

    const/16 v2, 0x20

    .line 1391
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    :cond_0
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    :cond_1
    const-string p1, ", offset "

    .line 1398
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    .line 1400
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1401
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1403
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 2804
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNameHashCode()J
    .locals 11

    .line 2200
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v4, v1

    move-wide v5, v2

    .line 2202
    :goto_0
    iget v7, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ge v4, v7, :cond_2

    .line 2203
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    aget-byte v8, v7, v0

    if-ltz v8, :cond_1

    const/16 v9, 0x8

    if-ge v4, v9, :cond_1

    if-nez v4, :cond_0

    .line 2204
    iget v9, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    aget-byte v7, v7, v9

    if-nez v7, :cond_0

    goto :goto_3

    :cond_0
    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    int-to-long v7, v8

    const/16 v9, 0x38

    shl-long/2addr v7, v9

    const-wide v9, 0xffffffffffffffL

    goto :goto_1

    :pswitch_1
    int-to-long v7, v8

    const/16 v9, 0x30

    shl-long/2addr v7, v9

    const-wide v9, 0xffffffffffffL

    goto :goto_1

    :pswitch_2
    int-to-long v7, v8

    const/16 v9, 0x28

    shl-long/2addr v7, v9

    const-wide v9, 0xffffffffffL

    goto :goto_1

    :pswitch_3
    int-to-long v7, v8

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    const-wide v9, 0xffffffffL

    goto :goto_1

    :pswitch_4
    shl-int/lit8 v7, v8, 0x18

    int-to-long v7, v7

    const-wide/32 v9, 0xffffff

    goto :goto_1

    :pswitch_5
    shl-int/lit8 v7, v8, 0x10

    int-to-long v7, v7

    const-wide/32 v9, 0xffff

    goto :goto_1

    :pswitch_6
    shl-int/lit8 v7, v8, 0x8

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    :goto_1
    and-long/2addr v5, v9

    add-long/2addr v5, v7

    goto :goto_2

    :pswitch_7
    int-to-long v5, v8

    :goto_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2205
    :cond_1
    :goto_3
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    move-wide v5, v2

    :cond_2
    cmp-long v2, v5, v2

    if-eqz v2, :cond_3

    return-wide v5

    :cond_3
    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 2246
    :goto_4
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ge v1, v4, :cond_4

    .line 2247
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, v4, v0

    int-to-long v6, v0

    xor-long/2addr v2, v6

    const-wide v6, 0x100000001b3L

    mul-long/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    move v0, v5

    goto :goto_4

    :cond_4
    return-wide v2

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
.end method

.method public getNameHashCodeLCase()J
    .locals 15

    .line 2256
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v4, v1

    move-wide v5, v2

    .line 2258
    :goto_0
    iget v7, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    const/16 v8, 0x2d

    const/16 v9, 0x5a

    const/16 v10, 0x5f

    const/16 v11, 0x41

    const/16 v12, 0x20

    if-ge v4, v7, :cond_5

    .line 2259
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    aget-byte v13, v7, v0

    if-ltz v13, :cond_4

    const/16 v14, 0x8

    if-ge v4, v14, :cond_4

    if-nez v4, :cond_0

    .line 2260
    iget v14, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    aget-byte v14, v7, v14

    if-nez v14, :cond_0

    goto :goto_4

    :cond_0
    if-eq v13, v10, :cond_1

    if-eq v13, v8, :cond_1

    if-ne v13, v12, :cond_2

    :cond_1
    add-int/lit8 v8, v0, 0x1

    .line 2267
    aget-byte v7, v7, v8

    if-eq v7, v13, :cond_2

    goto :goto_3

    :cond_2
    if-lt v13, v11, :cond_3

    if-gt v13, v9, :cond_3

    add-int/lit8 v13, v13, 0x20

    int-to-byte v13, v13

    :cond_3
    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    int-to-long v7, v13

    const/16 v9, 0x38

    shl-long/2addr v7, v9

    const-wide v9, 0xffffffffffffffL

    goto :goto_1

    :pswitch_1
    int-to-long v7, v13

    const/16 v9, 0x30

    shl-long/2addr v7, v9

    const-wide v9, 0xffffffffffffL

    goto :goto_1

    :pswitch_2
    int-to-long v7, v13

    const/16 v9, 0x28

    shl-long/2addr v7, v9

    const-wide v9, 0xffffffffffL

    goto :goto_1

    :pswitch_3
    int-to-long v7, v13

    shl-long/2addr v7, v12

    const-wide v9, 0xffffffffL

    goto :goto_1

    :pswitch_4
    shl-int/lit8 v7, v13, 0x18

    int-to-long v7, v7

    const-wide/32 v9, 0xffffff

    goto :goto_1

    :pswitch_5
    shl-int/lit8 v7, v13, 0x10

    int-to-long v7, v7

    const-wide/32 v9, 0xffff

    goto :goto_1

    :pswitch_6
    shl-int/lit8 v7, v13, 0x8

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    :goto_1
    and-long/2addr v5, v9

    add-long/2addr v7, v5

    move-wide v5, v7

    goto :goto_2

    :pswitch_7
    int-to-long v5, v13

    :goto_2
    add-int/lit8 v4, v4, 0x1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2261
    :cond_4
    :goto_4
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    move-wide v5, v2

    :cond_5
    cmp-long v2, v5, v2

    if-eqz v2, :cond_6

    return-wide v5

    :cond_6
    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 2313
    :goto_5
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ge v1, v4, :cond_a

    .line 2314
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, v4, v0

    if-lt v0, v11, :cond_7

    if-gt v0, v9, :cond_7

    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    :cond_7
    if-eq v0, v10, :cond_9

    if-eq v0, v8, :cond_9

    if-ne v0, v12, :cond_8

    goto :goto_6

    :cond_8
    int-to-long v6, v0

    xor-long/2addr v2, v6

    const-wide v6, 0x100000001b3L

    mul-long/2addr v2, v6

    :cond_9
    :goto_6
    add-int/lit8 v1, v1, 0x1

    move v0, v5

    goto :goto_5

    :cond_a
    return-wide v2

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
.end method

.method public getString()Ljava/lang/String;
    .locals 5

    .line 98
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    const/16 v1, -0x51

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-gez v1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, 0x79

    if-ne v0, v1, :cond_2

    .line 108
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_1

    :cond_2
    const/16 v1, 0x49

    if-lt v0, v1, :cond_6

    const/16 v1, 0x78

    if-gt v0, v1, :cond_6

    .line 110
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 111
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    new-array v0, v0, [C

    .line 112
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ge v1, v2, :cond_3

    .line 113
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    add-int/2addr v3, v1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_3
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v0, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 116
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    if-eqz v0, :cond_5

    .line 117
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    new-array v2, v0, [B

    .line 118
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->LATIN1:Ljava/lang/Byte;

    invoke-interface {v0, v2, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 121
    :cond_5
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_1

    :cond_6
    const/16 v1, 0x7a

    if-ne v0, v1, :cond_7

    .line 123
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_1

    :cond_7
    const/16 v1, 0x7b

    if-ne v0, v1, :cond_8

    .line 125
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    goto :goto_1

    :cond_8
    const/16 v1, 0x7c

    if-ne v0, v1, :cond_9

    .line 127
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    goto :goto_1

    :cond_9
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_a

    .line 129
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 138
    :goto_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    invoke-direct {v1, v2, v3, v4, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1

    .line 135
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TODO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getStringLength()I
    .locals 3

    .line 5155
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    const/16 v1, 0x49

    if-lt v0, v1, :cond_0

    const/16 v2, 0x78

    if-ge v0, v2, :cond_0

    sub-int/2addr v0, v1

    return v0

    .line 5159
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType()B
    .locals 2

    .line 993
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public isArray()Z
    .locals 4

    .line 178
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    return v3

    .line 182
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v1, v0

    const/16 v1, -0x6c

    if-lt v0, v1, :cond_1

    const/16 v1, -0x5c

    if-gt v0, v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public isBinary()Z
    .locals 2

    .line 3563
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x6f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnd()Z
    .locals 2

    .line 5408
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInt()Z
    .locals 2

    .line 1571
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x46

    if-lt v0, v1, :cond_0

    const/16 v1, 0x48

    if-le v0, v1, :cond_2

    :cond_0
    const/16 v1, -0x54

    if-eq v0, v1, :cond_2

    const/16 v1, -0x53

    if-eq v0, v1, :cond_2

    const/16 v1, -0x55

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isNull()Z
    .locals 2

    .line 1580
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x51

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNumber()Z
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x4e

    if-lt v0, v1, :cond_0

    const/16 v1, 0x48

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isObject()Z
    .locals 2

    .line 188
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->end:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x5a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReference()Z
    .locals 3

    .line 1155
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v1, v0

    const/16 v1, -0x6d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isString()Z
    .locals 3

    .line 199
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v1, v0

    iput-byte v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    const/16 v1, 0x49

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mark()Lcom/alibaba/fastjson2/JSONReader$SavePoint;
    .locals 3

    .line 5390
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$SavePoint;

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONReader$SavePoint;-><init>(II)V

    return-object v0
.end method

.method public next()V
    .locals 1

    .line 1408
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-void
.end method

.method public nextIfArrayEnd()Z
    .locals 2

    .line 220
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "UnsupportedOperation"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextIfArrayStart()Z
    .locals 2

    .line 210
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "UnsupportedOperation"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextIfComma()Z
    .locals 2

    .line 215
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "UnsupportedOperation"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextIfInfinity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nextIfMatch(B)Z
    .locals 2

    .line 5138
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    if-ne v0, p1, :cond_0

    .line 5139
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public nextIfMatch(C)Z
    .locals 1

    .line 205
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nextIfMatchIdent(CCC)Z
    .locals 0

    .line 5355
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "UnsupportedOperation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nextIfMatchIdent(CCCC)Z
    .locals 0

    .line 5375
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "UnsupportedOperation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nextIfMatchIdent(CCCCC)Z
    .locals 0

    .line 5380
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "UnsupportedOperation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nextIfMatchIdent(CCCCCC)Z
    .locals 0

    .line 5385
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "UnsupportedOperation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nextIfMatchTypedAny()Z
    .locals 2

    .line 5146
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x6e

    if-ne v0, v1, :cond_0

    .line 5147
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nextIfNull()Z
    .locals 2

    .line 1590
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x51

    if-ne v0, v1, :cond_0

    .line 1591
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nextIfNullOrEmptyString()Z
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x51

    if-ne v0, v2, :cond_0

    .line 244
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return v1

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v2

    const/16 v2, 0x49

    if-eq v0, v2, :cond_1

    const/4 v0, 0x0

    return v0

    .line 251
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return v1
.end method

.method public nextIfObjectEnd()Z
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x5b

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 237
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return v1
.end method

.method public nextIfObjectStart()Z
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x5a

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 228
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return v1
.end method

.method public nextIfSet()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 265
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v3, p0

    .line 266
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 258
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v3, p0

    .line 259
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/util/Map;J)V
    .locals 7

    .line 429
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x5a

    if-ne v0, v1, :cond_a

    .line 432
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 434
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getFeatures()J

    move-result-wide v2

    or-long/2addr p2, v2

    .line 437
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v2

    const/16 v2, -0x5b

    if-ne v0, v2, :cond_0

    .line 439
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-void

    :cond_0
    const/16 v2, 0x49

    if-lt v0, v2, :cond_1

    .line 445
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readFieldName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    move-result-object v0

    .line 450
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->isReference()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 451
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readReference()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".."

    .line 452
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 453
    invoke-interface {p1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 455
    :cond_2
    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->addResolveTask(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    const/4 v2, 0x0

    .line 456
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 461
    :cond_3
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v3, v3, v4

    if-lt v3, v2, :cond_4

    const/16 v2, 0x7e

    if-gt v3, v2, :cond_4

    .line 464
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    const/16 v2, -0x10

    if-lt v3, v2, :cond_5

    const/16 v2, 0x2f

    if-gt v3, v2, :cond_5

    .line 466
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 467
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_5
    const/16 v2, -0x4f

    if-ne v3, v2, :cond_6

    .line 469
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 470
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_6
    const/16 v2, -0x50

    if-ne v3, v2, :cond_7

    .line 472
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 473
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_7
    if-ne v3, v1, :cond_8

    .line 475
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readObject()Ljava/util/Map;

    move-result-object v2

    goto :goto_2

    .line 477
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_9

    .line 480
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, p2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    goto/16 :goto_0

    .line 484
    :cond_9
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 430
    :cond_a
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "object not support input "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-byte p3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->error(B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readAny()Ljava/lang/Object;
    .locals 25

    move-object/from16 v6, p0

    .line 490
    iget v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    array-length v2, v1

    const-string v3, "/"

    if-ge v0, v2, :cond_47

    .line 494
    iget v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v0, 0x1

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v1, v0

    iput-byte v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    const/16 v1, 0x48

    if-eq v0, v1, :cond_46

    const-string v1, ", offset "

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    const-string v9, ".."

    const/16 v10, 0x2f

    const/16 v11, -0x10

    const-wide/16 v12, 0x3e8

    const/16 v14, 0x49

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    if-lt v0, v11, :cond_0

    if-gt v0, v10, :cond_0

    .line 866
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x38

    shl-int/lit8 v0, v0, 0x8

    .line 870
    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, 0x40

    if-lt v0, v1, :cond_2

    const/16 v1, 0x47

    if-gt v0, v1, :cond_2

    .line 875
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget-byte v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt3([BII)I

    move-result v0

    .line 876
    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 877
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v1, -0x28

    if-lt v0, v1, :cond_3

    const/16 v3, -0x11

    if-gt v0, v3, :cond_3

    const-wide/16 v2, -0x8

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 881
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_3
    const/16 v1, -0x38

    if-lt v0, v1, :cond_4

    const/16 v1, -0x29

    if-gt v0, v1, :cond_4

    add-int/lit8 v0, v0, 0x30

    shl-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    .line 885
    iget-object v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_4
    const/16 v1, -0x40

    if-lt v0, v1, :cond_5

    const/16 v1, -0x39

    if-gt v0, v1, :cond_5

    add-int/lit8 v0, v0, 0x3c

    shl-int/lit8 v0, v0, 0x10

    .line 890
    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_5
    const/16 v1, -0x6c

    if-lt v0, v1, :cond_e

    const/16 v3, -0x5c

    if-gt v0, v3, :cond_e

    if-ne v0, v3, :cond_6

    .line 897
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v0

    goto :goto_0

    :cond_6
    sub-int/2addr v0, v1

    :goto_0
    if-nez v0, :cond_9

    .line 901
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    .line 902
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 904
    :cond_7
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_8

    .line 905
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 907
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    return-object v0

    .line 912
    :cond_9
    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v10, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v12, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v10, v12

    cmp-long v1, v10, v4

    if-eqz v1, :cond_a

    .line 913
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_1

    .line 915
    :cond_a
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    :goto_1
    if-ge v7, v0, :cond_d

    .line 919
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->isReference()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 920
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readReference()Ljava/lang/String;

    move-result-object v3

    .line 921
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 922
    invoke-interface {v1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 924
    :cond_b
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    invoke-static {v3}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v3

    invoke-virtual {v6, v1, v7, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V

    goto :goto_2

    .line 930
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    move-result-object v3

    .line 931
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_d
    return-object v1

    :cond_e
    if-lt v0, v14, :cond_17

    const/16 v1, 0x79

    if-gt v0, v1, :cond_17

    if-ne v0, v1, :cond_f

    .line 938
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v0

    goto :goto_3

    :cond_f
    sub-int/2addr v0, v14

    .line 939
    :goto_3
    iput v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-gez v0, :cond_10

    .line 942
    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 945
    :cond_10
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    if-eqz v0, :cond_13

    .line 946
    iget v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    new-array v0, v0, [C

    .line 947
    :goto_4
    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ge v7, v1, :cond_11

    .line 948
    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v2, v7

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    aput-char v1, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 950
    :cond_11
    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr v1, v2

    iput v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 952
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v0, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 953
    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v7, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v7

    cmp-long v1, v1, v4

    if-eqz v1, :cond_12

    .line 954
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_12
    return-object v0

    .line 957
    :cond_13
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    if-eqz v0, :cond_15

    .line 958
    iget v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    new-array v0, v0, [B

    .line 959
    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    invoke-static {v1, v2, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 960
    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr v1, v2

    iput v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 961
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->LATIN1:Ljava/lang/Byte;

    invoke-interface {v1, v0, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 963
    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v7, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v7

    cmp-long v1, v1, v4

    if-eqz v1, :cond_14

    .line 964
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_14
    return-object v0

    .line 968
    :cond_15
    new-instance v0, Ljava/lang/String;

    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, v3, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 969
    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr v1, v2

    iput v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 971
    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v7, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v7

    cmp-long v1, v1, v4

    if-eqz v1, :cond_16

    .line 972
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_16
    return-object v0

    :cond_17
    const/16 v1, 0x7f

    if-ne v0, v1, :cond_19

    .line 978
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v0

    iput v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-gez v0, :cond_18

    .line 984
    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 981
    :cond_18
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support symbol : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 987
    :cond_19
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->error(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :pswitch_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->GB18030:Ljava/nio/charset/Charset;

    if-nez v0, :cond_1a

    const-string v0, "GB18030"

    .line 613
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->GB18030:Ljava/nio/charset/Charset;

    .line 615
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v0

    .line 616
    new-instance v1, Ljava/lang/String;

    iget-object v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v4, Lcom/alibaba/fastjson2/JSONReaderJSONB;->GB18030:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 617
    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v2, v0

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v1

    .line 597
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v0

    .line 600
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    if-eqz v1, :cond_1c

    sget-boolean v1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v1, :cond_1c

    .line 601
    new-array v1, v0, [B

    .line 602
    iget-object v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {v2, v3, v1, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    if-nez v0, :cond_1b

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->LATIN1:Ljava/lang/Byte;

    goto :goto_5

    :cond_1b
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UTF16:Ljava/lang/Byte;

    :goto_5
    invoke-interface {v2, v1, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_6

    .line 605
    :cond_1c
    new-instance v1, Ljava/lang/String;

    iget-object v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 608
    :goto_6
    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v2, v0

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v1

    .line 582
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v0

    .line 585
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    if-eqz v1, :cond_1e

    sget-boolean v1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-nez v1, :cond_1e

    .line 586
    new-array v1, v0, [B

    .line 587
    iget-object v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {v2, v3, v1, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 588
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    if-nez v0, :cond_1d

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->LATIN1:Ljava/lang/Byte;

    goto :goto_7

    :cond_1d
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UTF16:Ljava/lang/Byte;

    :goto_7
    invoke-interface {v2, v1, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_8

    .line 590
    :cond_1e
    new-instance v1, Ljava/lang/String;

    iget-object v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 593
    :goto_8
    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v2, v0

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v1

    .line 576
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v0

    .line 577
    new-instance v1, Ljava/lang/String;

    iget-object v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 578
    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v2, v0

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v1

    .line 546
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v0

    .line 548
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    if-eqz v1, :cond_21

    sget-boolean v1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-nez v1, :cond_21

    .line 549
    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->valueBytes:[B

    if-nez v1, :cond_1f

    .line 550
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->valueBytes:[B

    if-nez v1, :cond_1f

    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 552
    iput-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->valueBytes:[B

    :cond_1f
    shl-int/lit8 v1, v0, 0x1

    .line 557
    iget-object v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->valueBytes:[B

    array-length v2, v2

    if-le v1, v2, :cond_20

    .line 558
    new-array v1, v1, [B

    iput-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->valueBytes:[B

    .line 561
    :cond_20
    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget-object v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->valueBytes:[B

    invoke-static {v1, v2, v0, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->decodeUTF8([BII[B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_21

    .line 563
    new-array v2, v1, [B

    .line 564
    iget-object v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->valueBytes:[B

    invoke-static {v3, v7, v2, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 565
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UTF16:Ljava/lang/Byte;

    invoke-interface {v1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 566
    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v2, v0

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v1

    .line 571
    :cond_21
    new-instance v1, Ljava/lang/String;

    iget-object v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 572
    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v2, v0

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v1

    .line 513
    :pswitch_5
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    move-result v0

    .line 514
    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v0, v0

    .line 515
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 518
    :pswitch_6
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v4, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 519
    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v2, 0x8

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 520
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v2, :cond_22

    goto :goto_9

    :cond_22
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 503
    :pswitch_7
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 505
    :pswitch_8
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 523
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    .line 524
    new-array v1, v0, [B

    .line 525
    iget-object v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {v2, v3, v1, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 526
    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v2, v0

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 527
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0

    .line 722
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    move-result-wide v0

    .line 721
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 621
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    if-nez v0, :cond_23

    .line 625
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_a

    .line 627
    :cond_23
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object v0, v2

    :goto_a
    return-object v0

    .line 633
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    move-result-wide v0

    .line 632
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 530
    :pswitch_d
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    move-result v0

    .line 531
    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 532
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 535
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 538
    :pswitch_f
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v4, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 539
    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v2, 0x8

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 540
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v2, :cond_24

    goto :goto_b

    :cond_24
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_b
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 543
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_11
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 769
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_12
    const-wide/16 v0, 0x0

    .line 767
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 499
    :pswitch_13
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 501
    :pswitch_14
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_15
    return-object v2

    .line 711
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    move-result-wide v0

    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v2

    int-to-long v2, v2

    .line 713
    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 643
    :pswitch_17
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    move-result v0

    int-to-long v0, v0

    .line 644
    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v2, 0x4

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 645
    new-instance v2, Ljava/util/Date;

    const-wide/16 v3, 0x3c

    mul-long/2addr v0, v3

    mul-long/2addr v0, v12

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2

    .line 648
    :pswitch_18
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    move-result v0

    int-to-long v0, v0

    .line 649
    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v2, 0x4

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 650
    new-instance v2, Ljava/util/Date;

    mul-long/2addr v0, v12

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2

    .line 716
    :pswitch_19
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v4, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 717
    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v2, 0x8

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 718
    new-instance v2, Ljava/util/Date;

    sget-boolean v3, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v3, :cond_25

    goto :goto_c

    :cond_25
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_c
    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2

    .line 676
    :pswitch_1a
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int v9, v0, v1

    .line 677
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v10, v0, v1

    .line 678
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v11, v0, v1

    .line 679
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v12, v0, v1

    .line 680
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v13, v0, v1

    .line 681
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v14, v0, v1

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v15

    .line 687
    sget-object v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->SHANGHAI_ZONE_ID_NAME_BYTES:[B

    .line 688
    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    array-length v2, v0

    add-int/2addr v1, v2

    iget-object v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    array-length v2, v2

    if-ge v1, v2, :cond_28

    move v1, v7

    .line 690
    :goto_d
    array-length v2, v0

    if-ge v1, v2, :cond_27

    .line 691
    iget-object v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v3, v1

    aget-byte v2, v2, v3

    aget-byte v3, v0, v1

    if-eq v2, v3, :cond_26

    goto :goto_e

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_27
    move v7, v8

    :cond_28
    :goto_e
    if-eqz v7, :cond_29

    .line 700
    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    array-length v0, v0

    add-int/2addr v1, v0

    iput v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 701
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    goto :goto_f

    .line 703
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    move-result-object v0

    .line 704
    sget-object v1, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->getZoneId(Ljava/lang/String;Ljava/time/ZoneId;)Ljava/time/ZoneId;

    move-result-object v0

    .line 707
    :goto_f
    invoke-static/range {v9 .. v15}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 708
    invoke-static {v1, v0}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 653
    :pswitch_1b
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 654
    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    .line 655
    iget-object v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v2, v2, v3

    .line 656
    invoke-static {v0, v1, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0

    .line 666
    :pswitch_1c
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int v7, v0, v1

    .line 667
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v8, v0, v1

    .line 668
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v9, v0, v1

    .line 669
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v10, v0, v1

    .line 670
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v11, v0, v1

    .line 671
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v12, v0, v1

    .line 672
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v13

    .line 673
    invoke-static/range {v7 .. v13}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 659
    :pswitch_1d
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    .line 660
    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    .line 661
    iget-object v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v2, v2, v3

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v3

    .line 663
    invoke-static {v0, v1, v2, v3}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 775
    :pswitch_1e
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v12, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v10, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v10, v12

    cmp-long v0, v10, v4

    if-eqz v0, :cond_2a

    move v0, v8

    goto :goto_10

    :cond_2a
    move v0, v7

    :goto_10
    move-object v10, v2

    .line 777
    :goto_11
    iget-object v11, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v12, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v11, v11, v12

    const/16 v12, -0x5b

    if-ne v11, v12, :cond_2d

    .line 779
    iget v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v0, v8

    iput v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    if-nez v10, :cond_2c

    .line 856
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2b

    .line 857
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    goto :goto_12

    .line 859
    :cond_2b
    new-instance v10, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v10}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    :cond_2c
    :goto_12
    return-object v10

    :cond_2d
    if-eqz v0, :cond_31

    if-nez v7, :cond_31

    if-lt v11, v14, :cond_31

    .line 785
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readFieldNameHashCode()J

    move-result-wide v11

    .line 786
    sget-wide v17, Lcom/alibaba/fastjson2/reader/ObjectReader;->HASH_TYPE:J

    cmp-long v11, v11, v17

    if-nez v11, :cond_30

    .line 787
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readValueHashCode()J

    move-result-wide v4

    .line 788
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 790
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    move-result-object v0

    .line 791
    iget-object v4, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v4, v0, v2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    if-eqz v2, :cond_2e

    move-object v0, v2

    goto :goto_13

    .line 794
    :cond_2e
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auotype not support : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 798
    :cond_2f
    :goto_13
    iput-boolean v8, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->typeRedirect:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    .line 799
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 801
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getFieldName()Ljava/lang/String;

    move-result-object v11

    goto :goto_14

    :cond_31
    if-lt v11, v14, :cond_32

    .line 804
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readFieldName()Ljava/lang/String;

    move-result-object v11

    goto :goto_14

    .line 806
    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    move-result-object v11

    :goto_14
    if-nez v10, :cond_34

    .line 811
    iget-object v10, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v12, v10, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v10, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v14, v10, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v12, v14

    cmp-long v10, v12, v4

    if-eqz v10, :cond_33

    .line 812
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    goto :goto_15

    .line 814
    :cond_33
    new-instance v10, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v10}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 818
    :cond_34
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->isReference()Z

    move-result v12

    if-eqz v12, :cond_36

    .line 819
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readReference()Ljava/lang/String;

    move-result-object v12

    .line 820
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_35

    .line 821
    invoke-interface {v10, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 823
    :cond_35
    invoke-static {v12}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v12

    invoke-virtual {v6, v10, v11, v12}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->addResolveTask(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    .line 824
    invoke-interface {v10, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_16
    move-object/from16 v16, v9

    goto :goto_18

    .line 829
    :cond_36
    iget-object v12, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v13, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v12, v12, v13

    const/16 v13, 0x49

    if-lt v12, v13, :cond_37

    const/16 v14, 0x7e

    if-gt v12, v14, :cond_37

    .line 832
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    move-result-object v12

    const/16 v14, -0x10

    const/16 v15, 0x2f

    goto :goto_17

    :cond_37
    const/16 v14, -0x10

    const/16 v15, 0x2f

    if-lt v12, v14, :cond_38

    if-gt v12, v15, :cond_38

    .line 834
    iget v13, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v13, v8

    iput v13, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 835
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_17

    :cond_38
    const/16 v13, -0x4f

    if-ne v12, v13, :cond_39

    .line 837
    iget v12, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v12, v8

    iput v12, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 838
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_17

    :cond_39
    const/16 v13, -0x50

    if-ne v12, v13, :cond_3a

    .line 840
    iget v12, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v12, v8

    iput v12, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 841
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_17

    :cond_3a
    const/16 v13, -0x5a

    if-ne v12, v13, :cond_3b

    .line 843
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readObject()Ljava/util/Map;

    move-result-object v12

    goto :goto_17

    .line 845
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    move-result-object v12

    :goto_17
    if-nez v12, :cond_3c

    .line 848
    iget-object v13, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    move-object/from16 v16, v9

    iget-wide v8, v13, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v13, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v14, v13, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v8, v14

    cmp-long v8, v8, v4

    if-eqz v8, :cond_3d

    goto :goto_18

    :cond_3c
    move-object/from16 v16, v9

    .line 852
    :cond_3d
    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_18
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v9, v16

    const/4 v8, 0x1

    const/16 v14, 0x49

    goto/16 :goto_11

    .line 726
    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readTypeHashCode()J

    move-result-wide v8

    .line 728
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    if-eqz v0, :cond_3f

    .line 729
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    const/16 v22, 0x0

    iget-object v10, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v10, v10, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    move-object/from16 v19, v0

    move-wide/from16 v20, v8

    move-wide/from16 v23, v10

    invoke-interface/range {v19 .. v24}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(JLjava/lang/Class;J)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_3e

    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    move-result-object v0

    .line 733
    iget-object v10, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v10, v10, Lcom/alibaba/fastjson2/JSONReader$Context;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    iget-object v11, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v11, v11, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    invoke-interface {v10, v0, v2, v11, v12}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object v0

    :cond_3e
    if-eqz v0, :cond_3f

    .line 737
    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    .line 738
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 742
    :cond_3f
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v10, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v12, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v10, v12

    cmp-long v0, v10, v4

    if-eqz v0, :cond_40

    const/4 v7, 0x1

    :cond_40
    if-nez v7, :cond_43

    .line 744
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->isObject()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 745
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readObject()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 748
    :cond_41
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->isArray()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 749
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readArray()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 752
    :cond_42
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auoType not support , offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 755
    :cond_43
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v0, v8, v9}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    if-nez v0, :cond_45

    .line 757
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    move-result-object v0

    .line 758
    iget-object v4, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v4, v0, v2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    if-eqz v2, :cond_44

    move-object v0, v2

    goto :goto_19

    .line 761
    :cond_44
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auoType not support : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_45
    :goto_19
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    .line 764
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 637
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v0

    .line 638
    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 639
    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v2, v0

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v1

    .line 771
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    int-to-char v0, v0

    .line 772
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 508
    :cond_46
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    move-result v0

    .line 509
    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 510
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 491
    :cond_47
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readAny overflow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch -0x70
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x5a
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method readAnyObject()Ljava/lang/Object;
    .locals 13

    .line 1186
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x6e

    if-eq v0, v1, :cond_0

    .line 1187
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1190
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 1191
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 1192
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readTypeHashCode()J

    move-result-wide v8

    .line 1195
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    if-eqz v1, :cond_2

    .line 1197
    const-class v5, Ljava/lang/Object;

    const-wide/16 v6, 0x0

    move-object v2, v1

    move-wide v3, v8

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(JLjava/lang/Class;J)Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1199
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v11, v12}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    .line 1202
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v10

    .line 1206
    :goto_0
    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    if-nez v1, :cond_5

    .line 1209
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v4, v2

    cmp-long v1, v4, v11

    if-nez v1, :cond_4

    .line 1210
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v4, v2

    cmp-long v1, v4, v11

    if-nez v1, :cond_3

    return-object v10

    .line 1213
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->autoTypeError()V

    .line 1215
    :cond_4
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    :cond_5
    if-eqz v1, :cond_6

    .line 1219
    invoke-interface {v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1221
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1223
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    if-eq v5, v6, :cond_6

    .line 1225
    invoke-direct {p0, v1, v4, v6}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getObjectReaderContext(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Class;Ljava/lang/ClassLoader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    :cond_6
    if-nez v1, :cond_8

    .line 1232
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-nez v1, :cond_8

    .line 1234
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v4

    cmp-long v2, v2, v11

    if-nez v2, :cond_7

    return-object v10

    .line 1237
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->autoTypeError()V

    :cond_8
    move-object v3, v1

    .line 1241
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    iput-byte v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    .line 1243
    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v7, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    move-object v4, p0

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readArray()Ljava/util/List;
    .locals 15

    .line 998
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->startArray()I

    move-result v0

    .line 999
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_18

    .line 1001
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v4, v4, v5

    const/16 v5, 0x7e

    const/16 v6, 0x49

    if-lt v4, v6, :cond_0

    if-gt v4, v5, :cond_0

    .line 1004
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    :cond_0
    const/16 v7, -0x10

    if-lt v4, v7, :cond_1

    const/16 v7, 0x2f

    if-gt v4, v7, :cond_1

    .line 1006
    iget v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 1007
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_8

    :cond_1
    const/16 v7, -0x4f

    if-ne v4, v7, :cond_2

    .line 1009
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 1010
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_8

    :cond_2
    const/16 v7, -0x50

    if-ne v4, v7, :cond_3

    .line 1012
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 1013
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_8

    :cond_3
    const/16 v7, -0x5a

    if-ne v4, v7, :cond_4

    .line 1015
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readObject()Ljava/util/Map;

    move-result-object v4

    goto/16 :goto_8

    :cond_4
    const/16 v8, -0x42

    if-ne v4, v8, :cond_6

    .line 1017
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 1018
    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v6, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v8, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    .line 1019
    iget v6, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 1020
    sget-boolean v6, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v4, v5}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v4

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto/16 :goto_8

    :cond_6
    const-string v8, ".."

    const/16 v9, -0x6c

    if-lt v4, v9, :cond_11

    const/16 v9, -0x5c

    if-gt v4, v9, :cond_11

    .line 1022
    iget v10, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    if-ne v4, v9, :cond_7

    .line 1024
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v4

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x6c

    :goto_2
    const-wide/16 v9, 0x0

    if-nez v4, :cond_a

    .line 1028
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v4, v6

    cmp-long v4, v4, v9

    if-eqz v4, :cond_8

    .line 1029
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_8

    .line 1031
    :cond_8
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v4, v4, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Ljava/util/function/Supplier;

    if-eqz v4, :cond_9

    .line 1032
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v4, v4, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Ljava/util/function/Supplier;

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_8

    .line 1034
    :cond_9
    new-instance v4, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v4}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    goto/16 :goto_8

    .line 1039
    :cond_a
    iget-object v11, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v11, v11, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v13, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v13, v13, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v11, v13

    cmp-long v9, v11, v9

    if-eqz v9, :cond_b

    .line 1040
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_3

    .line 1042
    :cond_b
    new-instance v9, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v9, v4}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    :goto_3
    move v10, v2

    :goto_4
    if-ge v10, v4, :cond_10

    .line 1046
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->isReference()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1047
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readReference()Ljava/lang/String;

    move-result-object v11

    .line 1048
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1049
    invoke-interface {v9, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    const/4 v12, 0x0

    .line 1051
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    invoke-static {v11}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V

    goto :goto_6

    .line 1057
    :cond_d
    iget-object v11, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v12, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v11, v11, v12

    if-lt v11, v6, :cond_e

    if-gt v11, v5, :cond_e

    .line 1060
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_e
    if-ne v11, v7, :cond_f

    .line 1062
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readObject()Ljava/util/Map;

    move-result-object v11

    goto :goto_5

    .line 1064
    :cond_f
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    move-result-object v11

    .line 1066
    :goto_5
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_10
    move-object v4, v9

    goto/16 :goto_8

    :cond_11
    const/16 v5, 0x30

    if-lt v4, v5, :cond_12

    const/16 v5, 0x3f

    if-gt v4, v5, :cond_12

    add-int/lit8 v4, v4, -0x38

    shl-int/lit8 v4, v4, 0x8

    .line 1071
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v6, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1073
    iget v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    goto :goto_8

    :cond_12
    const/16 v5, 0x40

    if-lt v4, v5, :cond_13

    const/16 v5, 0x47

    if-gt v4, v5, :cond_13

    .line 1075
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v6, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6, v4}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt3([BII)I

    move-result v4

    .line 1076
    iget v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v5, v5, 0x3

    iput v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 1077
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_8

    :cond_13
    const/16 v5, 0x48

    if-ne v4, v5, :cond_15

    .line 1079
    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v6, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v8, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    .line 1080
    iget v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v5, v5, 0x5

    iput v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 1081
    sget-boolean v5, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v5, :cond_14

    goto :goto_7

    :cond_14
    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    :goto_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_8

    :cond_15
    const/16 v5, -0x6d

    if-ne v4, v5, :cond_17

    .line 1083
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readReference()Ljava/lang/String;

    move-result-object v4

    .line 1084
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    move-object v4, v1

    goto :goto_8

    .line 1087
    :cond_16
    invoke-static {v4}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V

    goto :goto_9

    .line 1091
    :cond_17
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    move-result-object v4

    .line 1093
    :goto_8
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_18
    return-object v1
.end method

.method public readArray(Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 4

    .line 1100
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x6e

    if-ne v0, v1, :cond_3

    .line 1105
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    move-result-object p1

    .line 1106
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1107
    check-cast p1, Ljava/util/List;

    return-object p1

    .line 1109
    :cond_1
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 1110
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 1112
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1115
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->startArray()I

    move-result v0

    .line 1116
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 1118
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public readBigDecimal()Ljava/math/BigDecimal;
    .locals 7

    .line 4118
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x47

    if-ne v0, v1, :cond_5

    .line 4121
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    .line 4122
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    const/16 v2, -0x46

    if-ne v1, v2, :cond_0

    .line 4123
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4124
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    move-result-wide v1

    .line 4125
    invoke-static {v1, v2, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    goto/16 :goto_1

    .line 4126
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    const/16 v2, 0x48

    if-ne v1, v2, :cond_1

    .line 4127
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    .line 4128
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    goto :goto_1

    .line 4129
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    const/16 v2, -0x42

    if-ne v1, v2, :cond_3

    .line 4130
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 4132
    sget-boolean v3, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v3, :cond_2

    goto :goto_0

    .line 4134
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v1

    .line 4131
    :goto_0
    invoke-static {v1, v2, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    .line 4136
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x9

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    goto :goto_1

    .line 4138
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    if-nez v0, :cond_4

    .line 4140
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_1

    .line 4141
    :cond_4
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object v0, v2

    goto :goto_1

    :cond_5
    const/16 v1, -0x48

    if-ne v0, v1, :cond_6

    .line 4145
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    move-result-wide v0

    .line 4144
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_1

    .line 4148
    :cond_6
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readDecimal0(B)Ljava/math/BigDecimal;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public readBigInteger()Ljava/math/BigInteger;
    .locals 5

    .line 4273
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x46

    if-ne v0, v1, :cond_0

    .line 4277
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    move-result-wide v0

    .line 4276
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v1, -0x45

    if-ne v0, v1, :cond_1

    .line 4280
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    .line 4281
    new-array v1, v0, [B

    .line 4282
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4283
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4284
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    goto :goto_0

    .line 4286
    :cond_1
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBigInteger0(B)Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public readBinary()[B
    .locals 5

    .line 3568
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x6f

    if-ne v0, v1, :cond_0

    .line 3573
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v0

    .line 3574
    new-array v1, v0, [B

    .line 3575
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3576
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v1

    .line 3570
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support input : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readBool()Ljava/lang/Boolean;
    .locals 3

    .line 4978
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x51

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v1, -0x4f

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 4982
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, -0x50

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 4984
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 4987
    :cond_2
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBoolValue0(B)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public readBoolValue()Z
    .locals 4

    const/4 v0, 0x0

    .line 4992
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->wasNull:Z

    .line 4993
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    const/16 v2, -0x4f

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/16 v2, -0x50

    if-ne v1, v2, :cond_1

    return v0

    .line 5000
    :cond_1
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBoolValue0(B)Z

    move-result v0

    return v0
.end method

.method public readCharValue()C
    .locals 3

    .line 3174
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x70

    if-ne v0, v1, :cond_0

    .line 3176
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3177
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    :goto_0
    int-to-char v0, v0

    return v0

    :cond_0
    const/16 v1, 0x49

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3179
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return v2

    :cond_1
    if-le v0, v1, :cond_2

    const/16 v1, 0x78

    if-ge v0, v1, :cond_2

    .line 3182
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3183
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 3186
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3187
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 3190
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_4
    :goto_1
    return v2
.end method

.method public readDoubleValue()D
    .locals 9

    .line 3827
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3828
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3829
    aget-byte v2, v0, v1

    const/16 v3, -0x4b

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x8

    .line 3830
    aget-byte v2, v0, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 v6, v1, 0x7

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x6

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x5

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x4

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x3

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v4, v6

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x1

    aget-byte v0, v0, v4

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x9

    .line 3838
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3839
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 3842
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readDoubleValue0()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFieldName()Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    .line 2501
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, -0x51

    if-ne v1, v4, :cond_0

    .line 2503
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v2

    .line 2506
    :cond_0
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 2508
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    const/16 v4, 0x7f

    if-ne v1, v4, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0x8

    const/4 v6, 0x2

    const/16 v7, 0x20

    if-eqz v1, :cond_5

    .line 2510
    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v8, v8, v9

    iput-byte v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    const/16 v9, -0x10

    if-lt v8, v9, :cond_4

    const/16 v9, 0x48

    if-gt v8, v9, :cond_4

    .line 2512
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v1

    if-gez v1, :cond_2

    .line 2514
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v1, v1

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    if-nez v1, :cond_3

    .line 2518
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0StrType:B

    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 2519
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Length:I

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2520
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Begin:I

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 2521
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getFieldName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    mul-int/2addr v1, v6

    add-int/2addr v1, v3

    .line 2525
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    aget-wide v1, v2, v1

    long-to-int v3, v1

    int-to-byte v5, v3

    .line 2526
    iput-byte v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    shr-int/2addr v3, v4

    .line 2527
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    shr-long/2addr v1, v7

    long-to-int v1, v1

    .line 2528
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 2529
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2531
    :cond_4
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v8, v3

    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 2534
    :cond_5
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 2537
    iget-byte v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    const/16 v9, 0x4a

    if-ne v8, v9, :cond_6

    .line 2538
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v5, v5, v8

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    invoke-static {v5}, Lcom/alibaba/fastjson2/util/TypeUtils;->toString(C)Ljava/lang/String;

    move-result-object v5

    .line 2539
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2540
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v8, v3

    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    :goto_1
    move-object/from16 v18, v5

    move-object v5, v2

    move-object/from16 v2, v18

    goto/16 :goto_11

    :cond_6
    const/16 v9, 0x4b

    if-ne v8, v9, :cond_7

    .line 2542
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v5, v5, v8

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v9, v3

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    int-to-char v8, v8

    invoke-static {v5, v8}, Lcom/alibaba/fastjson2/util/TypeUtils;->toString(CC)Ljava/lang/String;

    move-result-object v5

    .line 2546
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2547
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v8, v6

    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    goto :goto_1

    :cond_7
    const/16 v9, 0x49

    if-lt v8, v9, :cond_16

    const/16 v10, 0x79

    if-gt v8, v10, :cond_16

    if-ne v8, v10, :cond_8

    .line 2552
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v8

    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2553
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    goto/16 :goto_7

    :cond_8
    sub-int/2addr v8, v9

    .line 2555
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2557
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr v8, v9

    iget-object v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    array-length v13, v10

    if-gt v8, v13, :cond_15

    const/16 v8, 0x30

    const/16 v13, 0x28

    const-wide v14, 0xffffffffL

    const-wide/16 v16, 0xff

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_7

    .line 2633
    :pswitch_0
    sget-object v8, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v13, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v11, v10

    add-long/2addr v11, v13

    invoke-virtual {v8, v9, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 2634
    sget-object v10, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v5, v12

    add-long/2addr v13, v5

    const-wide/16 v5, 0x8

    add-long/2addr v13, v5

    invoke-virtual {v10, v11, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    goto/16 :goto_3

    .line 2625
    :pswitch_1
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v5, v5, 0x6

    aget-byte v5, v10, v5

    int-to-long v5, v5

    shl-long/2addr v5, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v9, v9, 0x5

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long v8, v8, v16

    shl-long/2addr v8, v13

    add-long/2addr v5, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v9, v9, 0x4

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long v8, v8, v16

    shl-long/2addr v8, v7

    add-long/2addr v5, v8

    sget-object v8, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v10, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v12, v12

    add-long/2addr v12, v10

    .line 2629
    invoke-virtual {v8, v9, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    int-to-long v8, v8

    and-long/2addr v8, v14

    add-long/2addr v8, v5

    .line 2630
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v12, v12

    add-long/2addr v10, v12

    const-wide/16 v12, 0x7

    add-long/2addr v10, v12

    invoke-virtual {v5, v6, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    goto/16 :goto_3

    .line 2618
    :pswitch_2
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v5, v5, 0x5

    aget-byte v5, v10, v5

    int-to-long v5, v5

    shl-long/2addr v5, v13

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v9, v9, 0x4

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long v8, v8, v16

    shl-long/2addr v8, v7

    add-long/2addr v5, v8

    sget-object v8, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v10, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v12, v12

    add-long/2addr v12, v10

    .line 2621
    invoke-virtual {v8, v9, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    int-to-long v8, v8

    and-long/2addr v8, v14

    add-long/2addr v8, v5

    .line 2622
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v12, v12

    add-long/2addr v10, v12

    const-wide/16 v12, 0x6

    add-long/2addr v10, v12

    invoke-virtual {v5, v6, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    goto/16 :goto_3

    .line 2612
    :pswitch_3
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v5, v5, 0x4

    aget-byte v5, v10, v5

    int-to-long v5, v5

    shl-long/2addr v5, v7

    sget-object v8, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v10, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v12, v12

    add-long/2addr v12, v10

    .line 2614
    invoke-virtual {v8, v9, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    int-to-long v8, v8

    and-long/2addr v8, v14

    add-long/2addr v8, v5

    .line 2615
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v12, v12

    add-long/2addr v10, v12

    const-wide/16 v12, 0x5

    add-long/2addr v10, v12

    invoke-virtual {v5, v6, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    goto/16 :goto_3

    .line 2608
    :pswitch_4
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v8, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v10, v10

    add-long/2addr v10, v8

    invoke-virtual {v5, v6, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v5, v5

    .line 2609
    sget-object v10, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v12, v12

    add-long/2addr v8, v12

    const-wide/16 v12, 0x4

    add-long/2addr v8, v12

    invoke-virtual {v10, v11, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    goto :goto_2

    .line 2601
    :pswitch_5
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v5, v10, v5

    shl-int/lit8 v5, v5, 0x10

    int-to-long v5, v5

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v9, v3

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long v8, v8, v16

    shl-long/2addr v8, v4

    add-long/2addr v5, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v10, 0x2

    add-int/2addr v9, v10

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long v8, v8, v16

    add-long/2addr v8, v5

    .line 2605
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v10, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v12, v12

    add-long/2addr v10, v12

    const-wide/16 v12, 0x3

    add-long/2addr v10, v12

    invoke-virtual {v5, v6, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    goto :goto_3

    .line 2597
    :pswitch_6
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v8, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v10, v10

    add-long/2addr v10, v8

    invoke-virtual {v5, v6, v10, v11}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v5

    int-to-long v5, v5

    .line 2598
    sget-object v10, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v12, v12

    add-long/2addr v8, v12

    const-wide/16 v12, 0x2

    add-long/2addr v8, v12

    invoke-virtual {v10, v11, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    :goto_2
    move-wide v12, v5

    move-wide v14, v8

    goto/16 :goto_9

    .line 2593
    :pswitch_7
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v5, v10, v5

    int-to-long v8, v5

    .line 2594
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v10, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v12, v12

    add-long/2addr v10, v12

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    invoke-virtual {v5, v6, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    :goto_3
    move-wide v14, v5

    move-wide v12, v8

    goto/16 :goto_9

    .line 2590
    :pswitch_8
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v8, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    invoke-virtual {v5, v6, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    goto/16 :goto_6

    .line 2583
    :pswitch_9
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v5, v5, 0x6

    aget-byte v5, v10, v5

    int-to-long v5, v5

    shl-long/2addr v5, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v9, v9, 0x5

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long v8, v8, v16

    shl-long/2addr v8, v13

    add-long/2addr v5, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v9, v9, 0x4

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long v8, v8, v16

    shl-long/2addr v8, v7

    add-long/2addr v5, v8

    sget-object v8, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v10, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v12, v12

    add-long/2addr v10, v12

    .line 2587
    invoke-virtual {v8, v9, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    goto :goto_4

    .line 2577
    :pswitch_a
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v5, v5, 0x5

    aget-byte v5, v10, v5

    int-to-long v5, v5

    shl-long/2addr v5, v13

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v9, v9, 0x4

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long v8, v8, v16

    shl-long/2addr v8, v7

    add-long/2addr v5, v8

    sget-object v8, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v10, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v12, v12

    add-long/2addr v10, v12

    .line 2580
    invoke-virtual {v8, v9, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    goto :goto_4

    .line 2572
    :pswitch_b
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v5, v5, 0x4

    aget-byte v5, v10, v5

    int-to-long v5, v5

    shl-long/2addr v5, v7

    sget-object v8, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v10, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v12, v12

    add-long/2addr v10, v12

    .line 2574
    invoke-virtual {v8, v9, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    :goto_4
    int-to-long v8, v8

    and-long/2addr v8, v14

    goto :goto_5

    .line 2569
    :pswitch_c
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v8, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    invoke-virtual {v5, v6, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v8, v5

    goto :goto_6

    .line 2563
    :pswitch_d
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v6, 0x2

    add-int/2addr v5, v6

    aget-byte v5, v10, v5

    shl-int/lit8 v5, v5, 0x10

    int-to-long v5, v5

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v9, v3

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long v8, v8, v16

    shl-long/2addr v8, v4

    add-long/2addr v5, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long v8, v8, v16

    :goto_5
    add-long/2addr v8, v5

    :goto_6
    move-wide v12, v8

    goto :goto_8

    :goto_7
    const-wide/16 v12, -0x1

    :goto_8
    const-wide/16 v14, -0x1

    .line 2641
    :goto_9
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr v6, v8

    sub-int/2addr v6, v3

    aget-byte v5, v5, v6

    if-lez v5, :cond_10

    const-wide/16 v5, -0x1

    cmp-long v8, v12, v5

    if-eqz v8, :cond_10

    cmp-long v5, v14, v5

    if-eqz v5, :cond_c

    xor-long v5, v12, v14

    ushr-long v8, v5, v7

    xor-long/2addr v5, v8

    long-to-int v5, v5

    .line 2644
    sget-object v6, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE2:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

    array-length v6, v6

    sub-int/2addr v6, v3

    and-int/2addr v5, v6

    .line 2645
    sget-object v6, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE2:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

    aget-object v6, v6, v5

    if-nez v6, :cond_b

    .line 2648
    sget-object v6, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    if-eqz v6, :cond_a

    .line 2649
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    new-array v6, v6, [C

    const/4 v8, 0x0

    .line 2650
    :goto_a
    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ge v8, v9, :cond_9

    .line 2651
    iget-object v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v10, v8

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    int-to-char v9, v9

    aput-char v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 2653
    :cond_9
    sget-object v8, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v6, v9}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_b

    .line 2655
    :cond_a
    new-instance v6, Ljava/lang/String;

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    sget-object v11, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v6, v8, v9, v10, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2658
    :goto_b
    sget-object v8, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE2:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

    new-instance v9, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

    move-object v10, v9

    move-object v11, v6

    invoke-direct/range {v10 .. v15}, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;-><init>(Ljava/lang/String;JJ)V

    aput-object v9, v8, v5

    .line 2659
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr v5, v8

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    goto/16 :goto_e

    .line 2661
    :cond_b
    iget-wide v8, v6, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->value0:J

    cmp-long v5, v8, v12

    if-nez v5, :cond_10

    iget-wide v8, v6, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->value1:J

    cmp-long v5, v8, v14

    if-nez v5, :cond_10

    .line 2662
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr v5, v8

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 2663
    iget-object v6, v6, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->name:Ljava/lang/String;

    goto :goto_e

    :cond_c
    ushr-long v5, v12, v7

    xor-long/2addr v5, v12

    long-to-int v5, v5

    .line 2666
    sget-object v6, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;

    array-length v6, v6

    sub-int/2addr v6, v3

    and-int/2addr v5, v6

    .line 2667
    sget-object v6, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;

    aget-object v6, v6, v5

    if-nez v6, :cond_f

    .line 2670
    sget-object v6, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    if-eqz v6, :cond_e

    .line 2671
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    new-array v6, v6, [C

    const/4 v8, 0x0

    .line 2672
    :goto_c
    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ge v8, v9, :cond_d

    .line 2673
    iget-object v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v10, v8

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    int-to-char v9, v9

    aput-char v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 2675
    :cond_d
    sget-object v8, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v6, v9}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_d

    .line 2677
    :cond_e
    new-instance v6, Ljava/lang/String;

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    sget-object v11, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v6, v8, v9, v10, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2680
    :goto_d
    sget-object v8, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;

    new-instance v9, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;

    invoke-direct {v9, v6, v12, v13}, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;-><init>(Ljava/lang/String;J)V

    aput-object v9, v8, v5

    .line 2681
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr v5, v8

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    goto :goto_e

    .line 2683
    :cond_f
    iget-wide v8, v6, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;->value:J

    cmp-long v5, v8, v12

    if-nez v5, :cond_10

    .line 2684
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr v5, v8

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 2685
    iget-object v6, v6, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;->name:Ljava/lang/String;

    goto :goto_e

    :cond_10
    move-object v6, v2

    :goto_e
    if-nez v6, :cond_14

    .line 2691
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    if-eqz v2, :cond_12

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ltz v2, :cond_12

    .line 2692
    new-array v2, v2, [C

    const/4 v5, 0x0

    .line 2693
    :goto_f
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ge v5, v6, :cond_11

    .line 2694
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v8, v5

    aget-byte v6, v6, v8

    and-int/lit16 v6, v6, 0xff

    int-to-char v6, v6

    aput-char v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 2696
    :cond_11
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 2697
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v2, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    goto :goto_10

    .line 2698
    :cond_12
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    if-eqz v2, :cond_13

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ltz v2, :cond_13

    .line 2699
    new-array v2, v2, [B

    .line 2700
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    const/4 v9, 0x0

    invoke-static {v5, v6, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2701
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    sget-object v6, Lcom/alibaba/fastjson2/util/JDKUtils;->LATIN1:Ljava/lang/Byte;

    invoke-interface {v5, v2, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 2702
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 2704
    :cond_13
    :goto_10
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    :cond_14
    move-object v5, v2

    move-object v2, v6

    goto/16 :goto_11

    .line 2558
    :cond_15
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "illegal jsonb data"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    const/16 v5, 0x7a

    if-ne v8, v5, :cond_1a

    .line 2707
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v5

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2708
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 2710
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    if-eqz v5, :cond_19

    sget-boolean v5, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-nez v5, :cond_19

    .line 2711
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->valueBytes:[B

    if-nez v5, :cond_17

    .line 2712
    sget-object v5, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    invoke-virtual {v5, v6, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->valueBytes:[B

    if-nez v5, :cond_17

    const/16 v5, 0x2000

    new-array v5, v5, [B

    .line 2714
    iput-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->valueBytes:[B

    .line 2718
    :cond_17
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    shl-int/2addr v5, v3

    .line 2719
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->valueBytes:[B

    array-length v6, v6

    if-le v5, v6, :cond_18

    .line 2720
    new-array v5, v5, [B

    iput-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->valueBytes:[B

    .line 2723
    :cond_18
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    iget-object v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->valueBytes:[B

    invoke-static {v5, v6, v8, v9}, Lcom/alibaba/fastjson2/util/IOUtils;->decodeUTF8([BII[B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_19

    .line 2725
    new-array v2, v5, [B

    .line 2726
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->valueBytes:[B

    const/4 v8, 0x0

    invoke-static {v6, v8, v2, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2727
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    sget-object v6, Lcom/alibaba/fastjson2/util/JDKUtils;->UTF16:Ljava/lang/Byte;

    invoke-interface {v5, v2, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2728
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 2732
    :cond_19
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    goto/16 :goto_11

    :cond_1a
    const/16 v5, 0x7b

    if-ne v8, v5, :cond_1b

    .line 2734
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v5

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2735
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 2736
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    goto/16 :goto_11

    :cond_1b
    const/16 v5, 0x7c

    if-ne v8, v5, :cond_1d

    .line 2738
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v5

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2739
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 2741
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    if-eqz v5, :cond_1c

    sget-boolean v5, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-nez v5, :cond_1c

    .line 2742
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    new-array v2, v2, [B

    .line 2743
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    const/4 v9, 0x0

    invoke-static {v5, v6, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2744
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    sget-object v6, Lcom/alibaba/fastjson2/util/JDKUtils;->UTF16:Ljava/lang/Byte;

    invoke-interface {v5, v2, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2745
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 2748
    :cond_1c
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    goto :goto_11

    :cond_1d
    const/16 v5, 0x7d

    if-ne v8, v5, :cond_1f

    .line 2750
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v5

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2751
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 2753
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    if-eqz v5, :cond_1e

    sget-boolean v5, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v5, :cond_1e

    .line 2754
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    new-array v2, v2, [B

    .line 2755
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    const/4 v9, 0x0

    invoke-static {v5, v6, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2756
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    sget-object v6, Lcom/alibaba/fastjson2/util/JDKUtils;->UTF16:Ljava/lang/Byte;

    invoke-interface {v5, v2, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2757
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 2760
    :cond_1e
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    goto :goto_11

    :cond_1f
    const/16 v5, 0x7e

    if-ne v8, v5, :cond_21

    .line 2762
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v5

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2764
    sget-object v5, Lcom/alibaba/fastjson2/JSONReaderJSONB;->GB18030:Ljava/nio/charset/Charset;

    if-nez v5, :cond_20

    const-string v5, "GB18030"

    .line 2765
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    sput-object v5, Lcom/alibaba/fastjson2/JSONReaderJSONB;->GB18030:Ljava/nio/charset/Charset;

    .line 2767
    :cond_20
    sget-object v5, Lcom/alibaba/fastjson2/JSONReaderJSONB;->GB18030:Ljava/nio/charset/Charset;

    goto :goto_11

    :cond_21
    move-object v5, v2

    .line 2770
    :goto_11
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-gez v6, :cond_22

    .line 2771
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v6, v6

    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    move-result-object v2

    :cond_22
    if-nez v2, :cond_23

    .line 2775
    new-instance v2, Ljava/lang/String;

    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    invoke-direct {v2, v6, v8, v9, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2776
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    :cond_23
    if-eqz v1, :cond_27

    .line 2780
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v1

    if-nez v1, :cond_24

    .line 2783
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Begin:I

    .line 2784
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Length:I

    .line 2785
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0StrType:B

    goto :goto_13

    :cond_24
    const/4 v5, 0x2

    mul-int/2addr v1, v5

    add-int/lit8 v5, v1, 0x2

    .line 2788
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    if-nez v6, :cond_25

    .line 2789
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-array v5, v5, [J

    iput-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    goto :goto_12

    .line 2790
    :cond_25
    array-length v8, v6

    if-ge v8, v5, :cond_26

    .line 2791
    array-length v5, v6

    add-int/lit8 v5, v5, 0x10

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    .line 2794
    :cond_26
    :goto_12
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    int-to-long v5, v5

    shl-long/2addr v5, v7

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    int-to-long v7, v7

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    iget-byte v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    int-to-long v7, v4

    add-long/2addr v5, v7

    .line 2795
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    add-int/2addr v1, v3

    aput-wide v5, v4, v1

    :cond_27
    :goto_13
    return-object v2

    :pswitch_data_0
    .packed-switch 0x3
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readFieldNameHashCode()J
    .locals 21

    move-object/from16 v0, p0

    .line 1413
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    const/4 v3, 0x1

    const/16 v4, 0x7f

    if-ne v1, v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0x2f

    const/16 v5, -0x10

    const/16 v6, 0x8

    const-wide/16 v7, 0x0

    const/16 v9, 0x20

    if-eqz v1, :cond_7

    .line 1417
    iget-object v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v10, v10, v11

    iput-byte v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    if-lt v10, v5, :cond_6

    const/16 v11, 0x48

    if-gt v10, v11, :cond_6

    if-gt v10, v4, :cond_1

    .line 1421
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 1422
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    goto :goto_1

    .line 1424
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v1

    :goto_1
    if-gez v1, :cond_2

    .line 1428
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v1, v1

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/SymbolTable;->getHashCode(I)J

    move-result-wide v1

    return-wide v1

    :cond_2
    if-nez v1, :cond_4

    .line 1432
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0StrType:B

    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 1433
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Length:I

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 1434
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Begin:I

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 1435
    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Hash:J

    cmp-long v1, v1, v7

    if-nez v1, :cond_3

    .line 1436
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getNameHashCode()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Hash:J

    .line 1438
    :cond_3
    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Hash:J

    return-wide v1

    :cond_4
    mul-int/lit8 v1, v1, 0x2

    .line 1442
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    add-int/lit8 v3, v1, 0x1

    aget-wide v3, v2, v3

    long-to-int v5, v3

    int-to-byte v10, v5

    .line 1443
    iput-byte v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    shr-int/2addr v5, v6

    .line 1444
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    shr-long/2addr v3, v9

    long-to-int v3, v3

    .line 1445
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 1446
    aget-wide v2, v2, v1

    cmp-long v4, v2, v7

    if-nez v4, :cond_5

    .line 1448
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getNameHashCode()J

    move-result-wide v2

    .line 1449
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    aput-wide v2, v4, v1

    :cond_5
    return-wide v2

    .line 1453
    :cond_6
    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v10, v3

    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 1456
    :cond_7
    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 1457
    iget-byte v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    const/16 v11, 0x49

    if-lt v10, v11, :cond_8

    const/16 v12, 0x78

    if-gt v10, v12, :cond_8

    sub-int/2addr v10, v11

    .line 1458
    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    goto :goto_3

    :cond_8
    const/16 v11, 0x79

    if-eq v10, v11, :cond_a

    const/16 v11, 0x7a

    if-ne v10, v11, :cond_9

    goto :goto_2

    .line 1463
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readFieldNameHashCodeEror()Lcom/alibaba/fastjson2/JSONException;

    move-result-object v1

    throw v1

    .line 1460
    :cond_a
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v10

    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 1461
    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 1467
    :goto_3
    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-gez v10, :cond_b

    .line 1468
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v7, v10

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson2/SymbolTable;->getHashCode(I)J

    move-result-wide v7

    goto/16 :goto_b

    :cond_b
    if-gt v10, v6, :cond_c

    .line 1471
    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr v10, v11

    iget-object v12, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    array-length v13, v12

    if-gt v10, v13, :cond_c

    const-wide/32 v13, 0xffff

    const-wide v15, 0xffffffffL

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_8

    .line 1501
    :pswitch_0
    sget-object v10, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v12, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    iget v14, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v14, v14

    add-long/2addr v12, v14

    invoke-virtual {v10, v11, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    goto :goto_4

    .line 1495
    :pswitch_1
    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v10, v10, 0x6

    aget-byte v10, v12, v10

    int-to-long v10, v10

    const/16 v12, 0x30

    shl-long/2addr v10, v12

    iget-object v12, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v13, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v13, v13, 0x5

    aget-byte v12, v12, v13

    int-to-long v12, v12

    const-wide/16 v17, 0xff

    and-long v12, v12, v17

    const/16 v14, 0x28

    shl-long/2addr v12, v14

    add-long/2addr v10, v12

    iget-object v12, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v13, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v13, v13, 0x4

    aget-byte v12, v12, v13

    int-to-long v12, v12

    and-long v12, v12, v17

    shl-long/2addr v12, v9

    add-long/2addr v10, v12

    sget-object v12, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v13, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v17, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    iget v14, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v2, v14

    add-long v2, v17, v2

    .line 1498
    invoke-virtual {v12, v13, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v15

    add-long/2addr v10, v2

    :goto_4
    move-wide v2, v7

    move-wide v7, v10

    goto/16 :goto_9

    .line 1491
    :pswitch_2
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v10, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v12, v12

    add-long/2addr v12, v10

    const-wide/16 v17, 0x4

    add-long v12, v12, v17

    invoke-virtual {v2, v3, v12, v13}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v9

    sget-object v12, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v13, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v14, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v4, v14

    add-long/2addr v10, v4

    .line 1492
    invoke-virtual {v12, v13, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    goto :goto_5

    .line 1487
    :pswitch_3
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v2, 0x4

    aget-byte v2, v12, v2

    int-to-long v2, v2

    shl-long/2addr v2, v9

    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v10, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v12, v12

    add-long/2addr v10, v12

    .line 1488
    invoke-virtual {v4, v5, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :goto_5
    int-to-long v4, v4

    and-long/2addr v4, v15

    add-long/2addr v2, v4

    goto :goto_6

    .line 1484
    :pswitch_4
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v4, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v10, v10

    add-long/2addr v4, v10

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    int-to-long v2, v2

    :goto_6
    move-wide/from16 v19, v2

    move-wide v2, v7

    move-wide/from16 v7, v19

    goto :goto_9

    .line 1480
    :pswitch_5
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, v12, v2

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v10, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v6, v12

    add-long/2addr v10, v6

    .line 1481
    invoke-virtual {v4, v5, v10, v11}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v13

    add-long/2addr v2, v4

    goto :goto_7

    .line 1477
    :pswitch_6
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v4, Lcom/alibaba/fastjson2/JSONReaderJSONB;->BASE:J

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v13

    goto :goto_7

    .line 1474
    :pswitch_7
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v2, v12, v2

    int-to-long v2, v2

    :goto_7
    move-wide v7, v2

    const-wide/16 v2, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    const-wide/16 v2, 0x0

    const-wide/16 v7, 0x0

    :goto_9
    cmp-long v2, v7, v2

    if-eqz v2, :cond_d

    .line 1509
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    goto :goto_b

    :cond_d
    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    move-wide v7, v2

    const/4 v2, 0x0

    .line 1513
    :goto_a
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ge v2, v3, :cond_e

    .line 1514
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v3, v3, v4

    int-to-long v3, v3

    xor-long/2addr v3, v7

    const-wide v5, 0x100000001b3L

    mul-long v7, v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_e
    :goto_b
    if-eqz v1, :cond_13

    .line 1523
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    const/16 v2, -0x10

    if-lt v1, v2, :cond_f

    const/16 v2, 0x2f

    if-gt v1, v2, :cond_f

    .line 1525
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    goto :goto_c

    .line 1527
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v1

    :goto_c
    if-nez v1, :cond_10

    .line 1531
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Begin:I

    .line 1532
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Length:I

    .line 1533
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0StrType:B

    .line 1534
    iput-wide v7, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Hash:J

    return-wide v7

    .line 1538
    :cond_10
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    int-to-long v2, v2

    shl-long/2addr v2, v9

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    int-to-long v4, v4

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    iget-byte v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    int-to-long v4, v4

    add-long/2addr v2, v4

    const/4 v4, 0x1

    shl-int/2addr v1, v4

    add-int/lit8 v4, v1, 0x2

    .line 1542
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    if-nez v5, :cond_11

    .line 1543
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v4, v4, [J

    iput-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    goto :goto_d

    .line 1544
    :cond_11
    array-length v6, v5

    if-ge v6, v4, :cond_12

    add-int/lit8 v4, v4, 0x10

    .line 1545
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    .line 1548
    :cond_12
    :goto_d
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    aput-wide v7, v4, v1

    const/4 v5, 0x1

    add-int/2addr v1, v5

    .line 1549
    aput-wide v2, v4, v1

    :cond_13
    return-wide v7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected readFieldNameHashCodeEror()Lcom/alibaba/fastjson2/JSONException;
    .locals 3

    .line 1556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fieldName not support input type "

    .line 1557
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 1558
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1559
    iget-byte v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    const/16 v2, -0x6d

    if-ne v1, v2, :cond_0

    const-string v1, " "

    .line 1560
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1561
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", offset "

    .line 1564
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 1565
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1566
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public readFieldNameHashCodeUnquote()J
    .locals 2

    .line 5360
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readFieldNameHashCode()J

    move-result-wide v0

    return-wide v0
.end method

.method protected readFixedAsciiString(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3640
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toString(C)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 3642
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v2, v0

    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toString(CC)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 3646
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    if-eqz v0, :cond_3

    .line 3647
    new-array v0, p1, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 3649
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v3, v1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3652
    :cond_2
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    .line 3654
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public readFloat()Ljava/lang/Float;
    .locals 4

    .line 3660
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3661
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3662
    aget-byte v2, v0, v1

    const/16 v3, -0x49

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x4

    .line 3664
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x1

    aget-byte v0, v0, v3

    shl-int/lit8 v0, v0, 0x18

    add-int/2addr v2, v0

    add-int/lit8 v1, v1, 0x5

    .line 3668
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3669
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, -0x51

    if-ne v2, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 3671
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v0, 0x0

    return-object v0

    .line 3675
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readFloat0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public readFloatValue()F
    .locals 7

    .line 3680
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3681
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3682
    aget-byte v2, v0, v1

    const/16 v3, -0x49

    if-ne v2, v3, :cond_1

    .line 3683
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    add-int/lit8 v1, v1, 0x5

    .line 3684
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3685
    sget-boolean v1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0

    .line 3688
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readFloat0()F

    move-result v0

    return v0
.end method

.method public readHex()[B
    .locals 10

    .line 1140
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1141
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    mul-int/lit8 v4, v3, 0x2

    .line 1143
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v4, v4, 0x1

    .line 1144
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x30

    const/16 v7, 0x37

    const/16 v8, 0x39

    if-gt v5, v8, :cond_0

    move v9, v6

    goto :goto_1

    :cond_0
    move v9, v7

    :goto_1
    sub-int/2addr v5, v9

    if-gt v4, v8, :cond_1

    goto :goto_2

    :cond_1
    move v6, v7

    :goto_2
    sub-int/2addr v4, v6

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    .line 1148
    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public readIfNull()Z
    .locals 2

    .line 1607
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x51

    if-ne v0, v1, :cond_0

    .line 1608
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public readInstant()Ljava/time/Instant;
    .locals 7

    .line 4730
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x42

    if-eq v0, v1, :cond_0

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 4757
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 4734
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    move-result-wide v0

    .line 4735
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v2

    int-to-long v2, v2

    .line 4733
    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 4739
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    move-result v0

    int-to-long v3, v0

    .line 4740
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const-wide/16 v5, 0x3c

    mul-long/2addr v3, v5

    .line 4741
    invoke-static {v3, v4, v1, v2}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 4744
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    move-result v0

    int-to-long v3, v0

    .line 4745
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4746
    invoke-static {v3, v4, v1, v2}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 4750
    :cond_0
    :pswitch_3
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 4751
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4752
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch -0x55
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readInt32()Ljava/lang/Integer;
    .locals 3

    .line 3582
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/4 v1, 0x0

    const/16 v2, -0x51

    if-ne v0, v2, :cond_0

    .line 3583
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3584
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->wasNull:Z

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 3588
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->wasNull:Z

    .line 3589
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    .line 3590
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->wasNull:Z

    if-eqz v2, :cond_1

    return-object v1

    .line 3593
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public readInt32Value()I
    .locals 7

    .line 3410
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3411
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    .line 3412
    aget-byte v1, v0, v1

    const/16 v3, -0x10

    if-lt v1, v3, :cond_0

    const/16 v3, 0x2f

    if-gt v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x30

    if-lt v1, v3, :cond_1

    const/16 v3, 0x3f

    if-gt v1, v3, :cond_1

    add-int/lit8 v1, v1, -0x38

    shl-int/lit8 v1, v1, 0x8

    .line 3418
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0x40

    if-lt v1, v3, :cond_2

    const/16 v3, 0x47

    if-gt v1, v3, :cond_2

    add-int/lit8 v1, v1, -0x44

    shl-int/lit8 v1, v1, 0x10

    .line 3422
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    const/16 v3, 0x48

    if-ne v1, v3, :cond_4

    .line 3427
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .line 3428
    sget-boolean v1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-nez v1, :cond_3

    .line 3429
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    :cond_3
    move v1, v0

    add-int/lit8 v2, v2, 0x4

    .line 3436
    :goto_0
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return v1

    .line 3433
    :cond_4
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3434
    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value0([BB)I

    move-result v0

    return v0
.end method

.method public readInt32ValueArray()[I
    .locals 4

    const/16 v0, -0x6e

    .line 3195
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->nextIfMatch(B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3196
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readTypeHashCode()J

    move-result-wide v0

    .line 3197
    sget-wide v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64ValueArray;->HASH_TYPE:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    sget-wide v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64Array;->HASH_TYPE:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    sget-wide v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32Array;->HASH_TYPE:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    sget-wide v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;->HASH_TYPE:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 3202
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3206
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->startArray()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 3211
    :cond_2
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 3213
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public readInt64()Ljava/lang/Long;
    .locals 7

    .line 3598
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3599
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    .line 3600
    aget-byte v1, v0, v1

    const/16 v3, -0x51

    if-ne v1, v3, :cond_0

    .line 3603
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v3, -0x28

    if-lt v1, v3, :cond_1

    const/16 v4, -0x11

    if-gt v1, v4, :cond_1

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x8

    int-to-long v0, v1

    goto :goto_1

    :cond_1
    const/16 v3, -0x38

    if-lt v1, v3, :cond_2

    const/16 v3, -0x29

    if-gt v1, v3, :cond_2

    add-int/lit8 v1, v1, 0x30

    shl-int/lit8 v1, v1, 0x8

    .line 3611
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    int-to-long v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/16 v3, -0x40

    if-lt v1, v3, :cond_3

    const/16 v3, -0x39

    if-gt v1, v3, :cond_3

    add-int/lit8 v1, v1, 0x3c

    shl-int/lit8 v1, v1, 0x10

    .line 3615
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    int-to-long v0, v1

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_3
    const/16 v3, -0x41

    if-ne v1, v3, :cond_5

    .line 3620
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .line 3621
    sget-boolean v1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    :goto_0
    int-to-long v0, v0

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_5
    const/16 v3, -0x42

    if-ne v1, v3, :cond_7

    .line 3624
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 3625
    sget-boolean v3, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-nez v3, :cond_6

    .line 3626
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :cond_6
    add-int/lit8 v2, v2, 0x8

    .line 3633
    :goto_1
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3634
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 3630
    :cond_7
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3631
    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value0([BB)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public readInt64Value()J
    .locals 7

    const/4 v0, 0x0

    .line 3245
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->wasNull:Z

    .line 3247
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    .line 3248
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    .line 3249
    aget-byte v1, v0, v1

    const/16 v3, -0x28

    if-lt v1, v3, :cond_0

    const/16 v4, -0x11

    if-gt v1, v4, :cond_0

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x8

    int-to-long v0, v1

    goto :goto_1

    :cond_0
    const/16 v3, -0x38

    if-lt v1, v3, :cond_1

    const/16 v3, -0x29

    if-gt v1, v3, :cond_1

    add-int/lit8 v1, v1, 0x30

    shl-int/lit8 v1, v1, 0x8

    .line 3255
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    int-to-long v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/16 v3, -0x40

    if-lt v1, v3, :cond_2

    const/16 v3, -0x39

    if-gt v1, v3, :cond_2

    add-int/lit8 v1, v1, 0x3c

    shl-int/lit8 v1, v1, 0x10

    .line 3259
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    int-to-long v0, v1

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_2
    const/16 v3, -0x41

    if-ne v1, v3, :cond_4

    .line 3264
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .line 3265
    sget-boolean v1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    :goto_0
    int-to-long v0, v0

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_4
    const/16 v3, -0x42

    if-ne v1, v3, :cond_6

    .line 3268
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 3269
    sget-boolean v3, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-nez v3, :cond_5

    .line 3270
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :cond_5
    add-int/lit8 v2, v2, 0x8

    .line 3277
    :goto_1
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-wide v0

    .line 3274
    :cond_6
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3275
    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value0([BB)J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt64ValueArray()[J
    .locals 5

    const/16 v0, -0x6e

    .line 3220
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->nextIfMatch(B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3221
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readTypeHashCode()J

    move-result-wide v0

    .line 3222
    sget-wide v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64ValueArray;->HASH_TYPE:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    sget-wide v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64Array;->HASH_TYPE:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    sget-wide v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32Array;->HASH_TYPE:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    sget-wide v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;->HASH_TYPE:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 3227
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3231
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->startArray()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 3236
    :cond_2
    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 3238
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public readLength()I
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x10

    if-lt v0, v1, :cond_0

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x38

    shl-int/lit8 v0, v0, 0x8

    .line 148
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0

    :cond_1
    const/16 v1, 0x40

    if-lt v0, v1, :cond_2

    const/16 v1, 0x47

    if-gt v0, v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt3([BII)I

    move-result v0

    .line 154
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return v0

    :cond_2
    const/16 v1, 0x48

    if-ne v0, v1, :cond_4

    .line 159
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    move-result v0

    .line 160
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/high16 v1, 0x10000000

    if-gt v0, v1, :cond_3

    return v0

    .line 162
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "input length overflow"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support length type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readList([Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 4

    .line 1125
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1129
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->startArray()I

    move-result v0

    .line 1130
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1132
    aget-object v3, p1, v2

    .line 1133
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readLocalDate()Ljava/time/LocalDate;
    .locals 5

    .line 4439
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x57

    if-ne v0, v1, :cond_0

    .line 4441
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4442
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 4443
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    .line 4444
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v2, v2, v3

    .line 4445
    invoke-static {v0, v1, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, -0x51

    if-ne v0, v1, :cond_1

    .line 4449
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v0, 0x0

    return-object v0

    .line 4453
    :cond_1
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDate0(I)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method protected readLocalDate10()Ljava/time/LocalDate;
    .locals 2

    .line 5191
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    const/16 v1, 0x79

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7a

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 5192
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate10([BI)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_0

    .line 5193
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x53

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    .line 5194
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate10([BI)Ljava/time/LocalDate;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5199
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0xb

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v0

    .line 5196
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readLocalDate11()Ljava/time/LocalDate;
    .locals 2

    .line 5206
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    const/16 v1, 0x79

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7a

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 5207
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate11([BI)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_0

    .line 5208
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x54

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    .line 5209
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate11([BI)Ljava/time/LocalDate;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5214
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0xc

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v0

    .line 5211
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readLocalDate8()Ljava/time/LocalDate;
    .locals 2

    .line 5165
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x51

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    .line 5166
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate8([BI)Ljava/time/LocalDate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5171
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x9

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v0

    .line 5168
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readLocalDate9()Ljava/time/LocalDate;
    .locals 2

    .line 5178
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    .line 5179
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate9([BI)Ljava/time/LocalDate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5184
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v0

    .line 5181
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readLocalDateTime()Ljava/time/LocalDateTime;
    .locals 9

    .line 4510
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x58

    if-ne v0, v1, :cond_0

    .line 4512
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4513
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int v2, v0, v1

    .line 4514
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v3, v0, v1

    .line 4515
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v4, v0, v1

    .line 4516
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v5, v0, v1

    .line 4517
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v6, v1, 0x1

    iput v6, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v6, v0, v1

    .line 4518
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v7, v1, 0x1

    iput v7, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v7, v0, v1

    .line 4520
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v8

    .line 4522
    invoke-static/range {v2 .. v8}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, -0x51

    if-ne v0, v1, :cond_1

    .line 4526
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v0, 0x0

    return-object v0

    .line 4530
    :cond_1
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalDateTime0(I)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method protected readLocalDateTime12()Ljava/time/LocalDateTime;
    .locals 2

    .line 4595
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x55

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    .line 4596
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime12([BI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4600
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v0

    .line 4598
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readLocalDateTime14()Ljava/time/LocalDateTime;
    .locals 2

    .line 4607
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x57

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    .line 4608
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime14([BI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4612
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v0

    .line 4610
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readLocalDateTime16()Ljava/time/LocalDateTime;
    .locals 2

    .line 4619
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x59

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    .line 4620
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime16([BI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4624
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x11

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v0

    .line 4622
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readLocalDateTime17()Ljava/time/LocalDateTime;
    .locals 2

    .line 4631
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    .line 4632
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime17([BI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4636
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x12

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v0

    .line 4634
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readLocalDateTime18()Ljava/time/LocalDateTime;
    .locals 2

    .line 5281
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    .line 5282
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime18([BI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5286
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x13

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v0

    .line 5284
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readLocalDateTime19()Ljava/time/LocalDateTime;
    .locals 3

    .line 5315
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    const-string v1, "date only support string input"

    const/16 v2, 0x5c

    if-ne v0, v2, :cond_1

    .line 5320
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime19([BI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5325
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v0

    .line 5322
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5317
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readLocalDateTime20()Ljava/time/LocalDateTime;
    .locals 2

    .line 5293
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    .line 5294
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime20([BI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5298
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x15

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v0

    .line 5296
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readLocalDateTimeX(I)Ljava/time/LocalDateTime;
    .locals 2

    .line 5331
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    const/16 v1, 0x49

    if-lt v0, v1, :cond_1

    const/16 v1, 0x78

    if-gt v0, v1, :cond_1

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1d

    if-gt p1, v0, :cond_0

    .line 5337
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    .line 5339
    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTimeX([BII)Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5344
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v0

    .line 5341
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal LocalDateTime string : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5333
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readLocalTime()Ljava/time/LocalTime;
    .locals 5

    .line 4689
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x59

    if-ne v0, v1, :cond_0

    .line 4691
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4692
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    .line 4693
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    .line 4694
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v2, v2, v3

    .line 4695
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v3

    .line 4696
    invoke-static {v0, v1, v2, v3}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, -0x51

    if-ne v0, v1, :cond_1

    .line 4700
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/16 v1, 0x49

    if-lt v0, v1, :cond_5

    const/16 v1, 0x78

    if-gt v0, v1, :cond_5

    .line 4705
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getStringLength()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 4722
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support len : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4716
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalTime12()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 4714
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalTime11()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 4712
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalTime10()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 4718
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalTime18()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 4710
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalTime8()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 4708
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLocalTime5()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 4725
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected readLocalTime10()Ljava/time/LocalTime;
    .locals 2

    .line 4643
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x53

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    .line 4644
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime10([BI)Ljava/time/LocalTime;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4648
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0xb

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v0

    .line 4646
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readLocalTime11()Ljava/time/LocalTime;
    .locals 2

    .line 4655
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x54

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    .line 4656
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime11([BI)Ljava/time/LocalTime;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4660
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0xc

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v0

    .line 4658
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readLocalTime12()Ljava/time/LocalTime;
    .locals 2

    .line 5257
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x55

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    .line 5258
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime12([BI)Ljava/time/LocalTime;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5262
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v0

    .line 5260
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readLocalTime18()Ljava/time/LocalTime;
    .locals 2

    .line 5269
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    .line 5270
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime18([BI)Ljava/time/LocalTime;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5274
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x13

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v0

    .line 5272
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readLocalTime5()Ljava/time/LocalTime;
    .locals 2

    .line 5221
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    .line 5222
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime5([BI)Ljava/time/LocalTime;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5226
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v0

    .line 5224
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readLocalTime8()Ljava/time/LocalTime;
    .locals 2

    .line 5233
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x51

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    .line 5234
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime8([BI)Ljava/time/LocalTime;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5238
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x9

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v0

    .line 5236
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readLocalTime9()Ljava/time/LocalTime;
    .locals 2

    .line 5245
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x51

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    .line 5246
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime8([BI)Ljava/time/LocalTime;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5250
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v0

    .line 5248
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readMillis19()J
    .locals 3

    .line 5304
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    .line 5308
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Ljava/time/ZoneId;

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis19([BILjava/time/ZoneId;)J

    move-result-wide v0

    .line 5309
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v2, 0x14

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-wide v0

    .line 5305
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readNull()V
    .locals 3

    .line 1599
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    const/16 v1, -0x51

    if-ne v0, v1, :cond_0

    return-void

    .line 1601
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null not match, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readNullOrNewDate()Ljava/util/Date;
    .locals 2

    .line 1585
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "UnsupportedOperation"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readNumber()Ljava/lang/Number;
    .locals 6

    .line 3984
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x10

    if-lt v0, v1, :cond_0

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_0

    .line 3986
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x38

    shl-int/lit8 v0, v0, 0x8

    .line 3990
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, 0x40

    if-lt v0, v1, :cond_2

    const/16 v1, 0x47

    if-gt v0, v1, :cond_2

    .line 3995
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt3([BII)I

    move-result v0

    .line 3996
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 3997
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v1, -0x28

    if-lt v0, v1, :cond_3

    const/16 v2, -0x11

    if-gt v0, v2, :cond_3

    const-wide/16 v2, -0x8

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 4001
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_3
    const/16 v1, -0x38

    if-lt v0, v1, :cond_4

    const/16 v1, -0x29

    if-gt v0, v1, :cond_4

    add-int/lit8 v0, v0, 0x30

    shl-int/lit8 v0, v0, 0x8

    .line 4005
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_4
    const/16 v1, -0x40

    if-lt v0, v1, :cond_5

    const/16 v1, -0x39

    if-gt v0, v1, :cond_5

    add-int/lit8 v0, v0, 0x3c

    shl-int/lit8 v0, v0, 0x10

    .line 4010
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_5
    const/16 v1, -0x6e

    if-eq v0, v1, :cond_d

    const/16 v1, 0x48

    if-eq v0, v1, :cond_c

    const/16 v1, 0x79

    if-eq v0, v1, :cond_b

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_a

    packed-switch v0, :pswitch_data_0

    const/16 v1, 0x49

    if-lt v0, v1, :cond_6

    const/16 v2, 0x78

    if-gt v0, v2, :cond_6

    sub-int/2addr v0, v1

    .line 4107
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readFixedAsciiString(I)Ljava/lang/String;

    move-result-object v1

    .line 4108
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4109
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 4113
    :cond_6
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support type :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4039
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    move-result v0

    .line 4040
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v0, v0

    .line 4041
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 4044
    :pswitch_1
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 4045
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4046
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 4025
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 4027
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 4030
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-short v0, v0

    .line 4031
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 4049
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    .line 4050
    new-array v1, v0, [B

    .line 4051
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4052
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4053
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0

    .line 4057
    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    move-result-wide v0

    .line 4056
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 4075
    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    .line 4076
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    if-nez v0, :cond_8

    .line 4078
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 4080
    :cond_8
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v2

    .line 4085
    :pswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    move-result-wide v0

    .line 4084
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 4061
    :pswitch_8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    move-result v0

    .line 4062
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4063
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 4066
    :pswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 4069
    :pswitch_a
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 4070
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4071
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v2, :cond_9

    goto :goto_1

    :cond_9
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 4073
    :pswitch_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_c
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 4023
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_d
    const-wide/16 v0, 0x0

    .line 4020
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_e
    const/4 v0, 0x0

    return-object v0

    .line 4095
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    .line 4096
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 4097
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4098
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 4089
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    .line 4090
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 4091
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4092
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 4034
    :cond_c
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    move-result v0

    .line 4035
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4036
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 4101
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4102
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support input type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch -0x51
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected readNumber0()V
    .locals 2

    .line 3979
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "UnsupportedOperation"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readObject()Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    .line 271
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    iput-byte v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    const/4 v1, 0x0

    const/16 v2, -0x51

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    const/16 v2, -0x5a

    if-lt v0, v2, :cond_1f

    .line 278
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v3, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v7, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v7

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    const/16 v3, 0xa

    const/16 v4, -0x5b

    const/16 v5, 0x8

    if-eqz v0, :cond_2

    .line 279
    sget v0, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    if-ne v0, v5, :cond_1

    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v9, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v9

    if-eq v0, v4, :cond_1

    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_0

    .line 282
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 285
    :cond_2
    sget v0, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    if-ne v0, v5, :cond_3

    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v9, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v9

    if-eq v0, v4, :cond_3

    .line 286
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson2/JSONObject;-><init>(I)V

    goto :goto_0

    .line 288
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    :goto_0
    move-object v3, v0

    .line 293
    :goto_1
    iget-object v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v9, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v9

    iput-byte v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    if-ne v0, v4, :cond_4

    .line 295
    iget v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v3

    .line 300
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->isString()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readFieldName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 303
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    move-result-object v0

    .line 306
    :goto_2
    iget v9, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget-object v10, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    array-length v11, v10

    const-string v12, ".."

    if-ge v9, v11, :cond_7

    iget v9, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v9, v10, v9

    const/16 v10, -0x6d

    if-ne v9, v10, :cond_7

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readReference()Ljava/lang/String;

    move-result-object v9

    .line 308
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 309
    invoke-interface {v3, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 311
    :cond_6
    invoke-static {v9}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v9

    invoke-virtual {v6, v3, v0, v9}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->addResolveTask(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    :goto_3
    move v13, v2

    move-object v2, v3

    goto/16 :goto_e

    .line 316
    :cond_7
    iget-object v9, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v10, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v9, v9, v10

    const/16 v10, 0x7e

    const/16 v11, 0x49

    if-lt v9, v11, :cond_8

    if-gt v9, v10, :cond_8

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    move-result-object v9

    :goto_4
    move v13, v2

    move-object v15, v3

    goto/16 :goto_d

    :cond_8
    const/16 v13, 0x2f

    const/16 v14, -0x10

    if-lt v9, v14, :cond_9

    if-gt v9, v13, :cond_9

    .line 321
    iget v10, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 322
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_4

    :cond_9
    const/16 v15, -0x4f

    if-ne v9, v15, :cond_a

    .line 324
    iget v9, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 325
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_a
    const/16 v15, -0x50

    if-ne v9, v15, :cond_b

    .line 327
    iget v9, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 328
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_b
    if-ne v9, v2, :cond_c

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readObject()Ljava/util/Map;

    move-result-object v9

    goto :goto_4

    :cond_c
    const/16 v15, -0x42

    if-ne v9, v15, :cond_e

    .line 332
    sget-object v9, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v10, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v11, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v13, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v13, v13

    add-long/2addr v11, v13

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    invoke-virtual {v9, v10, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    .line 333
    iget v11, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v11, v11, 0x9

    iput v11, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 334
    sget-boolean v11, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v11, :cond_d

    goto :goto_5

    :cond_d
    invoke-static {v9, v10}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v9

    :goto_5
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_4

    :cond_e
    const/16 v15, -0x6c

    if-lt v9, v15, :cond_1a

    const/16 v15, -0x5c

    if-gt v9, v15, :cond_1a

    .line 336
    iget v4, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    if-ne v9, v15, :cond_10

    .line 339
    iget-object v4, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v9, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v4, v4, v9

    if-lt v4, v14, :cond_f

    if-gt v4, v13, :cond_f

    .line 341
    iget v9, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    goto :goto_6

    .line 344
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v4

    goto :goto_6

    :cond_10
    add-int/lit8 v4, v9, 0x6c

    :goto_6
    if-nez v4, :cond_13

    .line 351
    iget-object v4, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v9, v4, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v11, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v9, v11

    cmp-long v4, v9, v7

    if-eqz v4, :cond_11

    .line 352
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_7
    move v13, v2

    move-object v15, v3

    move-object v9, v4

    goto/16 :goto_d

    .line 354
    :cond_11
    iget-object v4, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v4, v4, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Ljava/util/function/Supplier;

    if-eqz v4, :cond_12

    .line 355
    iget-object v4, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v4, v4, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Ljava/util/function/Supplier;

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    goto :goto_7

    .line 357
    :cond_12
    new-instance v4, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v4}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    goto :goto_7

    .line 362
    :cond_13
    iget-object v9, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v13, v9, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v9, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    move-object v15, v3

    iget-wide v2, v9, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v13

    cmp-long v2, v2, v7

    if-eqz v2, :cond_14

    .line 363
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_8

    .line 365
    :cond_14
    new-instance v2, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v2, v4}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    :goto_8
    const/4 v3, 0x0

    :goto_9
    if-ge v3, v4, :cond_19

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->isReference()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readReference()Ljava/lang/String;

    move-result-object v9

    .line 371
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 372
    invoke-interface {v2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 374
    :cond_15
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-static {v9}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v9

    invoke-virtual {v6, v2, v3, v9}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V

    :goto_a
    const/16 v13, -0x5a

    goto :goto_c

    .line 380
    :cond_16
    iget-object v9, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v13, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v9, v9, v13

    if-lt v9, v11, :cond_17

    if-gt v9, v10, :cond_17

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    move-result-object v9

    const/16 v13, -0x5a

    goto :goto_b

    :cond_17
    const/16 v13, -0x5a

    if-ne v9, v13, :cond_18

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readObject()Ljava/util/Map;

    move-result-object v9

    goto :goto_b

    .line 387
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    move-result-object v9

    .line 389
    :goto_b
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_19
    const/16 v13, -0x5a

    move-object v9, v2

    goto :goto_d

    :cond_1a
    move v13, v2

    move-object v15, v3

    const/16 v2, 0x30

    if-lt v9, v2, :cond_1b

    const/16 v2, 0x3f

    if-gt v9, v2, :cond_1b

    add-int/lit8 v9, v9, -0x38

    shl-int/lit8 v2, v9, 0x8

    .line 394
    iget-object v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v4, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 396
    iget v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v2, 0x2

    iput v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    goto :goto_d

    :cond_1b
    const/16 v2, 0x40

    if-lt v9, v2, :cond_1c

    const/16 v2, 0x47

    if-gt v9, v2, :cond_1c

    .line 398
    iget-object v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3, v9}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt3([BII)I

    move-result v2

    .line 399
    iget v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v3, 0x3

    iput v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 400
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_d

    :cond_1c
    const/16 v2, 0x48

    if-ne v9, v2, :cond_1d

    .line 402
    iget-object v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getInt([BI)I

    move-result v2

    .line 403
    iget v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v3, 0x5

    iput v3, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 404
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_d

    .line 406
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    move-result-object v9

    :goto_d
    if-nez v9, :cond_1e

    .line 409
    iget-object v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v10, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v10

    cmp-long v2, v2, v7

    if-eqz v2, :cond_1e

    move-object v2, v15

    goto :goto_e

    :cond_1e
    move-object v2, v15

    .line 413
    invoke-interface {v2, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e
    move-object v3, v2

    move v2, v13

    const/16 v4, -0x5b

    goto/16 :goto_1

    :cond_1f
    const/16 v1, -0x6e

    if-ne v0, v1, :cond_20

    .line 420
    const-class v1, Ljava/util/Map;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    .line 421
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 424
    :cond_20
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "object not support input "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->error(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readOffsetDateTime()Ljava/time/OffsetDateTime;
    .locals 1

    .line 4768
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4769
    :cond_0
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public readOffsetTime()Ljava/time/OffsetTime;
    .locals 1

    .line 4762
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4763
    :cond_0
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/OffsetDateTime;->toOffsetTime()Ljava/time/OffsetTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public readPattern()Ljava/lang/String;
    .locals 2

    .line 5350
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "UnsupportedOperation"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readReference()Ljava/lang/String;
    .locals 3

    .line 1160
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x6d

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1163
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 1164
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->isString()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1165
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1168
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reference not support input "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->error(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readReference(Ljava/util/List;I)Z
    .locals 3

    .line 1172
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x6d

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1175
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 1176
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".."

    .line 1177
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1178
    invoke-interface {p1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1180
    :cond_1
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V

    :goto_0
    return v1
.end method

.method public readString()Ljava/lang/String;
    .locals 7

    .line 2809
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    .line 2810
    iput-byte v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    const/4 v1, 0x0

    const/16 v2, -0x51

    if-ne v0, v2, :cond_0

    return-object v1

    .line 2815
    :cond_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    const/16 v2, 0x49

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v0, v2, :cond_8

    const/16 v5, 0x79

    if-gt v0, v5, :cond_8

    if-ne v0, v5, :cond_2

    .line 2822
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v2

    const/16 v2, -0x10

    if-lt v0, v2, :cond_1

    const/16 v2, 0x2f

    if-gt v0, v2, :cond_1

    .line 2824
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    goto :goto_0

    .line 2827
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v0

    .line 2829
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    goto :goto_1

    :cond_2
    sub-int/2addr v0, v2

    .line 2833
    :goto_1
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ltz v0, :cond_5

    .line 2836
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    if-eqz v2, :cond_4

    .line 2837
    new-array v2, v0, [C

    :goto_2
    if-ge v3, v0, :cond_3

    .line 2839
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v6, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v6, v3

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    aput-char v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2841
    :cond_3
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 2842
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3

    .line 2843
    :cond_4
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    if-eqz v2, :cond_5

    .line 2844
    new-array v2, v0, [B

    .line 2845
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v6, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-static {v5, v6, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2846
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->LATIN1:Ljava/lang/Byte;

    invoke-interface {v3, v2, v5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2847
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    move-object v0, v2

    goto :goto_3

    :cond_5
    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_7

    .line 2852
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    .line 2853
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_6
    return-object v0

    :cond_7
    move v3, v4

    .line 2859
    :cond_8
    invoke-direct {p0, v1, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readStringNonAscii(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readStringArray()[Ljava/lang/String;
    .locals 4

    const/16 v0, -0x6e

    .line 3154
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->nextIfMatch(B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3155
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readTypeHashCode()J

    move-result-wide v0

    .line 3156
    sget-wide v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplStringArray;->HASH_TYPE:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 3157
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3161
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->startArray()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 3165
    :cond_2
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 3167
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public readTypeHashCode()J
    .locals 22

    move-object/from16 v0, p0

    .line 1616
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 1618
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    const/4 v4, 0x1

    const/16 v5, 0x7f

    if-ne v1, v5, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v5, 0x48

    const/16 v6, 0x2f

    const/16 v7, -0x10

    const/16 v8, 0x20

    const-wide/16 v9, 0x0

    const/16 v11, 0x8

    if-eqz v1, :cond_6

    .line 1621
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 1622
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v2, v1

    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    if-lt v1, v7, :cond_6

    if-gt v1, v5, :cond_6

    if-gt v1, v6, :cond_1

    .line 1626
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 1627
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    goto :goto_1

    .line 1629
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v1

    :goto_1
    if-gez v1, :cond_2

    .line 1633
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v1, v1

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/SymbolTable;->getHashCode(I)J

    move-result-wide v1

    return-wide v1

    :cond_2
    if-nez v1, :cond_4

    .line 1637
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0StrType:B

    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 1638
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Length:I

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 1639
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Begin:I

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 1640
    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Hash:J

    cmp-long v1, v1, v9

    if-nez v1, :cond_3

    .line 1641
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getNameHashCode()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Hash:J

    .line 1643
    :cond_3
    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Hash:J

    return-wide v1

    :cond_4
    mul-int/lit8 v1, v1, 0x2

    .line 1647
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    add-int/lit8 v3, v1, 0x1

    aget-wide v3, v2, v3

    long-to-int v5, v3

    int-to-byte v6, v5

    .line 1648
    iput-byte v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    shr-int/2addr v5, v11

    .line 1649
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    shr-long/2addr v3, v8

    long-to-int v3, v3

    .line 1650
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 1651
    aget-wide v2, v2, v1

    cmp-long v4, v2, v9

    if-nez v4, :cond_5

    .line 1653
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getNameHashCode()J

    move-result-wide v2

    .line 1654
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    aput-wide v2, v4, v1

    :cond_5
    return-wide v2

    .line 1660
    :cond_6
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    const/16 v12, 0x38

    const/16 v13, 0x3f

    if-lt v1, v7, :cond_e

    if-gt v1, v5, :cond_e

    if-gt v1, v6, :cond_7

    .line 1663
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 1664
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    goto :goto_2

    :cond_7
    if-gt v1, v13, :cond_8

    .line 1666
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 1667
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    sub-int/2addr v1, v12

    shl-int/2addr v1, v11

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    goto :goto_2

    .line 1670
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v1

    :goto_2
    if-nez v1, :cond_a

    .line 1675
    iget-byte v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0StrType:B

    iput-byte v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 1676
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Length:I

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 1677
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Begin:I

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 1678
    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Hash:J

    cmp-long v2, v2, v9

    if-nez v2, :cond_9

    .line 1679
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Hash:J

    .line 1681
    :cond_9
    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Hash:J

    goto :goto_3

    :cond_a
    if-gez v1, :cond_b

    .line 1683
    iget-byte v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 1684
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/SymbolTable;->getHashCode(I)J

    move-result-wide v2

    goto :goto_3

    .line 1686
    :cond_b
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    mul-int/lit8 v3, v1, 0x2

    aget-wide v5, v2, v3

    cmp-long v7, v5, v9

    if-nez v7, :cond_c

    add-int/2addr v3, v4

    .line 1688
    aget-wide v2, v2, v3

    long-to-int v4, v2

    int-to-byte v5, v4

    .line 1689
    iput-byte v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    shr-int/2addr v4, v11

    .line 1690
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    shr-long/2addr v2, v8

    long-to-int v2, v2

    .line 1691
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 1692
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_3

    :cond_c
    move-wide v2, v5

    :goto_3
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_d

    return-wide v2

    .line 1697
    :cond_d
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "type ref not found : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1703
    :cond_e
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 1704
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 1705
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    const/16 v5, 0x7c

    const/16 v14, 0x7b

    const/16 v15, 0x30

    const/16 v3, 0x7a

    const/16 v9, 0x49

    if-lt v1, v9, :cond_f

    const/16 v10, 0x78

    if-gt v1, v10, :cond_f

    sub-int/2addr v1, v9

    .line 1706
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    goto/16 :goto_6

    :cond_f
    const/16 v9, 0x79

    if-eq v1, v9, :cond_11

    if-eq v1, v3, :cond_11

    if-eq v1, v14, :cond_11

    if-eq v1, v5, :cond_11

    const/16 v9, 0x7d

    if-ne v1, v9, :cond_10

    goto :goto_4

    .line 1726
    :cond_10
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "string value not support input "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    invoke-static {v4}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1713
    :cond_11
    :goto_4
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v2, v1

    if-lt v1, v7, :cond_12

    if-gt v1, v6, :cond_12

    .line 1715
    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v9, v4

    iput v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 1716
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    goto :goto_5

    :cond_12
    if-lt v1, v15, :cond_13

    if-gt v1, v13, :cond_13

    .line 1718
    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v9, v4

    iput v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sub-int/2addr v1, v12

    shl-int/2addr v1, v11

    .line 1719
    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v1, v9

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    goto :goto_5

    .line 1722
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v1

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 1724
    :goto_5
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 1731
    :goto_6
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-gez v1, :cond_14

    .line 1732
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v1, v1

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson2/SymbolTable;->getHashCode(I)J

    move-result-wide v9

    goto/16 :goto_11

    .line 1733
    :cond_14
    iget-byte v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    const-wide v16, 0x100000001b3L

    const-wide v18, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    if-ne v9, v3, :cond_18

    .line 1735
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr v1, v3

    move-wide/from16 v9, v18

    .line 1736
    :goto_7
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    if-ge v3, v1, :cond_21

    .line 1737
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v3, v2, v3

    if-ltz v3, :cond_15

    .line 1740
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    goto/16 :goto_8

    :cond_15
    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v5, v3, 0x4

    const-string v12, "malformed input around byte "

    const/16 v13, 0x80

    packed-switch v5, :pswitch_data_0

    .line 1770
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1757
    :pswitch_0
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v5, v4

    aget-byte v5, v2, v5

    .line 1758
    iget v14, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v14, v14, 0x2

    aget-byte v14, v2, v14

    and-int/lit16 v15, v5, 0xc0

    if-ne v15, v13, :cond_16

    and-int/lit16 v15, v14, 0xc0

    if-ne v15, v13, :cond_16

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0xc

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v3, v5

    and-int/lit8 v5, v14, 0x3f

    or-int/2addr v3, v5

    int-to-char v3, v3

    .line 1765
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v5, v5, 0x3

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    goto :goto_8

    .line 1760
    :cond_16
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1747
    :pswitch_1
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v5, v4

    aget-byte v5, v2, v5

    and-int/lit16 v14, v5, 0xc0

    if-ne v14, v13, :cond_17

    and-int/lit8 v3, v3, 0x1f

    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v3, v5

    int-to-char v3, v3

    .line 1753
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v5, v5, 0x2

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    :goto_8
    int-to-long v12, v3

    xor-long/2addr v9, v12

    mul-long v9, v9, v16

    goto/16 :goto_7

    .line 1749
    :cond_17
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    if-eq v9, v14, :cond_20

    const/16 v3, 0x7d

    if-ne v9, v3, :cond_19

    goto/16 :goto_f

    :cond_19
    if-ne v9, v5, :cond_1a

    move-wide/from16 v9, v18

    const/4 v3, 0x0

    .line 1788
    :goto_9
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ge v3, v1, :cond_21

    .line 1789
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v3

    aget-byte v1, v2, v1

    .line 1790
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v5, v3

    add-int/2addr v5, v4

    aget-byte v5, v2, v5

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v11

    or-int/2addr v1, v5

    int-to-char v1, v1

    int-to-long v12, v1

    xor-long/2addr v9, v12

    mul-long v9, v9, v16

    add-int/lit8 v3, v3, 0x2

    goto :goto_9

    :cond_1a
    if-gt v1, v11, :cond_1d

    .line 1798
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    const/4 v3, 0x0

    const-wide/16 v9, 0x0

    :goto_a
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ge v3, v5, :cond_1e

    .line 1799
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v5, v2, v5

    if-ltz v5, :cond_1c

    if-nez v5, :cond_1b

    .line 1800
    aget-byte v13, v2, v1

    if-nez v13, :cond_1b

    goto :goto_d

    :cond_1b
    packed-switch v3, :pswitch_data_1

    goto :goto_c

    :pswitch_2
    int-to-long v13, v5

    shl-long/2addr v13, v12

    const-wide v20, 0xffffffffffffffL

    goto :goto_b

    :pswitch_3
    int-to-long v13, v5

    shl-long/2addr v13, v15

    const-wide v20, 0xffffffffffffL

    goto :goto_b

    :pswitch_4
    int-to-long v13, v5

    const/16 v5, 0x28

    shl-long/2addr v13, v5

    const-wide v20, 0xffffffffffL

    goto :goto_b

    :pswitch_5
    int-to-long v13, v5

    shl-long/2addr v13, v8

    const-wide v20, 0xffffffffL

    goto :goto_b

    :pswitch_6
    shl-int/lit8 v5, v5, 0x18

    int-to-long v13, v5

    const-wide/32 v20, 0xffffff

    goto :goto_b

    :pswitch_7
    shl-int/lit8 v5, v5, 0x10

    int-to-long v13, v5

    const-wide/32 v20, 0xffff

    goto :goto_b

    :pswitch_8
    shl-int/lit8 v5, v5, 0x8

    int-to-long v13, v5

    const-wide/16 v20, 0xff

    :goto_b
    and-long v9, v9, v20

    add-long/2addr v9, v13

    goto :goto_c

    :pswitch_9
    int-to-long v9, v5

    .line 1798
    :goto_c
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1802
    :cond_1c
    :goto_d
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    :cond_1d
    const-wide/16 v9, 0x0

    :cond_1e
    const-wide/16 v12, 0x0

    cmp-long v1, v9, v12

    if-eqz v1, :cond_1f

    goto :goto_11

    :cond_1f
    move-wide/from16 v9, v18

    const/4 v3, 0x0

    .line 1841
    :goto_e
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ge v3, v1, :cond_21

    .line 1842
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v5, v1, 0x1

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v2, v1

    int-to-long v12, v1

    xor-long/2addr v9, v12

    mul-long v9, v9, v16

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_20
    :goto_f
    move-wide/from16 v9, v18

    const/4 v3, 0x0

    .line 1779
    :goto_10
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ge v3, v1, :cond_21

    .line 1780
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v3

    aget-byte v1, v2, v1

    .line 1781
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v5, v3

    add-int/2addr v5, v4

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v11

    or-int/2addr v1, v5

    int-to-char v1, v1

    int-to-long v12, v1

    xor-long/2addr v9, v12

    mul-long v9, v9, v16

    add-int/lit8 v3, v3, 0x2

    goto :goto_10

    .line 1850
    :cond_21
    :goto_11
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v2, v1

    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    if-lt v1, v7, :cond_22

    if-gt v1, v6, :cond_22

    .line 1852
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    goto :goto_12

    .line 1854
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v1

    :goto_12
    if-nez v1, :cond_23

    .line 1858
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Begin:I

    .line 1859
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Length:I

    .line 1860
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0StrType:B

    .line 1861
    iput-wide v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbol0Hash:J

    goto :goto_14

    :cond_23
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v1, 0x2

    .line 1865
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    if-nez v3, :cond_24

    .line 1866
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [J

    iput-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    goto :goto_13

    .line 1867
    :cond_24
    array-length v5, v3

    if-ge v5, v2, :cond_25

    add-int/lit8 v2, v2, 0x10

    .line 1868
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    .line 1871
    :cond_25
    :goto_13
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    int-to-long v2, v2

    shl-long/2addr v2, v8

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    int-to-long v5, v5

    shl-long/2addr v5, v11

    add-long/2addr v2, v5

    iget-byte v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 1872
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbols:[J

    add-int/2addr v1, v4

    aput-wide v2, v5, v1

    :goto_14
    return-wide v9

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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

.method public readUUID()Ljava/util/UUID;
    .locals 18

    move-object/from16 v0, p0

    .line 4864
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    const/16 v2, -0x6f

    const/16 v3, 0x10

    if-eq v1, v2, :cond_16

    const/16 v2, -0x51

    if-eq v1, v2, :cond_15

    const/16 v2, 0x69

    const/16 v5, 0x20

    const/4 v8, 0x4

    if-eq v1, v2, :cond_12

    const/16 v2, 0x6d

    const/16 v12, 0x9

    const-string v13, "Invalid UUID string:  "

    const/16 v14, 0x17

    const/16 v15, 0x12

    const/16 v4, 0xd

    const/16 v6, 0x8

    const/16 v7, 0x24

    const/16 v9, 0x2d

    if-eq v1, v2, :cond_b

    const/16 v2, 0x79

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7a

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 4972
    :cond_0
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "type not support : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4925
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v1

    if-ne v1, v5, :cond_4

    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    shl-long/2addr v1, v8

    .line 4929
    sget-object v6, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v9, v4

    aget-byte v7, v7, v9

    add-int/lit8 v7, v7, -0x30

    aget-byte v6, v6, v7

    int-to-long v6, v6

    add-long/2addr v1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v6, 0x0

    :goto_2
    if-ge v3, v5, :cond_3

    shl-long/2addr v6, v8

    .line 4933
    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    iget-object v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v10, v3

    aget-byte v9, v9, v10

    add-int/lit8 v9, v9, -0x30

    aget-byte v4, v4, v9

    int-to-long v9, v4

    add-long/2addr v6, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4936
    :cond_3
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4937
    new-instance v3, Ljava/util/UUID;

    invoke-direct {v3, v1, v2, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    return-object v3

    :cond_4
    if-ne v1, v7, :cond_a

    .line 4939
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v3, v6

    aget-byte v2, v2, v3

    .line 4940
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v5, v4

    aget-byte v3, v3, v5

    .line 4941
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v10, v15

    aget-byte v5, v5, v10

    .line 4942
    iget-object v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v11, v14

    aget-byte v10, v10, v11

    if-ne v2, v9, :cond_a

    if-ne v3, v9, :cond_a

    if-ne v5, v9, :cond_a

    if-ne v10, v9, :cond_a

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :goto_3
    if-ge v1, v6, :cond_5

    shl-long/2addr v2, v8

    .line 4946
    sget-object v5, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    iget-object v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v10, v1

    aget-byte v9, v9, v10

    add-int/lit8 v9, v9, -0x30

    aget-byte v5, v5, v9

    int-to-long v9, v5

    add-long/2addr v2, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-ge v12, v4, :cond_6

    shl-long v1, v2, v8

    .line 4949
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v6, v12

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0x30

    aget-byte v3, v3, v5

    int-to-long v5, v3

    add-long v2, v1, v5

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_6
    const/16 v11, 0xe

    :goto_5
    if-ge v11, v15, :cond_7

    shl-long v1, v2, v8

    .line 4952
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v5, v11

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0x30

    aget-byte v3, v3, v4

    int-to-long v3, v3

    add-long v2, v1, v3

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_7
    const/16 v10, 0x13

    const-wide/16 v16, 0x0

    :goto_6
    if-ge v10, v14, :cond_8

    shl-long v4, v16, v8

    .line 4957
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v9, v10

    aget-byte v6, v6, v9

    add-int/lit8 v6, v6, -0x30

    aget-byte v1, v1, v6

    int-to-long v11, v1

    add-long v16, v4, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_8
    move-wide/from16 v4, v16

    const/16 v9, 0x18

    :goto_7
    if-ge v9, v7, :cond_9

    shl-long/2addr v4, v8

    .line 4960
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v10, v9

    aget-byte v6, v6, v10

    add-int/lit8 v6, v6, -0x30

    aget-byte v1, v1, v6

    int-to-long v10, v1

    add-long/2addr v4, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 4963
    :cond_9
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v7

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4964
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    return-object v1

    .line 4967
    :cond_a
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 4968
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4969
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4894
    :cond_b
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v2, v6

    aget-byte v1, v1, v2

    .line 4895
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v3, v4

    aget-byte v2, v2, v3

    .line 4896
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v5, v15

    aget-byte v3, v3, v5

    .line 4897
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v10, v14

    aget-byte v5, v5, v10

    if-ne v1, v9, :cond_11

    if-ne v2, v9, :cond_11

    if-ne v3, v9, :cond_11

    if-ne v5, v9, :cond_11

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :goto_8
    if-ge v1, v6, :cond_c

    shl-long/2addr v2, v8

    .line 4901
    sget-object v5, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    iget-object v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v10, v1

    aget-byte v9, v9, v10

    add-int/lit8 v9, v9, -0x30

    aget-byte v5, v5, v9

    int-to-long v9, v5

    add-long/2addr v2, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_c
    :goto_9
    if-ge v12, v4, :cond_d

    shl-long v1, v2, v8

    .line 4904
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v6, v12

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0x30

    aget-byte v3, v3, v5

    int-to-long v5, v3

    add-long v2, v1, v5

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_d
    const/16 v11, 0xe

    :goto_a
    if-ge v11, v15, :cond_e

    shl-long v1, v2, v8

    .line 4907
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v5, v11

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0x30

    aget-byte v3, v3, v4

    int-to-long v3, v3

    add-long v2, v1, v3

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_e
    const/16 v10, 0x13

    const-wide/16 v16, 0x0

    :goto_b
    if-ge v10, v14, :cond_f

    shl-long v4, v16, v8

    .line 4912
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v9, v10

    aget-byte v6, v6, v9

    add-int/lit8 v6, v6, -0x30

    aget-byte v1, v1, v6

    int-to-long v11, v1

    add-long v16, v4, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_f
    move-wide/from16 v4, v16

    const/16 v9, 0x18

    :goto_c
    if-ge v9, v7, :cond_10

    shl-long/2addr v4, v8

    .line 4915
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v10, v9

    aget-byte v6, v6, v10

    add-int/lit8 v6, v6, -0x30

    aget-byte v1, v1, v6

    int-to-long v10, v1

    add-long/2addr v4, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 4918
    :cond_10
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v7

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4919
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    return-object v1

    .line 4921
    :cond_11
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5, v7, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v3, :cond_13

    shl-long/2addr v1, v8

    .line 4883
    sget-object v6, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v9, v4

    aget-byte v7, v7, v9

    add-int/lit8 v7, v7, -0x30

    aget-byte v6, v6, v7

    int-to-long v6, v6

    add-long/2addr v1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_13
    const-wide/16 v6, 0x0

    :goto_e
    if-ge v3, v5, :cond_14

    shl-long/2addr v6, v8

    .line 4887
    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->UUID_VALUES:[B

    iget-object v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v10, v3

    aget-byte v9, v9, v10

    add-int/lit8 v9, v9, -0x30

    aget-byte v4, v4, v9

    int-to-long v9, v4

    add-long/2addr v6, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 4890
    :cond_14
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4891
    new-instance v3, Ljava/util/UUID;

    invoke-direct {v3, v1, v2, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    return-object v3

    :cond_15
    const/4 v1, 0x0

    return-object v1

    .line 4869
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v1

    if-ne v1, v3, :cond_19

    .line 4873
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 4874
    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    sget-wide v6, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    .line 4875
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v6, v3

    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 4876
    new-instance v3, Ljava/util/UUID;

    .line 4877
    sget-boolean v6, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v6, :cond_17

    goto :goto_f

    :cond_17
    invoke-static {v1, v2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v1

    .line 4878
    :goto_f
    sget-boolean v6, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v6, :cond_18

    goto :goto_10

    :cond_18
    invoke-static {v4, v5}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v4

    :goto_10
    invoke-direct {v3, v1, v2, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    return-object v3

    .line 4871
    :cond_19
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uuid not support "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readValueHashCode()J
    .locals 31

    move-object/from16 v0, p0

    .line 1880
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    .line 1882
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 1883
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 1884
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    const/16 v2, 0x7f

    const/16 v3, 0x49

    if-lt v1, v3, :cond_0

    const/16 v3, 0x78

    if-gt v1, v3, :cond_0

    add-int/lit8 v1, v1, -0x49

    .line 1885
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    goto :goto_1

    :cond_0
    const/16 v3, 0x79

    if-eq v1, v3, :cond_3

    const/16 v3, 0x7a

    if-eq v1, v3, :cond_3

    const/16 v3, 0x7b

    if-eq v1, v3, :cond_3

    const/16 v3, 0x7c

    if-eq v1, v3, :cond_3

    const/16 v3, 0x7d

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    .line 1895
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v1

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 1896
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    goto :goto_1

    .line 1898
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "string value not support input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    invoke-static {v3}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1892
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v1

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 1893
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strBegin:I

    .line 1903
    :goto_1
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-gez v1, :cond_4

    .line 1904
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v1, v1

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/SymbolTable;->getHashCode(I)J

    move-result-wide v1

    goto/16 :goto_1a

    .line 1905
    :cond_4
    iget-byte v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    const/16 v4, 0x7a

    const-wide v7, 0x100000001b3L

    const/4 v9, 0x2

    if-ne v3, v4, :cond_9

    .line 1907
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr v1, v2

    const-wide v5, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 1908
    :goto_2
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    if-ge v2, v1, :cond_8

    .line 1909
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v2, v2, v3

    if-ltz v2, :cond_5

    .line 1912
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    goto/16 :goto_3

    :cond_5
    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v2, 0x4

    packed-switch v3, :pswitch_data_0

    .line 1942
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed input around byte "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1929
    :pswitch_0
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    .line 1930
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v10, v9

    aget-byte v4, v4, v10

    and-int/lit16 v10, v3, 0xc0

    const/16 v11, 0x80

    if-ne v10, v11, :cond_6

    and-int/lit16 v10, v4, 0xc0

    const/16 v11, 0x80

    if-ne v10, v11, :cond_6

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    and-int/lit8 v3, v4, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    .line 1937
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v3, 0x3

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    goto :goto_3

    .line 1932
    :cond_6
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed input around byte "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1919
    :pswitch_1
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v4, v3, 0xc0

    const/16 v10, 0x80

    if-ne v4, v10, :cond_7

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    .line 1925
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v3, v9

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    :goto_3
    int-to-long v2, v2

    xor-long/2addr v2, v5

    mul-long v5, v2, v7

    goto/16 :goto_2

    .line 1921
    :cond_7
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed input around byte "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    move-wide v1, v5

    goto/16 :goto_1a

    :cond_9
    const/16 v4, 0x7b

    const-wide v10, 0xffffffffffffffL

    const/16 v12, 0x38

    const-wide v13, 0xffffffffffffL

    const/16 v15, 0x30

    const-wide v16, 0xffffffffffL

    const/16 v18, 0x28

    const-wide v19, 0xffffffffL

    const/16 v21, 0x20

    const-wide/32 v22, 0xffffff

    const-wide/32 v24, 0xffff

    const-wide/16 v26, 0xff

    const/16 v28, 0x0

    const/16 v5, 0x10

    const-wide/16 v29, 0x0

    const/16 v6, 0x8

    if-ne v3, v4, :cond_10

    .line 1951
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v3

    const/4 v3, -0x2

    if-ne v1, v3, :cond_e

    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v1, v1, v3

    const/4 v3, -0x1

    if-ne v1, v3, :cond_e

    .line 1954
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-gt v1, v5, :cond_d

    move v1, v9

    move-wide/from16 v3, v29

    .line 1956
    :goto_4
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ge v1, v5, :cond_c

    .line 1957
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v9, v1

    aget-byte v5, v5, v9

    .line 1958
    iget-object v9, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v7, v1

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, v9, v7

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v6

    or-int/2addr v5, v7

    int-to-char v5, v5

    if-gt v5, v2, :cond_b

    if-nez v1, :cond_a

    if-nez v5, :cond_a

    goto :goto_7

    :cond_a
    int-to-byte v5, v5

    add-int/lit8 v7, v1, -0x2

    shr-int/lit8 v7, v7, 0x1

    packed-switch v7, :pswitch_data_1

    goto :goto_6

    :pswitch_2
    int-to-long v7, v5

    shl-long/2addr v7, v12

    and-long/2addr v3, v10

    goto :goto_5

    :pswitch_3
    int-to-long v7, v5

    shl-long/2addr v7, v15

    and-long/2addr v3, v13

    goto :goto_5

    :pswitch_4
    int-to-long v7, v5

    shl-long v7, v7, v18

    and-long v3, v3, v16

    goto :goto_5

    :pswitch_5
    int-to-long v7, v5

    shl-long v7, v7, v21

    and-long v3, v3, v19

    goto :goto_5

    :pswitch_6
    shl-int/lit8 v5, v5, 0x18

    int-to-long v7, v5

    and-long v3, v3, v22

    goto :goto_5

    :pswitch_7
    shl-int/lit8 v5, v5, 0x10

    int-to-long v7, v5

    and-long v3, v3, v24

    goto :goto_5

    :pswitch_8
    shl-int/lit8 v5, v5, 0x8

    int-to-long v7, v5

    and-long v3, v3, v26

    :goto_5
    add-long/2addr v3, v7

    goto :goto_6

    :pswitch_9
    int-to-long v3, v5

    :goto_6
    add-int/lit8 v1, v1, 0x2

    const-wide v7, 0x100000001b3L

    const/4 v9, 0x2

    goto :goto_4

    :cond_b
    :goto_7
    move-wide/from16 v3, v29

    :cond_c
    cmp-long v1, v3, v29

    if-eqz v1, :cond_d

    return-wide v3

    :cond_d
    const-wide v1, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v9, 0x2

    .line 2002
    :goto_8
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ge v9, v3, :cond_1f

    .line 2003
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v4, v9

    aget-byte v3, v3, v4

    .line 2004
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v5, v9

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v6

    or-int/2addr v3, v4

    int-to-char v3, v3

    int-to-long v3, v3

    xor-long/2addr v1, v3

    const-wide v3, 0x100000001b3L

    mul-long/2addr v1, v3

    add-int/lit8 v9, v9, 0x2

    goto :goto_8

    .line 2009
    :cond_e
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    const/4 v2, -0x2

    if-ne v1, v2, :cond_f

    const-wide v1, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v9, 0x2

    .line 2012
    :goto_9
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ge v9, v3, :cond_1f

    .line 2013
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v4, v9

    aget-byte v3, v3, v4

    .line 2014
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v5, v9

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v6

    or-int/2addr v3, v4

    int-to-char v3, v3

    int-to-long v3, v3

    xor-long/2addr v1, v3

    const-wide v3, 0x100000001b3L

    mul-long/2addr v1, v3

    add-int/lit8 v9, v9, 0x2

    goto :goto_9

    :cond_f
    move/from16 v3, v28

    const-wide v1, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 2020
    :goto_a
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ge v3, v4, :cond_1f

    .line 2021
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v5, v3

    aget-byte v4, v4, v5

    .line 2022
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x1

    aget-byte v5, v5, v7

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    int-to-char v4, v4

    int-to-long v4, v4

    xor-long/2addr v1, v4

    const-wide v4, 0x100000001b3L

    mul-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x2

    goto :goto_a

    :cond_10
    const/16 v4, 0x7d

    if-ne v3, v4, :cond_15

    if-gt v1, v5, :cond_14

    move/from16 v1, v28

    move-wide/from16 v3, v29

    .line 2031
    :goto_b
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ge v1, v5, :cond_13

    .line 2032
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v7, v1

    aget-byte v5, v5, v7

    .line 2033
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v6

    or-int/2addr v5, v7

    int-to-char v5, v5

    if-gt v5, v2, :cond_12

    if-nez v1, :cond_11

    if-nez v5, :cond_11

    goto :goto_e

    :cond_11
    int-to-byte v5, v5

    shr-int/lit8 v7, v1, 0x1

    packed-switch v7, :pswitch_data_2

    goto :goto_d

    :pswitch_a
    int-to-long v7, v5

    shl-long/2addr v7, v12

    and-long/2addr v3, v10

    goto :goto_c

    :pswitch_b
    int-to-long v7, v5

    shl-long/2addr v7, v15

    and-long/2addr v3, v13

    goto :goto_c

    :pswitch_c
    int-to-long v7, v5

    shl-long v7, v7, v18

    and-long v3, v3, v16

    goto :goto_c

    :pswitch_d
    int-to-long v7, v5

    shl-long v7, v7, v21

    and-long v3, v3, v19

    goto :goto_c

    :pswitch_e
    shl-int/lit8 v5, v5, 0x18

    int-to-long v7, v5

    and-long v3, v3, v22

    goto :goto_c

    :pswitch_f
    shl-int/lit8 v5, v5, 0x10

    int-to-long v7, v5

    and-long v3, v3, v24

    goto :goto_c

    :pswitch_10
    shl-int/lit8 v5, v5, 0x8

    int-to-long v7, v5

    and-long v3, v3, v26

    :goto_c
    add-long/2addr v3, v7

    goto :goto_d

    :pswitch_11
    int-to-long v3, v5

    :goto_d
    add-int/lit8 v1, v1, 0x2

    goto :goto_b

    :cond_12
    :goto_e
    move-wide/from16 v3, v29

    :cond_13
    cmp-long v1, v3, v29

    if-eqz v1, :cond_14

    return-wide v3

    :cond_14
    move/from16 v3, v28

    const-wide v1, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 2078
    :goto_f
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ge v3, v4, :cond_1f

    .line 2079
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v5, v3

    aget-byte v4, v4, v5

    .line 2080
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x1

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v6

    or-int/2addr v4, v5

    int-to-char v4, v4

    int-to-long v4, v4

    xor-long/2addr v1, v4

    const-wide v4, 0x100000001b3L

    mul-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x2

    goto :goto_f

    :cond_15
    const/16 v4, 0x7c

    if-ne v3, v4, :cond_1a

    if-gt v1, v5, :cond_19

    move/from16 v1, v28

    move-wide/from16 v3, v29

    .line 2088
    :goto_10
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ge v1, v5, :cond_18

    .line 2089
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v7, v1

    aget-byte v5, v5, v7

    .line 2090
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v6

    or-int/2addr v5, v7

    int-to-char v5, v5

    if-gt v5, v2, :cond_17

    if-nez v1, :cond_16

    if-nez v5, :cond_16

    goto :goto_13

    :cond_16
    int-to-byte v5, v5

    shr-int/lit8 v7, v1, 0x1

    packed-switch v7, :pswitch_data_3

    goto :goto_12

    :pswitch_12
    int-to-long v7, v5

    shl-long/2addr v7, v12

    and-long/2addr v3, v10

    goto :goto_11

    :pswitch_13
    int-to-long v7, v5

    shl-long/2addr v7, v15

    and-long/2addr v3, v13

    goto :goto_11

    :pswitch_14
    int-to-long v7, v5

    shl-long v7, v7, v18

    and-long v3, v3, v16

    goto :goto_11

    :pswitch_15
    int-to-long v7, v5

    shl-long v7, v7, v21

    and-long v3, v3, v19

    goto :goto_11

    :pswitch_16
    shl-int/lit8 v5, v5, 0x18

    int-to-long v7, v5

    and-long v3, v3, v22

    goto :goto_11

    :pswitch_17
    shl-int/lit8 v5, v5, 0x10

    int-to-long v7, v5

    and-long v3, v3, v24

    goto :goto_11

    :pswitch_18
    shl-int/lit8 v5, v5, 0x8

    int-to-long v7, v5

    and-long v3, v3, v26

    :goto_11
    add-long/2addr v3, v7

    goto :goto_12

    :pswitch_19
    int-to-long v3, v5

    :goto_12
    add-int/lit8 v1, v1, 0x2

    goto :goto_10

    :cond_17
    :goto_13
    move-wide/from16 v3, v29

    :cond_18
    cmp-long v1, v3, v29

    if-eqz v1, :cond_19

    return-wide v3

    :cond_19
    move/from16 v3, v28

    const-wide v1, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 2135
    :goto_14
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ge v3, v4, :cond_1f

    .line 2136
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v5, v3

    aget-byte v4, v4, v5

    .line 2137
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x1

    aget-byte v5, v5, v7

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    int-to-char v4, v4

    int-to-long v4, v4

    xor-long/2addr v1, v4

    const-wide v4, 0x100000001b3L

    mul-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x2

    goto :goto_14

    :cond_1a
    if-gt v1, v6, :cond_1e

    .line 2145
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    move/from16 v2, v28

    move-wide/from16 v3, v29

    :goto_15
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ge v2, v5, :cond_1d

    .line 2146
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v5, v5, v6

    if-ltz v5, :cond_1c

    if-nez v5, :cond_1b

    .line 2147
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    aget-byte v6, v6, v1

    if-nez v6, :cond_1b

    goto :goto_18

    :cond_1b
    packed-switch v2, :pswitch_data_4

    goto :goto_17

    :pswitch_1a
    int-to-long v5, v5

    shl-long/2addr v5, v12

    and-long/2addr v3, v10

    goto :goto_16

    :pswitch_1b
    int-to-long v5, v5

    shl-long/2addr v5, v15

    and-long/2addr v3, v13

    goto :goto_16

    :pswitch_1c
    int-to-long v5, v5

    shl-long v5, v5, v18

    and-long v3, v3, v16

    goto :goto_16

    :pswitch_1d
    int-to-long v5, v5

    shl-long v5, v5, v21

    and-long v3, v3, v19

    goto :goto_16

    :pswitch_1e
    shl-int/lit8 v5, v5, 0x18

    int-to-long v5, v5

    and-long v3, v3, v22

    goto :goto_16

    :pswitch_1f
    shl-int/lit8 v5, v5, 0x10

    int-to-long v5, v5

    and-long v3, v3, v24

    goto :goto_16

    :pswitch_20
    shl-int/lit8 v5, v5, 0x8

    int-to-long v5, v5

    and-long v3, v3, v26

    :goto_16
    add-long/2addr v3, v5

    goto :goto_17

    :pswitch_21
    int-to-long v3, v5

    .line 2145
    :goto_17
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 2149
    :cond_1c
    :goto_18
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    move-wide/from16 v3, v29

    :cond_1d
    cmp-long v1, v3, v29

    if-eqz v1, :cond_1e

    return-wide v3

    :cond_1e
    move/from16 v3, v28

    const-wide v1, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 2189
    :goto_19
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    if-ge v3, v4, :cond_1f

    .line 2190
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    xor-long/2addr v1, v4

    const-wide v4, 0x100000001b3L

    mul-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_1f
    :goto_1a
    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public readZonedDateTime()Ljava/time/ZonedDateTime;
    .locals 9

    .line 4774
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x56

    if-ne v0, v1, :cond_2

    .line 4776
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int v2, v0, v1

    .line 4777
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v3, v0, v1

    .line 4778
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v4, v0, v1

    .line 4779
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v5, v0, v1

    .line 4780
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v6, v1, 0x1

    iput v6, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v6, v0, v1

    .line 4781
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v7, v1, 0x1

    iput v7, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v7, v0, v1

    .line 4782
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v8

    .line 4783
    invoke-static/range {v2 .. v8}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 4786
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readValueHashCode()J

    move-result-wide v1

    const-wide v3, -0x42a0403329fb87bfL    # -4.511835427849096E-13

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 4789
    sget-object v1, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    goto :goto_0

    .line 4791
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getString()Ljava/lang/String;

    move-result-object v1

    .line 4792
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object v2

    .line 4793
    invoke-virtual {v2}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    goto :goto_0

    .line 4796
    :cond_1
    sget-object v2, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->getZoneId(Ljava/lang/String;Ljava/time/ZoneId;)Ljava/time/ZoneId;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    .line 4799
    invoke-static {v0, v1, v2}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 4802
    :cond_2
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readZonedDateTime0(I)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method protected readZonedDateTimeX(I)Ljava/time/ZonedDateTime;
    .locals 3

    .line 4666
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    const/16 v1, 0x49

    if-lt v0, v1, :cond_1

    const/16 v1, 0x78

    if-gt v0, v1, :cond_1

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    .line 4672
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Ljava/time/ZoneId;

    .line 4673
    invoke-static {v0, v1, p1, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime([BIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4678
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-object v0

    .line 4675
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal LocalDateTime string : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4668
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset(Lcom/alibaba/fastjson2/JSONReader$SavePoint;)V
    .locals 1

    .line 5395
    iget v0, p1, Lcom/alibaba/fastjson2/JSONReader$SavePoint;->offset:I

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 5396
    iget p1, p1, Lcom/alibaba/fastjson2/JSONReader$SavePoint;->current:I

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    return-void
.end method

.method public skipComment()V
    .locals 2

    .line 4684
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "UnsupportedOperation"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipName()Z
    .locals 4

    .line 2467
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    const/16 v1, 0x49

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    const/16 v3, 0x78

    if-gt v0, v3, :cond_0

    .line 2469
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget-byte v3, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    sub-int/2addr v3, v1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return v2

    :cond_0
    const/16 v1, 0x79

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x7f

    if-ne v0, v1, :cond_3

    .line 2485
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x10

    if-lt v0, v1, :cond_2

    const/16 v1, 0x48

    if-gt v0, v1, :cond_2

    .line 2487
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    return v2

    .line 2491
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    .line 2492
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    return v2

    .line 2496
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name not support input : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strtype:B

    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2479
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readLength()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    .line 2480
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->strlen:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return v2
.end method

.method public skipValue()V
    .locals 4

    .line 2331
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x48

    if-eq v0, v1, :cond_c

    const/16 v1, 0x49

    if-eq v0, v1, :cond_b

    const-string/jumbo v2, "skip not support type "

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    const/16 v3, -0x10

    if-lt v0, v3, :cond_0

    const/16 v3, 0x2f

    if-gt v0, v3, :cond_0

    return-void

    :cond_0
    const/16 v3, -0x28

    if-lt v0, v3, :cond_1

    const/16 v3, -0x11

    if-gt v0, v3, :cond_1

    return-void

    :cond_1
    const/16 v3, 0x30

    if-lt v0, v3, :cond_2

    const/16 v3, 0x3f

    if-gt v0, v3, :cond_2

    .line 2429
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-void

    :cond_2
    if-lt v0, v1, :cond_3

    const/16 v3, 0x78

    if-gt v0, v3, :cond_3

    .line 2434
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    sub-int/2addr v0, v1

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-void

    :cond_3
    const/16 v1, -0x38

    if-lt v0, v1, :cond_4

    const/16 v1, -0x29

    if-gt v0, v1, :cond_4

    .line 2439
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-void

    :cond_4
    const/16 v1, -0x40

    if-lt v0, v1, :cond_5

    const/16 v1, -0x39

    if-gt v0, v1, :cond_5

    .line 2444
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-void

    :cond_5
    const/16 v1, -0x6c

    if-lt v0, v1, :cond_8

    const/16 v3, -0x5c

    if-gt v0, v3, :cond_8

    if-ne v0, v3, :cond_6

    .line 2451
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    goto :goto_0

    :cond_6
    sub-int/2addr v0, v1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_7

    .line 2456
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->skipValue()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    return-void

    .line 2461
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2391
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    .line 2392
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-void

    .line 2340
    :pswitch_1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-void

    .line 2343
    :pswitch_2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-void

    .line 2366
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 2367
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readBigInteger()Ljava/math/BigInteger;

    return-void

    .line 2353
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    return-void

    .line 2362
    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt64Value()J

    return-void

    .line 2358
    :pswitch_6
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-void

    .line 2378
    :pswitch_7
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 2379
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    .line 2380
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readString()Ljava/lang/String;

    return-void

    .line 2374
    :pswitch_8
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 2375
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    return-void

    .line 2370
    :pswitch_9
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    .line 2371
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    return-void

    .line 2401
    :goto_2
    :pswitch_a
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x5b

    if-ne v0, v1, :cond_9

    .line 2402
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-void

    .line 2405
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->skipName()Z

    .line 2406
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->skipValue()V

    goto :goto_2

    .line 2411
    :pswitch_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->isString()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2412
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->skipName()Z

    return-void

    .line 2415
    :cond_a
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2395
    :pswitch_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readTypeHashCode()J

    .line 2396
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->skipValue()V

    return-void

    .line 2383
    :pswitch_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    .line 2384
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    :cond_b
    :pswitch_e
    return-void

    .line 2350
    :cond_c
    :pswitch_f
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x6f
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x5a
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x56
        :pswitch_7
        :pswitch_6
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x51
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_4
    .packed-switch -0x4c
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_f
        :pswitch_5
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch -0x44
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_f
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x79
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public startArray()I
    .locals 4

    .line 1355
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->offset:I

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->type:B

    const/16 v1, -0x51

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/16 v1, -0x6c

    if-lt v0, v1, :cond_1

    const/16 v2, -0x5d

    if-gt v0, v2, :cond_1

    neg-int v2, v0

    int-to-char v2, v2

    .line 1362
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->ch:C

    sub-int/2addr v0, v1

    return v0

    :cond_1
    const/16 v1, -0x6f

    if-ne v0, v1, :cond_2

    .line 1367
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    return v0

    :cond_2
    const/16 v1, -0x5c

    if-ne v0, v1, :cond_3

    .line 1374
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readInt32Value()I

    move-result v0

    return v0

    .line 1371
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "array not support input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->error(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
