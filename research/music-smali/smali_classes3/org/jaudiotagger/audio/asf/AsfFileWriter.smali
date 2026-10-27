.class public Lorg/jaudiotagger/audio/asf/AsfFileWriter;
.super Lorg/jaudiotagger/audio/generic/AudioFileWriter;
.source "AsfFileWriter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;-><init>()V

    return-void
.end method

.method private searchExistence(Lorg/jaudiotagger/audio/asf/data/ChunkContainer;[Lorg/jaudiotagger/audio/asf/data/MetadataContainer;)[Z
    .locals 3

    .line 59
    array-length v0, p2

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 60
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 62
    aget-object v2, p2, v1

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lorg/jaudiotagger/audio/asf/data/GUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->hasChunkByGUID(Lorg/jaudiotagger/audio/asf/data/GUID;)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected deleteTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 1

    .line 52
    new-instance p1, Lorg/jaudiotagger/tag/asf/AsfTag;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/asf/AsfTag;-><init>(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/jaudiotagger/audio/asf/AsfFileWriter;->writeTag(Lorg/jaudiotagger/audio/AudioFile;Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void
.end method

.method protected writeTag(Lorg/jaudiotagger/audio/AudioFile;Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 7

    .line 90
    invoke-static {p3}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->readTagHeader(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/asf/data/AsfHeader;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 91
    invoke-virtual {p3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 97
    new-instance v0, Lorg/jaudiotagger/tag/asf/AsfTag;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lorg/jaudiotagger/tag/asf/AsfTag;-><init>(Lorg/jaudiotagger/tag/Tag;Z)V

    .line 98
    invoke-static {v0}, Lorg/jaudiotagger/audio/asf/util/TagConverter;->distributeMetadata(Lorg/jaudiotagger/tag/asf/AsfTag;)[Lorg/jaudiotagger/audio/asf/data/MetadataContainer;

    move-result-object p2

    .line 99
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/asf/AsfFileWriter;->searchExistence(Lorg/jaudiotagger/audio/asf/data/ChunkContainer;[Lorg/jaudiotagger/audio/asf/data/MetadataContainer;)[Z

    move-result-object v0

    .line 100
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->getExtendedHeader()Lorg/jaudiotagger/audio/asf/data/AsfExtendedHeader;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/asf/AsfFileWriter;->searchExistence(Lorg/jaudiotagger/audio/asf/data/ChunkContainer;[Lorg/jaudiotagger/audio/asf/data/MetadataContainer;)[Z

    move-result-object p1

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 105
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_4

    .line 107
    new-instance v5, Lorg/jaudiotagger/audio/asf/io/WriteableChunkModifer;

    aget-object v6, p2, v4

    invoke-direct {v5, v6}, Lorg/jaudiotagger/audio/asf/io/WriteableChunkModifer;-><init>(Lorg/jaudiotagger/audio/asf/io/WriteableChunk;)V

    .line 108
    aget-boolean v6, v0, v4

    if-eqz v6, :cond_0

    .line 111
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 113
    :cond_0
    aget-boolean v6, p1, v4

    if-eqz v6, :cond_1

    .line 116
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    if-eqz v4, :cond_3

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    if-ne v4, v1, :cond_2

    goto :goto_1

    .line 131
    :cond_2
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 125
    :cond_3
    :goto_1
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 137
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 139
    new-instance p1, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderModifier;

    invoke-direct {p1, v3}, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderModifier;-><init>(Ljava/util/List;)V

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_5
    new-instance p1, Lorg/jaudiotagger/audio/asf/io/AsfStreamer;

    invoke-direct {p1}, Lorg/jaudiotagger/audio/asf/io/AsfStreamer;-><init>()V

    new-instance p2, Lorg/jaudiotagger/audio/asf/io/RandomAccessFileInputstream;

    invoke-direct {p2, p3}, Lorg/jaudiotagger/audio/asf/io/RandomAccessFileInputstream;-><init>(Ljava/io/RandomAccessFile;)V

    new-instance p3, Lorg/jaudiotagger/audio/asf/io/RandomAccessFileOutputStream;

    invoke-direct {p3, p4}, Lorg/jaudiotagger/audio/asf/io/RandomAccessFileOutputStream;-><init>(Ljava/io/RandomAccessFile;)V

    invoke-virtual {p1, p2, p3, v2}, Lorg/jaudiotagger/audio/asf/io/AsfStreamer;->createModifiedCopy(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/util/List;)V

    return-void
.end method
