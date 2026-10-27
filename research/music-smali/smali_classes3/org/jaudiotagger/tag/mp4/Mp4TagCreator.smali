.class public Lorg/jaudiotagger/tag/mp4/Mp4TagCreator;
.super Lorg/jaudiotagger/audio/generic/AbstractTagCreator;
.source "Mp4TagCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AbstractTagCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lorg/jaudiotagger/tag/Tag;I)Ljava/nio/ByteBuffer;
    .locals 5

    .line 85
    :try_start_0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 86
    invoke-interface {p1}, Lorg/jaudiotagger/tag/Tag;->getFields()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 88
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/TagField;

    .line 92
    instance-of v3, v2, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 106
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    :try_start_1
    sget-object v3, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-interface {p1, v3}, Lorg/jaudiotagger/tag/Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jaudiotagger/tag/TagField;

    .line 112
    check-cast v4, Lorg/jaudiotagger/tag/mp4/Mp4TagField;

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->getRawContentDataOnly()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Lorg/jaudiotagger/tag/KeyNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 122
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 123
    array-length v3, v2

    add-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 124
    sget-object v3, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARTWORK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/jaudiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 125
    invoke-virtual {p2, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 118
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unable to find COVERART Key"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_2
    invoke-interface {v2}, Lorg/jaudiotagger/tag/TagField;->getRawContent()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 135
    :cond_3
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 136
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 137
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->ILST:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 138
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 141
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 148
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
