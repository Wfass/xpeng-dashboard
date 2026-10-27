.class public final synthetic Lcom/google/android/exoplayer2/extractor/flac/-$$Lambda$dfPcA-R5GqFfSrDl_N1BAu7Gd1k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/extractor/flac/FlacStreamMetadata;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/flac/FlacStreamMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/-$$Lambda$dfPcA-R5GqFfSrDl_N1BAu7Gd1k;->f$0:Lcom/google/android/exoplayer2/extractor/flac/FlacStreamMetadata;

    return-void
.end method


# virtual methods
.method public final timeUsToTargetTime(J)J
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/-$$Lambda$dfPcA-R5GqFfSrDl_N1BAu7Gd1k;->f$0:Lcom/google/android/exoplayer2/extractor/flac/FlacStreamMetadata;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/flac/FlacStreamMetadata;->getSampleNumber(J)J

    move-result-wide p1

    return-wide p1
.end method
