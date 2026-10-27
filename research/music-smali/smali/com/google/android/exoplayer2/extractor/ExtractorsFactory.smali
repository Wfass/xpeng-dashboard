.class public interface abstract Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;
.super Ljava/lang/Object;
.source "ExtractorsFactory.java"


# virtual methods
.method public abstract createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
.end method

.method public createExtractors(Landroid/net/Uri;)[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 0

    .line 34
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;->createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p1

    return-object p1
.end method
