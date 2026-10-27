.class public Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;
.super Lorg/jaudiotagger/tag/datatype/AbstractString;
.source "TextEncodedStringNullTerminated.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/AbstractString;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/tag/datatype/AbstractString;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractString;-><init>(Lorg/jaudiotagger/tag/datatype/AbstractString;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 51
    instance-of v0, p1, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected getTextEncodingCharSet()Ljava/nio/charset/Charset;
    .locals 5

    .line 259
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v0

    .line 260
    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;->getCharsetForId(I)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 261
    sget-object v2, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "text encoding:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " charset:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    return-object v1
.end method

.method public readByteArray([BI)V
    .locals 7

    .line 66
    array-length v0, p1

    const-string v1, "Unable to find null terminated string"

    if-ge p2, v0, :cond_b

    .line 72
    sget-object v0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading from array starting from offset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->getTextEncodingCharSet()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 82
    array-length v2, p1

    sub-int/2addr v2, p2

    invoke-static {p1, p2, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 87
    sget-object v3, Lorg/jaudiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v0, :cond_1

    sget-object v3, Lorg/jaudiotagger/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v5

    .line 90
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 92
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    if-nez v3, :cond_5

    if-eqz v0, :cond_3

    .line 97
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 98
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 99
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    .line 100
    sget-object v2, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Null terminator found starting at:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :goto_2
    move v2, v4

    move v4, v5

    goto :goto_3

    .line 108
    :cond_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 110
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    if-nez v3, :cond_2

    .line 113
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 114
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 115
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v4, v2, -0x2

    .line 116
    sget-object v2, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UTF16:Null terminator found starting  at:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_2

    .line 128
    :cond_4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 129
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 130
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    .line 131
    sget-object v2, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UTF16:Should be two null terminator marks but only found one starting at:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-nez v0, :cond_2

    .line 143
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 145
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    goto/16 :goto_1

    :cond_6
    move v2, v4

    :goto_3
    if-eqz v4, :cond_a

    .line 157
    sget-object v1, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End Position is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "Offset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    sub-int/2addr v2, p2

    add-int/lit8 v1, v2, 0x1

    if-nez v0, :cond_7

    add-int/lit8 v1, v1, 0x1

    .line 166
    :cond_7
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->setSize(I)V

    .line 172
    sget-object v0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Text size is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    if-nez v2, :cond_8

    const-string p1, ""

    .line 175
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    goto :goto_4

    .line 180
    :cond_8
    invoke-static {p1, p2, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 181
    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object p2

    .line 183
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->getCorrectDecoder(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 184
    invoke-virtual {v0, p1, p2, v5}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 187
    sget-object v2, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem decoding text encoded null terminated string:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 189
    :cond_9
    invoke-virtual {v0, p2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    .line 190
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 191
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    .line 194
    :goto_4
    sget-object p1, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Read NullTerminatedString:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " size inc terminator:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-void

    .line 153
    :cond_a
    new-instance p1, Lorg/jaudiotagger/tag/InvalidDataTypeException;

    invoke-direct {p1, v1}, Lorg/jaudiotagger/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_b
    new-instance p1, Lorg/jaudiotagger/tag/InvalidDataTypeException;

    invoke-direct {p1, v1}, Lorg/jaudiotagger/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeByteArray()[B
    .locals 5

    .line 204
    sget-object v0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing NullTerminatedString."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->getTextEncodingCharSet()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 211
    :try_start_0
    sget-object v1, Lorg/jaudiotagger/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 213
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isEncodeUTF16BomAsLittleEndian()Z

    move-result v1

    const v3, 0xfeff

    if-eqz v1, :cond_0

    .line 215
    sget-object v1, Lorg/jaudiotagger/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 216
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v4}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 217
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v4}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 221
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    new-array v3, v3, [B

    .line 222
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v1, v3, v2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 226
    :cond_0
    sget-object v1, Lorg/jaudiotagger/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 227
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v4}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 228
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v4}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    new-array v3, v3, [B

    .line 233
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v1, v3, v2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 239
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v3}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 240
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v3}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    new-array v3, v3, [B

    .line 244
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v1, v3, v2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    array-length v0, v3

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->setSize(I)V

    return-object v3

    :catch_0
    move-exception v1

    .line 250
    sget-object v2, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 251
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
