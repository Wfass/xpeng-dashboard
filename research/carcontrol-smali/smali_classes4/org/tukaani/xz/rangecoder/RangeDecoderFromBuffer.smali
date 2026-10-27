.class public final Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;
.super Lorg/tukaani/xz/rangecoder/RangeDecoder;


# static fields
.field private static final INIT_SIZE:I = 0x5


# instance fields
.field private final buf:[B

.field private end:I

.field private pos:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->pos:I

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->end:I

    add-int/lit8 p1, p1, -0x5

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->buf:[B

    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 2

    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->pos:I

    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->end:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInBufferOK()Z
    .locals 2

    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->pos:I

    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->end:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public normalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->range:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    :try_start_0
    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->code:I

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->buf:[B

    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->pos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->code:I

    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->range:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->range:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public prepareInputBuffer(Ljava/io/DataInputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    if-lt p2, v0, :cond_1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->code:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->range:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->pos:I

    sub-int/2addr p2, v0

    iput p2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->end:I

    iget-object v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->buf:[B

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/DataInputStream;->readFully([BII)V

    return-void

    :cond_0
    new-instance p1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p1
.end method
