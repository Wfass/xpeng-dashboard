.class final Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;
.super Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/carsdk/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteOutputEncoder"
.end annotation


# instance fields
.field private final out:Lcom/android/carsdk/protobuf/ByteOutput;


# direct methods
.method constructor <init>(Lcom/android/carsdk/protobuf/ByteOutput;I)V
    .locals 0

    .line 1956
    invoke-direct {p0, p2}, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;-><init>(I)V

    const-string p2, "out"

    .line 1958
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1960
    iput-object p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/android/carsdk/protobuf/ByteOutput;

    return-void
.end method

.method private doFlush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2246
    iget-object v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/android/carsdk/protobuf/ByteOutput;

    iget-object v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->buffer:[B

    iget v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/carsdk/protobuf/ByteOutput;->write([BII)V

    .line 2247
    iput v3, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    return-void
.end method

.method private flushIfNotAvailable(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2240
    iget v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->limit:I

    iget v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    .line 2241
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->doFlush()V

    :cond_0
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2203
    iget v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    if-lez v0, :cond_0

    .line 2205
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->doFlush()V

    :cond_0
    return-void
.end method

.method public write(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2099
    iget v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    iget v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->limit:I

    if-ne v0, v1, :cond_0

    .line 2100
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->doFlush()V

    .line 2103
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->buffer(B)V

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2225
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->flush()V

    .line 2226
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2227
    iget-object v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/android/carsdk/protobuf/ByteOutput;

    invoke-virtual {v1, p1}, Lcom/android/carsdk/protobuf/ByteOutput;->write(Ljava/nio/ByteBuffer;)V

    .line 2228
    iget p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2211
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->flush()V

    .line 2212
    iget-object v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/android/carsdk/protobuf/ByteOutput;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/carsdk/protobuf/ByteOutput;->write([BII)V

    .line 2213
    iget p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    return-void
.end method

.method public writeBool(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 2005
    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    const/4 v0, 0x0

    .line 2006
    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferTag(II)V

    int-to-byte p1, p2

    .line 2007
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->buffer(B)V

    return-void
.end method

.method public writeByteArray(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2024
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeByteArray(I[BII)V

    return-void
.end method

.method public writeByteArray(I[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 2031
    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2032
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeByteArrayNoTag([BII)V

    return-void
.end method

.method public writeByteArrayNoTag([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2051
    invoke-virtual {p0, p3}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    .line 2052
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->write([BII)V

    return-void
.end method

.method public writeByteBuffer(ILjava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 2038
    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2039
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    .line 2040
    invoke-virtual {p0, p2}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeRawBytes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public writeBytes(ILcom/android/carsdk/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 2018
    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2019
    invoke-virtual {p0, p2}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeBytesNoTag(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method public writeBytesNoTag(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2045
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    .line 2046
    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/ByteString;->writeTo(Lcom/android/carsdk/protobuf/ByteOutput;)V

    return-void
.end method

.method public writeFixed32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    .line 1984
    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    const/4 v0, 0x5

    .line 1985
    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferTag(II)V

    .line 1986
    invoke-virtual {p0, p2}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferFixed32NoTag(I)V

    return-void
.end method

.method public writeFixed32NoTag(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 2124
    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2125
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferFixed32NoTag(I)V

    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x12

    .line 1998
    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    const/4 v0, 0x1

    .line 1999
    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferTag(II)V

    .line 2000
    invoke-virtual {p0, p2, p3}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferFixed64NoTag(J)V

    return-void
.end method

.method public writeFixed64NoTag(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 2136
    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2137
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferFixed64NoTag(J)V

    return-void
.end method

.method public writeInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 1970
    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    const/4 v0, 0x0

    .line 1971
    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferTag(II)V

    .line 1972
    invoke-virtual {p0, p2}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferInt32NoTag(I)V

    return-void
.end method

.method public writeInt32NoTag(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 2109
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 2112
    invoke-virtual {p0, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt64NoTag(J)V

    :goto_0
    return-void
.end method

.method public writeLazy(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2233
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->flush()V

    .line 2234
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2235
    iget-object v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/android/carsdk/protobuf/ByteOutput;

    invoke-virtual {v1, p1}, Lcom/android/carsdk/protobuf/ByteOutput;->writeLazy(Ljava/nio/ByteBuffer;)V

    .line 2236
    iget p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    return-void
.end method

.method public writeLazy([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2218
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->flush()V

    .line 2219
    iget-object v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/android/carsdk/protobuf/ByteOutput;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/carsdk/protobuf/ByteOutput;->writeLazy([BII)V

    .line 2220
    iget p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    return-void
.end method

.method public writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 2069
    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2070
    invoke-virtual {p0, p2}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeMessageNoTag(Lcom/android/carsdk/protobuf/MessageLite;)V

    return-void
.end method

.method public writeMessageNoTag(Lcom/android/carsdk/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2093
    invoke-interface {p1}, Lcom/android/carsdk/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    .line 2094
    invoke-interface {p1, p0}, Lcom/android/carsdk/protobuf/MessageLite;->writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public writeMessageSetExtension(ILcom/android/carsdk/protobuf/MessageLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 2076
    invoke-virtual {p0, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    const/4 v2, 0x2

    .line 2077
    invoke-virtual {p0, v2, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32(II)V

    .line 2078
    invoke-virtual {p0, v1, p2}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    const/4 p1, 0x4

    .line 2079
    invoke-virtual {p0, v0, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    return-void
.end method

.method public writeRawBytes(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2057
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2058
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->write([BII)V

    goto :goto_0

    .line 2060
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2061
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2062
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->write(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method public writeRawMessageSetExtension(ILcom/android/carsdk/protobuf/ByteString;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 2085
    invoke-virtual {p0, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    const/4 v2, 0x2

    .line 2086
    invoke-virtual {p0, v2, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32(II)V

    .line 2087
    invoke-virtual {p0, v1, p2}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeBytes(ILcom/android/carsdk/protobuf/ByteString;)V

    const/4 p1, 0x4

    .line 2088
    invoke-virtual {p0, v0, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 2012
    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2013
    invoke-virtual {p0, p2}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeStringNoTag(Ljava/lang/String;)V

    return-void
.end method

.method public writeStringNoTag(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2144
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 2145
    invoke-static {v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int v2, v1, v0

    .line 2149
    iget v3, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->limit:I

    if-le v2, v3, :cond_0

    .line 2154
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 2155
    invoke-static {p1, v1, v2, v0}, Lcom/android/carsdk/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result p1

    .line 2156
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    .line 2157
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeLazy([BII)V

    return-void

    .line 2162
    :cond_0
    iget v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->limit:I

    iget v3, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    sub-int/2addr v0, v3

    if-le v2, v0, :cond_1

    .line 2164
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->doFlush()V

    .line 2167
    :cond_1
    iget v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2171
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->computeUInt32SizeNoTag(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    add-int v1, v0, v2

    .line 2174
    iput v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2175
    iget-object v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->buffer:[B

    iget v3, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    iget v4, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->limit:I

    iget v5, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    sub-int/2addr v4, v5

    invoke-static {p1, v1, v3, v4}, Lcom/android/carsdk/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 2178
    iput v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    .line 2180
    invoke-virtual {p0, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferUInt32NoTag(I)V

    .line 2181
    iput v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2182
    iget v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    goto :goto_0

    .line 2184
    :cond_2
    invoke-static {p1}, Lcom/android/carsdk/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v1

    .line 2185
    invoke-virtual {p0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferUInt32NoTag(I)V

    .line 2186
    iget-object v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->buffer:[B

    iget v3, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    invoke-static {p1, v2, v3, v1}, Lcom/android/carsdk/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v2

    iput v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2187
    iget v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I
    :try_end_0
    .catch Lcom/android/carsdk/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2197
    new-instance v0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v1

    .line 2191
    iget v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    iget v3, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    sub-int/2addr v3, v0

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    .line 2192
    iput v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2195
    invoke-virtual {p0, p1, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->inefficientWriteStringNoTag(Ljava/lang/String;Lcom/android/carsdk/protobuf/Utf8$UnpairedSurrogateException;)V

    :goto_0
    return-void
.end method

.method public writeTag(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1965
    invoke-static {p1, p2}, Lcom/android/carsdk/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    return-void
.end method

.method public writeUInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 1977
    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    const/4 v0, 0x0

    .line 1978
    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferTag(II)V

    .line 1979
    invoke-virtual {p0, p2}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferUInt32NoTag(I)V

    return-void
.end method

.method public writeUInt32NoTag(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 2118
    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2119
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferUInt32NoTag(I)V

    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 1991
    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    const/4 v0, 0x0

    .line 1992
    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferTag(II)V

    .line 1993
    invoke-virtual {p0, p2, p3}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferUInt64NoTag(J)V

    return-void
.end method

.method public writeUInt64NoTag(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 2130
    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2131
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferUInt64NoTag(J)V

    return-void
.end method
