.class Lcom/alibaba/fastjson2/ad;
.super Lcom/alibaba/fastjson2/ab;
.source "JSONWriterUTF16.java"


# static fields
.field static final u:[C

.field static final v:[I


# instance fields
.field protected w:[C

.field final x:Lcom/alibaba/fastjson2/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "{\"$ref\":"

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/ad;->u:[C

    const/16 v0, 0x100

    .line 32
    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_3

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
    if-ge v6, v3, :cond_2

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

    shl-int/2addr v7, v3

    or-int/2addr v7, v5

    .line 39
    aput v7, v0, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_3
    sget-boolean v2, Labf;->w:Z

    if-eqz v2, :cond_4

    .line 44
    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 45
    aget v2, v0, v1

    shl-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 49
    :cond_4
    sput-object v0, Lcom/alibaba/fastjson2/ad;->v:[I

    return-void
.end method

.method constructor <init>(Lcom/alibaba/fastjson2/ab$a;)V
    .locals 3

    .line 56
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/alibaba/fastjson2/ab;-><init>(Lcom/alibaba/fastjson2/ab$a;Lcom/alibaba/fastjson2/ak;ZLjava/nio/charset/Charset;)V

    .line 57
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    sget-object v0, Lcom/alibaba/fastjson2/d;->y:[Lcom/alibaba/fastjson2/d$a;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    .line 58
    sget-object v0, Lcom/alibaba/fastjson2/d;->y:[Lcom/alibaba/fastjson2/d$a;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/ad;->x:Lcom/alibaba/fastjson2/d$a;

    .line 59
    sget-object p1, Lcom/alibaba/fastjson2/d;->z:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->x:Lcom/alibaba/fastjson2/d$a;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    if-nez p1, :cond_0

    const/16 p1, 0x2000

    .line 61
    new-array p1, p1, [C

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    return-void
.end method

.method static a([CIII)V
    .locals 6

    .line 1320
    sget-object v0, Lcom/alibaba/fastjson2/ad;->v:[I

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
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v1, Labf;->c:J

    int-to-long v3, p1

    const/4 p1, 0x1

    shl-long/2addr v3, p1

    add-long v2, v1, v3

    .line 1324
    sget-boolean p1, Labf;->w:Z

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
.method public final a(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I
    .locals 2

    .line 2400
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 2408
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/ad;->a(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 2409
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 2410
    iput v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    .line 2411
    array-length p1, p2

    return p1

    .line 2405
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string p2, "out is null"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final a(C)V
    .locals 2

    .line 101
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    .line 102
    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 103
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 106
    iput v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final a(D)V
    .locals 6

    .line 1906
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

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
    iget v2, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v3, v2, 0x18

    if-eqz v0, :cond_1

    add-int/lit8 v3, v3, 0x2

    .line 1914
    :cond_1
    iget-object v4, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 1915
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 1918
    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    const/16 v4, 0x22

    if-eqz v0, :cond_3

    add-int/lit8 v5, v2, 0x1

    .line 1920
    aput-char v4, v3, v2

    move v2, v5

    .line 1923
    :cond_3
    invoke-static {p1, p2, v3, v2, v1}, Laaz;->a(D[CIZ)I

    move-result p1

    add-int/2addr v2, p1

    if-eqz v0, :cond_4

    add-int/lit8 p1, v2, 0x1

    .line 1927
    aput-char v4, v3, v2

    goto :goto_1

    :cond_4
    move p1, v2

    .line 1929
    :goto_1
    iput p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final a(F)V
    .locals 6

    .line 1842
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

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
    iget v2, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v3, v2, 0xf

    if-eqz v0, :cond_1

    add-int/lit8 v3, v3, 0x2

    .line 1850
    :cond_1
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 1852
    iget-object v3, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    const/16 v4, 0x22

    if-eqz v0, :cond_2

    add-int/lit8 v5, v2, 0x1

    .line 1854
    aput-char v4, v3, v2

    move v2, v5

    .line 1857
    :cond_2
    invoke-static {p1, v3, v2, v1}, Laaz;->a(F[CIZ)I

    move-result p1

    add-int/2addr v2, p1

    if-eqz v0, :cond_3

    add-int/lit8 p1, v2, 0x1

    .line 1861
    aput-char v4, v3, v2

    goto :goto_1

    :cond_3
    move p1, v2

    .line 1863
    :goto_1
    iput p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final a(III)V
    .locals 10

    .line 2184
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v1, v0, 0xa

    .line 2186
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 2187
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 2190
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    .line 2191
    iget-char v3, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char v3, v2, v0

    if-ltz p1, :cond_1

    const/16 v3, 0x270f

    if-gt p1, v3, :cond_1

    .line 2195
    div-int/lit8 v3, p1, 0x64

    mul-int/lit8 v4, v3, 0x64

    sub-int/2addr p1, v4

    .line 2197
    sget-object v4, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v5, Labf;->c:J

    add-int/lit8 v7, v0, 0x1

    int-to-long v7, v7

    const/4 v9, 0x1

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    sget-object v7, Labe;->l:[I

    aget v3, v7, v3

    invoke-virtual {v4, v2, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2198
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->c:J

    add-int/lit8 v6, v0, 0x3

    int-to-long v6, v6

    shl-long/2addr v6, v9

    add-long/2addr v4, v6

    sget-object v6, Labe;->l:[I

    aget p1, v6, p1

    invoke-virtual {v3, v2, v4, v5, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2199
    sget-object p1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v3, Labf;->c:J

    add-int/lit8 v5, v0, 0x5

    int-to-long v5, v5

    shl-long/2addr v5, v9

    add-long/2addr v3, v5

    sget-object v5, Labe;->l:[I

    aget p2, v5, p2

    invoke-virtual {p1, v2, v3, v4, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2200
    sget-object p1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v3, Labf;->c:J

    add-int/lit8 p2, v0, 0x7

    int-to-long v5, p2

    shl-long/2addr v5, v9

    add-long/2addr v3, v5

    sget-object p2, Labe;->l:[I

    aget p2, p2, p3

    invoke-virtual {p1, v2, v3, v4, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v0, 0x9

    .line 2201
    iget-char p1, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char p1, v2, v0

    .line 2202
    iput v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void

    .line 2193
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Only 4 digits numbers are supported. Provided: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final a(IIIIII)V
    .locals 13

    move-object v0, p0

    move v1, p1

    .line 2018
    iget v2, v0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v3, v2, 0x10

    .line 2020
    iget-object v4, v0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 2021
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 2024
    :cond_0
    iget-object v4, v0, Lcom/alibaba/fastjson2/ad;->w:[C

    .line 2025
    iget-char v5, v0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char v5, v4, v2

    if-ltz v1, :cond_1

    const/16 v5, 0x270f

    if-gt v1, v5, :cond_1

    .line 2029
    div-int/lit8 v5, v1, 0x64

    mul-int/lit8 v6, v5, 0x64

    sub-int/2addr v1, v6

    .line 2031
    sget-object v6, Labf;->a:Lsun/misc/Unsafe;

    iget-object v7, v0, Lcom/alibaba/fastjson2/ad;->w:[C

    sget-wide v8, Labf;->c:J

    add-int/lit8 v10, v2, 0x1

    int-to-long v10, v10

    const/4 v12, 0x1

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    sget-object v10, Labe;->l:[I

    aget v5, v10, v5

    invoke-virtual {v6, v7, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2032
    sget-object v5, Labf;->a:Lsun/misc/Unsafe;

    iget-object v6, v0, Lcom/alibaba/fastjson2/ad;->w:[C

    sget-wide v7, Labf;->c:J

    add-int/lit8 v9, v2, 0x3

    int-to-long v9, v9

    shl-long/2addr v9, v12

    add-long/2addr v7, v9

    sget-object v9, Labe;->l:[I

    aget v1, v9, v1

    invoke-virtual {v5, v6, v7, v8, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2033
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v5, Labf;->c:J

    add-int/lit8 v7, v2, 0x5

    int-to-long v7, v7

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    sget-object v7, Labe;->l:[I

    aget v7, v7, p2

    invoke-virtual {v1, v4, v5, v6, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2034
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v5, Labf;->c:J

    add-int/lit8 v7, v2, 0x7

    int-to-long v7, v7

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    sget-object v7, Labe;->l:[I

    aget v7, v7, p3

    invoke-virtual {v1, v4, v5, v6, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2035
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v5, Labf;->c:J

    add-int/lit8 v7, v2, 0x9

    int-to-long v7, v7

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    sget-object v7, Labe;->l:[I

    aget v7, v7, p4

    invoke-virtual {v1, v4, v5, v6, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2036
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v5, Labf;->c:J

    add-int/lit8 v7, v2, 0xb

    int-to-long v7, v7

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    sget-object v7, Labe;->l:[I

    aget v7, v7, p5

    invoke-virtual {v1, v4, v5, v6, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2037
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v5, Labf;->c:J

    add-int/lit8 v7, v2, 0xd

    int-to-long v7, v7

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    sget-object v7, Labe;->l:[I

    aget v7, v7, p6

    invoke-virtual {v1, v4, v5, v6, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v2, v2, 0xf

    .line 2038
    iget-char v1, v0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char v1, v4, v2

    .line 2039
    iput v3, v0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void

    .line 2027
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only 4 digits numbers are supported. Provided: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final a(IIIIIIIIZ)V
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
    iget v2, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v3, v2, 0x19

    add-int/2addr v3, v1

    add-int v1, v2, v3

    .line 2130
    iget-object v4, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v4, v4

    if-lt v1, v4, :cond_2

    .line 2131
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 2134
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    .line 2135
    iget-char v3, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char v3, v1, v2

    add-int/2addr v2, v0

    .line 2136
    invoke-static {v1, v2, p1, p2, p3}, Labe;->a([CIIII)I

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
    invoke-static {v1, p2, p4, p5, p6}, Labe;->b([CIIII)V

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
    sget-object p2, Labe;->j:[J

    aget-wide p2, p2, p7

    const-wide/32 p4, -0x10000

    and-long/2addr p2, p4

    sget-wide p4, Labe;->g:J

    or-long/2addr p2, p4

    invoke-static {v1, p1, p2, p3}, Labe;->b([CIJ)V

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
    sget-object p1, Labf;->a:Lsun/misc/Unsafe;

    iget-object p3, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    sget-wide p5, Labf;->c:J

    int-to-long v2, p4

    shl-long/2addr v2, v0

    add-long/2addr p5, v2

    sget-object p7, Labe;->l:[I

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
    sget-object p4, Labf;->a:Lsun/misc/Unsafe;

    iget-object p5, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    sget-wide p6, Labf;->c:J

    add-int/lit8 p9, p1, 0x1

    int-to-long v2, p9

    shl-long/2addr v2, v0

    add-long/2addr p6, v2

    sget-object p9, Labe;->l:[I

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
    sget-object p2, Labf;->a:Lsun/misc/Unsafe;

    iget-object p3, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    sget-wide p4, Labf;->c:J

    add-int/lit8 p6, p1, 0x4

    int-to-long p6, p6

    shl-long/2addr p6, v0

    add-long/2addr p4, p6

    sget-object p6, Labe;->l:[I

    aget p6, p6, p8

    invoke-virtual {p2, p3, p4, p5, p6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 p1, p1, 0x6

    .line 2178
    :cond_a
    :goto_4
    iget-char p2, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char p2, v1, p1

    add-int/2addr p1, v0

    .line 2179
    iput p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final a(Lcom/alibaba/fastjson2/e;)V
    .locals 12

    if-nez p1, :cond_0

    .line 2484
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->q()V

    return-void

    .line 2488
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->ReferenceDetection:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->PrettyFormat:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v0, v2

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v0, v2

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v0, v2

    .line 2493
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$a;->l:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2494
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 2495
    invoke-interface/range {v2 .. v8}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 2499
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v1, v1

    const/4 v4, 0x1

    if-ne v0, v1, :cond_2

    .line 2500
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 2502
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lcom/alibaba/fastjson2/ad;->n:I

    const/16 v5, 0x7b

    aput-char v5, v0, v1

    .line 2505
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/e;->entrySet()Ljava/util/Set;

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
    iget-object v5, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v8, Lcom/alibaba/fastjson2/ab$b;->WriteMapNullValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v5, v8

    cmp-long v5, v5, v2

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    if-nez v0, :cond_5

    .line 2512
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    iget-object v5, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v5, v5

    if-ne v0, v5, :cond_4

    .line 2513
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 2515
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    iget v5, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/alibaba/fastjson2/ad;->n:I

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

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/ad;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 2523
    :cond_6
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/ad;->h(Ljava/lang/Object;)V

    .line 2526
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    iget-object v5, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v5, v5

    if-ne v1, v5, :cond_7

    .line 2527
    iget v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 2529
    :cond_7
    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    iget v5, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/alibaba/fastjson2/ad;->n:I

    const/16 v6, 0x3a

    aput-char v6, v1, v5

    if-nez v7, :cond_8

    .line 2532
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->q()V

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

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/ad;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 2542
    :cond_9
    const-class v5, Ljava/lang/Integer;

    if-ne v1, v5, :cond_a

    .line 2543
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/ad;->a(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 2547
    :cond_a
    const-class v5, Ljava/lang/Long;

    if-ne v1, v5, :cond_b

    .line 2548
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/ad;->a(Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 2552
    :cond_b
    const-class v5, Ljava/lang/Boolean;

    if-ne v1, v5, :cond_c

    .line 2553
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/ad;->b(Z)V

    goto/16 :goto_0

    .line 2557
    :cond_c
    const-class v5, Ljava/math/BigDecimal;

    if-ne v1, v5, :cond_d

    .line 2558
    check-cast v7, Ljava/math/BigDecimal;

    const/4 v1, 0x0

    invoke-virtual {p0, v7, v2, v3, v1}, Lcom/alibaba/fastjson2/ad;->a(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    goto/16 :goto_0

    .line 2562
    :cond_d
    const-class v5, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v1, v5, :cond_e

    .line 2563
    check-cast v7, Lcom/alibaba/fastjson2/JSONArray;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/ad;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2567
    :cond_e
    const-class v5, Lcom/alibaba/fastjson2/e;

    if-ne v1, v5, :cond_f

    .line 2568
    check-cast v7, Lcom/alibaba/fastjson2/e;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/ad;->a(Lcom/alibaba/fastjson2/e;)V

    goto/16 :goto_0

    .line 2572
    :cond_f
    iget-object v5, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    invoke-virtual {v5, v1, v1}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v6, p0

    .line 2573
    invoke-interface/range {v5 .. v11}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto/16 :goto_0

    .line 2576
    :cond_10
    iget p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v0, v0

    if-ne p1, v0, :cond_11

    .line 2577
    iget p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 2579
    :cond_11
    iget-object p1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    const/16 v1, 0x7d

    aput-char v1, p1, v0

    return-void
.end method

.method public final a(Ljava/io/Writer;)V
    .locals 3

    .line 79
    :try_start_0
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    if-lez v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/Writer;->write([CII)V

    .line 82
    iput v2, p0, Lcom/alibaba/fastjson2/ad;->n:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 85
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "flushTo error"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1672
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->t()V

    goto :goto_0

    .line 1674
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ad;->d(I)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/Long;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1834
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->t()V

    goto :goto_0

    .line 1836
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/ad;->e(J)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 1364
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 1365
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    iget v2, p0, Lcom/alibaba/fastjson2/ad;->n:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1366
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final a(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V
    .locals 8

    if-nez p1, :cond_0

    .line 1271
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->t()V

    return-void

    :cond_0
    if-eqz p4, :cond_1

    .line 1276
    invoke-virtual {p4, p1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1277
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ad;->a(Ljava/lang/String;)V

    return-void

    .line 1281
    :cond_1
    iget-object p4, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, p4, Lcom/alibaba/fastjson2/ab$a;->l:J

    or-long/2addr p2, v0

    .line 1283
    invoke-virtual {p1}, Ljava/math/BigDecimal;->precision()I

    move-result p4

    .line 1284
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/ad;->a(Ljava/math/BigDecimal;J)Z

    move-result v0

    .line 1286
    iget v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int v2, v1, p4

    add-int/lit8 v2, v2, 0x7

    .line 1288
    iget-object v3, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v3, v3

    if-lt v2, v3, :cond_2

    .line 1289
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 1292
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    const/16 v3, 0x22

    if-eqz v0, :cond_3

    add-int/lit8 v4, v1, 0x1

    .line 1294
    aput-char v3, v2, v1

    move v1, v4

    .line 1297
    :cond_3
    sget-object v4, Lcom/alibaba/fastjson2/ab$b;->WriteBigDecimalAsPlain:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/ab$b;->mask:J

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

    sget-wide v4, Labf;->j:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    sget-object v4, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v5, Labf;->j:J

    .line 1303
    invoke-virtual {v4, p1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v4, v6

    if-eqz v6, :cond_5

    if-nez p2, :cond_5

    .line 1306
    invoke-static {v2, v1, v4, v5, p4}, Labe;->a([CIJI)I

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
    iput p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final a(Ljava/time/LocalDate;)V
    .locals 4

    if-nez p1, :cond_0

    .line 2068
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->q()V

    return-void

    .line 2072
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    .line 2073
    iget-object v1, v0, Lcom/alibaba/fastjson2/ab$a;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2074
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/ad;->a(Ljava/time/LocalDate;Lcom/alibaba/fastjson2/ab$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2079
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v1, v0, 0x12

    .line 2081
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 2082
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 2084
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    add-int/lit8 v2, v0, 0x1

    .line 2085
    iget-char v3, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char v3, v1, v0

    .line 2086
    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v3

    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p1

    invoke-static {v1, v2, v0, v3, p1}, Labe;->a([CIIII)I

    move-result p1

    .line 2087
    iget-char v0, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    .line 2088
    iput p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final a(Ljava/time/LocalDateTime;)V
    .locals 5

    .line 2093
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v1, v0, 0x26

    .line 2095
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 2096
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 2099
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    add-int/lit8 v2, v0, 0x1

    .line 2100
    iget-char v3, p0, Lcom/alibaba/fastjson2/ad;->j:C

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

    invoke-static {v1, v2, v3, v4, v0}, Labe;->a([CIIII)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x20

    .line 2103
    aput-char v3, v1, v0

    .line 2104
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {v1, v2, p1}, Labe;->a([CILjava/time/LocalTime;)I

    move-result p1

    .line 2105
    iget-char v0, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    .line 2106
    iput p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final a(Ljava/time/LocalTime;)V
    .locals 4

    .line 2241
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v1, v0, 0x14

    .line 2243
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 2244
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 2247
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    add-int/lit8 v2, v0, 0x1

    .line 2248
    iget-char v3, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char v3, v1, v0

    .line 2249
    invoke-static {v1, v2, p1}, Labe;->a([CILjava/time/LocalTime;)I

    move-result p1

    .line 2250
    iget-char v0, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    .line 2251
    iput p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final a(Ljava/time/OffsetDateTime;)V
    .locals 6

    if-nez p1, :cond_0

    .line 2305
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->q()V

    return-void

    .line 2309
    :cond_0
    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    .line 2310
    iget v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v2, v1, 0x2d

    .line 2312
    iget-object v3, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 2313
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 2316
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    add-int/lit8 v3, v1, 0x1

    .line 2317
    iget-char v4, p0, Lcom/alibaba/fastjson2/ad;->j:C

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

    invoke-static {v2, v3, v4, v5, v1}, Labe;->a([CIIII)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x54

    .line 2321
    aput-char v4, v2, v1

    .line 2322
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {v2, v3, p1}, Labe;->a([CILjava/time/LocalTime;)I

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
    iget-char p1, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    .line 2331
    iput v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final a(Ljava/time/OffsetTime;)V
    .locals 5

    if-nez p1, :cond_0

    .line 2337
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->q()V

    return-void

    .line 2341
    :cond_0
    invoke-virtual {p1}, Ljava/time/OffsetTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    .line 2342
    iget v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v2, v1, 0x19

    .line 2344
    iget-object v3, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 2345
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 2348
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    add-int/lit8 v3, v1, 0x1

    .line 2349
    iget-char v4, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char v4, v2, v1

    .line 2350
    invoke-virtual {p1}, Ljava/time/OffsetTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {v2, v3, p1}, Labe;->a([CILjava/time/LocalTime;)I

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
    iget-char p1, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    .line 2359
    iput v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final a(Ljava/time/ZonedDateTime;)V
    .locals 13

    if-nez p1, :cond_0

    .line 2257
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->q()V

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
    iget v6, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int v9, v6, v3

    add-int/lit8 v9, v9, 0x26

    .line 2277
    iget-object v10, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v10, v10

    if-lt v9, v10, :cond_6

    .line 2278
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 2281
    :cond_6
    iget-object v9, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    add-int/lit8 v10, v6, 0x1

    .line 2282
    iget-char v11, p0, Lcom/alibaba/fastjson2/ad;->j:C

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

    invoke-static {v9, v10, v11, v12, v6}, Labe;->a([CIIII)I

    move-result v6

    add-int/lit8 v10, v6, 0x1

    const/16 v11, 0x54

    .line 2285
    aput-char v11, v9, v6

    .line 2286
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {v9, v10, p1}, Labe;->a([CILjava/time/LocalTime;)I

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
    iget-char p1, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char p1, v9, v0

    add-int/2addr v0, v8

    .line 2299
    iput v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final a(Ljava/util/List;)V
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
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 240
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/ad;->n:I

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
    iget v2, p0, Lcom/alibaba/fastjson2/ad;->n:I

    iget-object v3, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 247
    iget v2, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 249
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    iget v3, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alibaba/fastjson2/ad;->n:I

    const/16 v4, 0x2c

    aput-char v4, v2, v3

    .line 252
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 253
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/ad;->d(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_3
    iget p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v0, v0

    if-ne p1, v0, :cond_4

    .line 257
    iget p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 259
    :cond_4
    iget-object p1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    const/16 v1, 0x5d

    aput-char v1, p1, v0

    return-void
.end method

.method public final a(Ljava/util/UUID;)V
    .locals 14

    if-nez p1, :cond_0

    .line 1331
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->q()V

    return-void

    .line 1335
    :cond_0
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 1336
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 1338
    iget p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 p1, p1, 0x26

    .line 1339
    iget-object v4, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v4, v4

    if-lt p1, v4, :cond_1

    .line 1340
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 1343
    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    .line 1344
    iget v4, p0, Lcom/alibaba/fastjson2/ad;->n:I

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
    invoke-static {p1, v6, v8, v10}, Lcom/alibaba/fastjson2/ad;->a([CIII)V

    add-int/lit8 v6, v4, 0x5

    const/16 v8, 0x28

    shr-long v10, v0, v8

    long-to-int v10, v10

    const/16 v11, 0x20

    shr-long v12, v0, v11

    long-to-int v12, v12

    .line 1347
    invoke-static {p1, v6, v10, v12}, Lcom/alibaba/fastjson2/ad;->a([CIII)V

    add-int/lit8 v6, v4, 0x9

    const/16 v10, 0x2d

    .line 1348
    aput-char v10, p1, v6

    add-int/lit8 v6, v4, 0xa

    long-to-int v0, v0

    shr-int/lit8 v1, v0, 0x18

    shr-int/lit8 v12, v0, 0x10

    .line 1349
    invoke-static {p1, v6, v1, v12}, Lcom/alibaba/fastjson2/ad;->a([CIII)V

    add-int/lit8 v1, v4, 0xe

    .line 1350
    aput-char v10, p1, v1

    add-int/lit8 v1, v4, 0xf

    shr-int/lit8 v6, v0, 0x8

    .line 1351
    invoke-static {p1, v1, v6, v0}, Lcom/alibaba/fastjson2/ad;->a([CIII)V

    add-int/lit8 v0, v4, 0x13

    .line 1352
    aput-char v10, p1, v0

    add-int/lit8 v0, v4, 0x14

    shr-long v6, v2, v7

    long-to-int v1, v6

    shr-long v6, v2, v9

    long-to-int v6, v6

    .line 1353
    invoke-static {p1, v0, v1, v6}, Lcom/alibaba/fastjson2/ad;->a([CIII)V

    add-int/lit8 v0, v4, 0x18

    .line 1354
    aput-char v10, p1, v0

    add-int/lit8 v0, v4, 0x19

    shr-long v6, v2, v8

    long-to-int v1, v6

    shr-long v6, v2, v11

    long-to-int v6, v6

    .line 1355
    invoke-static {p1, v0, v1, v6}, Lcom/alibaba/fastjson2/ad;->a([CIII)V

    add-int/lit8 v0, v4, 0x1d

    long-to-int v1, v2

    shr-int/lit8 v2, v1, 0x18

    shr-int/lit8 v3, v1, 0x10

    .line 1356
    invoke-static {p1, v0, v2, v3}, Lcom/alibaba/fastjson2/ad;->a([CIII)V

    add-int/lit8 v0, v4, 0x21

    shr-int/lit8 v2, v1, 0x8

    .line 1357
    invoke-static {p1, v0, v2, v1}, Lcom/alibaba/fastjson2/ad;->a([CIII)V

    add-int/lit8 v4, v4, 0x25

    .line 1358
    aput-char v5, p1, v4

    .line 1359
    iget p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 p1, p1, 0x26

    iput p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final a(S)V
    .locals 5

    .line 1629
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

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
    iget v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v2, v1, 0x7

    .line 1633
    iget-object v3, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 1634
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 1637
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    if-eqz v0, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 1639
    iget-char v4, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char v4, v2, v1

    move v1, v3

    .line 1641
    :cond_2
    invoke-static {v2, v1, p1}, Labe;->c([CII)I

    move-result p1

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    .line 1643
    iget-char v1, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char v1, v2, p1

    move p1, v0

    .line 1645
    :cond_3
    iput p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final a([CII)V
    .locals 2

    .line 1373
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/2addr v0, p3

    .line 1374
    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1375
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 1378
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1379
    iget p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final a([CIIZ)V
    .locals 9

    .line 975
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->EscapeNoneAscii:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

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
    iget-char v1, p0, Lcom/alibaba/fastjson2/ad;->j:C

    .line 978
    iget v2, p0, Lcom/alibaba/fastjson2/ad;->n:I

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
    iget-object v4, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v4, v4

    sub-int v4, v3, v4

    if-lez v4, :cond_3

    .line 987
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 990
    :cond_3
    iget-object v3, p0, Lcom/alibaba/fastjson2/ad;->w:[C

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
    sget-object v6, Lcom/alibaba/fastjson2/ad;->b:[C

    ushr-int/lit8 v7, v4, 0xc

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v3, v5

    add-int/lit8 v5, v2, 0x3

    .line 1099
    sget-object v6, Lcom/alibaba/fastjson2/ad;->b:[C

    ushr-int/lit8 v7, v4, 0x8

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v3, v5

    add-int/lit8 v5, v2, 0x4

    .line 1100
    sget-object v6, Lcom/alibaba/fastjson2/ad;->b:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v3, v5

    add-int/lit8 v5, v2, 0x5

    .line 1101
    sget-object v6, Lcom/alibaba/fastjson2/ad;->b:[C

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

    goto :goto_8

    :cond_a
    move p1, v2

    .line 1113
    :goto_8
    iput p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

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

.method public final a([D)V
    .locals 8

    if-nez p1, :cond_0

    .line 1974
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->q()V

    return-void

    .line 1978
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

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
    iget v3, p0, Lcom/alibaba/fastjson2/ad;->n:I

    .line 1981
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x1b

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    .line 1982
    iget-object v5, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 1983
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 1986
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/ad;->w:[C

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

    goto :goto_2

    :cond_3
    move v3, v5

    :goto_2
    const/16 v5, 0x22

    if-eqz v0, :cond_4

    add-int/lit8 v6, v3, 0x1

    .line 1994
    aput-char v5, v4, v3

    move v3, v6

    .line 1997
    :cond_4
    aget-wide v6, p1, v1

    .line 1998
    invoke-static {v6, v7, v4, v3, v2}, Laaz;->a(D[CIZ)I

    move-result v6

    add-int/2addr v3, v6

    if-eqz v0, :cond_5

    add-int/lit8 v6, v3, 0x1

    .line 2002
    aput-char v5, v4, v3

    move v5, v6

    goto :goto_3

    :cond_5
    move v5, v3

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/16 p1, 0x5d

    .line 2005
    aput-char p1, v4, v5

    add-int/2addr v5, v2

    .line 2006
    iput v5, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final a([F)V
    .locals 7

    if-nez p1, :cond_0

    .line 1869
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->s()V

    return-void

    .line 1873
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

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
    iget v3, p0, Lcom/alibaba/fastjson2/ad;->n:I

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
    iget-object v5, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 1878
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 1881
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson2/ad;->w:[C

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

    goto :goto_3

    :cond_4
    move v3, v5

    :goto_3
    const/16 v5, 0x22

    if-eqz v0, :cond_5

    add-int/lit8 v6, v3, 0x1

    .line 1889
    aput-char v5, v4, v3

    move v3, v6

    .line 1892
    :cond_5
    aget v6, p1, v1

    .line 1893
    invoke-static {v6, v4, v3, v2}, Laaz;->a(F[CIZ)I

    move-result v6

    add-int/2addr v3, v6

    if-eqz v0, :cond_6

    add-int/lit8 v6, v3, 0x1

    .line 1897
    aput-char v5, v4, v3

    move v5, v6

    goto :goto_4

    :cond_6
    move v5, v3

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    const/16 p1, 0x5d

    .line 1900
    aput-char p1, v4, v5

    add-int/2addr v5, v2

    .line 1901
    iput v5, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final a([I)V
    .locals 7

    if-nez p1, :cond_0

    .line 1574
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->q()V

    return-void

    .line 1578
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

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
    iget v3, p0, Lcom/alibaba/fastjson2/ad;->n:I

    .line 1581
    array-length v4, p1

    mul-int/lit8 v4, v4, 0xd

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    .line 1582
    iget-object v5, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 1583
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 1586
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/ad;->w:[C

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

    goto :goto_2

    :cond_3
    move v3, v5

    :goto_2
    if-eqz v0, :cond_4

    add-int/lit8 v5, v3, 0x1

    .line 1594
    iget-char v6, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char v6, v4, v3

    move v3, v5

    .line 1596
    :cond_4
    aget v5, p1, v1

    invoke-static {v4, v3, v5}, Labe;->c([CII)I

    move-result v3

    if-eqz v0, :cond_5

    add-int/lit8 v5, v3, 0x1

    .line 1598
    iget-char v6, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char v6, v4, v3

    goto :goto_3

    :cond_5
    move v5, v3

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/16 p1, 0x5d

    .line 1602
    aput-char p1, v4, v5

    add-int/2addr v5, v2

    .line 1603
    iput v5, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final a([J)V
    .locals 8

    if-nez p1, :cond_0

    .line 1681
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->q()V

    return-void

    .line 1685
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v1, v0, 0x2

    .line 1686
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x17

    add-int/2addr v1, v2

    .line 1687
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 1688
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 1691
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

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
    iget-object v5, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/ab$a;->l:J

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/alibaba/fastjson2/ad;->a(JJ)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v6, v2, 0x1

    .line 1701
    iget-char v7, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char v7, v1, v2

    move v2, v6

    .line 1703
    :cond_3
    invoke-static {v1, v2, v3, v4}, Labe;->a([CIJ)I

    move-result v2

    if-eqz v5, :cond_4

    add-int/lit8 v3, v2, 0x1

    .line 1705
    iget-char v4, p0, Lcom/alibaba/fastjson2/ad;->j:C

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
    iput v2, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final a([Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    .line 1118
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->s()V

    return-void

    .line 1122
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->m()V

    const/4 v0, 0x0

    .line 1123
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    if-eqz v0, :cond_1

    .line 1125
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->o()V

    .line 1128
    :cond_1
    aget-object v1, p1, v0

    if-nez v1, :cond_3

    .line 1130
    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson2/ad;->b(J)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    .line 1131
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/ad;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 1133
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->q()V

    goto :goto_1

    .line 1137
    :cond_3
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/ad;->d(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1139
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->n()V

    return-void
.end method

.method public final a(Ljava/nio/charset/Charset;)[B
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 2449
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/ad;->n:I

    if-ge v1, v2, :cond_1

    .line 2450
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

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
    iget p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    new-array p1, p1, [B

    .line 2462
    :goto_2
    iget v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    if-ge v0, v1, :cond_3

    .line 2463
    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

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

    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    iget v3, p0, Lcom/alibaba/fastjson2/ad;->n:I

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

.method public final b(B)V
    .locals 5

    .line 1608
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

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
    iget v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v2, v1, 0x7

    .line 1612
    iget-object v3, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 1613
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 1616
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    if-eqz v0, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 1618
    iget-char v4, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char v4, v2, v1

    move v1, v3

    .line 1620
    :cond_2
    invoke-static {v2, v1, p1}, Labe;->c([CII)I

    move-result p1

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    .line 1622
    iget-char v1, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char v1, v2, p1

    move p1, v0

    .line 1624
    :cond_3
    iput p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final b(C)V
    .locals 6

    .line 1384
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v1, v0, 0x8

    .line 1386
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1387
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 1390
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    add-int/lit8 v2, v0, 0x1

    .line 1391
    iget-char v3, p0, Lcom/alibaba/fastjson2/ad;->j:C

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

    goto/16 :goto_3

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

    goto :goto_3

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

    goto :goto_3

    .line 1401
    :cond_1
    aput-char v3, v1, v2

    add-int/lit8 v0, v2, 0x1

    .line 1402
    aput-char p1, v1, v0

    goto :goto_0

    .line 1395
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson2/ad;->j:C

    if-ne p1, v0, :cond_3

    add-int/lit8 v0, v2, 0x1

    .line 1396
    aput-char v3, v1, v2

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    add-int/lit8 v2, v0, 0x1

    .line 1398
    aput-char p1, v1, v0

    move v0, v2

    .line 1493
    :goto_3
    iget-char p1, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1494
    iput v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

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

.method public final b(III)V
    .locals 4

    .line 2207
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v1, v0, 0xd

    .line 2209
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 2210
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 2213
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    add-int/lit8 v2, v0, 0x1

    .line 2214
    iget-char v3, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char v3, v1, v0

    .line 2215
    invoke-static {v1, v2, p1, p2, p3}, Labe;->a([CIIII)I

    move-result p1

    .line 2216
    iget-char p2, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char p2, v1, p1

    add-int/lit8 p1, p1, 0x1

    .line 2217
    iput p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final b(IIIIII)V
    .locals 3

    .line 2050
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v0, v0, 0x15

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 2052
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    .line 2053
    iget v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    .line 2054
    iget-char v2, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char v2, v0, v1

    if-ltz p1, :cond_0

    const/16 v2, 0x270f

    if-gt p1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 2058
    invoke-static {v0, v1, p1, p2, p3}, Labe;->a([CIIII)I

    move-result p1

    const/16 p2, 0x20

    .line 2059
    aput-char p2, v0, p1

    add-int/lit8 p2, p1, 0x1

    .line 2060
    invoke-static {v0, p2, p4, p5, p6}, Labe;->b([CIIII)V

    add-int/lit8 p2, p1, 0x9

    .line 2061
    iget-char p3, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char p3, v0, p2

    add-int/lit8 p1, p1, 0xa

    .line 2062
    iput p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void

    .line 2056
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Only 4 digits numbers are supported. Provided: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final b(Ljava/math/BigInteger;J)V
    .locals 10

    if-nez p1, :cond_0

    .line 1237
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->t()V

    return-void

    .line 1241
    :cond_0
    invoke-static {p1}, Labo;->b(Ljava/math/BigInteger;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    cmp-long v0, p2, v1

    if-nez v0, :cond_1

    .line 1242
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/ad;->e(J)V

    return-void

    :cond_1
    const/16 v0, 0xa

    .line 1246
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1248
    iget-object v3, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/ab$a;->l:J

    or-long/2addr p2, v3

    .line 1249
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->BrowserCompatible:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v3, p2

    cmp-long v3, v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-static {p1}, Labo;->c(Ljava/math/BigInteger;)Z

    move-result p1

    if-nez p1, :cond_2

    move p1, v4

    goto :goto_0

    :cond_2
    move p1, v5

    .line 1250
    :goto_0
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->WriteLongAsString:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

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
    iget p2, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 1255
    iget-object p2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    .line 1256
    iget p3, p0, Lcom/alibaba/fastjson2/ad;->n:I

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
    iput p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 14

    if-nez p1, :cond_0

    .line 2585
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->s()V

    return-void

    .line 2589
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->ReferenceDetection:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->PrettyFormat:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v0, v2

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v0, v2

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v0, v2

    .line 2594
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$a;->l:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2595
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 2596
    invoke-interface/range {v2 .. v8}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 2600
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v1, v1

    const/4 v4, 0x1

    if-ne v0, v1, :cond_2

    .line 2601
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 2603
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lcom/alibaba/fastjson2/ad;->n:I

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
    iget v5, p0, Lcom/alibaba/fastjson2/ad;->n:I

    iget-object v6, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v6, v6

    if-ne v5, v6, :cond_3

    .line 2610
    iget v5, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/2addr v5, v4

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 2612
    :cond_3
    iget-object v5, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    iget v6, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/alibaba/fastjson2/ad;->n:I

    const/16 v7, 0x2c

    aput-char v7, v5, v6

    :cond_4
    if-nez v9, :cond_5

    .line 2617
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->q()V

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

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson2/ad;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 2627
    :cond_6
    const-class v6, Ljava/lang/Integer;

    if-ne v5, v6, :cond_7

    .line 2628
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson2/ad;->a(Ljava/lang/Integer;)V

    goto :goto_1

    .line 2632
    :cond_7
    const-class v6, Ljava/lang/Long;

    if-ne v5, v6, :cond_8

    .line 2633
    check-cast v9, Ljava/lang/Long;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson2/ad;->a(Ljava/lang/Long;)V

    goto :goto_1

    .line 2637
    :cond_8
    const-class v6, Ljava/lang/Boolean;

    if-ne v5, v6, :cond_9

    .line 2638
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/ad;->b(Z)V

    goto :goto_1

    .line 2642
    :cond_9
    const-class v6, Ljava/math/BigDecimal;

    if-ne v5, v6, :cond_a

    .line 2643
    check-cast v9, Ljava/math/BigDecimal;

    const/4 v5, 0x0

    invoke-virtual {p0, v9, v2, v3, v5}, Lcom/alibaba/fastjson2/ad;->a(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    goto :goto_1

    .line 2647
    :cond_a
    const-class v6, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v5, v6, :cond_b

    .line 2648
    check-cast v9, Lcom/alibaba/fastjson2/JSONArray;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson2/ad;->b(Ljava/util/List;)V

    goto :goto_1

    .line 2652
    :cond_b
    const-class v6, Lcom/alibaba/fastjson2/e;

    if-ne v5, v6, :cond_c

    .line 2653
    check-cast v9, Lcom/alibaba/fastjson2/e;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson2/ad;->a(Lcom/alibaba/fastjson2/e;)V

    goto :goto_1

    .line 2657
    :cond_c
    iget-object v6, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    invoke-virtual {v6, v5, v5}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object v8, p0

    .line 2658
    invoke-interface/range {v7 .. v13}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v5, v0

    goto/16 :goto_0

    .line 2660
    :cond_d
    iget p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v0, v0

    if-ne p1, v0, :cond_e

    .line 2661
    iget p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 2663
    :cond_e
    iget-object p1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    const/16 v1, 0x5d

    aput-char v1, p1, v0

    return-void
.end method

.method public b(Z)V
    .locals 8

    .line 2736
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v0, v0, 0x5

    .line 2737
    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 2738
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 2741
    :cond_0
    iget-object v3, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    .line 2742
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    .line 2743
    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v4, Lcom/alibaba/fastjson2/ab$b;->WriteBooleanAsNumber:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/ab$b;->mask:J

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
    sget-object v2, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->c:J

    int-to-long v6, v0

    const/4 v1, 0x1

    shl-long/2addr v6, v1

    add-long/2addr v4, v6

    if-eqz p1, :cond_4

    sget-wide v6, Labe;->d:J

    goto :goto_1

    :cond_4
    sget-wide v6, Labe;->f:J

    :goto_1
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v1, v0, 0x4

    .line 2752
    :goto_2
    iput v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final b([B)V
    .locals 10

    if-nez p1, :cond_0

    .line 1159
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->s()V

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
    iget v2, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 1166
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 1168
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    add-int/lit8 v3, v2, 0x1

    .line 1169
    iget-char v4, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char v4, v0, v2

    .line 1171
    array-length v2, p1

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x3

    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    :goto_0
    if-ge v3, v2, :cond_1

    add-int/lit8 v6, v3, 0x1

    .line 1175
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v3, v6

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v3, v7

    .line 1178
    sget-object v7, Lcom/alibaba/fastjson2/d;->t:[C

    ushr-int/lit8 v8, v3, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-char v7, v7, v8

    aput-char v7, v0, v5

    add-int/lit8 v7, v5, 0x1

    .line 1179
    sget-object v8, Lcom/alibaba/fastjson2/d;->t:[C

    ushr-int/lit8 v9, v3, 0xc

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    aput-char v8, v0, v7

    add-int/lit8 v7, v5, 0x2

    .line 1180
    sget-object v8, Lcom/alibaba/fastjson2/d;->t:[C

    ushr-int/lit8 v9, v3, 0x6

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    aput-char v8, v0, v7

    add-int/lit8 v7, v5, 0x3

    .line 1181
    sget-object v8, Lcom/alibaba/fastjson2/d;->t:[C

    and-int/lit8 v3, v3, 0x3f

    aget-char v3, v8, v3

    aput-char v3, v0, v7

    add-int/lit8 v5, v5, 0x4

    move v3, v6

    goto :goto_0

    .line 1186
    :cond_1
    array-length v3, p1

    sub-int/2addr v3, v2

    if-lez v3, :cond_4

    .line 1189
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xa

    if-ne v3, v1, :cond_2

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget-byte p1, p1, v4

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 v4, p1, 0x2

    :cond_2
    or-int p1, v2, v4

    .line 1192
    sget-object v2, Lcom/alibaba/fastjson2/d;->t:[C

    shr-int/lit8 v4, p1, 0xc

    aget-char v2, v2, v4

    aput-char v2, v0, v5

    add-int/lit8 v2, v5, 0x1

    .line 1193
    sget-object v4, Lcom/alibaba/fastjson2/d;->t:[C

    ushr-int/lit8 v6, p1, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v4, v4, v6

    aput-char v4, v0, v2

    add-int/lit8 v2, v5, 0x2

    const/16 v4, 0x3d

    if-ne v3, v1, :cond_3

    .line 1194
    sget-object v1, Lcom/alibaba/fastjson2/d;->t:[C

    and-int/lit8 p1, p1, 0x3f

    aget-char p1, v1, p1

    goto :goto_1

    :cond_3
    move p1, v4

    :goto_1
    aput-char p1, v0, v2

    add-int/lit8 p1, v5, 0x3

    .line 1195
    aput-char v4, v0, p1

    add-int/lit8 v5, v5, 0x4

    .line 1199
    :cond_4
    iget-char p1, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char p1, v0, v5

    add-int/lit8 v5, v5, 0x1

    .line 1200
    iput v5, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final b([C)V
    .locals 6

    .line 1518
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    .line 1519
    array-length v1, p1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/alibaba/fastjson2/ad;->t:I

    add-int/2addr v1, v2

    .line 1520
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1521
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 1524
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/ad;->l:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1525
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/ad;->l:Z

    move v3, v0

    goto :goto_1

    .line 1527
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x2c

    .line 1528
    aput-char v4, v1, v0

    .line 1529
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/ad;->s:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, v3, 0x1

    const/16 v4, 0xa

    .line 1530
    aput-char v4, v1, v3

    move v3, v0

    move v0, v2

    .line 1531
    :goto_0
    iget v4, p0, Lcom/alibaba/fastjson2/ad;->t:I

    if-ge v0, v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x9

    .line 1532
    aput-char v5, v1, v3

    add-int/lit8 v0, v0, 0x1

    move v3, v4

    goto :goto_0

    .line 1536
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1537
    array-length p1, p1

    add-int/2addr v3, p1

    iput v3, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final b([CII)V
    .locals 4

    if-nez p1, :cond_0

    .line 2706
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->r()V

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
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x2

    .line 2721
    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 2722
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 2725
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/ad;->n:I

    iget-char v2, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char v2, v0, v1

    .line 2726
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2727
    iget p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    .line 2728
    iget-object p1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    iget p2, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/alibaba/fastjson2/ad;->n:I

    iget-char p3, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char p3, p1, p2

    return-void

    .line 2732
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ad;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final c(C)V
    .locals 3

    .line 1499
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 1500
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 1502
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/ad;->n:I

    aput-char p1, v0, v1

    return-void
.end method

.method public final c(III)V
    .locals 9

    .line 2222
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v1, v0, 0xa

    .line 2224
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 2225
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 2228
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    .line 2229
    iget-char v3, p0, Lcom/alibaba/fastjson2/ad;->j:C

    int-to-byte v3, v3

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 2230
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->c:J

    add-int/lit8 v6, v0, 0x1

    int-to-long v6, v6

    const/4 v8, 0x1

    shl-long/2addr v6, v8

    add-long/2addr v4, v6

    sget-object v6, Labe;->l:[I

    aget p1, v6, p1

    invoke-virtual {v3, v2, v4, v5, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 p1, v0, 0x3

    const/16 v3, 0x3a

    .line 2231
    aput-char v3, v2, p1

    .line 2232
    sget-object p1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->c:J

    add-int/lit8 v6, v0, 0x4

    int-to-long v6, v6

    shl-long/2addr v6, v8

    add-long/2addr v4, v6

    sget-object v6, Labe;->l:[I

    aget p2, v6, p2

    invoke-virtual {p1, v2, v4, v5, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 p1, v0, 0x6

    .line 2233
    aput-char v3, v2, p1

    .line 2234
    sget-object p1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v3, Labf;->c:J

    add-int/lit8 p2, v0, 0x7

    int-to-long v5, p2

    shl-long/2addr v5, v8

    add-long/2addr v3, v5

    sget-object p2, Labe;->l:[I

    aget p2, p2, p3

    invoke-virtual {p1, v2, v3, v4, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v0, 0x9

    .line 2235
    iget-char p1, p0, Lcom/alibaba/fastjson2/ad;->j:C

    int-to-byte p1, p1

    int-to-char p1, p1

    aput-char p1, v2, v0

    .line 2236
    iput v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final c([B)V
    .locals 10

    if-nez p1, :cond_0

    .line 1206
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->q()V

    return-void

    .line 1210
    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3

    .line 1212
    iget v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    .line 1213
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 1214
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->w:[C

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
    iput v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final close()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    .line 92
    array-length v1, v0

    const/high16 v2, 0x100000

    if-le v1, v2, :cond_0

    return-void

    .line 96
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/d;->z:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->x:Lcom/alibaba/fastjson2/d$a;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final d(I)V
    .locals 5

    .line 1650
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

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
    iget v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v2, v1, 0xd

    .line 1654
    iget-object v3, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 1655
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 1658
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    if-eqz v0, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 1660
    iget-char v4, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char v4, v2, v1

    move v1, v3

    .line 1662
    :cond_2
    invoke-static {v2, v1, p1}, Labe;->c([CII)I

    move-result p1

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    .line 1664
    iget-char v1, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char v1, v2, p1

    move p1, v0

    .line 1666
    :cond_3
    iput p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 9

    if-nez p1, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ad;->r()V

    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->EscapeNoneAscii:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

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
    iget-object v5, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v7, Lcom/alibaba/fastjson2/ab$b;->BrowserSecure:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v5, v7

    cmp-long v2, v5, v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v1

    .line 357
    :goto_1
    iget-char v3, p0, Lcom/alibaba/fastjson2/ad;->j:C

    .line 359
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 360
    iget v6, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x2

    .line 361
    iget-object v7, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v7, v7

    if-lt v6, v7, :cond_3

    .line 362
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson2/ad;->e(I)V

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
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    .line 380
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

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
    iput v6, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void

    .line 389
    :cond_8
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ad;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final d([B)V
    .locals 1

    .line 2478
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final e(I)V
    .locals 2

    .line 1557
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->w:[C

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
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->k:I

    sub-int v0, p1, v0

    if-gtz v0, :cond_1

    .line 1568
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

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

.method public final e(J)V
    .locals 9

    .line 1807
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    .line 1808
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alibaba/fastjson2/ad;->a(JJ)Z

    move-result v2

    .line 1809
    iget v3, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v4, v3, 0x17

    .line 1811
    iget-object v5, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v5, v5

    if-lt v4, v5, :cond_0

    .line 1812
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 1815
    :cond_0
    iget-object v4, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    if-eqz v2, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 1817
    iget-char v6, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char v6, v4, v3

    move v3, v5

    .line 1819
    :cond_1
    invoke-static {v4, v3, p1, p2}, Labe;->a([CIJ)I

    move-result v3

    if-eqz v2, :cond_2

    add-int/lit8 p1, v3, 0x1

    .line 1821
    iget-char p2, p0, Lcom/alibaba/fastjson2/ad;->j:C

    aput-char p2, v4, v3

    goto :goto_0

    .line 1822
    :cond_2
    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v5, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v5, v0

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_3

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->NotWriteNumberClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v5, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

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

    :cond_3
    move p1, v3

    .line 1828
    :goto_0
    iput p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final e([B)V
    .locals 1

    .line 2364
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Ljava/lang/String;)V
    .locals 3

    .line 1144
    iput-object p1, p0, Lcom/alibaba/fastjson2/ad;->r:Ljava/lang/String;

    .line 1146
    sget-object v0, Lcom/alibaba/fastjson2/ad;->u:[C

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/alibaba/fastjson2/ad;->a([CII)V

    .line 1147
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ad;->d(Ljava/lang/String;)V

    .line 1148
    iget p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    .line 1149
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v0, v0

    if-ne p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 1150
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    const/16 v1, 0x7d

    aput-char v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    .line 1153
    iput p1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method protected final g(Ljava/lang/String;)V
    .locals 13

    .line 393
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 394
    iget-char v1, p0, Lcom/alibaba/fastjson2/ad;->j:C

    .line 395
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v4, Lcom/alibaba/fastjson2/ab$b;->EscapeNoneAscii:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/ab$b;->mask:J

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
    iget-object v7, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v9, Lcom/alibaba/fastjson2/ab$b;->BrowserSecure:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v9, v9, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v7, v9

    cmp-long v4, v7, v4

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v3

    .line 398
    :goto_1
    iget v5, p0, Lcom/alibaba/fastjson2/ad;->n:I

    mul-int/lit8 v7, v0, 0x6

    add-int/2addr v7, v5

    add-int/lit8 v7, v7, 0x2

    .line 399
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 401
    iget-object v7, p0, Lcom/alibaba/fastjson2/ad;->w:[C

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
    sget-object v10, Lcom/alibaba/fastjson2/ad;->b:[C

    ushr-int/lit8 v11, v5, 0xc

    and-int/lit8 v11, v11, 0xf

    aget-char v10, v10, v11

    aput-char v10, v7, v9

    add-int/lit8 v9, v8, 0x3

    .line 523
    sget-object v10, Lcom/alibaba/fastjson2/ad;->b:[C

    ushr-int/lit8 v11, v5, 0x8

    and-int/lit8 v11, v11, 0xf

    aget-char v10, v10, v11

    aput-char v10, v7, v9

    add-int/lit8 v9, v8, 0x4

    .line 524
    sget-object v10, Lcom/alibaba/fastjson2/ad;->b:[C

    ushr-int/lit8 v11, v5, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v10, v10, v11

    aput-char v10, v7, v9

    add-int/lit8 v9, v8, 0x5

    .line 525
    sget-object v10, Lcom/alibaba/fastjson2/ad;->b:[C

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
    sget-object v10, Lcom/alibaba/fastjson2/ad;->b:[C

    ushr-int/lit8 v11, v5, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v10, v10, v11

    aput-char v10, v7, v9

    add-int/lit8 v9, v8, 0x5

    .line 512
    sget-object v10, Lcom/alibaba/fastjson2/ad;->b:[C

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
    iput v8, p0, Lcom/alibaba/fastjson2/ad;->n:I

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

.method public final k()V
    .locals 5

    .line 121
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->m:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    iget v1, v1, Lcom/alibaba/fastjson2/ab$a;->n:I

    if-ge v0, v1, :cond_3

    .line 125
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->m:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/ad;->m:I

    .line 126
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/ad;->l:Z

    .line 128
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    .line 129
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/ad;->s:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alibaba/fastjson2/ad;->t:I

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v2, v0

    .line 130
    iget-object v3, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 131
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x7b

    .line 135
    aput-char v4, v2, v0

    .line 137
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/ad;->s:Z

    if-eqz v0, :cond_2

    .line 138
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->t:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/ad;->t:I

    add-int/lit8 v0, v3, 0x1

    const/16 v1, 0xa

    .line 139
    aput-char v1, v2, v3

    const/4 v1, 0x0

    :goto_1
    move v3, v0

    .line 140
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->t:I

    if-ge v1, v0, :cond_2

    add-int/lit8 v0, v3, 0x1

    const/16 v4, 0x9

    .line 141
    aput-char v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 144
    :cond_2
    iput v3, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void

    .line 122
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level too large : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/fastjson2/ad;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l()V
    .locals 7

    .line 149
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->m:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/ad;->m:I

    .line 150
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    .line 151
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/ad;->s:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alibaba/fastjson2/ad;->t:I

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v2, v0

    .line 152
    iget-object v3, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 153
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    .line 157
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/ad;->s:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 158
    iget v3, p0, Lcom/alibaba/fastjson2/ad;->t:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/alibaba/fastjson2/ad;->t:I

    add-int/lit8 v3, v0, 0x1

    const/16 v5, 0xa

    .line 159
    aput-char v5, v2, v0

    move v0, v4

    .line 160
    :goto_1
    iget v5, p0, Lcom/alibaba/fastjson2/ad;->t:I

    if-ge v0, v5, :cond_2

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x9

    .line 161
    aput-char v6, v2, v3

    add-int/lit8 v0, v0, 0x1

    move v3, v5

    goto :goto_1

    :cond_2
    move v0, v3

    :cond_3
    const/16 v3, 0x7d

    .line 165
    aput-char v3, v2, v0

    add-int/2addr v0, v1

    .line 166
    iput v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    .line 167
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/ad;->l:Z

    return-void
.end method

.method public final m()V
    .locals 5

    .line 192
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->m:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->c:Lcom/alibaba/fastjson2/ab$a;

    iget v1, v1, Lcom/alibaba/fastjson2/ab$a;->n:I

    if-ge v0, v1, :cond_3

    .line 196
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->m:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/ad;->m:I

    .line 197
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    .line 198
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/ad;->s:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alibaba/fastjson2/ad;->t:I

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v2, v0

    .line 199
    iget-object v3, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 200
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 203
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x5b

    .line 204
    aput-char v4, v2, v0

    .line 205
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/ad;->s:Z

    if-eqz v0, :cond_2

    .line 206
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->t:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/ad;->t:I

    add-int/lit8 v0, v3, 0x1

    const/16 v1, 0xa

    .line 207
    aput-char v1, v2, v3

    const/4 v1, 0x0

    :goto_1
    move v3, v0

    .line 208
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->t:I

    if-ge v1, v0, :cond_2

    add-int/lit8 v0, v3, 0x1

    const/16 v4, 0x9

    .line 209
    aput-char v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    :cond_2
    iput v3, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void

    .line 193
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level too large : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/fastjson2/ad;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n()V
    .locals 7

    .line 217
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->m:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/ad;->m:I

    .line 218
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    .line 219
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/ad;->s:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alibaba/fastjson2/ad;->t:I

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v2, v0

    .line 220
    iget-object v3, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 221
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 224
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    .line 225
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/ad;->s:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 226
    iget v3, p0, Lcom/alibaba/fastjson2/ad;->t:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/alibaba/fastjson2/ad;->t:I

    add-int/lit8 v3, v0, 0x1

    const/16 v5, 0xa

    .line 227
    aput-char v5, v2, v0

    move v0, v4

    .line 228
    :goto_1
    iget v5, p0, Lcom/alibaba/fastjson2/ad;->t:I

    if-ge v0, v5, :cond_2

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x9

    .line 229
    aput-char v6, v2, v3

    add-int/lit8 v0, v0, 0x1

    move v3, v5

    goto :goto_1

    :cond_2
    move v0, v3

    :cond_3
    const/16 v3, 0x5d

    .line 232
    aput-char v3, v2, v0

    add-int/2addr v0, v1

    .line 233
    iput v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    .line 234
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/ad;->l:Z

    return-void
.end method

.method public final o()V
    .locals 5

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/ad;->l:Z

    .line 173
    iget v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    .line 174
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/ad;->s:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alibaba/fastjson2/ad;->t:I

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    add-int/2addr v2, v1

    .line 175
    iget-object v3, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 176
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x2c

    .line 180
    aput-char v4, v2, v1

    .line 181
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/ad;->s:Z

    if-eqz v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    const/16 v4, 0xa

    .line 182
    aput-char v4, v2, v3

    :goto_1
    move v3, v1

    .line 183
    iget v1, p0, Lcom/alibaba/fastjson2/ad;->t:I

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    const/16 v4, 0x9

    .line 184
    aput-char v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 187
    :cond_2
    iput v3, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final p()V
    .locals 3

    .line 111
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    .line 112
    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 113
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    const/16 v2, 0x3a

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 116
    iput v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final q()V
    .locals 8

    .line 67
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v0, v0, 0x4

    .line 68
    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 69
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ad;->e(I)V

    .line 72
    :cond_0
    sget-object v2, Labf;->a:Lsun/misc/Unsafe;

    iget-object v3, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    sget-wide v0, Labf;->c:J

    iget v4, p0, Lcom/alibaba/fastjson2/ad;->n:I

    int-to-long v4, v4

    const/4 v6, 0x1

    shl-long/2addr v4, v6

    add-long/2addr v4, v0

    sget-wide v6, Labe;->b:J

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 73
    iget v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/ad;->n:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 2416
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    iget v2, p0, Lcom/alibaba/fastjson2/ad;->n:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final v()[B
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 2422
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/ad;->n:I

    if-ge v1, v2, :cond_1

    .line 2423
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

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
    iget v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    new-array v1, v1, [B

    .line 2431
    :goto_2
    iget v2, p0, Lcom/alibaba/fastjson2/ad;->n:I

    if-ge v0, v2, :cond_2

    .line 2432
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    aget-char v2, v2, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-object v1

    .line 2436
    :cond_3
    iget v1, p0, Lcom/alibaba/fastjson2/ad;->n:I

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    .line 2437
    iget-object v2, p0, Lcom/alibaba/fastjson2/ad;->w:[C

    iget v3, p0, Lcom/alibaba/fastjson2/ad;->n:I

    invoke-static {v2, v0, v3, v1, v0}, Labe;->a([CII[BI)I

    move-result v0

    .line 2438
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method
