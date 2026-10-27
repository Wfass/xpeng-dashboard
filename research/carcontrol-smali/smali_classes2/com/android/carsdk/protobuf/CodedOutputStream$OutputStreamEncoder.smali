.class final Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;
.super Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/carsdk/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OutputStreamEncoder"
.end annotation


# instance fields
.field private final out:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 2259
    invoke-direct {p0, p2}, Lcom/android/carsdk/protobuf/CodedOutputStream$AbstractBufferedEncoder;-><init>(I)V

    const-string p2, "out"

    .line 2261
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2263
    iput-object p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->out:Ljava/io/OutputStream;

    return-void
.end method

.method private doFlush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2599
    iget-object v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 2600
    iput v3, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    return-void
.end method

.method private flushIfNotAvailable(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2593
    iget v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    .line 2594
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

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

    .line 2508
    iget v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    if-lez v0, :cond_0

    .line 2510
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

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

    .line 2402
    iget v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    iget v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    if-ne v0, v1, :cond_0

    .line 2403
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 2406
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer(B)V

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2555
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2556
    iget v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_0

    .line 2558
    iget-object v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2559
    iget p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2560
    iget p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    goto :goto_1

    .line 2564
    :cond_0
    iget v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v1, v2

    .line 2565
    iget-object v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v3, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v1

    .line 2567
    iget v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iput v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2568
    iget v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    .line 2569
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 2574
    :goto_0
    iget v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 2576
    iget-object v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v3, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2577
    iget-object v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v4, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    invoke-virtual {v1, v3, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 2578
    iget v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    sub-int/2addr v0, v1

    .line 2579
    iget v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    iget v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    goto :goto_0

    .line 2581
    :cond_1
    iget-object v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2582
    iput v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2583
    iget p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    :goto_1
    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2517
    iget v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    .line 2519
    iget-object v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2520
    iget p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2521
    iget p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    goto :goto_1

    .line 2525
    :cond_0
    iget v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v0, v1

    .line 2526
    iget-object v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 2529
    iget v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iput v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2530
    iget v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    .line 2531
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 2536
    iget v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    if-gt p3, v0, :cond_1

    .line 2538
    iget-object v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2539
    iput p3, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    goto :goto_0

    .line 2542
    :cond_1
    iget-object v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 2544
    :goto_0
    iget p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    :goto_1
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

    .line 2308
    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    const/4 v0, 0x0

    .line 2309
    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    int-to-byte p1, p2

    .line 2310
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer(B)V

    return-void
.end method

.method public writeByteArray(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2327
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeByteArray(I[BII)V

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

    .line 2334
    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2335
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeByteArrayNoTag([BII)V

    return-void
.end method

.method public writeByteArrayNoTag([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2354
    invoke-virtual {p0, p3}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2355
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->write([BII)V

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

    .line 2341
    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2342
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2343
    invoke-virtual {p0, p2}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeRawBytes(Ljava/nio/ByteBuffer;)V

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

    .line 2321
    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2322
    invoke-virtual {p0, p2}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeBytesNoTag(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method public writeBytesNoTag(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2348
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2349
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

    .line 2287
    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    const/4 v0, 0x5

    .line 2288
    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2289
    invoke-virtual {p0, p2}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferFixed32NoTag(I)V

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

    .line 2427
    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2428
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferFixed32NoTag(I)V

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

    .line 2301
    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    const/4 v0, 0x1

    .line 2302
    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2303
    invoke-virtual {p0, p2, p3}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferFixed64NoTag(J)V

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

    .line 2439
    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2440
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferFixed64NoTag(J)V

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

    .line 2273
    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    const/4 v0, 0x0

    .line 2274
    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2275
    invoke-virtual {p0, p2}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferInt32NoTag(I)V

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

    .line 2412
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 2415
    invoke-virtual {p0, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt64NoTag(J)V

    :goto_0
    return-void
.end method

.method public writeLazy(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2589
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->write(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public writeLazy([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2550
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->write([BII)V

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

    .line 2372
    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2373
    invoke-virtual {p0, p2}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeMessageNoTag(Lcom/android/carsdk/protobuf/MessageLite;)V

    return-void
.end method

.method public writeMessageNoTag(Lcom/android/carsdk/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2396
    invoke-interface {p1}, Lcom/android/carsdk/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2397
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

    .line 2379
    invoke-virtual {p0, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    const/4 v2, 0x2

    .line 2380
    invoke-virtual {p0, v2, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32(II)V

    .line 2381
    invoke-virtual {p0, v1, p2}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    const/4 p1, 0x4

    .line 2382
    invoke-virtual {p0, v0, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    return-void
.end method

.method public writeRawBytes(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2360
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2361
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->write([BII)V

    goto :goto_0

    .line 2363
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2364
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2365
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->write(Ljava/nio/ByteBuffer;)V

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

    .line 2388
    invoke-virtual {p0, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    const/4 v2, 0x2

    .line 2389
    invoke-virtual {p0, v2, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32(II)V

    .line 2390
    invoke-virtual {p0, v1, p2}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeBytes(ILcom/android/carsdk/protobuf/ByteString;)V

    const/4 p1, 0x4

    .line 2391
    invoke-virtual {p0, v0, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

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

    .line 2315
    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2316
    invoke-virtual {p0, p2}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeStringNoTag(Ljava/lang/String;)V

    return-void
.end method

.method public writeStringNoTag(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2448
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 2449
    invoke-static {v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int v2, v1, v0

    .line 2453
    iget v3, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    if-le v2, v3, :cond_0

    .line 2458
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 2459
    invoke-static {p1, v1, v2, v0}, Lcom/android/carsdk/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v0

    .line 2460
    invoke-virtual {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2461
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeLazy([BII)V

    return-void

    .line 2466
    :cond_0
    iget v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v3, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v0, v3

    if-le v2, v0, :cond_1

    .line 2468
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 2473
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    move-result v0

    .line 2474
    iget v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I
    :try_end_0
    .catch Lcom/android/carsdk/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v0, v1, :cond_2

    add-int v1, v2, v0

    .line 2478
    :try_start_1
    iput v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2479
    iget-object v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v3, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    iget v4, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v5, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v4, v5

    invoke-static {p1, v1, v3, v4}, Lcom/android/carsdk/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 2482
    iput v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int v3, v1, v2

    sub-int/2addr v3, v0

    .line 2484
    invoke-virtual {p0, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt32NoTag(I)V

    .line 2485
    iput v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    goto :goto_0

    .line 2487
    :cond_2
    invoke-static {p1}, Lcom/android/carsdk/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v3

    .line 2488
    invoke-virtual {p0, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt32NoTag(I)V

    .line 2489
    iget-object v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    invoke-static {p1, v0, v1, v3}, Lcom/android/carsdk/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2491
    :goto_0
    iget v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/Utf8$UnpairedSurrogateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2499
    :try_start_2
    new-instance v1, Lcom/android/carsdk/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 2495
    iget v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    iget v3, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    .line 2496
    iput v2, p0, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2497
    throw v0
    :try_end_2
    .catch Lcom/android/carsdk/protobuf/Utf8$UnpairedSurrogateException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    .line 2502
    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->inefficientWriteStringNoTag(Ljava/lang/String;Lcom/android/carsdk/protobuf/Utf8$UnpairedSurrogateException;)V

    :goto_1
    return-void
.end method

.method public writeTag(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2268
    invoke-static {p1, p2}, Lcom/android/carsdk/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

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

    .line 2280
    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    const/4 v0, 0x0

    .line 2281
    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2282
    invoke-virtual {p0, p2}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt32NoTag(I)V

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

    .line 2421
    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2422
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt32NoTag(I)V

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

    .line 2294
    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    const/4 v0, 0x0

    .line 2295
    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2296
    invoke-virtual {p0, p2, p3}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt64NoTag(J)V

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

    .line 2433
    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2434
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt64NoTag(J)V

    return-void
.end method
