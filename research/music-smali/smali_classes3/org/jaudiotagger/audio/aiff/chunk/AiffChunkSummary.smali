.class public Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkSummary;
.super Ljava/lang/Object;
.source "AiffChunkSummary.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChunkBeforeStartingMetadataTag(Lorg/jaudiotagger/tag/aiff/AiffTag;)Lorg/jaudiotagger/audio/iff/ChunkSummary;
    .locals 5

    const/4 v0, 0x0

    .line 57
    :goto_0
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getChunkSummaryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 59
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getChunkSummaryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/audio/iff/ChunkSummary;

    .line 60
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getFileStartLocation()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 62
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getChunkSummaryList()Ljava/util/List;

    move-result-object p0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/iff/ChunkSummary;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isOnlyMetadataTagsAfterStartingMetadataTag(Lorg/jaudiotagger/tag/aiff/AiffTag;)Z
    .locals 9

    .line 21
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getChunkSummaryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/audio/iff/ChunkSummary;

    if-eqz v2, :cond_1

    .line 25
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getChunkId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->TAG:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    .line 32
    :cond_1
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getFileStartLocation()J

    move-result-wide v5

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-nez v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_2
    if-ne v2, v4, :cond_3

    return v4

    :cond_3
    return v1
.end method
