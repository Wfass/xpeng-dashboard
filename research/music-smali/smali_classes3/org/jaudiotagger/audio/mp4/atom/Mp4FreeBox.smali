.class public Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;
.super Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;
.source "Mp4FreeBox.java"


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 24
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    .line 28
    :try_start_0
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->header:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 29
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    add-int/lit8 v1, p1, 0x8

    .line 30
    invoke-static {v1}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 31
    sget-object v1, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->FREE:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jaudiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 32
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->header:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->update(Ljava/nio/ByteBuffer;)V

    .line 35
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    .line 38
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->dataBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
