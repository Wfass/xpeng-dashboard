.class public final Lcom/google/android/exoplayer2/extractor/flac/FlacMetadataReader$FlacStreamMetadataHolder;
.super Ljava/lang/Object;
.source "FlacMetadataReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/flac/FlacMetadataReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlacStreamMetadataHolder"
.end annotation


# instance fields
.field public flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/flac/FlacStreamMetadata;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/flac/FlacStreamMetadata;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/flac/FlacStreamMetadata;

    return-void
.end method
