.class public Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;
.super Lorg/jaudiotagger/tag/datatype/AbstractString;
.source "TextEncodedStringSizeTerminated.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/AbstractString;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractString;-><init>(Lorg/jaudiotagger/tag/datatype/AbstractString;)V

    return-void
.end method

.method public static splitByNullSeperator(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "\\u0000"

    .line 296
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 297
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 299
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 300
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, ""

    .line 301
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method


# virtual methods
.method public addValue(Ljava/lang/String;)V
    .locals 2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected checkTrailingNull(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 216
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isRemoveTrailingTerminatorOnWrite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-nez p2, :cond_0

    .line 218
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 220
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 54
    :cond_0
    instance-of v1, p1, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;

    if-eqz v1, :cond_1

    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNumberOfValues()I
    .locals 1

    .line 322
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->splitByNullSeperator(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getValueAtIndex(I)Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->splitByNullSeperator(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 335
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getValueWithoutTrailingNull()Ljava/lang/String;
    .locals 4

    .line 351
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->splitByNullSeperator(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 352
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 353
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    if-eqz v2, :cond_0

    const-string v3, "\u0000"

    .line 355
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->splitByNullSeperator(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readByteArray([BI)V
    .locals 6

    .line 73
    sget-object v0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading from array from offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 79
    array-length v0, p1

    sub-int/2addr v0, p2

    new-array v0, v0, [B

    .line 80
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 83
    array-length v1, p1

    sub-int/2addr v1, p2

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 86
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->getCorrectDecoder(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    const/4 v3, 0x1

    .line 87
    invoke-virtual {v2, v0, v1, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    sget-object v3, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decoding error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 91
    :cond_0
    invoke-virtual {v2, v1}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    .line 92
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 96
    sget-object v0, Lorg/jaudiotagger/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->getTextEncodingCharSet()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string/jumbo v2, "\ufeff"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "\ufffe"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->value:Ljava/lang/Object;

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->value:Ljava/lang/Object;

    .line 102
    :goto_0
    array-length p1, p1

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->setSize(I)V

    .line 103
    sget-object p1, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Read SizeTerminatedString:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->value:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " size:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->size:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    return-void
.end method

.method protected stripTrailingNull()V
    .locals 3

    .line 197
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isRemoveTrailingTerminatorOnWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 199
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 200
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 201
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 202
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public writeByteArray()[B
    .locals 9

    .line 236
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->getTextEncodingCharSet()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 239
    :try_start_0
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->stripTrailingNull()V

    .line 242
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 244
    sget-object v3, Lorg/jaudiotagger/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isEncodeUTF16BomAsLittleEndian()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    sget-object v2, Lorg/jaudiotagger/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 248
    :cond_0
    sget-object v2, Lorg/jaudiotagger/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 253
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 256
    invoke-static {v1}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->splitByNullSeperator(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 257
    invoke-virtual {p0, v4, v1}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->checkTrailingNull(Ljava/util/List;Ljava/lang/String;)V

    const/4 v1, 0x0

    move v5, v1

    .line 260
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 261
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 263
    sget-object v7, Lorg/jaudiotagger/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 264
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {p0, v6, v5, v7}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->writeStringUTF16LEBOM(Ljava/lang/String;II)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 265
    :cond_2
    sget-object v7, Lorg/jaudiotagger/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 266
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {p0, v6, v5, v7}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->writeStringUTF16BEBOM(Ljava/lang/String;II)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 268
    :cond_3
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v7

    .line 269
    sget-object v8, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v7, v8}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 270
    sget-object v8, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v7, v8}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 271
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {p0, v7, v6, v5, v8}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->writeString(Ljava/nio/charset/CharsetEncoder;Ljava/lang/String;II)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 274
    :cond_4
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 275
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v2, v2, [B

    .line 276
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 277
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v3, v2, v1, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 278
    array-length v1, v2

    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->setSize(I)V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    .line 282
    sget-object v2, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->value:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 283
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected writeString(Ljava/nio/charset/CharsetEncoder;Ljava/lang/String;II)Ljava/nio/ByteBuffer;
    .locals 0

    add-int/lit8 p3, p3, 0x1

    if-ne p3, p4, :cond_0

    .line 124
    invoke-static {p2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    .line 126
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 128
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object p1
.end method

.method protected writeStringUTF16BEBOM(Ljava/lang/String;II)Ljava/nio/ByteBuffer;
    .locals 2

    .line 177
    sget-object v0, Lorg/jaudiotagger/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 178
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 179
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    add-int/lit8 p2, p2, 0x1

    const v1, 0xfeff

    if-ne p2, p3, :cond_0

    .line 184
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    .line 186
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 188
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object p1
.end method

.method protected writeStringUTF16LEBOM(Ljava/lang/String;II)Ljava/nio/ByteBuffer;
    .locals 2

    .line 149
    sget-object v0, Lorg/jaudiotagger/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 150
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 151
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    add-int/lit8 p2, p2, 0x1

    const v1, 0xfeff

    if-ne p2, p3, :cond_0

    .line 156
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    .line 158
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 160
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object p1
.end method
