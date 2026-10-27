.class public Lorg/jaudiotagger/audio/wav/chunk/WavInfoChunk;
.super Ljava/lang/Object;
.source "WavInfoChunk.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private loggingName:Ljava/lang/String;

.field private wavInfoTag:Lorg/jaudiotagger/tag/wav/WavInfoTag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.audio.wav.WavInfoChunk"

    .line 20
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoChunk;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoChunk;->loggingName:Ljava/lang/String;

    .line 27
    new-instance p2, Lorg/jaudiotagger/tag/wav/WavInfoTag;

    invoke-direct {p2}, Lorg/jaudiotagger/tag/wav/WavInfoTag;-><init>()V

    iput-object p2, p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoChunk;->wavInfoTag:Lorg/jaudiotagger/tag/wav/WavInfoTag;

    .line 28
    iget-object p2, p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoChunk;->wavInfoTag:Lorg/jaudiotagger/tag/wav/WavInfoTag;

    invoke-virtual {p1, p2}, Lorg/jaudiotagger/tag/wav/WavTag;->setInfoTag(Lorg/jaudiotagger/tag/wav/WavInfoTag;)V

    return-void
.end method

.method private static isAlphabetic(I)Z
    .locals 1

    .line 91
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result p0

    const/16 v0, 0x43e

    shr-int p0, v0, p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public readChunks(Ljava/nio/ByteBuffer;)Z
    .locals 9

    .line 37
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    sget v1, Lorg/jaudiotagger/audio/iff/IffHeaderChunk;->TYPE_LENGTH:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_6

    .line 38
    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 43
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v3, 0x0

    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoChunk;->isAlphabetic(I)Z

    move-result v4

    const-string v5, "LISTINFO appears corrupt, ignoring:"

    const-string v6, ":"

    if-eqz v4, :cond_5

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoChunk;->isAlphabetic(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    .line 48
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoChunk;->isAlphabetic(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x3

    .line 49
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoChunk;->isAlphabetic(I)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_2

    .line 57
    :cond_2
    :try_start_0
    sget-object v4, Lorg/jaudiotagger/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v3, v1, v4}, Lorg/jaudiotagger/audio/generic/Utils;->getString(Ljava/nio/ByteBuffer;IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    sget-object v5, Lorg/jaudiotagger/audio/wav/chunk/WavInfoChunk;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoChunk;->loggingName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 64
    invoke-static {v0}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->getByCode(Ljava/lang/String;)Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 65
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->getFieldKey()Lorg/jaudiotagger/tag/FieldKey;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 67
    :try_start_1
    iget-object v0, p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoChunk;->wavInfoTag:Lorg/jaudiotagger/tag/wav/WavInfoTag;

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->getFieldKey()Lorg/jaudiotagger/tag/FieldKey;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v5, v2}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->setField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/jaudiotagger/tag/FieldDataInvalidException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 69
    sget-object v2, Lorg/jaudiotagger/audio/wav/chunk/WavInfoChunk;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoChunk;->loggingName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/FieldDataInvalidException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 74
    iget-object v2, p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoChunk;->wavInfoTag:Lorg/jaudiotagger/tag/wav/WavInfoTag;

    invoke-virtual {v2, v0, v4}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->addUnRecognizedField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    int-to-long v0, v1

    .line 78
    invoke-static {v0, v1}, Lorg/jaudiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 59
    sget-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoChunk;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoChunk;->loggingName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/BufferUnderflowException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3

    .line 51
    :cond_5
    :goto_2
    sget-object p1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoChunk;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoChunk;->loggingName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    return v3

    :cond_6
    return v2
.end method
