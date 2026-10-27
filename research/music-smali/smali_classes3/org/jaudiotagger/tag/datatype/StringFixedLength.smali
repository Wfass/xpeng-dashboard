.class public Lorg/jaudiotagger/tag/datatype/StringFixedLength;
.super Lorg/jaudiotagger/tag/datatype/AbstractString;
.source "StringFixedLength.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V
    .locals 1

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/AbstractString;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    if-ltz p3, :cond_0

    .line 60
    invoke-virtual {p0, p3}, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->setSize(I)V

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "size is less than zero: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/StringFixedLength;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractString;-><init>(Lorg/jaudiotagger/tag/datatype/AbstractString;)V

    .line 66
    iget p1, p1, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->size:I

    iput p1, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->size:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 75
    instance-of v0, p1, Lorg/jaudiotagger/tag/datatype/StringFixedLength;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 79
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;

    .line 80
    iget v2, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->size:I

    iget v0, v0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->size:I

    if-ne v2, v0, :cond_1

    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected getTextEncodingCharSet()Ljava/nio/charset/Charset;
    .locals 5

    .line 224
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v0

    .line 225
    invoke-static {}, Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;->getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jaudiotagger/tag/id3/valuepair/TextEncoding;->getCharsetForId(I)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 226
    sget-object v2, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->logger:Ljava/util/logging/Logger;

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
    .locals 4

    .line 91
    sget-object v0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading from array from offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->getTextEncodingCharSet()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 98
    sget-object v1, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Array length is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "offset is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "Size is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 101
    array-length v1, p1

    sub-int/2addr v1, p2

    iget v2, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->size:I

    if-lt v1, v2, :cond_1

    .line 105
    iget v1, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->size:I

    invoke-static {p1, p2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 110
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->value:Ljava/lang/Object;

    goto :goto_0

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "String is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_1
    new-instance p1, Lorg/jaudiotagger/tag/InvalidDataTypeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byte array is to small to retrieve string of declared length:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->size:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 114
    sget-object p2, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    const-string p1, ""

    .line 115
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->value:Ljava/lang/Object;

    .line 117
    :goto_0
    sget-object p1, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Read StringFixedLength:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->value:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-void
.end method

.method public writeByteArray()[B
    .locals 8

    const-string v0, "There was a problem writing the following StringFixedlength Field:"

    .line 135
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->value:Ljava/lang/Object;

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 137
    sget-object v0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->logger:Ljava/util/logging/Logger;

    const-string v1, "Value of StringFixedlength Field is null using default value instead"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 138
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->size:I

    new-array v0, v0, [B

    .line 139
    :goto_0
    iget v1, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->size:I

    if-ge v3, v1, :cond_0

    .line 141
    aput-byte v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 148
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->getTextEncodingCharSet()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 150
    sget-object v4, Lorg/jaudiotagger/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 153
    sget-object v1, Lorg/jaudiotagger/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0xfeff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_1

    .line 158
    :cond_2
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 159
    iget-object v4, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v1, :cond_6

    .line 178
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    iget v5, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->size:I

    if-ne v4, v5, :cond_3

    .line 180
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    .line 181
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v0, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v0

    .line 185
    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    iget v5, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->size:I

    const-string v6, " but field was defined with length of:"

    const-string v7, " when converted to bytes has length of:"

    if-le v4, v5, :cond_4

    .line 187
    sget-object v2, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->value:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->size:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " too long so stripping extra length"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 188
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->size:I

    new-array v0, v0, [B

    .line 189
    iget v2, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->size:I

    invoke-virtual {v1, v0, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v0

    .line 195
    :cond_4
    sget-object v4, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->value:Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->size:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " too short so padding with spaces to make up extra length"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 197
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->size:I

    new-array v0, v0, [B

    .line 198
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v1, v0, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 200
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    :goto_2
    iget v3, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->size:I

    if-ge v1, v3, :cond_5

    .line 202
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-object v0

    .line 209
    :cond_6
    sget-object v0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There was a serious problem writing the following StringFixedlength Field:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->value:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":using default value instead"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 210
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->size:I

    new-array v0, v0, [B

    .line 211
    :goto_3
    iget v1, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->size:I

    if-ge v3, v1, :cond_7

    .line 213
    aput-byte v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    return-object v0

    :catch_0
    move-exception v1

    .line 164
    sget-object v4, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->value:Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "using default value instead"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 165
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->size:I

    new-array v0, v0, [B

    .line 166
    :goto_4
    iget v1, p0, Lorg/jaudiotagger/tag/datatype/StringFixedLength;->size:I

    if-ge v3, v1, :cond_8

    .line 168
    aput-byte v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    return-object v0
.end method
