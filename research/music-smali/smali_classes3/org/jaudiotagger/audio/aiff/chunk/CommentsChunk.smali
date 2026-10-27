.class public Lorg/jaudiotagger/audio/aiff/chunk/CommentsChunk;
.super Lorg/jaudiotagger/audio/iff/Chunk;
.source "CommentsChunk.java"


# static fields
.field private static final COUNT_LENGTH:I = 0x2

.field private static final MARKERID_LENGTH:I = 0x2

.field private static final TIMESTAMP_LENGTH:I = 0x4


# instance fields
.field private aiffHeader:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;)V
    .locals 0

    .line 65
    invoke-direct {p0, p2, p1}, Lorg/jaudiotagger/audio/iff/Chunk;-><init>(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    .line 66
    iput-object p3, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommentsChunk;->aiffHeader:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;

    return-void
.end method


# virtual methods
.method public readChunk()Z
    .locals 8

    .line 77
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommentsChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->u(S)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 82
    iget-object v3, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommentsChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v3}, Lorg/jaudiotagger/audio/generic/Utils;->u(I)J

    move-result-wide v3

    .line 83
    invoke-static {v3, v4}, Lorg/jaudiotagger/audio/aiff/AiffUtil;->timestampToDate(J)Ljava/util/Date;

    move-result-object v3

    .line 84
    iget-object v4, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommentsChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-static {v4}, Lorg/jaudiotagger/audio/generic/Utils;->u(S)I

    .line 85
    iget-object v4, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommentsChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-static {v4}, Lorg/jaudiotagger/audio/generic/Utils;->u(S)I

    move-result v4

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommentsChunk;->chunkData:Ljava/nio/ByteBuffer;

    sget-object v7, Lorg/jaudiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v6, v1, v4, v7}, Lorg/jaudiotagger/audio/generic/Utils;->getString(Ljava/nio/ByteBuffer;IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/jaudiotagger/audio/aiff/AiffUtil;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 90
    iget-object v4, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommentsChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    .line 92
    :cond_0
    iget-object v4, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommentsChunk;->aiffHeader:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;

    invoke-virtual {v4, v3}, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->addComment(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
