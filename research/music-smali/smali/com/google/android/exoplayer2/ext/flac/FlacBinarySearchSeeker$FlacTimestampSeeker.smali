.class final Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;
.super Ljava/lang/Object;
.source "FlacBinarySearchSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FlacTimestampSeeker"
.end annotation


# instance fields
.field private final decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$1;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;-><init>(Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;)V

    return-void
.end method


# virtual methods
.method public searchForTimestamp(Lcom/google/android/exoplayer2/extractor/ExtractorInput;JLcom/google/android/exoplayer2/extractor/BinarySearchSeeker$OutputFrameHolder;)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 9

    .line 75
    iget-object v0, p4, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$OutputFrameHolder;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 76
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    .line 77
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->reset(J)V

    .line 79
    :try_start_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->decodeSampleWithBacktrackPosition(Ljava/nio/ByteBuffer;J)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni$FlacFrameDecodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-nez v0, :cond_0

    .line 87
    sget-object p1, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->NO_TIMESTAMP_IN_RANGE_RESULT:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    return-object p1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->getLastFrameFirstSampleIndex()J

    move-result-wide v3

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->getNextFrameFirstSampleIndex()J

    move-result-wide v5

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->getDecodePosition()J

    move-result-wide v7

    cmp-long v0, v3, p2

    if-gtz v0, :cond_1

    cmp-long v0, v5, p2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 99
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->getLastFrameTimestamp()J

    move-result-wide p2

    iput-wide p2, p4, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$OutputFrameHolder;->timeUs:J

    .line 100
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->targetFoundResult(J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object p1

    return-object p1

    :cond_2
    cmp-long p1, v5, p2

    if-gtz p1, :cond_3

    .line 102
    invoke-static {v5, v6, v7, v8}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->underestimatedResult(JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object p1

    return-object p1

    .line 105
    :cond_3
    invoke-static {v3, v4, v1, v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->overestimatedResult(JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object p1

    return-object p1

    .line 84
    :catch_0
    sget-object p1, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->NO_TIMESTAMP_IN_RANGE_RESULT:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    return-object p1
.end method
