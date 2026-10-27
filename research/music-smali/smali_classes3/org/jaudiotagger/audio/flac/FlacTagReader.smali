.class public Lorg/jaudiotagger/audio/flac/FlacTagReader;
.super Ljava/lang/Object;
.source "FlacTagReader.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private vorbisCommentReader:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.audio.flac"

    .line 46
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagReader;->vorbisCommentReader:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;

    return-void
.end method


# virtual methods
.method public read(Ljava/io/File;)Lorg/jaudiotagger/tag/flac/FlacTag;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 56
    new-instance v5, Lorg/jaudiotagger/audio/flac/FlacStreamReader;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;-><init>(Ljava/nio/channels/FileChannel;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->findStream()V

    .line 61
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    move v0, v2

    :goto_0
    if-nez v0, :cond_7

    .line 66
    sget-object v0, Lorg/jaudiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lorg/jaudiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Looking for MetaBlockHeader at:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 71
    :cond_0
    invoke-static {v4}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->readHeader(Ljava/nio/channels/FileChannel;)Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 76
    :cond_1
    sget-object v7, Lorg/jaudiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 77
    sget-object v7, Lorg/jaudiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " Reading MetadataBlockHeader:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ending at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 83
    :cond_2
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 84
    sget-object v7, Lorg/jaudiotagger/audio/flac/FlacTagReader$1;->$SwitchMap$org$jaudiotagger$audio$flac$metadatablock$BlockType:[I

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    move-result-object v8

    invoke-virtual {v8}, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v1, :cond_5

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    .line 106
    sget-object v7, Lorg/jaudiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 107
    sget-object v7, Lorg/jaudiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Ignoring MetadataBlock:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 109
    :cond_3
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v7

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    invoke-virtual {v4, v7, v8}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 94
    :cond_4
    :try_start_2
    new-instance v7, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-direct {v7, v0, v4}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/nio/channels/FileChannel;)V

    .line 95
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/jaudiotagger/tag/InvalidFrameException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v7

    .line 99
    :try_start_3
    sget-object v8, Lorg/jaudiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "Unable to read picture metablock, ignoring"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/jaudiotagger/tag/InvalidFrameException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v7

    .line 97
    sget-object v8, Lorg/jaudiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "Unable to read picture metablock, ignoring:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :cond_5
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 88
    invoke-virtual {v4, v6}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 89
    iget-object v7, p0, Lorg/jaudiotagger/audio/flac/FlacTagReader;->vorbisCommentReader:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v7, v6, v2}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;->read([BZ)Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v6

    .line 113
    :cond_6
    :goto_1
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock()Z

    move-result v0

    goto/16 :goto_0

    .line 115
    :cond_7
    :goto_2
    sget-object p1, Lorg/jaudiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Audio should start at:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    if-nez v6, :cond_8

    .line 120
    invoke-static {}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createNewTag()Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v6

    .line 122
    :cond_8
    new-instance p1, Lorg/jaudiotagger/tag/flac/FlacTag;

    invoke-direct {p1, v6, v5}, Lorg/jaudiotagger/tag/flac/FlacTag;-><init>(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    new-array v0, v1, [Ljava/io/Closeable;

    aput-object v3, v0, v2

    invoke-static {v0}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v3, v0

    :goto_3
    new-array v0, v1, [Ljava/io/Closeable;

    aput-object v3, v0, v2

    invoke-static {v0}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    .line 126
    throw p1
.end method
