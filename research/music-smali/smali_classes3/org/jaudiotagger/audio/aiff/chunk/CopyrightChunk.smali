.class public Lorg/jaudiotagger/audio/aiff/chunk/CopyrightChunk;
.super Lorg/jaudiotagger/audio/aiff/chunk/TextChunk;
.source "CopyrightChunk.java"


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/aiff/chunk/TextChunk;-><init>(Lorg/jaudiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;)V

    return-void
.end method


# virtual methods
.method public readChunk()Z
    .locals 2

    .line 35
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/chunk/CopyrightChunk;->aiffAudioHeader:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/aiff/chunk/CopyrightChunk;->readChunkText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->setCopyright(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
