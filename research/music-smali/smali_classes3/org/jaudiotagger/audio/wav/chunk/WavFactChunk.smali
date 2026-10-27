.class public Lorg/jaudiotagger/audio/wav/chunk/WavFactChunk;
.super Lorg/jaudiotagger/audio/iff/Chunk;
.source "WavFactChunk.java"


# instance fields
.field private info:Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

.field private isValid:Z


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/iff/ChunkHeader;Lorg/jaudiotagger/audio/generic/GenericAudioHeader;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/iff/Chunk;-><init>(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lorg/jaudiotagger/audio/wav/chunk/WavFactChunk;->isValid:Z

    .line 43
    iput-object p3, p0, Lorg/jaudiotagger/audio/wav/chunk/WavFactChunk;->info:Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    return-void
.end method


# virtual methods
.method public readChunk()Z
    .locals 3

    .line 48
    iget-object v0, p0, Lorg/jaudiotagger/audio/wav/chunk/WavFactChunk;->info:Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    iget-object v1, p0, Lorg/jaudiotagger/audio/wav/chunk/WavFactChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v1}, Lorg/jaudiotagger/audio/generic/Utils;->u(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setNoOfSamples(Ljava/lang/Long;)V

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fact Chunk:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Is valid?: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/jaudiotagger/audio/wav/chunk/WavFactChunk;->isValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
