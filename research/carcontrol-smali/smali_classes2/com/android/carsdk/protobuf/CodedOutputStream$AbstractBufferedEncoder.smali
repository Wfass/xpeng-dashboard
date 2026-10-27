.class abstract Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;
.super Lcom/android/carsdk/protobuf/CodedOutputStream;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/carsdk/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractBufferedEncoder"
.end annotation


# instance fields
.field final buffer:[B

.field final limit:I

.field position:I

.field totalBytesWritten:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1794
    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;-><init>(Lcom/android/carsdk/protobuf/CodedOutputStream$1;)V

    if-ltz p1, :cond_0

    const/16 v0, 0x14

    .line 1802
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    .line 1803
    array-length p1, p1

    iput p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->limit:I

    return-void

    .line 1796
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bufferSize must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final buffer(B)V
    .locals 3

    .line 1823
    iget-object v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    iget v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    aput-byte p1, v0, v1

    .line 1824
    iget p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    return-void
.end method

.method final bufferFixed32NoTag(I)V
    .locals 4

    .line 1923
    iget-object v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    iget v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 1924
    iput v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 1925
    iput v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 1926
    iput v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    .line 1927
    iget p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    return-void
.end method

.method final bufferFixed64NoTag(J)V
    .locals 8

    .line 1935
    iget-object v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    iget v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    const-wide/16 v3, 0xff

    and-long v5, p1, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 1936
    iput v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    const/16 v5, 0x8

    shr-long v6, p1, v5

    and-long/2addr v6, v3

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 1937
    iput v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    const/16 v6, 0x10

    shr-long v6, p1, v6

    and-long/2addr v6, v3

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 1938
    iput v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    const/16 v6, 0x18

    shr-long v6, p1, v6

    and-long/2addr v3, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 1939
    iput v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 1940
    iput v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 1941
    iput v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 1942
    iput v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    .line 1943
    iget p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    return-void
.end method

.method final bufferInt32NoTag(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 1841
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferUInt32NoTag(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 1844
    invoke-virtual {p0, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferUInt64NoTag(J)V

    :goto_0
    return-void
.end method

.method final bufferTag(II)V
    .locals 0

    .line 1832
    invoke-static {p1, p2}, Lcom/android/carsdk/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferUInt32NoTag(I)V

    return-void
.end method

.method final bufferUInt32NoTag(I)V
    .locals 9

    .line 1853
    invoke-static {}, Lcom/android/carsdk/protobuf/CodedOutputStream;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1854
    invoke-static {}, Lcom/android/carsdk/protobuf/CodedOutputStream;->access$200()J

    move-result-wide v0

    iget v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    move-wide v2, v0

    :goto_0
    and-int/lit8 v4, p1, -0x80

    const-wide/16 v5, 0x1

    if-nez v4, :cond_0

    .line 1858
    invoke-static {}, Lcom/android/carsdk/protobuf/CodedOutputStream;->access$300()Lsun/misc/Unsafe;

    move-result-object v4

    iget-object v7, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    add-long/2addr v5, v2

    int-to-byte p1, p1

    invoke-virtual {v4, v7, v2, v3, p1}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    sub-long/2addr v5, v0

    long-to-int p1, v5

    .line 1866
    iget v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    .line 1867
    iget v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    return-void

    .line 1861
    :cond_0
    invoke-static {}, Lcom/android/carsdk/protobuf/CodedOutputStream;->access$300()Lsun/misc/Unsafe;

    move-result-object v4

    iget-object v7, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    add-long/2addr v5, v2

    and-int/lit8 v8, p1, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-virtual {v4, v7, v2, v3, v8}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    ushr-int/lit8 p1, p1, 0x7

    move-wide v2, v5

    goto :goto_0

    :cond_1
    :goto_1
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    .line 1871
    iget-object v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    iget v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 1872
    iget p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    return-void

    .line 1875
    :cond_2
    iget-object v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    iget v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1876
    iget v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1
.end method

.method final bufferUInt64NoTag(J)V
    .locals 16

    move-object/from16 v0, p0

    .line 1888
    invoke-static {}, Lcom/android/carsdk/protobuf/CodedOutputStream;->access$100()Z

    move-result v1

    const/4 v2, 0x7

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x80

    if-eqz v1, :cond_1

    .line 1889
    invoke-static {}, Lcom/android/carsdk/protobuf/CodedOutputStream;->access$200()J

    move-result-wide v7

    iget v1, v0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    int-to-long v9, v1

    add-long/2addr v7, v9

    move-wide/from16 v9, p1

    move-wide v11, v7

    :goto_0
    and-long v13, v9, v5

    cmp-long v1, v13, v3

    const-wide/16 v13, 0x1

    if-nez v1, :cond_0

    .line 1893
    invoke-static {}, Lcom/android/carsdk/protobuf/CodedOutputStream;->access$300()Lsun/misc/Unsafe;

    move-result-object v1

    iget-object v2, v0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    add-long/2addr v13, v11

    long-to-int v3, v9

    int-to-byte v3, v3

    invoke-virtual {v1, v2, v11, v12, v3}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    sub-long/2addr v13, v7

    long-to-int v1, v13

    .line 1901
    iget v2, v0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    .line 1902
    iget v2, v0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    return-void

    .line 1896
    :cond_0
    invoke-static {}, Lcom/android/carsdk/protobuf/CodedOutputStream;->access$300()Lsun/misc/Unsafe;

    move-result-object v1

    iget-object v15, v0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    add-long/2addr v13, v11

    long-to-int v3, v9

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-virtual {v1, v15, v11, v12, v3}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    ushr-long/2addr v9, v2

    move-wide v11, v13

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_1
    move-wide/from16 v3, p1

    :goto_1
    and-long v7, v3, v5

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-nez v1, :cond_2

    .line 1906
    iget-object v1, v0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    iget v2, v0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    add-int/lit8 v5, v2, 0x1

    iput v5, v0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1907
    iget v1, v0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    return-void

    .line 1910
    :cond_2
    iget-object v1, v0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    iget v7, v0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    long-to-int v8, v3

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 1911
    iget v1, v0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    ushr-long/2addr v3, v2

    goto :goto_1
.end method

.method public final getTotalBytesWritten()I
    .locals 1

    .line 1815
    iget v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    return v0
.end method

.method public final spaceLeft()I
    .locals 2

    .line 1808
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
