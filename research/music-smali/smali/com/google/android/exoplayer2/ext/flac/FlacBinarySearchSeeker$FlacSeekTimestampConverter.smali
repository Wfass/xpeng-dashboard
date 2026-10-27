.class final Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacSeekTimestampConverter;
.super Ljava/lang/Object;
.source "FlacBinarySearchSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FlacSeekTimestampConverter"
.end annotation


# instance fields
.field private final streamMetadata:Lcom/google/android/exoplayer2/util/FlacStreamMetadata;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/FlacStreamMetadata;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacSeekTimestampConverter;->streamMetadata:Lcom/google/android/exoplayer2/util/FlacStreamMetadata;

    return-void
.end method


# virtual methods
.method public timeUsToTargetTime(J)J
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacSeekTimestampConverter;->streamMetadata:Lcom/google/android/exoplayer2/util/FlacStreamMetadata;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->getSampleIndex(J)J

    move-result-wide p1

    return-wide p1
.end method
