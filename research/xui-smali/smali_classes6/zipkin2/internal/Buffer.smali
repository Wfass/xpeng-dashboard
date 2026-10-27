.class public final Lzipkin2/internal/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/internal/Buffer$Writer;
    }
.end annotation


# static fields
.field static final DIGITS:[B

.field static final HEX_DIGITS:[C


# instance fields
.field private final buf:[B

.field pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 194
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lzipkin2/internal/Buffer;->DIGITS:[B

    .line 259
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lzipkin2/internal/Buffer;->HEX_DIGITS:[C

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
    .end array-data

    nop

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-array v0, p1, [B

    iput-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    .line 28
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "buf"    # [B
    .param p2, "pos"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lzipkin2/internal/Buffer;->buf:[B

    .line 32
    iput p2, p0, Lzipkin2/internal/Buffer;->pos:I

    .line 33
    return-void
.end method

.method public static asciiSizeInBytes(J)I
    .locals 6
    .param p0, "v"    # J

    .line 150
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    .line 151
    :cond_0
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, p0, v4

    if-nez v2, :cond_1

    const/16 v0, 0x14

    return v0

    .line 153
    :cond_1
    const/4 v2, 0x0

    .line 154
    .local v2, "negative":Z
    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    .line 155
    neg-long p0, p0

    .line 156
    const/4 v2, 0x1

    .line 159
    :cond_2
    const-wide/32 v0, 0x5f5e100

    cmp-long v0, p0, v0

    if-gez v0, :cond_a

    .line 160
    const-wide/16 v0, 0x2710

    cmp-long v0, p0, v0

    if-gez v0, :cond_6

    .line 161
    const-wide/16 v0, 0x64

    cmp-long v0, p0, v0

    if-gez v0, :cond_4

    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    if-gez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_4
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gez v0, :cond_5

    const/4 v3, 0x3

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x4

    goto/16 :goto_0

    .line 162
    :cond_6
    const-wide/32 v0, 0xf4240

    cmp-long v0, p0, v0

    if-gez v0, :cond_8

    const-wide/32 v0, 0x186a0

    cmp-long v0, p0, v0

    if-gez v0, :cond_7

    const/4 v3, 0x5

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x6

    goto/16 :goto_0

    :cond_8
    const-wide/32 v0, 0x989680

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    const/4 v3, 0x7

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x8

    goto/16 :goto_0

    .line 163
    :cond_a
    const-wide v0, 0xe8d4a51000L

    cmp-long v0, p0, v0

    if-gez v0, :cond_e

    .line 164
    const-wide v0, 0x2540be400L

    cmp-long v0, p0, v0

    if-gez v0, :cond_c

    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, p0, v0

    if-gez v0, :cond_b

    const/16 v3, 0x9

    goto :goto_0

    :cond_b
    const/16 v3, 0xa

    goto :goto_0

    :cond_c
    const-wide v0, 0x174876e800L

    cmp-long v0, p0, v0

    if-gez v0, :cond_d

    const/16 v3, 0xb

    goto :goto_0

    :cond_d
    const/16 v3, 0xc

    goto :goto_0

    .line 165
    :cond_e
    const-wide v0, 0x38d7ea4c68000L

    cmp-long v0, p0, v0

    if-gez v0, :cond_11

    .line 166
    const-wide v0, 0x9184e72a000L

    cmp-long v0, p0, v0

    if-gez v0, :cond_f

    const/16 v3, 0xd

    goto :goto_0

    :cond_f
    const-wide v0, 0x5af3107a4000L

    cmp-long v0, p0, v0

    if-gez v0, :cond_10

    const/16 v3, 0xe

    goto :goto_0

    :cond_10
    const/16 v3, 0xf

    goto :goto_0

    .line 167
    :cond_11
    const-wide v0, 0x16345785d8a0000L

    cmp-long v0, p0, v0

    if-gez v0, :cond_13

    .line 168
    const-wide v0, 0x2386f26fc10000L

    cmp-long v0, p0, v0

    if-gez v0, :cond_12

    const/16 v3, 0x10

    goto :goto_0

    :cond_12
    const/16 v3, 0x11

    goto :goto_0

    .line 169
    :cond_13
    const-wide v0, 0xde0b6b3a7640000L

    cmp-long v0, p0, v0

    if-gez v0, :cond_14

    const/16 v3, 0x12

    goto :goto_0

    :cond_14
    const/16 v3, 0x13

    :goto_0
    move v0, v3

    .line 170
    .local v0, "width":I
    if-eqz v2, :cond_15

    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    :cond_15
    move v1, v0

    :goto_1
    return v1
.end method

.method static checkNotTruncated(II)V
    .locals 3
    .param p0, "pos"    # I
    .param p1, "lastIndex"    # I

    .line 337
    if-gt p0, p1, :cond_0

    .line 340
    return-void

    .line 338
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Truncated reading position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static utf8SizeInBytes(Ljava/lang/String;)I
    .locals 7
    .param p0, "string"    # Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "sizeInBytes":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_9

    .line 57
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 58
    .local v3, "ch":C
    const/16 v4, 0x80

    if-ge v3, v4, :cond_1

    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 61
    :goto_1
    add-int/lit8 v5, v2, -0x1

    if-ge v1, v5, :cond_8

    .line 62
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 63
    if-lt v3, v4, :cond_0

    .end local v3    # "ch":C
    goto :goto_5

    .line 64
    .restart local v3    # "ch":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 67
    :cond_1
    const/16 v4, 0x800

    if-ge v3, v4, :cond_2

    .line 68
    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    .line 69
    :cond_2
    const v4, 0xd800

    if-lt v3, v4, :cond_7

    const v4, 0xdfff

    if-le v3, v4, :cond_3

    goto :goto_4

    .line 72
    :cond_3
    add-int/lit8 v5, v1, 0x1

    if-ge v5, v2, :cond_4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    .line 73
    .local v5, "low":I
    :goto_2
    const v6, 0xdbff

    if-gt v3, v6, :cond_6

    const v6, 0xdc00

    if-lt v5, v6, :cond_6

    if-le v5, v4, :cond_5

    goto :goto_3

    .line 77
    :cond_5
    add-int/lit8 v0, v0, 0x4

    .line 78
    add-int/lit8 v1, v1, 0x1

    .end local v3    # "ch":C
    .end local v5    # "low":I
    goto :goto_5

    .line 74
    .restart local v3    # "ch":C
    .restart local v5    # "low":I
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 70
    .end local v5    # "low":I
    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x3

    .line 56
    .end local v3    # "ch":C
    :cond_8
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_9
    return v0
.end method

.method public static varintSizeInBytes(I)I
    .locals 1
    .param p0, "value"    # I

    .line 206
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 207
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    return v0

    .line 208
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    return v0

    .line 209
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    return v0

    .line 210
    :cond_3
    const/4 v0, 0x5

    return v0
.end method

.method public static varintSizeInBytes(J)I
    .locals 4
    .param p0, "v"    # J

    .line 224
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 225
    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    return v0

    .line 226
    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    return v0

    .line 227
    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    return v0

    .line 228
    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    return v0

    .line 229
    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    return v0

    .line 230
    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    return v0

    .line 231
    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    return v0

    .line 232
    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    return v0

    .line 233
    :cond_8
    const/16 v0, 0xa

    return v0
.end method

.method static writeHexByte([BIB)V
    .locals 3
    .param p0, "data"    # [B
    .param p1, "pos"    # I
    .param p2, "b"    # B

    .line 264
    add-int/lit8 v0, p1, 0x0

    sget-object v1, Lzipkin2/internal/Buffer;->HEX_DIGITS:[C

    shr-int/lit8 v2, p2, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 265
    add-int/lit8 v0, p1, 0x1

    sget-object v1, Lzipkin2/internal/Buffer;->HEX_DIGITS:[C

    and-int/lit8 v2, p2, 0xf

    aget-char v1, v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 266
    return-void
.end method


# virtual methods
.method public pos()I
    .locals 1

    .line 382
    iget v0, p0, Lzipkin2/internal/Buffer;->pos:I

    return v0
.end method

.method readByte()B
    .locals 3

    .line 292
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lzipkin2/internal/Buffer;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method readLongLe()J
    .locals 7

    .line 280
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lzipkin2/internal/Buffer;->pos:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    iget-object v4, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v5, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lzipkin2/internal/Buffer;->pos:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v5, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lzipkin2/internal/Buffer;->pos:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v5, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lzipkin2/internal/Buffer;->pos:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v5, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lzipkin2/internal/Buffer;->pos:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v5, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lzipkin2/internal/Buffer;->pos:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v5, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lzipkin2/internal/Buffer;->pos:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v5, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lzipkin2/internal/Buffer;->pos:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method readVarint32()I
    .locals 6

    .line 301
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 302
    .local v0, "lastIndex":I
    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    invoke-static {v1, v0}, Lzipkin2/internal/Buffer;->checkNotTruncated(II)V

    .line 305
    iget-object v1, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v2, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lzipkin2/internal/Buffer;->pos:I

    aget-byte v1, v1, v2

    move v2, v1

    .local v2, "b":B
    if-ltz v1, :cond_0

    .line 306
    return v2

    .line 308
    :cond_0
    and-int/lit8 v1, v2, 0x7f

    .line 310
    .local v1, "result":I
    iget v3, p0, Lzipkin2/internal/Buffer;->pos:I

    invoke-static {v3, v0}, Lzipkin2/internal/Buffer;->checkNotTruncated(II)V

    .line 311
    iget-object v3, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v4, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lzipkin2/internal/Buffer;->pos:I

    aget-byte v3, v3, v4

    move v2, v3

    if-ltz v3, :cond_1

    .line 312
    shl-int/lit8 v3, v2, 0x7

    or-int/2addr v3, v1

    return v3

    .line 314
    :cond_1
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v1, v3

    .line 316
    iget v3, p0, Lzipkin2/internal/Buffer;->pos:I

    invoke-static {v3, v0}, Lzipkin2/internal/Buffer;->checkNotTruncated(II)V

    .line 317
    iget-object v3, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v4, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lzipkin2/internal/Buffer;->pos:I

    aget-byte v3, v3, v4

    move v2, v3

    if-ltz v3, :cond_2

    .line 318
    shl-int/lit8 v3, v2, 0xe

    or-int/2addr v3, v1

    return v3

    .line 320
    :cond_2
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v1, v3

    .line 322
    iget v3, p0, Lzipkin2/internal/Buffer;->pos:I

    invoke-static {v3, v0}, Lzipkin2/internal/Buffer;->checkNotTruncated(II)V

    .line 323
    iget-object v3, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v4, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lzipkin2/internal/Buffer;->pos:I

    aget-byte v3, v3, v4

    move v2, v3

    if-ltz v3, :cond_3

    .line 324
    shl-int/lit8 v3, v2, 0x15

    or-int/2addr v3, v1

    return v3

    .line 326
    :cond_3
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v1, v3

    .line 328
    iget v3, p0, Lzipkin2/internal/Buffer;->pos:I

    invoke-static {v3, v0}, Lzipkin2/internal/Buffer;->checkNotTruncated(II)V

    .line 329
    iget-object v3, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v4, p0, Lzipkin2/internal/Buffer;->pos:I

    aget-byte v2, v3, v4

    .line 330
    and-int/lit16 v3, v2, 0xf0

    if-nez v3, :cond_4

    .line 333
    shl-int/lit8 v3, v2, 0x1c

    or-int/2addr v3, v1

    return v3

    .line 331
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Greater than 32-bit varint at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lzipkin2/internal/Buffer;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method readVarint64()J
    .locals 9

    .line 347
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 348
    .local v0, "lastIndex":I
    iget v2, p0, Lzipkin2/internal/Buffer;->pos:I

    invoke-static {v2, v0}, Lzipkin2/internal/Buffer;->checkNotTruncated(II)V

    .line 351
    iget-object v2, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v3, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lzipkin2/internal/Buffer;->pos:I

    aget-byte v2, v2, v3

    move v3, v2

    .local v3, "b":B
    if-ltz v2, :cond_0

    .line 352
    int-to-long v1, v3

    return-wide v1

    .line 355
    :cond_0
    and-int/lit8 v2, v3, 0x7f

    int-to-long v4, v2

    .line 356
    .local v4, "result":J
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-gez v3, :cond_3

    const/16 v6, 0xa

    if-ge v2, v6, :cond_3

    .line 357
    iget v6, p0, Lzipkin2/internal/Buffer;->pos:I

    invoke-static {v6, v0}, Lzipkin2/internal/Buffer;->checkNotTruncated(II)V

    .line 358
    iget-object v6, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v7, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lzipkin2/internal/Buffer;->pos:I

    aget-byte v3, v6, v7

    .line 359
    const/16 v6, 0x9

    if-ne v2, v6, :cond_2

    and-int/lit16 v6, v3, 0xf0

    if-nez v6, :cond_1

    goto :goto_1

    .line 360
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Greater than 64-bit varint at position "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lzipkin2/internal/Buffer;->pos:I

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 362
    :cond_2
    :goto_1
    and-int/lit8 v6, v3, 0x7f

    int-to-long v6, v6

    mul-int/lit8 v8, v2, 0x7

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    .end local v2    # "i":I
    :cond_3
    return-wide v4
.end method

.method remaining()I
    .locals 2

    .line 368
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    array-length v0, v0

    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method skip(I)Z
    .locals 2
    .param p1, "maxCount"    # I

    .line 372
    iget v0, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/2addr v0, p1

    .line 373
    .local v0, "nextPos":I
    iget-object v1, p0, Lzipkin2/internal/Buffer;->buf:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 374
    iget-object v1, p0, Lzipkin2/internal/Buffer;->buf:[B

    array-length v1, v1

    iput v1, p0, Lzipkin2/internal/Buffer;->pos:I

    .line 375
    const/4 v1, 0x0

    return v1

    .line 377
    :cond_0
    iput v0, p0, Lzipkin2/internal/Buffer;->pos:I

    .line 378
    const/4 v1, 0x1

    return v1
.end method

.method public toByteArray()[B
    .locals 1

    .line 387
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    return-object v0
.end method

.method public write([B)Lzipkin2/internal/Buffer;
    .locals 4
    .param p1, "v"    # [B

    .line 41
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget v0, p0, Lzipkin2/internal/Buffer;->pos:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lzipkin2/internal/Buffer;->pos:I

    .line 43
    return-object p0
.end method

.method public writeAscii(J)Lzipkin2/internal/Buffer;
    .locals 10
    .param p1, "v"    # J

    .line 174
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    move-result-object v0

    return-object v0

    .line 175
    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    return-object v0

    .line 177
    :cond_1
    invoke-static {p1, p2}, Lzipkin2/internal/Buffer;->asciiSizeInBytes(J)I

    move-result v2

    .line 178
    .local v2, "width":I
    iget v3, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Lzipkin2/internal/Buffer;->pos:I

    .line 180
    .local v3, "pos":I
    const/4 v4, 0x0

    .line 181
    .local v4, "negative":Z
    cmp-long v5, p1, v0

    if-gez v5, :cond_2

    .line 182
    const/4 v4, 0x1

    .line 183
    neg-long p1, p1

    .line 185
    :cond_2
    :goto_0
    cmp-long v5, p1, v0

    if-eqz v5, :cond_3

    .line 186
    const-wide/16 v5, 0xa

    rem-long v7, p1, v5

    long-to-int v7, v7

    .line 187
    .local v7, "digit":I
    iget-object v8, p0, Lzipkin2/internal/Buffer;->buf:[B

    add-int/lit8 v3, v3, -0x1

    sget-object v9, Lzipkin2/internal/Buffer;->DIGITS:[B

    aget-byte v9, v9, v7

    aput-byte v9, v8, v3

    .line 188
    div-long/2addr p1, v5

    .line 189
    .end local v7    # "digit":I
    goto :goto_0

    .line 190
    :cond_3
    if-eqz v4, :cond_4

    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    add-int/lit8 v3, v3, -0x1

    const/16 v1, 0x2d

    aput-byte v1, v0, v3

    .line 191
    :cond_4
    return-object p0
.end method

.method public writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;
    .locals 5
    .param p1, "v"    # Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 87
    iget-object v2, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v3, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lzipkin2/internal/Buffer;->pos:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_0
    return-object p0
.end method

.method public writeByte(I)Lzipkin2/internal/Buffer;
    .locals 3
    .param p1, "v"    # I

    .line 36
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lzipkin2/internal/Buffer;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 37
    return-object p0
.end method

.method public writeLongHex(J)Lzipkin2/internal/Buffer;
    .locals 8
    .param p1, "v"    # J

    .line 247
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v1, v1, 0x0

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lzipkin2/internal/Buffer;->writeHexByte([BIB)V

    .line 248
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0x30

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lzipkin2/internal/Buffer;->writeHexByte([BIB)V

    .line 249
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v1, v1, 0x4

    const/16 v2, 0x28

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lzipkin2/internal/Buffer;->writeHexByte([BIB)V

    .line 250
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v1, v1, 0x6

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lzipkin2/internal/Buffer;->writeHexByte([BIB)V

    .line 251
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    const/16 v2, 0x8

    add-int/2addr v1, v2

    const/16 v3, 0x18

    ushr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v1, v3}, Lzipkin2/internal/Buffer;->writeHexByte([BIB)V

    .line 252
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v1, v1, 0xa

    const/16 v3, 0x10

    ushr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v6, v6

    int-to-byte v6, v6

    invoke-static {v0, v1, v6}, Lzipkin2/internal/Buffer;->writeHexByte([BIB)V

    .line 253
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v1, v1, 0xc

    ushr-long v6, p1, v2

    and-long/2addr v6, v4

    long-to-int v2, v6

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lzipkin2/internal/Buffer;->writeHexByte([BIB)V

    .line 254
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v1, v1, 0xe

    and-long/2addr v4, p1

    long-to-int v2, v4

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lzipkin2/internal/Buffer;->writeHexByte([BIB)V

    .line 255
    iget v0, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/2addr v0, v3

    iput v0, p0, Lzipkin2/internal/Buffer;->pos:I

    .line 256
    return-object p0
.end method

.method writeLongLe(J)V
    .locals 6
    .param p1, "v"    # J

    .line 269
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lzipkin2/internal/Buffer;->pos:I

    const-wide/16 v2, 0xff

    and-long v4, p1, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 270
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lzipkin2/internal/Buffer;->pos:I

    const/16 v4, 0x8

    shr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 271
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lzipkin2/internal/Buffer;->pos:I

    const/16 v4, 0x10

    shr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 272
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lzipkin2/internal/Buffer;->pos:I

    const/16 v4, 0x18

    shr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 273
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lzipkin2/internal/Buffer;->pos:I

    const/16 v4, 0x20

    shr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 274
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lzipkin2/internal/Buffer;->pos:I

    const/16 v4, 0x28

    shr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 275
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lzipkin2/internal/Buffer;->pos:I

    const/16 v4, 0x30

    shr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 276
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lzipkin2/internal/Buffer;->pos:I

    const/16 v4, 0x38

    shr-long v4, p1, v4

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 277
    return-void
.end method

.method public writeUtf8(Ljava/lang/String;)Lzipkin2/internal/Buffer;
    .locals 11
    .param p1, "string"    # Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_a

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 101
    .local v2, "ch":C
    const/16 v3, 0x80

    if-ge v2, v3, :cond_1

    .line 102
    iget-object v4, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v5, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lzipkin2/internal/Buffer;->pos:I

    int-to-byte v6, v2

    aput-byte v6, v4, v5

    .line 104
    :goto_1
    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_9

    .line 105
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 106
    if-lt v2, v3, :cond_0

    .end local v2    # "ch":C
    goto/16 :goto_4

    .line 107
    .restart local v2    # "ch":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 108
    iget-object v4, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v5, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lzipkin2/internal/Buffer;->pos:I

    int-to-byte v6, v2

    aput-byte v6, v4, v5

    goto :goto_1

    .line 110
    :cond_1
    const/16 v4, 0x800

    if-ge v2, v4, :cond_2

    .line 111
    iget-object v4, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v5, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lzipkin2/internal/Buffer;->pos:I

    const/16 v6, 0xc0

    shr-int/lit8 v7, v2, 0x6

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 112
    iget-object v4, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v5, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lzipkin2/internal/Buffer;->pos:I

    and-int/lit8 v6, v2, 0x3f

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    goto/16 :goto_4

    .line 113
    :cond_2
    const v4, 0xd800

    const/16 v5, 0x3f

    if-lt v2, v4, :cond_8

    const v4, 0xdfff

    if-le v2, v4, :cond_3

    goto/16 :goto_3

    .line 118
    :cond_3
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_4

    .line 119
    iget-object v3, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v4, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lzipkin2/internal/Buffer;->pos:I

    aput-byte v5, v3, v4

    .line 120
    goto/16 :goto_4

    .line 122
    :cond_4
    add-int/lit8 v4, v1, -0x1

    if-ne v0, v4, :cond_5

    .line 123
    iget-object v3, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v4, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lzipkin2/internal/Buffer;->pos:I

    aput-byte v5, v3, v4

    .line 124
    goto/16 :goto_5

    .line 126
    :cond_5
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 127
    .local v4, "low":C
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_7

    .line 128
    iget-object v3, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v6, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lzipkin2/internal/Buffer;->pos:I

    aput-byte v5, v3, v6

    .line 129
    iget-object v3, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v6, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lzipkin2/internal/Buffer;->pos:I

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    move v5, v4

    :goto_2
    int-to-byte v5, v5

    aput-byte v5, v3, v6

    .line 130
    goto :goto_4

    .line 134
    :cond_7
    invoke-static {v2, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    .line 135
    .local v6, "codePoint":I
    iget-object v7, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v8, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lzipkin2/internal/Buffer;->pos:I

    const/16 v9, 0xf0

    shr-int/lit8 v10, v6, 0x12

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 136
    iget-object v7, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v8, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lzipkin2/internal/Buffer;->pos:I

    shr-int/lit8 v9, v6, 0xc

    and-int/2addr v9, v5

    or-int/2addr v9, v3

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 137
    iget-object v7, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v8, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lzipkin2/internal/Buffer;->pos:I

    shr-int/lit8 v9, v6, 0x6

    and-int/2addr v5, v9

    or-int/2addr v5, v3

    int-to-byte v5, v5

    aput-byte v5, v7, v8

    .line 138
    iget-object v5, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v7, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lzipkin2/internal/Buffer;->pos:I

    and-int/lit8 v8, v6, 0x3f

    or-int/2addr v3, v8

    int-to-byte v3, v3

    aput-byte v3, v5, v7

    .end local v2    # "ch":C
    .end local v4    # "low":C
    .end local v6    # "codePoint":I
    goto :goto_4

    .line 114
    .restart local v2    # "ch":C
    :cond_8
    :goto_3
    iget-object v4, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v6, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lzipkin2/internal/Buffer;->pos:I

    const/16 v7, 0xe0

    shr-int/lit8 v8, v2, 0xc

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 115
    iget-object v4, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v6, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lzipkin2/internal/Buffer;->pos:I

    shr-int/lit8 v7, v2, 0x6

    and-int/2addr v5, v7

    or-int/2addr v5, v3

    int-to-byte v5, v5

    aput-byte v5, v4, v6

    .line 116
    iget-object v4, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v5, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lzipkin2/internal/Buffer;->pos:I

    and-int/lit8 v6, v2, 0x3f

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    .line 99
    .end local v2    # "ch":C
    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 141
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_a
    :goto_5
    return-object p0
.end method

.method writeVarint(I)V
    .locals 3
    .param p1, "v"    # I

    .line 215
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lzipkin2/internal/Buffer;->pos:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 217
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lzipkin2/internal/Buffer;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 220
    return-void
.end method

.method writeVarint(J)V
    .locals 6
    .param p1, "v"    # J

    .line 238
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lzipkin2/internal/Buffer;->pos:I

    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 240
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lzipkin2/internal/Buffer;->buf:[B

    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lzipkin2/internal/Buffer;->pos:I

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 243
    return-void
.end method
