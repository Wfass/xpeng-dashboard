.class public Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;
.super Lorg/jaudiotagger/tag/datatype/AbstractDataType;
.source "PairedTextEncodedStringNullTerminated.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 24
    new-instance p1, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;-><init>()V

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Lorg/jaudiotagger/tag/datatype/AbstractDataType;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Lorg/jaudiotagger/tag/datatype/AbstractDataType;)V

    .line 30
    new-instance p1, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;-><init>()V

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public canBeEncoded()Z
    .locals 5

    .line 72
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    check-cast v0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-static {v0}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->access$000(Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/datatype/Pair;

    .line 74
    new-instance v2, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;

    iget-object v3, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->identifier:Ljava/lang/String;

    iget-object v4, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/Pair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->canBeEncoded()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 45
    :cond_0
    instance-of v0, p1, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 50
    :cond_1
    check-cast p1, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;

    .line 52
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    iget-object p1, p1, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getSize()I
    .locals 1

    .line 62
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->size:I

    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->getValue()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;
    .locals 1

    .line 298
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    check-cast v0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    return-object v0
.end method

.method public readByteArray([BI)V
    .locals 4

    .line 94
    sget-object v0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading PairTextEncodedStringNullTerminated from array from offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 101
    :goto_0
    :try_start_0
    new-instance v0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;

    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->identifier:Ljava/lang/String;

    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-direct {v0, v1, v2}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 102
    invoke-virtual {v0, p1, p2}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->readByteArray([BI)V

    .line 103
    iget v1, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->size:I

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->size:I

    .line 104
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->getSize()I

    move-result v1

    add-int/2addr p2, v1

    .line 105
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->getSize()I

    move-result v1
    :try_end_0
    .catch Lorg/jaudiotagger/tag/InvalidDataTypeException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 113
    :cond_0
    :try_start_1
    new-instance v1, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;

    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->identifier:Ljava/lang/String;

    iget-object v3, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-direct {v1, v2, v3}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 114
    invoke-virtual {v1, p1, p2}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->readByteArray([BI)V

    .line 115
    iget v2, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->size:I

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->getSize()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->size:I

    .line 116
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->getSize()I

    move-result v2

    add-int/2addr p2, v2

    .line 117
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->getSize()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 122
    :cond_1
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    check-cast v2, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/jaudiotagger/tag/InvalidDataTypeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->size:I

    if-eqz v0, :cond_2

    goto :goto_0

    .line 152
    :cond_2
    sget-object p1, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->logger:Ljava/util/logging/Logger;

    const-string p2, "No null terminated Strings found"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 153
    new-instance p1, Lorg/jaudiotagger/tag/InvalidDataTypeException;

    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :catch_0
    :try_start_2
    array-length v1, p1

    if-lt p2, v1, :cond_3

    goto :goto_1

    .line 132
    :cond_3
    new-instance v1, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;

    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->identifier:Ljava/lang/String;

    iget-object v3, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-direct {v1, v2, v3}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 133
    invoke-virtual {v1, p1, p2}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->readByteArray([BI)V

    .line 134
    iget p1, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->size:I

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->getSize()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->size:I

    .line 135
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->getSize()I

    .line 136
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->getSize()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    .line 141
    :cond_4
    iget-object p1, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    check-cast p1, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/jaudiotagger/tag/InvalidDataTypeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 156
    :catch_1
    :goto_1
    sget-object p1, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Read  PairTextEncodedStringNullTerminated:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " size:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->size:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeByteArray()[B
    .locals 8

    .line 167
    sget-object v0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing PairTextEncodedStringNullTerminated"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 173
    :try_start_0
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    check-cast v1, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-static {v1}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->access$000(Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/datatype/Pair;

    .line 176
    new-instance v4, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;

    iget-object v5, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->identifier:Ljava/lang/String;

    iget-object v6, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->writeByteArray()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 178
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->getSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 181
    new-instance v4, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;

    iget-object v5, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->identifier:Ljava/lang/String;

    iget-object v6, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/Pair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->writeByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 183
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->getSize()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v3

    goto :goto_0

    .line 195
    :cond_0
    iput v2, p0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->size:I

    .line 197
    sget-object v1, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->logger:Ljava/util/logging/Logger;

    const-string v2, "Written PairTextEncodedStringNullTerminated"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 190
    sget-object v1, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "IOException in MultipleTextEncodedStringNullTerminated when writing byte array"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
