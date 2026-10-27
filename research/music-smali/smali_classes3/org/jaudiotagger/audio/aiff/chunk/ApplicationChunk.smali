.class public Lorg/jaudiotagger/audio/aiff/chunk/ApplicationChunk;
.super Lorg/jaudiotagger/audio/iff/Chunk;
.source "ApplicationChunk.java"


# static fields
.field private static final SIGNATURE_PDOS:Ljava/lang/String; = "pdos"

.field private static final SIGNATURE_STOC:Ljava/lang/String; = "stoc"


# instance fields
.field private aiffHeader:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;)V
    .locals 0

    .line 32
    invoke-direct {p0, p2, p1}, Lorg/jaudiotagger/audio/iff/Chunk;-><init>(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    .line 33
    iput-object p3, p0, Lorg/jaudiotagger/audio/aiff/chunk/ApplicationChunk;->aiffHeader:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;

    return-void
.end method


# virtual methods
.method public readChunk()Z
    .locals 4

    .line 45
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/chunk/ApplicationChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "stoc"

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pdos"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/jaudiotagger/audio/aiff/chunk/ApplicationChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lorg/jaudiotagger/audio/generic/Utils;->readPascalString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    .line 58
    :goto_1
    iget-object v2, p0, Lorg/jaudiotagger/audio/aiff/chunk/ApplicationChunk;->aiffHeader:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->addApplicationIdentifier(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
