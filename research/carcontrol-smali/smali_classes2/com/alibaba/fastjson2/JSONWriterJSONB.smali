.class final Lcom/alibaba/fastjson2/JSONWriterJSONB;
.super Lcom/alibaba/fastjson2/JSONWriter;
.source "JSONWriterJSONB.java"


# static fields
.field static final OFFSET_8_ZONE_ID_NAME_BYTES:[B

.field static final SHANGHAI_ZONE_ID_NAME_BYTES:[B

.field static final WRITE_ENUM_USING_STRING_MASK:J

.field static final WRITE_NUM_NULL_MASK:J


# instance fields
.field private bytes:[B

.field private final cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

.field private rootTypeNameHash:J

.field private symbolIndex:I

.field private symbols:Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Asia/Shanghai"

    .line 31
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->SHANGHAI_ZONE_ID_NAME_BYTES:[B

    const-string v0, "+08:00"

    .line 32
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->OFFSET_8_ZONE_ID_NAME_BYTES:[B

    .line 33
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumsUsingName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    sput-wide v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->WRITE_ENUM_USING_STRING_MASK:J

    .line 915
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    sput-wide v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->WRITE_NUM_NULL_MASK:J

    return-void
.end method

.method constructor <init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V
    .locals 2

    .line 43
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/alibaba/fastjson2/JSONWriter;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;ZLjava/nio/charset/Charset;)V

    .line 44
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    array-length v0, v0

    sub-int/2addr v0, v1

    and-int/2addr p2, v0

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 45
    sget-object p2, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-nez p1, :cond_0

    const/16 p1, 0x2000

    new-array p1, p1, [B

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    return-void
.end method

.method private static putStringSizeLarge([BII)I
    .locals 5

    const/16 v0, 0x79

    const v1, 0x3ffff

    if-gt p2, v1, :cond_0

    .line 267
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    add-int/lit8 v1, v1, 0x44

    int-to-byte v1, v1

    .line 268
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 269
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    int-to-byte p2, p2

    .line 270
    aput-byte p2, p0, p1

    const/4 p0, 0x4

    return p0

    .line 274
    :cond_0
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x48

    .line 275
    aput-byte v1, p0, v0

    .line 276
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    .line 279
    sget-boolean p1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p2

    .line 276
    :goto_0
    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const/4 p0, 0x6

    return p0
.end method

.method private static putStringSizeSmall([BII)V
    .locals 2

    const/16 v0, 0x79

    .line 260
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    add-int/lit8 v1, v1, 0x38

    int-to-byte v1, v1

    .line 261
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x2

    int-to-byte p2, p2

    .line 262
    aput-byte p2, p0, p1

    return-void
.end method

.method static sizeOfInt(I)I
    .locals 1

    const/16 v0, -0x10

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2f

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, -0x800

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7ff

    if-gt p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x40000

    if-lt p0, v0, :cond_2

    const v0, 0x3ffff

    if-gt p0, v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0
.end method

.method private tryWriteStringUTF16([B)Z
    .locals 10

    .line 772
    array-length v0, p1

    const/16 v1, 0x80

    if-le v1, v0, :cond_0

    .line 773
    array-length v1, p1

    :cond_0
    and-int/lit8 v0, v1, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    const/4 v0, 0x0

    move v3, v0

    move v8, v3

    :goto_0
    add-int/lit8 v4, v3, 0x2

    if-gt v4, v1, :cond_4

    .line 781
    aget-byte v5, p1, v3

    add-int/lit8 v3, v3, 0x1

    .line 782
    aget-byte v3, p1, v3

    if-eqz v5, :cond_2

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v8, v8, 0x1

    :cond_3
    move v3, v4

    goto :goto_0

    .line 788
    :cond_4
    array-length v3, p1

    if-eqz v3, :cond_6

    if-eqz v8, :cond_5

    shr-int/2addr v1, v2

    div-int/2addr v1, v8

    const/4 v3, 0x3

    if-lt v1, v3, :cond_6

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    move v1, v0

    .line 789
    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v4, v3, 0x6

    .line 790
    array-length v5, p1

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    .line 791
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v5, v5

    if-lt v4, v5, :cond_7

    .line 792
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 795
    :cond_7
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    if-nez v1, :cond_9

    .line 797
    array-length v5, p1

    array-length v6, p1

    shr-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 798
    invoke-static {v5}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->sizeOfInt(I)I

    move-result v9

    .line 799
    array-length v5, p1

    add-int v6, v3, v9

    add-int/2addr v6, v2

    invoke-static {p1, v0, v5, v4, v6}, Lcom/alibaba/fastjson2/util/IOUtils;->encodeUTF8([BII[BI)I

    move-result v5

    sub-int v6, v5, v3

    sub-int/2addr v6, v9

    add-int/lit8 v7, v6, -0x1

    .line 801
    array-length v6, p1

    if-le v7, v6, :cond_8

    move v1, v2

    goto :goto_2

    :cond_8
    const/4 v6, -0x1

    if-eq v5, v6, :cond_9

    move v5, v3

    move-object v6, p1

    .line 804
    invoke-static/range {v4 .. v9}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeUTF8([BI[BIII)I

    move-result p1

    add-int/2addr v3, p1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return v2

    :cond_9
    :goto_2
    if-eqz v1, :cond_a

    .line 810
    invoke-static {v4, v3, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeUTF16([BI[B)I

    move-result p1

    add-int/2addr v3, p1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return v2

    :cond_a
    return v0
.end method

.method public static writeInt32([BII)I
    .locals 5

    const/4 v0, 0x1

    const/16 v1, -0x10

    if-lt p2, v1, :cond_0

    const/16 v1, 0x2f

    if-gt p2, v1, :cond_0

    int-to-byte p2, p2

    .line 1504
    aput-byte p2, p0, p1

    return v0

    :cond_0
    const/16 v1, -0x800

    const/4 v2, 0x2

    if-lt p2, v1, :cond_1

    const/16 v1, 0x7ff

    if-gt p2, v1, :cond_1

    shr-int/lit8 v1, p2, 0x8

    add-int/lit8 v1, v1, 0x38

    int-to-byte v1, v1

    .line 1507
    aput-byte v1, p0, p1

    add-int/2addr p1, v0

    int-to-byte p2, p2

    .line 1508
    aput-byte p2, p0, p1

    return v2

    :cond_1
    const/high16 v0, -0x40000

    if-lt p2, v0, :cond_2

    const v0, 0x3ffff

    if-gt p2, v0, :cond_2

    shr-int/lit8 v0, p2, 0x10

    add-int/lit8 v0, v0, 0x44

    int-to-byte v0, v0

    .line 1511
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 1512
    aput-byte v1, p0, v0

    add-int/2addr p1, v2

    int-to-byte p2, p2

    .line 1513
    aput-byte p2, p0, p1

    const/4 p0, 0x3

    return p0

    :cond_2
    const/16 v0, 0x48

    .line 1516
    aput-byte v0, p0, p1

    .line 1517
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 1520
    sget-boolean p1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p2

    .line 1517
    :goto_0
    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const/4 p0, 0x5

    return p0
.end method

.method private static writeInt64Large([BIJ)I
    .locals 5

    const-wide/32 v0, -0x80000000

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    const/16 v0, -0x41

    .line 1129
    aput-byte v0, p0, p1

    .line 1130
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 1133
    sget-boolean p1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p1, :cond_0

    long-to-int p1, p2

    goto :goto_0

    :cond_0
    long-to-int p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    .line 1130
    :goto_0
    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const/4 p0, 0x5

    return p0

    .line 1138
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt64Large8([BIJ)I

    move-result p0

    return p0
.end method

.method private static writeInt64Large8([BIJ)I
    .locals 7

    const/16 v0, -0x42

    .line 1142
    aput-byte v0, p0, p1

    .line 1143
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long v3, v2, v4

    .line 1146
    sget-boolean p1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p2

    :goto_0
    move-wide v5, p2

    move-object v2, p0

    .line 1143
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    const/16 p0, 0x9

    return p0
.end method

.method private writeTypeNameSymbol(I)Z
    .locals 3

    .line 628
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v1, v0, 0x2

    .line 629
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 630
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 633
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v2, -0x6e

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 634
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    neg-int p1, p1

    .line 635
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    const/4 p1, 0x0

    return p1
.end method

.method private static writeUTF16([BI[B)I
    .locals 3

    .line 844
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x7d

    goto :goto_0

    :cond_0
    const/16 v0, 0x7c

    :goto_0
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    .line 845
    array-length v1, p2

    invoke-static {p0, v0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32([BII)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    .line 846
    array-length v2, p2

    invoke-static {p2, v1, p0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 847
    array-length p0, p2

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static writeUTF8([BI[BIII)I
    .locals 1

    mul-int/lit8 v0, p3, 0x2

    .line 825
    array-length p2, p2

    if-ne v0, p2, :cond_1

    const/16 p2, 0x2f

    if-gt p4, p2, :cond_0

    add-int/lit8 p2, p3, 0x49

    int-to-byte p2, p2

    .line 827
    aput-byte p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p5, p1

    .line 828
    invoke-static {p0, p5, p0, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p3, p3, 0x1

    return p3

    :cond_0
    const/16 p2, 0x79

    goto :goto_0

    :cond_1
    const/16 p2, 0x7a

    .line 835
    :goto_0
    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->sizeOfInt(I)I

    move-result p4

    if-eq p5, p4, :cond_2

    add-int/2addr p5, p1

    add-int/lit8 p5, p5, 0x1

    add-int/2addr p4, p1

    add-int/lit8 p4, p4, 0x1

    .line 837
    invoke-static {p0, p5, p0, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 839
    :cond_2
    aput-byte p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    .line 840
    invoke-static {p0, p1, p3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32([BII)I

    move-result p0

    add-int/2addr p0, p3

    add-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 55
    array-length v1, v0

    const/high16 v2, 0x100000

    if-ge v1, v2, :cond_0

    .line 56
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->cacheItem:Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public endArray()V
    .locals 0

    return-void
.end method

.method public endObject()V
    .locals 3

    .line 96
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->level:I

    .line 97
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    .line 98
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 99
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v2, -0x5b

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 102
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void
.end method

.method ensureCapacity(I)V
    .locals 2

    .line 851
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v1, v0

    if-lt p1, v1, :cond_2

    .line 852
    array-length v0, v0

    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    sub-int v1, v0, p1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 857
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->maxArraySize:I

    if-gt p1, v0, :cond_1

    .line 862
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    goto :goto_1

    .line 858
    :cond_1
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public flushTo(Ljava/io/OutputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2145
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    .line 2146
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 2147
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return v0
.end method

.method public flushTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I
    .locals 0

    .line 2153
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "UnsupportedOperation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBytes()[B
    .locals 2

    .line 2130
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/nio/charset/Charset;)[B
    .locals 1

    .line 2140
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "not support operator"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 1

    .line 2135
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return v0
.end method

.method public startArray()V
    .locals 2

    .line 107
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v1, "unsupported operation"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startArray(I)V
    .locals 5

    .line 132
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    .line 133
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 134
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v2, 0xf

    const/4 v3, 0x1

    if-gt p1, v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    add-int/lit8 v4, p1, -0x6c

    int-to-byte v4, v4

    goto :goto_1

    :cond_2
    const/16 v4, -0x5c

    .line 139
    :goto_1
    aput-byte v4, v1, v0

    add-int/2addr v0, v3

    .line 140
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    if-nez v2, :cond_3

    .line 142
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    :cond_3
    return-void
.end method

.method public startArray(Ljava/lang/Object;I)V
    .locals 4

    .line 112
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->isWriteTypeInfo(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeTypeName(Ljava/lang/String;)V

    .line 116
    :cond_0
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    .line 117
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v0, v0

    if-ne p1, v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    .line 118
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v1, 0xf

    const/4 v2, 0x1

    if-gt p2, v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    add-int/lit8 v3, p2, -0x6c

    int-to-byte v3, v3

    goto :goto_1

    :cond_3
    const/16 v3, -0x5c

    .line 123
    :goto_1
    aput-byte v3, v0, p1

    add-int/2addr p1, v2

    .line 124
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    if-nez v1, :cond_4

    .line 126
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    :cond_4
    return-void
.end method

.method public startObject()V
    .locals 3

    .line 81
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->level:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->maxLevel:I

    if-ge v0, v1, :cond_1

    .line 85
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->level:I

    .line 86
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    .line 87
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 88
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v2, -0x5a

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 91
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void

    .line 82
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level too large : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2158
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, "<empty>"

    return-object v0

    .line 2162
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->getBytes()[B

    move-result-object v0

    .line 2163
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONReader;->ofJSONB([B)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object v0

    .line 2164
    invoke-static {}, Lcom/alibaba/fastjson2/JSONWriter;->of()Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object v1

    .line 2166
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v0

    .line 2167
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    .line 2168
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2170
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bytes length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/alibaba/fastjson2/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    .line 2116
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 2120
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->startObject()V

    .line 2121
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2122
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeAny(Ljava/lang/Object;)V

    .line 2123
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeAny(Ljava/lang/Object;)V

    goto :goto_0

    .line 2125
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->endObject()V

    return-void
.end method

.method public write(Ljava/util/List;)V
    .locals 2

    if-nez p1, :cond_0

    .line 2086
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeArrayNull()V

    return-void

    .line 2090
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2091
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->startArray(I)V

    const/4 v0, 0x0

    .line 2092
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2093
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 2094
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeAny(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write(Ljava/util/Map;)V
    .locals 2

    if-nez p1, :cond_0

    .line 2101
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 2105
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->startObject()V

    .line 2106
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2107
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeAny(Ljava/lang/Object;)V

    .line 2108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeAny(Ljava/lang/Object;)V

    goto :goto_0

    .line 2110
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->endObject()V

    return-void
.end method

.method protected write0(C)V
    .locals 1

    .line 195
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v0, "unsupported operation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeAny(Ljava/lang/Object;)V
    .locals 10

    if-nez p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 69
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-object v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-virtual {v2, v1, v1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v3

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->isBeanToArray()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 73
    invoke-interface/range {v3 .. v9}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 75
    invoke-interface/range {v3 .. v9}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_1
    return-void
.end method

.method public writeArrayNull()V
    .locals 6

    .line 1528
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 1529
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1532
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-wide v4, Lcom/alibaba/fastjson2/JSONWriterJSONB;->WRITE_ARRAY_NULL_MASK:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/16 v2, -0x6c

    goto :goto_0

    :cond_1
    const/16 v2, -0x51

    :goto_0
    aput-byte v2, v0, v1

    return-void
.end method

.method public writeBase64([B)V
    .locals 1

    .line 2050
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeBigInt(Ljava/math/BigInteger;J)V
    .locals 2

    if-nez p1, :cond_0

    .line 1824
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 1828
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->isInt64(Ljava/math/BigInteger;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1829
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length p3, p3

    if-ne p2, p3, :cond_1

    .line 1830
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1832
    :cond_1
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    const/16 v0, -0x46

    aput-byte v0, p2, p3

    .line 1833
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p1

    .line 1834
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt64(J)V

    return-void

    .line 1838
    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 1839
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 p2, p2, 0x5

    array-length p3, p1

    add-int/2addr p2, p3

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1841
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    const/16 v0, -0x45

    aput-byte v0, p2, p3

    .line 1842
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    const/4 p2, 0x0

    .line 1843
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    array-length v1, p1

    invoke-static {p1, p2, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1844
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    array-length p1, p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void
.end method

.method public writeBinary([B)V
    .locals 4

    if-nez p1, :cond_0

    .line 1850
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 1854
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v0, v0, 0x6

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1855
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    const/16 v2, -0x6f

    aput-byte v2, v0, v1

    .line 1856
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    const/4 v0, 0x0

    .line 1858
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1859
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void
.end method

.method public writeBool(Z)V
    .locals 3

    .line 1919
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 1920
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1922
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    if-eqz p1, :cond_1

    const/16 p1, -0x4f

    goto :goto_0

    :cond_1
    const/16 p1, -0x50

    :goto_0
    aput-byte p1, v0, v1

    return-void
.end method

.method public writeBool([Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 1928
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 1932
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->startArray(I)V

    const/4 v0, 0x0

    .line 1933
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1934
    aget-boolean v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeBool(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1936
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->endArray()V

    return-void
.end method

.method public writeChar(C)V
    .locals 3

    .line 156
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 157
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    const/16 v2, -0x70

    aput-byte v2, v0, v1

    .line 160
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    return-void
.end method

.method public writeColon()V
    .locals 2

    .line 2080
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "UnsupportedOperation"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeComma()V
    .locals 2

    .line 190
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v1, "unsupported operation"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeDateTime14(IIIIII)V
    .locals 5

    .line 1964
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v1, v0, 0x8

    .line 1965
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1967
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v3, -0x58

    .line 1968
    aput-byte v3, v2, v0

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    .line 1969
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x2

    int-to-byte p1, p1

    .line 1970
    aput-byte p1, v2, v3

    add-int/lit8 p1, v0, 0x3

    int-to-byte p2, p2

    .line 1971
    aput-byte p2, v2, p1

    add-int/lit8 p1, v0, 0x4

    int-to-byte p2, p3

    .line 1972
    aput-byte p2, v2, p1

    add-int/lit8 p1, v0, 0x5

    int-to-byte p2, p4

    .line 1973
    aput-byte p2, v2, p1

    add-int/lit8 p1, v0, 0x6

    int-to-byte p2, p5

    .line 1974
    aput-byte p2, v2, p1

    add-int/lit8 v0, v0, 0x7

    int-to-byte p1, p6

    .line 1975
    aput-byte p1, v2, v0

    .line 1976
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    const/4 p1, 0x0

    .line 1979
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    return-void
.end method

.method public writeDateTime19(IIIIII)V
    .locals 5

    .line 1991
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v1, v0, 0x8

    .line 1992
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1994
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v3, -0x58

    .line 1995
    aput-byte v3, v2, v0

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    .line 1996
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x2

    int-to-byte p1, p1

    .line 1997
    aput-byte p1, v2, v3

    add-int/lit8 p1, v0, 0x3

    int-to-byte p2, p2

    .line 1998
    aput-byte p2, v2, p1

    add-int/lit8 p1, v0, 0x4

    int-to-byte p2, p3

    .line 1999
    aput-byte p2, v2, p1

    add-int/lit8 p1, v0, 0x5

    int-to-byte p2, p4

    .line 2000
    aput-byte p2, v2, p1

    add-int/lit8 p1, v0, 0x6

    int-to-byte p2, p5

    .line 2001
    aput-byte p2, v2, p1

    add-int/lit8 v0, v0, 0x7

    int-to-byte p1, p6

    .line 2002
    aput-byte p1, v2, v0

    .line 2003
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    const/4 p1, 0x0

    .line 2006
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    return-void
.end method

.method public writeDateTimeISO8601(IIIIIIIIZ)V
    .locals 0

    .line 2021
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo p2, "unsupported operation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeDateYYYMMDD10(III)V
    .locals 0

    .line 2040
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo p2, "unsupported operation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeDateYYYMMDD8(III)V
    .locals 5

    .line 2026
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v1, v0, 0x5

    .line 2027
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 2029
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v3, -0x57

    .line 2030
    aput-byte v3, v2, v0

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    .line 2031
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x2

    int-to-byte p1, p1

    .line 2032
    aput-byte p1, v2, v3

    add-int/lit8 p1, v0, 0x3

    int-to-byte p2, p2

    .line 2033
    aput-byte p2, v2, p1

    add-int/lit8 v0, v0, 0x4

    int-to-byte p1, p3

    .line 2034
    aput-byte p1, v2, v0

    .line 2035
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void
.end method

.method public writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V
    .locals 6

    if-nez p1, :cond_0

    .line 1865
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 1869
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->precision()I

    move-result p2

    .line 1870
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result p3

    const/16 p4, 0x13

    const/16 v0, -0x48

    const/16 v1, -0x47

    if-ge p2, p4, :cond_3

    .line 1872
    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_DECIMAL_INT_COMPACT_OFFSET:J

    const-wide/16 v4, -0x1

    cmp-long p2, v2, v4

    if-eqz p2, :cond_3

    .line 1873
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_DECIMAL_INT_COMPACT_OFFSET:J

    invoke-virtual {p2, p1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    if-nez p3, :cond_1

    .line 1875
    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1876
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget p4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v1, p4, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    aput-byte v0, p3, p4

    .line 1877
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt64(J)V

    return-void

    .line 1881
    :cond_1
    iget p4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1882
    iget-object p4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    aput-byte v1, p4, v0

    .line 1883
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    const-wide/32 p3, -0x80000000

    cmp-long p3, p1, p3

    if-ltz p3, :cond_2

    const-wide/32 p3, 0x7fffffff

    cmp-long p3, p1, p3

    if-gtz p3, :cond_2

    long-to-int p1, p1

    .line 1885
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    goto :goto_0

    .line 1887
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt64(J)V

    :goto_0
    return-void

    .line 1892
    :cond_3
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object p1

    if-nez p3, :cond_4

    .line 1894
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->isInt64(Ljava/math/BigInteger;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1895
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1896
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 p4, p3, 0x1

    iput p4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    aput-byte v0, p2, p3

    .line 1897
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p1

    .line 1898
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt64(J)V

    return-void

    .line 1902
    :cond_4
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1903
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget p4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v0, p4, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    aput-byte v1, p2, p4

    .line 1904
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    .line 1906
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->isInt32(Ljava/math/BigInteger;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1907
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    .line 1908
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    goto :goto_1

    .line 1909
    :cond_5
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->isInt64(Ljava/math/BigInteger;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1910
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p1

    .line 1911
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt64(J)V

    goto :goto_1

    :cond_6
    const-wide/16 p2, 0x0

    .line 1913
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeBigInt(Ljava/math/BigInteger;J)V

    :goto_1
    return-void
.end method

.method public writeDouble(D)V
    .locals 8

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 1193
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1194
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    const/16 v0, -0x4e

    aput-byte v0, p1, p2

    return-void

    .line 1198
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, p1, v1

    if-nez v1, :cond_1

    add-int/lit8 p1, v0, 0x1

    .line 1200
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1201
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v1, -0x4d

    aput-byte v1, p2, v0

    .line 1202
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void

    :cond_1
    const-wide/high16 v1, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v1, p1, v1

    if-ltz v1, :cond_2

    const-wide v1, 0x41dfffffffc00000L    # 2.147483647E9

    cmpg-double v1, p1, v1

    if-gtz v1, :cond_2

    double-to-long v1, p1

    long-to-double v3, v1

    cmpl-double v3, v3, p1

    if-nez v3, :cond_2

    add-int/lit8 p1, v0, 0x1

    .line 1209
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1210
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v3, -0x4c

    aput-byte v3, p2, v0

    .line 1211
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    .line 1212
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt64(J)V

    return-void

    :cond_2
    add-int/lit8 v1, v0, 0x9

    .line 1217
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1218
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v2, -0x4b

    .line 1219
    aput-byte v2, v3, v0

    .line 1220
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    .line 1221
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 1224
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p1

    :goto_0
    move-wide v6, p1

    .line 1221
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 1226
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void
.end method

.method public writeDouble([D)V
    .locals 3

    if-nez p1, :cond_0

    .line 1232
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 1235
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->startArray(I)V

    const/4 v0, 0x0

    .line 1236
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1237
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeDouble(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1239
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->endArray()V

    return-void
.end method

.method public writeEnum(Ljava/lang/Enum;)V
    .locals 6

    if-nez p1, :cond_0

    .line 1345
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-wide v2, Lcom/alibaba/fastjson2/JSONWriterJSONB;->WRITE_ENUM_USING_STRING_MASK:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 1351
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1352
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1353
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 1350
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 1356
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 v0, 0x2f

    if-gt p1, v0, :cond_4

    .line 1358
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_3

    .line 1359
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1362
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    .line 1365
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    :goto_1
    return-void
.end method

.method public writeFloat(F)V
    .locals 8

    .line 1153
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v1, v0, 0x5

    .line 1155
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1156
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1159
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    float-to-int v3, p1

    int-to-float v4, v3

    cmpl-float v4, v4, p1

    if-nez v4, :cond_1

    const/high16 v4, -0x37800000    # -262144.0f

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_1

    const v4, 0x487fffc0    # 262143.0f

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_1

    const/16 p1, -0x4a

    .line 1162
    aput-byte p1, v2, v0

    add-int/lit8 p1, v0, 0x1

    .line 1163
    invoke-static {v2, p1, v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32([BII)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    add-int v1, v0, p1

    goto :goto_1

    :cond_1
    const/16 v3, -0x49

    .line 1165
    aput-byte v3, v2, v0

    .line 1166
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    .line 1167
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 1170
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    .line 1167
    :goto_0
    invoke-virtual {v3, v2, v4, v5, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1174
    :goto_1
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void
.end method

.method public writeFloat([F)V
    .locals 2

    if-nez p1, :cond_0

    .line 1180
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 1183
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->startArray(I)V

    const/4 v0, 0x0

    .line 1184
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1185
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1187
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->endArray()V

    return-void
.end method

.method public writeHex([B)V
    .locals 0

    .line 2055
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeBinary([B)V

    return-void
.end method

.method public writeInstant(Ljava/time/Instant;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1781
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 1785
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1786
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    const/16 v2, -0x52

    aput-byte v2, v0, v1

    .line 1787
    invoke-virtual {p1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    .line 1788
    invoke-virtual {p1}, Ljava/time/Instant;->getNano()I

    move-result p1

    .line 1789
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt64(J)V

    .line 1790
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    return-void
.end method

.method public writeInt16(S)V
    .locals 5

    .line 1330
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v1, v0, 0x3

    .line 1332
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1333
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1335
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v3, -0x44

    .line 1336
    aput-byte v3, v2, v0

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    .line 1337
    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x2

    int-to-byte p1, p1

    .line 1338
    aput-byte p1, v2, v0

    .line 1339
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void
.end method

.method public writeInt16([S)V
    .locals 2

    if-nez p1, :cond_0

    .line 1245
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 1248
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->startArray(I)V

    const/4 v0, 0x0

    .line 1249
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1250
    aget-short v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1252
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->endArray()V

    return-void
.end method

.method public writeInt32(I)V
    .locals 8

    .line 1415
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    const/4 v1, 0x5

    add-int/2addr v0, v1

    .line 1416
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 1417
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1420
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 1422
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    const/16 v3, -0x10

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lt p1, v3, :cond_1

    const/16 v3, 0x2f

    if-gt p1, v3, :cond_1

    int-to-byte p1, p1

    .line 1424
    aput-byte p1, v0, v2

    move v1, v5

    goto :goto_1

    :cond_1
    const/16 v3, -0x800

    if-lt p1, v3, :cond_2

    const/16 v3, 0x7ff

    if-gt p1, v3, :cond_2

    shr-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x38

    int-to-byte v1, v1

    .line 1427
    aput-byte v1, v0, v2

    add-int/2addr v2, v5

    int-to-byte p1, p1

    .line 1428
    aput-byte p1, v0, v2

    move v1, v4

    goto :goto_1

    :cond_2
    const/high16 v3, -0x40000

    if-lt p1, v3, :cond_3

    const v3, 0x3ffff

    if-gt p1, v3, :cond_3

    shr-int/lit8 v1, p1, 0x10

    add-int/lit8 v1, v1, 0x44

    int-to-byte v1, v1

    .line 1431
    aput-byte v1, v0, v2

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    .line 1432
    aput-byte v3, v0, v1

    add-int/2addr v2, v4

    int-to-byte p1, p1

    .line 1433
    aput-byte p1, v0, v2

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    const/16 v3, 0x48

    .line 1436
    aput-byte v3, v0, v2

    .line 1437
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 1440
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    .line 1437
    :goto_0
    invoke-virtual {v3, v0, v4, v5, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1444
    :goto_1
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void
.end method

.method public writeInt32(Ljava/lang/Integer;)V
    .locals 11

    .line 1371
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    const/4 v1, 0x5

    add-int/2addr v0, v1

    .line 1372
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 1373
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1376
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 1378
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez p1, :cond_2

    .line 1380
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v5, p1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v9, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v7, v9

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-nez p1, :cond_1

    const/16 p1, -0x51

    .line 1381
    aput-byte p1, v0, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1383
    aput-byte p1, v0, v2

    goto :goto_0

    .line 1387
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v5, -0x10

    if-lt p1, v5, :cond_3

    const/16 v5, 0x2f

    if-gt p1, v5, :cond_3

    int-to-byte p1, p1

    .line 1389
    aput-byte p1, v0, v2

    :goto_0
    move v1, v4

    goto :goto_2

    :cond_3
    const/16 v5, -0x800

    if-lt p1, v5, :cond_4

    const/16 v5, 0x7ff

    if-gt p1, v5, :cond_4

    shr-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x38

    int-to-byte v1, v1

    .line 1392
    aput-byte v1, v0, v2

    add-int/2addr v2, v4

    int-to-byte p1, p1

    .line 1393
    aput-byte p1, v0, v2

    move v1, v3

    goto :goto_2

    :cond_4
    const/high16 v4, -0x40000

    if-lt p1, v4, :cond_5

    const v4, 0x3ffff

    if-gt p1, v4, :cond_5

    shr-int/lit8 v1, p1, 0x10

    add-int/lit8 v1, v1, 0x44

    int-to-byte v1, v1

    .line 1396
    aput-byte v1, v0, v2

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    .line 1397
    aput-byte v4, v0, v1

    add-int/2addr v2, v3

    int-to-byte p1, p1

    .line 1398
    aput-byte p1, v0, v2

    const/4 v1, 0x3

    goto :goto_2

    :cond_5
    const/16 v3, 0x48

    .line 1401
    aput-byte v3, v0, v2

    .line 1402
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 1405
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    .line 1402
    :goto_1
    invoke-virtual {v3, v0, v4, v5, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1410
    :goto_2
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void
.end method

.method public writeInt32([I)V
    .locals 9

    if-nez p1, :cond_0

    .line 1258
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeArrayNull()V

    return-void

    .line 1263
    :cond_0
    array-length v0, p1

    .line 1264
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 1265
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    :cond_1
    const/16 v1, 0xf

    if-gt v0, v1, :cond_2

    .line 1269
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v0, v0, -0x6c

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    goto :goto_0

    .line 1271
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    const/16 v3, -0x5c

    aput-byte v3, v1, v2

    .line 1272
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    .line 1275
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    .line 1276
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v0

    .line 1277
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v2, v2

    sub-int v2, v1, v2

    if-lez v2, :cond_3

    .line 1278
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1281
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/4 v2, 0x0

    .line 1282
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_8

    .line 1283
    aget v3, p1, v2

    const/16 v4, -0x10

    if-lt v3, v4, :cond_4

    const/16 v4, 0x2f

    if-gt v3, v4, :cond_4

    add-int/lit8 v4, v0, 0x1

    int-to-byte v3, v3

    .line 1285
    aput-byte v3, v1, v0

    move v0, v4

    goto :goto_3

    :cond_4
    const/16 v4, -0x800

    if-lt v3, v4, :cond_5

    const/16 v4, 0x7ff

    if-gt v3, v4, :cond_5

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v3, 0x8

    add-int/lit8 v5, v5, 0x38

    int-to-byte v5, v5

    .line 1290
    aput-byte v5, v1, v0

    add-int/lit8 v0, v4, 0x1

    int-to-byte v3, v3

    .line 1291
    aput-byte v3, v1, v4

    goto :goto_3

    :cond_5
    const/high16 v4, -0x40000

    if-lt v3, v4, :cond_6

    const v4, 0x3ffff

    if-gt v3, v4, :cond_6

    shr-int/lit8 v4, v3, 0x10

    add-int/lit8 v4, v4, 0x44

    int-to-byte v4, v4

    .line 1296
    aput-byte v4, v1, v0

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    .line 1297
    aput-byte v5, v1, v4

    add-int/lit8 v4, v0, 0x2

    int-to-byte v3, v3

    .line 1298
    aput-byte v3, v1, v4

    add-int/lit8 v0, v0, 0x3

    goto :goto_3

    :cond_6
    const/16 v4, 0x48

    .line 1303
    aput-byte v4, v1, v0

    .line 1304
    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v7, v0

    add-long/2addr v5, v7

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    .line 1307
    sget-boolean v7, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    .line 1304
    :goto_2
    invoke-virtual {v4, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v0, 0x5

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1311
    :cond_8
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void
.end method

.method public writeInt64(J)V
    .locals 11

    .line 964
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    const/16 v1, 0x9

    add-int/2addr v0, v1

    .line 965
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v2, v2

    if-le v0, v2, :cond_0

    .line 966
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 969
    :cond_0
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 970
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    const-wide/16 v2, -0x8

    cmp-long v5, p1, v2

    if-ltz v5, :cond_1

    const-wide/16 v5, 0xf

    cmp-long v5, p1, v5

    if-gtz v5, :cond_1

    const-wide/16 v5, -0x28

    sub-long/2addr p1, v2

    add-long/2addr p1, v5

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 973
    aput-byte p1, v4, v0

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_1
    const-wide/16 v2, -0x800

    cmp-long v2, p1, v2

    const/16 v3, 0x8

    if-ltz v2, :cond_2

    const-wide/16 v5, 0x7ff

    cmp-long v2, p1, v5

    if-gtz v2, :cond_2

    const-wide/16 v1, -0x30

    shr-long v5, p1, v3

    add-long/2addr v5, v1

    long-to-int v1, v5

    int-to-byte v1, v1

    .line 976
    aput-byte v1, v4, v0

    add-int/lit8 v1, v0, 0x1

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 977
    aput-byte p1, v4, v1

    const/4 v1, 0x2

    goto :goto_2

    :cond_2
    const-wide/32 v5, -0x40000

    cmp-long v2, p1, v5

    if-ltz v2, :cond_3

    const-wide/32 v5, 0x3ffff

    cmp-long v2, p1, v5

    if-gtz v2, :cond_3

    const-wide/16 v1, -0x3c

    const/16 v5, 0x10

    shr-long v5, p1, v5

    add-long/2addr v5, v1

    long-to-int v1, v5

    int-to-byte v1, v1

    .line 980
    aput-byte v1, v4, v0

    add-int/lit8 v1, v0, 0x1

    shr-long v2, p1, v3

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 981
    aput-byte v2, v4, v1

    add-int/lit8 v1, v0, 0x2

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 982
    aput-byte p1, v4, v1

    const/4 v1, 0x3

    goto :goto_2

    :cond_3
    const-wide/32 v2, -0x80000000

    cmp-long v2, p1, v2

    const-wide/16 v5, 0x1

    if-ltz v2, :cond_5

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p1, v2

    if-gtz v2, :cond_5

    const/16 v1, -0x41

    .line 985
    aput-byte v1, v4, v0

    .line 986
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v7, v0

    add-long/2addr v2, v7

    add-long/2addr v2, v5

    .line 989
    sget-boolean v5, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    long-to-int p1, p1

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    .line 986
    :goto_0
    invoke-virtual {v1, v4, v2, v3, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const/4 v1, 0x5

    goto :goto_2

    :cond_5
    const/16 v2, -0x42

    .line 993
    aput-byte v2, v4, v0

    .line 994
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v7, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v9, v0

    add-long/2addr v7, v9

    add-long/2addr v5, v7

    .line 997
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p1

    :goto_1
    move-wide v7, p1

    .line 994
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_2
    add-int/2addr v0, v1

    .line 1001
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void
.end method

.method public writeInt64(Ljava/lang/Long;)V
    .locals 9

    .line 919
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v0, v0, 0x9

    .line 920
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 921
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 925
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    const/4 v2, 0x1

    if-nez p1, :cond_2

    .line 928
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-wide v5, Lcom/alibaba/fastjson2/JSONWriterJSONB;->WRITE_NUM_NULL_MASK:J

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    const/16 p1, -0x51

    goto :goto_0

    :cond_1
    const/16 p1, -0x20

    .line 930
    :goto_0
    aput-byte p1, v0, v1

    goto/16 :goto_2

    .line 933
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x8

    cmp-long p1, v3, v5

    if-ltz p1, :cond_3

    const-wide/16 v7, 0xf

    cmp-long p1, v3, v7

    if-gtz p1, :cond_3

    const-wide/16 v7, -0x28

    sub-long/2addr v3, v5

    add-long/2addr v3, v7

    long-to-int p1, v3

    int-to-byte p1, p1

    .line 935
    aput-byte p1, v0, v1

    goto/16 :goto_2

    :cond_3
    const-wide/16 v5, -0x800

    cmp-long p1, v3, v5

    const/16 v2, 0x8

    if-ltz p1, :cond_4

    const-wide/16 v5, 0x7ff

    cmp-long p1, v3, v5

    if-gtz p1, :cond_4

    const-wide/16 v5, -0x30

    shr-long v7, v3, v2

    add-long/2addr v7, v5

    long-to-int p1, v7

    int-to-byte p1, p1

    .line 938
    aput-byte p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    long-to-int v2, v3

    int-to-byte v2, v2

    .line 939
    aput-byte v2, v0, p1

    const/4 v2, 0x2

    goto :goto_2

    :cond_4
    const-wide/32 v5, -0x40000

    cmp-long p1, v3, v5

    if-ltz p1, :cond_5

    const-wide/32 v5, 0x3ffff

    cmp-long p1, v3, v5

    if-gtz p1, :cond_5

    const-wide/16 v5, -0x3c

    const/16 p1, 0x10

    shr-long v7, v3, p1

    add-long/2addr v7, v5

    long-to-int p1, v7

    int-to-byte p1, p1

    .line 942
    aput-byte p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    shr-long v5, v3, v2

    long-to-int v2, v5

    int-to-byte v2, v2

    .line 943
    aput-byte v2, v0, p1

    add-int/lit8 p1, v1, 0x2

    long-to-int v2, v3

    int-to-byte v2, v2

    .line 944
    aput-byte v2, v0, p1

    const/4 v2, 0x3

    goto :goto_2

    :cond_5
    const-wide/32 v5, -0x80000000

    cmp-long p1, v3, v5

    if-ltz p1, :cond_7

    const-wide/32 v5, 0x7fffffff

    cmp-long p1, v3, v5

    if-gtz p1, :cond_7

    const/16 p1, -0x41

    .line 947
    aput-byte p1, v0, v1

    .line 948
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v7, v1

    add-long/2addr v5, v7

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    .line 951
    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v2, :cond_6

    long-to-int v2, v3

    goto :goto_1

    :cond_6
    long-to-int v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    .line 948
    :goto_1
    invoke-virtual {p1, v0, v5, v6, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const/4 v2, 0x5

    goto :goto_2

    .line 955
    :cond_7
    invoke-static {v0, v1, v3, v4}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt64Large8([BIJ)I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    .line 959
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void
.end method

.method public writeInt64([J)V
    .locals 12

    if-nez p1, :cond_0

    .line 1007
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeArrayNull()V

    return-void

    .line 1011
    :cond_0
    array-length v0, p1

    .line 1013
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    mul-int/lit8 v2, v0, 0x9

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x5

    .line 1015
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 1016
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1019
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v3, 0xf

    if-gt v0, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v0, v0, -0x6c

    int-to-byte v0, v0

    .line 1021
    aput-byte v0, v2, v1

    goto :goto_0

    :cond_2
    const/16 v3, -0x5c

    .line 1023
    aput-byte v3, v2, v1

    add-int/lit8 v3, v1, 0x1

    .line 1024
    invoke-static {v2, v3, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32([BII)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int v3, v1, v0

    :goto_0
    const/4 v0, 0x0

    .line 1027
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_9

    .line 1028
    aget-wide v4, p1, v0

    const-wide/16 v6, -0x8

    cmp-long v1, v4, v6

    if-ltz v1, :cond_3

    const-wide/16 v8, 0xf

    cmp-long v1, v4, v8

    if-gtz v1, :cond_3

    add-int/lit8 v1, v3, 0x1

    const-wide/16 v8, -0x28

    sub-long/2addr v4, v6

    add-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 1030
    aput-byte v4, v2, v3

    move v3, v1

    goto/16 :goto_4

    :cond_3
    const-wide/16 v6, -0x800

    cmp-long v1, v4, v6

    const/16 v6, 0x8

    if-ltz v1, :cond_4

    const-wide/16 v7, 0x7ff

    cmp-long v1, v4, v7

    if-gtz v1, :cond_4

    const-wide/16 v7, -0x30

    shr-long v9, v4, v6

    add-long/2addr v9, v7

    long-to-int v1, v9

    int-to-byte v1, v1

    .line 1035
    aput-byte v1, v2, v3

    add-int/lit8 v1, v3, 0x1

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 1036
    aput-byte v4, v2, v1

    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_4

    :cond_4
    const-wide/32 v7, -0x40000

    cmp-long v1, v4, v7

    if-ltz v1, :cond_5

    const-wide/32 v7, 0x3ffff

    cmp-long v1, v4, v7

    if-gtz v1, :cond_5

    const-wide/16 v7, -0x3c

    const/16 v1, 0x10

    shr-long v9, v4, v1

    add-long/2addr v9, v7

    long-to-int v1, v9

    int-to-byte v1, v1

    .line 1042
    aput-byte v1, v2, v3

    add-int/lit8 v1, v3, 0x1

    shr-long v6, v4, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 1043
    aput-byte v6, v2, v1

    add-int/lit8 v1, v3, 0x2

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 1044
    aput-byte v4, v2, v1

    add-int/lit8 v3, v3, 0x3

    goto :goto_4

    :cond_5
    const-wide/32 v6, -0x80000000

    cmp-long v1, v4, v6

    const-wide/16 v6, 0x1

    if-ltz v1, :cond_7

    const-wide/32 v8, 0x7fffffff

    cmp-long v1, v4, v8

    if-gtz v1, :cond_7

    const/16 v1, -0x41

    .line 1050
    aput-byte v1, v2, v3

    .line 1051
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v8, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v10, v3

    add-long/2addr v8, v10

    add-long/2addr v8, v6

    .line 1054
    sget-boolean v6, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    long-to-int v4, v4

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    .line 1051
    :goto_2
    invoke-virtual {v1, v2, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v3, v3, 0x5

    goto :goto_4

    :cond_7
    const/16 v1, -0x42

    .line 1060
    aput-byte v1, v2, v3

    .line 1061
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v8, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v10, v3

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 1064
    sget-boolean v8, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v8, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {v4, v5}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v4

    :goto_3
    move-wide v8, v4

    move-object v4, v1

    move-object v5, v2

    .line 1061
    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v3, v3, 0x9

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1068
    :cond_9
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void
.end method

.method public writeInt8(B)V
    .locals 4

    .line 1316
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v1, v0, 0x2

    .line 1318
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v2, v2

    sub-int v2, v1, v2

    if-lez v2, :cond_0

    .line 1319
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1322
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v3, -0x43

    .line 1323
    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    .line 1324
    aput-byte p1, v2, v0

    .line 1325
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void
.end method

.method public writeListInt32(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1450
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeArrayNull()V

    return-void

    .line 1454
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1456
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    mul-int/lit8 v2, v0, 0x5

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x5

    .line 1458
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 1459
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1462
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v3, 0xf

    if-gt v0, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v0, -0x6c

    int-to-byte v4, v4

    .line 1464
    aput-byte v4, v2, v1

    goto :goto_0

    :cond_2
    const/16 v3, -0x5c

    .line 1466
    aput-byte v3, v2, v1

    add-int/lit8 v3, v1, 0x1

    .line 1467
    invoke-static {v2, v3, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32([BII)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_8

    .line 1471
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    if-nez v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    const/16 v5, -0x51

    .line 1473
    aput-byte v5, v2, v3

    move v3, v4

    goto :goto_3

    .line 1477
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/16 v5, -0x10

    if-lt v4, v5, :cond_4

    const/16 v5, 0x2f

    if-gt v4, v5, :cond_4

    add-int/lit8 v5, v3, 0x1

    int-to-byte v4, v4

    .line 1479
    aput-byte v4, v2, v3

    move v3, v5

    goto :goto_3

    :cond_4
    const/16 v5, -0x800

    if-lt v4, v5, :cond_5

    const/16 v5, 0x7ff

    if-gt v4, v5, :cond_5

    shr-int/lit8 v5, v4, 0x8

    add-int/lit8 v5, v5, 0x38

    int-to-byte v5, v5

    .line 1481
    aput-byte v5, v2, v3

    add-int/lit8 v5, v3, 0x1

    int-to-byte v4, v4

    .line 1482
    aput-byte v4, v2, v5

    add-int/lit8 v3, v3, 0x2

    goto :goto_3

    :cond_5
    const/high16 v5, -0x40000

    if-lt v4, v5, :cond_6

    const v5, 0x3ffff

    if-gt v4, v5, :cond_6

    shr-int/lit8 v5, v4, 0x10

    add-int/lit8 v5, v5, 0x44

    int-to-byte v5, v5

    .line 1485
    aput-byte v5, v2, v3

    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    .line 1486
    aput-byte v6, v2, v5

    add-int/lit8 v5, v3, 0x2

    int-to-byte v4, v4

    .line 1487
    aput-byte v4, v2, v5

    add-int/lit8 v3, v3, 0x3

    goto :goto_3

    :cond_6
    const/16 v5, 0x48

    .line 1490
    aput-byte v5, v2, v3

    .line 1491
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v8, v3

    add-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    .line 1494
    sget-boolean v8, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v8, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    .line 1491
    :goto_2
    invoke-virtual {v5, v2, v6, v7, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v3, v3, 0x5

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1499
    :cond_8
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void
.end method

.method public writeListInt64(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1074
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeArrayNull()V

    return-void

    .line 1078
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1080
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    mul-int/lit8 v2, v0, 0x9

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x5

    .line 1082
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 1083
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1086
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v3, 0xf

    if-gt v0, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v0, -0x6c

    int-to-byte v4, v4

    .line 1088
    aput-byte v4, v2, v1

    goto :goto_0

    :cond_2
    const/16 v3, -0x5c

    .line 1090
    aput-byte v3, v2, v1

    add-int/lit8 v3, v1, 0x1

    .line 1091
    invoke-static {v2, v3, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32([BII)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_7

    .line 1095
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    const/16 v5, -0x51

    .line 1097
    aput-byte v5, v2, v3

    move v3, v4

    goto :goto_2

    .line 1101
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x8

    cmp-long v8, v4, v6

    if-ltz v8, :cond_4

    const-wide/16 v8, 0xf

    cmp-long v8, v4, v8

    if-gtz v8, :cond_4

    add-int/lit8 v8, v3, 0x1

    const-wide/16 v9, -0x28

    sub-long/2addr v4, v6

    add-long/2addr v4, v9

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 1103
    aput-byte v4, v2, v3

    move v3, v8

    goto :goto_2

    :cond_4
    const-wide/16 v6, -0x800

    cmp-long v6, v4, v6

    const/16 v7, 0x8

    if-ltz v6, :cond_5

    const-wide/16 v8, 0x7ff

    cmp-long v6, v4, v8

    if-gtz v6, :cond_5

    const-wide/16 v8, -0x30

    shr-long v6, v4, v7

    add-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 1108
    aput-byte v6, v2, v3

    add-int/lit8 v6, v3, 0x1

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 1109
    aput-byte v4, v2, v6

    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    :cond_5
    const-wide/32 v8, -0x40000

    cmp-long v6, v4, v8

    if-ltz v6, :cond_6

    const-wide/32 v8, 0x3ffff

    cmp-long v6, v4, v8

    if-gtz v6, :cond_6

    const-wide/16 v8, -0x3c

    const/16 v6, 0x10

    shr-long v10, v4, v6

    add-long/2addr v10, v8

    long-to-int v6, v10

    int-to-byte v6, v6

    .line 1115
    aput-byte v6, v2, v3

    add-int/lit8 v6, v3, 0x1

    shr-long v7, v4, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    .line 1116
    aput-byte v7, v2, v6

    add-int/lit8 v6, v3, 0x2

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 1117
    aput-byte v4, v2, v6

    add-int/lit8 v3, v3, 0x3

    goto :goto_2

    .line 1122
    :cond_6
    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt64Large([BIJ)I

    move-result v4

    add-int/2addr v3, v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1124
    :cond_7
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void
.end method

.method public writeLocalDate(Ljava/time/LocalDate;)V
    .locals 6

    if-nez p1, :cond_0

    .line 1634
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 1638
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v1, v0, 0x5

    .line 1639
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1641
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v3, -0x57

    .line 1642
    aput-byte v3, v2, v0

    .line 1643
    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    ushr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    .line 1644
    aput-byte v5, v2, v4

    add-int/lit8 v4, v0, 0x2

    int-to-byte v3, v3

    .line 1645
    aput-byte v3, v2, v4

    add-int/lit8 v3, v0, 0x3

    .line 1646
    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x4

    .line 1647
    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    .line 1648
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void
.end method

.method public writeLocalDateTime(Ljava/time/LocalDateTime;)V
    .locals 6

    if-nez p1, :cond_0

    .line 1675
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 1679
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v1, v0, 0x8

    .line 1680
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1682
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v3, -0x58

    .line 1683
    aput-byte v3, v2, v0

    .line 1684
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    ushr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    .line 1685
    aput-byte v5, v2, v4

    add-int/lit8 v4, v0, 0x2

    int-to-byte v3, v3

    .line 1686
    aput-byte v3, v2, v4

    add-int/lit8 v3, v0, 0x3

    .line 1687
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x4

    .line 1688
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x5

    .line 1689
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getHour()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x6

    .line 1690
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x7

    .line 1691
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 1692
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    .line 1694
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getNano()I

    move-result p1

    .line 1695
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    return-void
.end method

.method public writeLocalTime(Ljava/time/LocalTime;)V
    .locals 5

    if-nez p1, :cond_0

    .line 1654
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 1658
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v1, v0, 0x4

    .line 1659
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1661
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v3, -0x59

    .line 1662
    aput-byte v3, v2, v0

    add-int/lit8 v3, v0, 0x1

    .line 1663
    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x2

    .line 1664
    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x3

    .line 1665
    invoke-virtual {p1}, Ljava/time/LocalTime;->getSecond()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 1666
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    .line 1668
    invoke-virtual {p1}, Ljava/time/LocalTime;->getNano()I

    move-result p1

    .line 1669
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    return-void
.end method

.method public writeMillis(J)V
    .locals 19

    move-object/from16 v0, p0

    .line 868
    iget v1, v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v2, v1, 0x9

    .line 870
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 871
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 874
    :cond_0
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const-wide/16 v3, 0x3e8

    .line 875
    rem-long v6, p1, v3

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    const-wide/16 v10, 0x1

    if-nez v6, :cond_4

    .line 876
    div-long v3, p1, v3

    const-wide/32 v6, -0x80000000

    cmp-long v12, v3, v6

    const-wide/32 v13, 0x7fffffff

    if-ltz v12, :cond_2

    cmp-long v12, v3, v13

    if-gtz v12, :cond_2

    long-to-int v2, v3

    const/16 v3, -0x54

    .line 880
    aput-byte v3, v5, v1

    .line 881
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v8, v1

    add-long/2addr v6, v8

    add-long/2addr v6, v10

    .line 884
    sget-boolean v4, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    .line 881
    :goto_0
    invoke-virtual {v3, v5, v6, v7, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v1, 0x5

    .line 886
    iput v1, v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void

    :cond_2
    const-wide/16 v15, 0x3c

    .line 890
    rem-long v17, v3, v15

    cmp-long v8, v17, v8

    if-nez v8, :cond_4

    .line 891
    div-long/2addr v3, v15

    cmp-long v6, v3, v6

    if-ltz v6, :cond_4

    cmp-long v6, v3, v13

    if-gtz v6, :cond_4

    long-to-int v2, v3

    const/16 v3, -0x53

    .line 894
    aput-byte v3, v5, v1

    .line 895
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v8, v1

    add-long/2addr v6, v8

    add-long/2addr v6, v10

    .line 898
    sget-boolean v4, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    .line 895
    :goto_1
    invoke-virtual {v3, v5, v6, v7, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v1, 0x5

    .line 900
    iput v1, v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void

    :cond_4
    const/16 v3, -0x55

    .line 906
    aput-byte v3, v5, v1

    .line 907
    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v8, v1

    add-long/2addr v6, v8

    add-long/2addr v6, v10

    .line 910
    sget-boolean v1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v1, :cond_5

    move-wide/from16 v8, p1

    goto :goto_2

    :cond_5
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v8

    .line 907
    :goto_2
    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 912
    iput v2, v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void
.end method

.method public writeName(Ljava/lang/String;)V
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeNameRaw([B)V
    .locals 0

    .line 2065
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeRaw([B)V

    return-void
.end method

.method public writeNameRaw([BJ)V
    .locals 11

    .line 1576
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    .line 1577
    array-length v1, p1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    .line 1578
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1579
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1582
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 1584
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    const/16 v3, 0x2f

    const/16 v4, -0x10

    const/16 v5, 0x7f

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 1585
    invoke-virtual {v2, p2, p3}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result v2

    const/4 v7, -0x1

    if-ne v2, v7, :cond_7

    .line 1587
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v7, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNameAsSymbol:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v9, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    const/4 v7, 0x0

    if-nez v2, :cond_2

    .line 1588
    array-length p2, p1

    invoke-static {p1, v7, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1589
    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void

    .line 1594
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbols:Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;

    if-eqz v2, :cond_4

    .line 1595
    iget v8, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolIndex:I

    invoke-virtual {v2, p2, p3, v8}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->putIfAbsent(JI)I

    move-result p2

    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolIndex:I

    if-eq p2, p3, :cond_3

    move p3, v6

    goto :goto_0

    :cond_3
    add-int/2addr p3, v6

    .line 1598
    iput p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolIndex:I

    move p3, v7

    goto :goto_0

    .line 1601
    :cond_4
    new-instance v2, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;-><init>()V

    iput-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbols:Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;

    iget v8, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolIndex:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolIndex:I

    .line 1602
    invoke-virtual {v2, p2, p3, v8}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->put(JI)V

    move p3, v7

    move p2, v8

    :goto_0
    if-nez p3, :cond_6

    add-int/lit8 p3, v0, 0x1

    .line 1606
    aput-byte v5, v1, v0

    .line 1607
    array-length v0, p1

    invoke-static {p1, v7, v1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1608
    array-length p1, p1

    add-int/2addr p3, p1

    iput p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    if-lt p2, v4, :cond_5

    if-gt p2, v3, :cond_5

    .line 1611
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 p3, p1, 0x1

    iput p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    int-to-byte p2, p2

    aput-byte p2, v1, p1

    goto :goto_1

    .line 1613
    :cond_5
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    :goto_1
    return-void

    :cond_6
    neg-int v2, p2

    :cond_7
    add-int/lit8 p1, v0, 0x1

    .line 1620
    aput-byte v5, v1, v0

    neg-int p2, v2

    if-lt p2, v4, :cond_8

    if-gt p2, v3, :cond_8

    int-to-byte p2, p2

    .line 1623
    aput-byte p2, v1, p1

    add-int/2addr p1, v6

    .line 1624
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    goto :goto_2

    .line 1626
    :cond_8
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    .line 1627
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    :goto_2
    return-void
.end method

.method public writeNameRaw([C)V
    .locals 1

    .line 2070
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeNameRaw([CII)V
    .locals 0

    .line 2075
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "UnsupportedOperation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeNull()V
    .locals 3

    .line 170
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 171
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    const/16 v2, -0x51

    aput-byte v2, v0, v1

    return-void
.end method

.method public writeOffsetDateTime(Ljava/time/OffsetDateTime;)V
    .locals 6

    if-nez p1, :cond_0

    .line 1735
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 1739
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v1, v0, 0x8

    .line 1740
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1742
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v3, -0x56

    .line 1743
    aput-byte v3, v2, v0

    .line 1744
    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->getYear()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    ushr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    .line 1745
    aput-byte v5, v2, v4

    add-int/lit8 v4, v0, 0x2

    int-to-byte v3, v3

    .line 1746
    aput-byte v3, v2, v4

    add-int/lit8 v3, v0, 0x3

    .line 1747
    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->getMonthValue()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x4

    .line 1748
    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->getDayOfMonth()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x5

    .line 1749
    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->getHour()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x6

    .line 1750
    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->getMinute()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x7

    .line 1751
    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->getSecond()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 1752
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    .line 1754
    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->getNano()I

    move-result v0

    .line 1755
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    .line 1757
    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object p1

    .line 1758
    invoke-virtual {p1}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "+08:00"

    .line 1759
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1760
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriterJSONB;->OFFSET_8_ZONE_ID_NAME_BYTES:[B

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeRaw([B)V

    goto :goto_0

    .line 1762
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public writeOffsetTime(Ljava/time/OffsetTime;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1769
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 1773
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->LOCAL_DATE_19700101:Ljava/time/LocalDate;

    .line 1774
    invoke-virtual {p1}, Ljava/time/OffsetTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {p1}, Ljava/time/OffsetTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object p1

    .line 1773
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeOffsetDateTime(Ljava/time/OffsetDateTime;)V

    return-void
.end method

.method public writeRaw(B)V
    .locals 3

    .line 148
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 149
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public writeRaw(C)V
    .locals 1

    .line 2060
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 1

    .line 1537
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v0, "unsupported operation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeRaw([B)V
    .locals 4

    .line 1542
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    array-length v1, p1

    add-int/2addr v0, v1

    .line 1543
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v1, v1

    sub-int v1, v0, v1

    if-lez v1, :cond_0

    .line 1544
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    :cond_0
    const/4 v0, 0x0

    .line 1546
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1547
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void
.end method

.method public writeReference(Ljava/lang/String;)V
    .locals 3

    .line 1941
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 1942
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1944
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    const/16 v2, -0x6d

    aput-byte v2, v0, v1

    .line 1946
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->lastReference:Ljava/lang/String;

    if-ne p1, v0, :cond_1

    const-string v0, "#-1"

    .line 1947
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1949
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    .line 1952
    :goto_0
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->lastReference:Ljava/lang/String;

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    .line 714
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 718
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    if-eqz v0, :cond_5

    .line 719
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CODER:Ljava/util/function/ToIntFunction;

    invoke-interface {v0, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    .line 720
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v0, :cond_4

    .line 723
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    .line 724
    array-length v0, v1

    .line 725
    array-length v2, v1

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x6

    .line 727
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v3, v3

    sub-int v3, v2, v3

    if-lez v3, :cond_1

    .line 728
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 731
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v3, 0x2f

    if-gt v0, v3, :cond_2

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, v0, 0x49

    int-to-byte v4, v4

    .line 733
    aput-byte v4, v2, p1

    goto :goto_0

    :cond_2
    const/16 v3, 0x7ff

    if-gt v0, v3, :cond_3

    .line 735
    invoke-static {v2, p1, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->putStringSizeSmall([BII)V

    add-int/lit8 v3, p1, 0x3

    goto :goto_0

    .line 738
    :cond_3
    invoke-static {v2, p1, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->putStringSizeLarge([BII)I

    move-result v3

    add-int/2addr v3, p1

    :goto_0
    const/4 p1, 0x0

    .line 740
    array-length v4, v1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v0

    .line 741
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void

    .line 744
    :cond_4
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->tryWriteStringUTF16([B)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 751
    :cond_5
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/JDKUtils;->getCharArray(Ljava/lang/String;)[C

    move-result-object p1

    .line 750
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString([C)V

    return-void
.end method

.method public writeString(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeArrayNull()V

    return-void

    .line 661
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 662
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->startArray(I)V

    .line 664
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CODER:Ljava/util/function/ToIntFunction;

    if-eqz v0, :cond_7

    .line 665
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    move v2, v1

    .line 668
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 669
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    .line 671
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    goto/16 :goto_2

    .line 674
    :cond_1
    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CODER:Ljava/util/function/ToIntFunction;

    invoke-interface {v4, v3}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 677
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    move v0, v1

    goto :goto_3

    .line 680
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 681
    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x6

    iget-object v6, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v6, v6

    if-le v5, v6, :cond_3

    .line 682
    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x6

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    :cond_3
    const/16 v5, 0x2f

    if-gt v4, v5, :cond_4

    .line 685
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v6, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v7, v4, 0x49

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    goto :goto_1

    :cond_4
    const/16 v5, 0x7ff

    const/16 v6, 0x79

    if-gt v4, v5, :cond_5

    .line 687
    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    .line 688
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    aput-byte v6, v7, v5

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v8, v4, 0x8

    add-int/lit8 v8, v8, 0x38

    int-to-byte v8, v8

    .line 689
    aput-byte v8, v7, v6

    add-int/lit8 v5, v5, 0x2

    int-to-byte v6, v4

    .line 690
    aput-byte v6, v7, v5

    .line 691
    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v5, v5, 0x3

    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    goto :goto_1

    .line 693
    :cond_5
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v7, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    aput-byte v6, v5, v7

    .line 694
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    .line 696
    :goto_1
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    invoke-interface {v5, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 697
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v6, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    array-length v7, v3

    invoke-static {v3, v1, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 698
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_7

    return-void

    .line 705
    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 706
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 707
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method public writeString([C)V
    .locals 14

    if-nez p1, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 291
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    .line 293
    array-length v1, p1

    .line 294
    array-length v2, p1

    const/16 v3, 0x2f

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v2, v3, :cond_5

    add-int/lit8 v2, v0, 0x1

    add-int v7, v2, v1

    .line 296
    iget-object v8, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v8, v8

    sub-int v8, v7, v8

    if-lez v8, :cond_1

    .line 297
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 300
    :cond_1
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    add-int/lit8 v8, v1, 0x49

    int-to-byte v8, v8

    aput-byte v8, v7, v0

    move v0, v5

    .line 301
    :goto_0
    array-length v7, p1

    if-ge v0, v7, :cond_3

    .line 302
    aget-char v7, p1, v0

    if-le v7, v4, :cond_2

    move v0, v5

    goto :goto_1

    .line 307
    :cond_2
    iget-object v8, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    add-int/lit8 v9, v2, 0x1

    int-to-byte v7, v7

    aput-byte v7, v8, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v9

    goto :goto_0

    :cond_3
    move v0, v6

    :goto_1
    if-eqz v0, :cond_4

    .line 311
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void

    .line 314
    :cond_4
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    move v13, v2

    move v2, v0

    move v0, v13

    goto :goto_2

    :cond_5
    move v2, v6

    .line 320
    :goto_2
    array-length v7, p1

    and-int/lit8 v7, v7, -0x4

    move v8, v5

    :goto_3
    if-ge v8, v7, :cond_8

    .line 322
    aget-char v9, p1, v8

    add-int/lit8 v10, v8, 0x1

    .line 323
    aget-char v10, p1, v10

    add-int/lit8 v11, v8, 0x2

    .line 324
    aget-char v11, p1, v11

    add-int/lit8 v12, v8, 0x3

    .line 325
    aget-char v12, p1, v12

    if-gt v9, v4, :cond_7

    if-gt v10, v4, :cond_7

    if-gt v11, v4, :cond_7

    if-le v12, v4, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v8, v8, 0x4

    goto :goto_3

    :cond_7
    :goto_4
    move v2, v5

    :cond_8
    if-eqz v2, :cond_a

    .line 332
    :goto_5
    array-length v7, p1

    if-ge v8, v7, :cond_a

    .line 333
    aget-char v7, p1, v8

    if-le v7, v4, :cond_9

    move v2, v5

    goto :goto_6

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    if-eqz v2, :cond_b

    move v4, v1

    goto :goto_7

    :cond_b
    mul-int/lit8 v4, v1, 0x3

    :goto_7
    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x5

    add-int/2addr v4, v6

    .line 346
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v7, v7

    sub-int v7, v4, v7

    if-lez v7, :cond_c

    .line 347
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    :cond_c
    const/16 v4, 0x7ff

    if-eqz v2, :cond_f

    if-gt v1, v3, :cond_d

    .line 352
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v1, v1, 0x49

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    goto :goto_8

    :cond_d
    if-gt v1, v4, :cond_e

    .line 354
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    invoke-static {v2, v0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->putStringSizeSmall([BII)V

    add-int/lit8 v3, v0, 0x3

    goto :goto_8

    .line 357
    :cond_e
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    invoke-static {v2, v0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->putStringSizeLarge([BII)I

    move-result v1

    add-int v3, v0, v1

    .line 359
    :goto_8
    array-length v0, p1

    if-ge v5, v0, :cond_13

    .line 360
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    add-int/lit8 v1, v3, 0x1

    aget-char v2, p1, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    add-int/lit8 v5, v5, 0x1

    move v3, v1

    goto :goto_8

    .line 363
    :cond_f
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x3

    .line 364
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->sizeOfInt(I)I

    move-result v2

    add-int/2addr v1, v0

    add-int/2addr v1, v2

    add-int/2addr v1, v6

    .line 365
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 366
    array-length v1, p1

    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    add-int v8, v0, v2

    add-int/2addr v8, v6

    invoke-static {p1, v5, v1, v7, v8}, Lcom/alibaba/fastjson2/util/IOUtils;->encodeUTF8([CII[BI)I

    move-result p1

    sub-int/2addr p1, v0

    sub-int/2addr p1, v2

    sub-int/2addr p1, v6

    .line 369
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->sizeOfInt(I)I

    move-result v1

    if-eq v2, v1, :cond_10

    .line 371
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    add-int/2addr v1, v0

    add-int/2addr v1, v6

    invoke-static {v2, v8, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    :cond_10
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    add-int/lit8 v2, v0, 0x1

    const/16 v5, 0x7a

    .line 374
    aput-byte v5, v1, v0

    const/16 v0, -0x10

    if-lt p1, v0, :cond_11

    if-gt p1, v3, :cond_11

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, p1

    .line 376
    aput-byte v3, v1, v2

    goto :goto_9

    :cond_11
    const/16 v0, -0x800

    if-lt p1, v0, :cond_12

    if-gt p1, v4, :cond_12

    shr-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x38

    int-to-byte v0, v0

    .line 378
    aput-byte v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, p1

    .line 379
    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x2

    goto :goto_9

    .line 382
    :cond_12
    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32([BII)I

    move-result v0

    add-int/2addr v0, v2

    :goto_9
    add-int v3, v0, p1

    .line 386
    :cond_13
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void
.end method

.method public writeString([CII)V
    .locals 10

    if-nez p1, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    :cond_0
    const/16 v0, 0x2f

    const/4 v1, 0x0

    const/16 v2, 0xff

    const/4 v3, 0x1

    if-ge p3, v0, :cond_5

    .line 399
    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    .line 401
    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/2addr v5, v3

    add-int/2addr v5, p3

    .line 402
    iget-object v6, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v6, v6

    sub-int v6, v5, v6

    if-lez v6, :cond_1

    .line 403
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 406
    :cond_1
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v6, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v7, p3, 0x49

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    move v5, p2

    :goto_0
    if-ge v5, p3, :cond_3

    .line 408
    aget-char v6, p1, v5

    if-le v6, v2, :cond_2

    move v5, v1

    goto :goto_1

    .line 413
    :cond_2
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v8, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    int-to-byte v6, v6

    aput-byte v6, v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move v5, v3

    :goto_1
    if-eqz v5, :cond_4

    return-void

    .line 420
    :cond_4
    iput v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    goto :goto_2

    :cond_5
    move v5, v3

    .line 425
    :goto_2
    array-length v4, p1

    and-int/lit8 v4, v4, -0x4

    :goto_3
    if-ge p2, v4, :cond_8

    .line 427
    aget-char v6, p1, p2

    add-int/lit8 v7, p2, 0x1

    .line 428
    aget-char v7, p1, v7

    add-int/lit8 v8, p2, 0x2

    .line 429
    aget-char v8, p1, v8

    add-int/lit8 v9, p2, 0x3

    .line 430
    aget-char v9, p1, v9

    if-gt v6, v2, :cond_7

    if-gt v7, v2, :cond_7

    if-gt v8, v2, :cond_7

    if-le v9, v2, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 p2, p2, 0x4

    goto :goto_3

    :cond_7
    :goto_4
    move v5, v1

    :cond_8
    if-eqz v5, :cond_a

    .line 437
    :goto_5
    array-length v4, p1

    if-ge p2, v4, :cond_a

    .line 438
    aget-char v4, p1, p2

    if-le v4, v2, :cond_9

    move v5, v1

    goto :goto_6

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    if-eqz v5, :cond_b

    move p2, p3

    goto :goto_7

    :cond_b
    mul-int/lit8 p2, p3, 0x3

    .line 446
    :goto_7
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/2addr p2, v2

    add-int/lit8 p2, p2, 0x5

    add-int/2addr p2, v3

    .line 451
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v2, v2

    sub-int v2, p2, v2

    if-lez v2, :cond_c

    .line 452
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    :cond_c
    const/16 p2, 0x7ff

    if-eqz v5, :cond_f

    .line 456
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    if-gt p3, v0, :cond_d

    .line 458
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 p3, p3, 0x49

    int-to-byte p3, p3

    aput-byte p3, v2, p2

    goto :goto_8

    :cond_d
    const/16 v0, 0x79

    if-gt p3, p2, :cond_e

    .line 460
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    .line 461
    aput-byte v0, v2, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v3, p3, 0x8

    add-int/lit8 v3, v3, 0x38

    int-to-byte v3, v3

    .line 462
    aput-byte v3, v2, v0

    add-int/lit8 p2, p2, 0x2

    int-to-byte p3, p3

    .line 463
    aput-byte p3, v2, p2

    .line 464
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 p2, p2, 0x3

    iput p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    goto :goto_8

    .line 466
    :cond_e
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v3, p2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    aput-byte v0, v2, p2

    .line 467
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    .line 469
    :goto_8
    array-length p2, p1

    if-ge v1, p2, :cond_13

    .line 470
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    aget-char p3, p1, v1

    int-to-byte p3, p3

    aput-byte p3, v2, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 473
    :cond_f
    array-length p3, p1

    mul-int/lit8 p3, p3, 0x3

    .line 474
    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->sizeOfInt(I)I

    move-result v2

    .line 475
    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/2addr v4, p3

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 476
    array-length p3, p1

    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    invoke-static {p1, v1, p3, v4, v5}, Lcom/alibaba/fastjson2/util/IOUtils;->encodeUTF8([CII[BI)I

    move-result p1

    .line 478
    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    sub-int/2addr p1, p3

    sub-int/2addr p1, v2

    sub-int/2addr p1, v3

    .line 479
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->sizeOfInt(I)I

    move-result p3

    if-eq v2, p3, :cond_10

    .line 481
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/2addr v5, p3

    add-int/2addr v5, v3

    invoke-static {v1, v4, v2, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 483
    :cond_10
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    const/16 v2, 0x7a

    aput-byte v2, p3, v1

    const/16 p3, -0x10

    if-lt p1, p3, :cond_11

    if-gt p1, v0, :cond_11

    .line 485
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    int-to-byte v0, p1

    aput-byte v0, p2, p3

    goto :goto_9

    :cond_11
    const/16 p3, -0x800

    if-lt p1, p3, :cond_12

    if-gt p1, p2, :cond_12

    .line 487
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    shr-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x38

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 488
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/2addr p3, v3

    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 489
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    goto :goto_9

    .line 491
    :cond_12
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    .line 493
    :goto_9
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    :cond_13
    return-void
.end method

.method public writeString([CIIZ)V
    .locals 3

    if-nez p1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    :cond_0
    const/4 p4, 0x0

    move v0, p4

    :goto_0
    if-ge v0, p3, :cond_2

    add-int v1, v0, p2

    .line 207
    aget-char v1, p1, v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_1

    move v0, p4

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    const/16 v0, 0x2f

    if-gt p3, v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v2, p3, 0x49

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_2

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    .line 218
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    :goto_2
    if-ge p4, p3, :cond_4

    .line 221
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int v2, p2, p4

    aget-char v2, p1, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_4
    return-void

    .line 226
    :cond_5
    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeString([Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeArrayNull()V

    return-void

    .line 503
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->startArray(I)V

    const/4 v0, 0x0

    .line 504
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 505
    aget-object v1, p1, v0

    if-nez v1, :cond_1

    .line 507
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeStringNull()V

    goto :goto_1

    .line 510
    :cond_1
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public writeStringLatin1([B)V
    .locals 5

    if-nez p1, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeStringNull()V

    return-void

    .line 235
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    .line 236
    array-length v1, p1

    .line 237
    array-length v2, p1

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x1

    .line 242
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v3, v3

    sub-int v3, v2, v3

    if-lez v3, :cond_1

    .line 243
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 246
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v3, 0x2f

    if-gt v1, v3, :cond_2

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v1, 0x49

    int-to-byte v4, v4

    .line 248
    aput-byte v4, v2, v0

    goto :goto_0

    :cond_2
    const/16 v3, 0x7ff

    if-gt v1, v3, :cond_3

    .line 250
    invoke-static {v2, v0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->putStringSizeSmall([BII)V

    add-int/lit8 v3, v0, 0x3

    goto :goto_0

    .line 253
    :cond_3
    invoke-static {v2, v0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->putStringSizeLarge([BII)I

    move-result v3

    add-int/2addr v3, v0

    :goto_0
    const/4 v0, 0x0

    .line 255
    array-length v4, p1

    invoke-static {p1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v1

    .line 256
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void
.end method

.method public writeStringNull()V
    .locals 3

    .line 178
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 179
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    const/16 v2, -0x51

    aput-byte v2, v0, v1

    return-void
.end method

.method public writeStringUTF16([B)V
    .locals 5

    .line 756
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    .line 757
    array-length v1, p1

    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x6

    .line 759
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 760
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 763
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    add-int/lit8 v3, v0, 0x1

    .line 764
    sget-boolean v4, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x7d

    goto :goto_0

    :cond_1
    const/16 v4, 0x7c

    :goto_0
    aput-byte v4, v2, v0

    .line 765
    invoke-static {v2, v3, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32([BII)I

    move-result v0

    add-int/2addr v3, v0

    const/4 v0, 0x0

    .line 766
    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v1

    .line 767
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void
.end method

.method public writeSymbol(I)V
    .locals 3

    .line 1551
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v0, v0, 0x3

    .line 1552
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1553
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1556
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    .line 1557
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    const/16 v2, 0x7f

    aput-byte v2, v0, v1

    const/16 v1, -0x10

    if-lt p1, v1, :cond_1

    const/16 v1, 0x2f

    if-gt p1, v1, :cond_1

    .line 1560
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    :cond_1
    const/16 v1, -0x800

    if-lt p1, v1, :cond_2

    const/16 v1, 0x7ff

    if-gt p1, v1, :cond_2

    .line 1565
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    shr-int/lit8 v2, p1, 0x8

    add-int/lit8 v2, v2, 0x38

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1566
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v1, v1, 0x1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 1567
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void

    .line 1571
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    return-void
.end method

.method public writeSymbol(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinal(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const/16 p1, 0x7f

    .line 524
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeRaw(B)V

    neg-int p1, v0

    .line 525
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    return-void

    .line 530
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeTimeHHMMSS8(III)V
    .locals 0

    .line 2045
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo p2, "unsupported operation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeTypeName(Ljava/lang/String;)V
    .locals 5

    .line 535
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 536
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    const/16 v2, -0x6e

    aput-byte v2, v0, v1

    .line 540
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    .line 543
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 544
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 545
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbols:Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;

    if-eqz v4, :cond_3

    .line 546
    invoke-virtual {v4, v0, v1}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->get(J)I

    move-result v2

    goto :goto_0

    .line 548
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbols:Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;

    if-eqz v2, :cond_2

    .line 549
    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->get(J)I

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v3

    :cond_3
    :goto_0
    if-ne v2, v3, :cond_5

    .line 553
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbols:Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;

    if-nez v2, :cond_4

    .line 554
    new-instance v2, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;-><init>()V

    iput-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbols:Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;

    .line 556
    :cond_4
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbols:Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;

    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolIndex:I

    invoke-virtual {v2, v0, v1, v3}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->put(JI)V

    .line 566
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    return-void

    .line 558
    :cond_5
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v0, v0

    if-ne p1, v0, :cond_6

    .line 559
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 562
    :cond_6
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    return-void
.end method

.method public writeTypeName([BJ)Z
    .locals 7

    .line 572
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    invoke-virtual {v0, p2, p3}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 575
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeTypeNameSymbol(I)Z

    move-result p1

    return p1

    .line 581
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->rootTypeNameHash:J

    cmp-long v0, v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move p2, v1

    :goto_0
    move p3, v2

    goto :goto_2

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbols:Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;

    if-eqz v0, :cond_3

    .line 585
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolIndex:I

    invoke-virtual {v0, p2, p3, v3}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->putIfAbsent(JI)I

    move-result p2

    .line 586
    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolIndex:I

    if-eq p2, p3, :cond_2

    goto :goto_0

    :cond_2
    add-int/2addr p3, v2

    .line 589
    iput p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolIndex:I

    :goto_1
    move p3, v1

    goto :goto_2

    .line 592
    :cond_3
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolIndex:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbolIndex:I

    if-nez v0, :cond_4

    .line 594
    iput-wide p2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->rootTypeNameHash:J

    :cond_4
    if-nez v0, :cond_5

    .line 596
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNameAsSymbol:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    .line 597
    :cond_5
    new-instance v3, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;

    invoke-direct {v3, p2, p3, v0}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;-><init>(JI)V

    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->symbols:Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;

    :cond_6
    move p2, v0

    goto :goto_1

    :goto_2
    if-eqz p3, :cond_7

    neg-int p1, p2

    .line 602
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeTypeNameSymbol(I)Z

    return v1

    .line 606
    :cond_7
    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v0, p3, 0x2

    .line 607
    array-length v3, p1

    add-int/2addr v0, v3

    .line 608
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    array-length v3, v3

    if-le v0, v3, :cond_8

    .line 609
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 612
    :cond_8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    add-int/lit8 v3, p3, 0x1

    const/16 v4, -0x6e

    .line 613
    aput-byte v4, v0, p3

    .line 614
    array-length p3, p1

    invoke-static {p1, v1, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 615
    array-length p1, p1

    add-int/2addr v3, p1

    const/16 p1, -0x10

    if-lt p2, p1, :cond_9

    const/16 p1, 0x2f

    if-gt p2, p1, :cond_9

    int-to-byte p1, p2

    .line 617
    aput-byte p1, v0, v3

    add-int/2addr v3, v2

    .line 618
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    goto :goto_3

    .line 620
    :cond_9
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    .line 621
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    :goto_3
    return v1
.end method

.method public writeUUID(Ljava/util/UUID;)V
    .locals 13

    if-nez p1, :cond_0

    .line 1796
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 1800
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v1, v0, 0x12

    .line 1801
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1803
    iget-object v8, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v2, -0x6f

    .line 1804
    aput-byte v2, v8, v0

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x10

    .line 1805
    aput-byte v3, v8, v2

    .line 1806
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    .line 1807
    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v9, v0

    add-long/2addr v5, v9

    const-wide/16 v11, 0x2

    add-long/2addr v5, v11

    .line 1810
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    :goto_0
    move-wide v11, v2

    move-object v2, v4

    move-object v3, v8

    move-wide v4, v5

    move-wide v6, v11

    .line 1807
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 1812
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 1813
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v4, v9

    const-wide/16 v6, 0xa

    add-long/2addr v4, v6

    .line 1816
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    :goto_1
    move-wide v6, v2

    move-object v2, p1

    move-object v3, v8

    .line 1813
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 1818
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    return-void
.end method

.method public writeZonedDateTime(Ljava/time/ZonedDateTime;)V
    .locals 6

    if-nez p1, :cond_0

    .line 1701
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    return-void

    .line 1705
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    add-int/lit8 v1, v0, 0x8

    .line 1706
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->ensureCapacity(I)V

    .line 1708
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->bytes:[B

    const/16 v3, -0x56

    .line 1709
    aput-byte v3, v2, v0

    .line 1710
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getYear()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    ushr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    .line 1711
    aput-byte v5, v2, v4

    add-int/lit8 v4, v0, 0x2

    int-to-byte v3, v3

    .line 1712
    aput-byte v3, v2, v4

    add-int/lit8 v3, v0, 0x3

    .line 1713
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getMonthValue()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x4

    .line 1714
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x5

    .line 1715
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getHour()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x6

    .line 1716
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getMinute()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x7

    .line 1717
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getSecond()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 1718
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterJSONB;->off:I

    .line 1720
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getNano()I

    move-result v0

    .line 1721
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    .line 1723
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object p1

    .line 1724
    invoke-virtual {p1}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Asia/Shanghai"

    .line 1725
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1726
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriterJSONB;->SHANGHAI_ZONE_ID_NAME_BYTES:[B

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeRaw([B)V

    goto :goto_0

    .line 1728
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
