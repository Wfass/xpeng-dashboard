.class Lcom/alibaba/fastjson2/writer/FieldWriterEnum;
.super Lcom/alibaba/fastjson2/writer/FieldWriter;
.source "FieldWriterEnum.java"


# instance fields
.field final enumConstants:[Ljava/lang/Enum;

.field final enumType:Ljava/lang/Class;

.field final hashCodes:[J

.field final hashCodesSymbolCache:[J

.field final utf16ValueCache:[[C

.field final utf8ValueCache:[[B

.field final valueNameCacheUTF16:[[C

.field final valueNameCacheUTF8:[[B


# direct methods
.method protected constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum;",
            ">;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct/range {p0 .. p10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 41
    iput-object p8, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->enumType:Ljava/lang/Class;

    .line 42
    invoke-virtual {p8}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Enum;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->enumConstants:[Ljava/lang/Enum;

    .line 43
    array-length p2, p1

    new-array p2, p2, [J

    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->hashCodes:[J

    .line 44
    array-length p1, p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->hashCodesSymbolCache:[J

    const/4 p1, 0x0

    .line 45
    :goto_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->enumConstants:[Ljava/lang/Enum;

    array-length p3, p2

    if-ge p1, p3, :cond_0

    .line 46
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->hashCodes:[J

    aget-object p2, p2, p1

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide p4

    aput-wide p4, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 49
    :cond_0
    array-length p1, p2

    new-array p1, p1, [[B

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->valueNameCacheUTF8:[[B

    .line 50
    array-length p1, p2

    new-array p1, p1, [[C

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->valueNameCacheUTF16:[[C

    .line 52
    array-length p1, p2

    new-array p1, p1, [[B

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->utf8ValueCache:[[B

    .line 53
    array-length p1, p2

    new-array p1, p1, [[C

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->utf16ValueCache:[[C

    return-void
.end method

.method private getBytes(I)[B
    .locals 3

    .line 292
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(I)I

    move-result v0

    .line 293
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameWithColonUTF8:[B

    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameWithColonUTF8:[B

    array-length v2, v2

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 294
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 295
    array-length v1, v0

    invoke-static {p1, v1, v0}, Lcom/alibaba/fastjson2/util/IOUtils;->getChars(II[B)V

    return-object v0
.end method

.method private getChars(I)[C
    .locals 3

    .line 283
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(I)I

    move-result v0

    .line 284
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameWithColonUTF16:[C

    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameWithColonUTF16:[C

    array-length v2, v2

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    .line 285
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    .line 286
    array-length v1, v0

    invoke-static {p1, v1, v0}, Lcom/alibaba/fastjson2/util/IOUtils;->getChars(II[C)V

    return-object v0
.end method

.method private getNameBytes(I)[B
    .locals 7

    .line 270
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->enumConstants:[Ljava/lang/Enum;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 271
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameWithColonUTF8:[B

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameWithColonUTF8:[B

    array-length v1, v1

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameWithColonUTF8:[B

    array-length v1, v1

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    .line 273
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameWithColonUTF8:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    .line 274
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, p1, v4

    add-int/lit8 v6, v1, 0x1

    .line 275
    aput-byte v5, v0, v1

    add-int/lit8 v4, v4, 0x1

    move v1, v6

    goto :goto_0

    .line 277
    :cond_0
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aput-byte v2, v0, p1

    return-object v0
.end method

.method private getNameChars(I)[C
    .locals 5

    .line 260
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->enumConstants:[Ljava/lang/Enum;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 261
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameWithColonUTF16:[C

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameWithColonUTF16:[C

    array-length v1, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameWithColonUTF16:[C

    array-length v1, v1

    const/16 v2, 0x22

    aput-char v2, v0, v1

    .line 263
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameWithColonUTF16:[C

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 264
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aput-char v2, v0, p1

    return-object v0
.end method

.method private writeJSONBToString(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;Lcom/alibaba/fastjson2/SymbolTable;)V
    .locals 6

    const/4 v0, -0x1

    if-eqz p3, :cond_2

    .line 164
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 166
    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameSymbolCache:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/16 v3, 0x20

    if-nez v2, :cond_0

    .line 167
    iget-wide v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->hashCode:J

    invoke-virtual {p3, v4, v5}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result p3

    int-to-long v4, p3

    shl-long v2, v4, v3

    int-to-long v4, v1

    or-long v1, v2, v4

    .line 168
    iput-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameSymbolCache:J

    goto :goto_0

    .line 170
    :cond_0
    iget-wide v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameSymbolCache:J

    long-to-int v2, v4

    if-ne v2, v1, :cond_1

    .line 172
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameSymbolCache:J

    shr-long/2addr v1, v3

    long-to-int p3, v1

    goto :goto_0

    .line 174
    :cond_1
    iget-wide v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->hashCode:J

    invoke-virtual {p3, v4, v5}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result p3

    int-to-long v4, p3

    shl-long v2, v4, v3

    int-to-long v4, v1

    or-long v1, v2, v4

    .line 175
    iput-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameSymbolCache:J

    goto :goto_0

    :cond_2
    move p3, v0

    :goto_0
    if-eq p3, v0, :cond_3

    neg-int p3, p3

    .line 183
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeSymbol(I)V

    goto :goto_1

    .line 185
    :cond_3
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameJSONB:[B

    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->hashCode:J

    invoke-virtual {p1, p3, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([BJ)V

    .line 188
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method private writeSymbolNameOrdinal(Lcom/alibaba/fastjson2/JSONWriter;ILcom/alibaba/fastjson2/SymbolTable;)Z
    .locals 11

    .line 114
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->hashCodesSymbolCache:[J

    aget-wide v1, v1, p2

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/16 v6, 0x20

    if-nez v5, :cond_0

    .line 118
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->hashCodes:[J

    aget-wide v1, v1, p2

    invoke-virtual {p3, v1, v2}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result v1

    .line 119
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->hashCodesSymbolCache:[J

    int-to-long v7, v1

    shl-long/2addr v7, v6

    int-to-long v9, v0

    or-long/2addr v7, v9

    aput-wide v7, v2, p2

    goto :goto_0

    :cond_0
    long-to-int v5, v1

    if-ne v5, v0, :cond_1

    shr-long/2addr v1, v6

    long-to-int v1, v1

    goto :goto_0

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->hashCodes:[J

    aget-wide v1, v1, p2

    invoke-virtual {p3, v1, v2}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result v1

    .line 126
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->hashCodesSymbolCache:[J

    int-to-long v7, v1

    shl-long/2addr v7, v6

    int-to-long v9, v0

    or-long/2addr v7, v9

    aput-wide v7, v2, p2

    :goto_0
    if-ltz v1, :cond_6

    .line 133
    iget-wide v7, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameSymbolCache:J

    cmp-long p2, v7, v3

    const/4 v2, -0x1

    if-nez p2, :cond_2

    .line 134
    iget-wide v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->hashCode:J

    invoke-virtual {p3, v3, v4}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result p2

    if-eq p2, v2, :cond_4

    int-to-long v3, p2

    shl-long/2addr v3, v6

    int-to-long v5, v0

    or-long/2addr v3, v5

    .line 136
    iput-wide v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameSymbolCache:J

    goto :goto_1

    .line 139
    :cond_2
    iget-wide v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameSymbolCache:J

    long-to-int p2, v3

    if-ne p2, v0, :cond_3

    .line 141
    iget-wide p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameSymbolCache:J

    shr-long/2addr p2, v6

    long-to-int p2, p2

    goto :goto_1

    .line 143
    :cond_3
    iget-wide v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->hashCode:J

    invoke-virtual {p3, v3, v4}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result p2

    int-to-long v3, p2

    shl-long/2addr v3, v6

    int-to-long v5, v0

    or-long/2addr v3, v5

    .line 144
    iput-wide v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameSymbolCache:J

    :cond_4
    :goto_1
    if-eq p2, v2, :cond_5

    neg-int p2, p2

    .line 149
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeSymbol(I)V

    goto :goto_2

    .line 151
    :cond_5
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameJSONB:[B

    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->hashCode:J

    invoke-virtual {p1, p2, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([BJ)V

    :goto_2
    const/16 p2, 0x79

    .line 154
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(B)V

    neg-int p2, v1

    .line 155
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 5

    .line 307
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Enum;

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 310
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->features:J

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    move-result-wide v3

    or-long/2addr v1, v3

    .line 311
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    .line 312
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 313
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 320
    :cond_1
    iget-boolean v1, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v1, :cond_2

    .line 321
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->writeEnumJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;)V

    goto :goto_0

    .line 323
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->writeEnum(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;)V

    :goto_0
    return v0
.end method

.method public final writeEnum(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;)V
    .locals 10

    .line 193
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->features:J

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    move-result-wide v0

    .line 195
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    .line 196
    iget-boolean v2, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v2, :cond_0

    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->writeEnumJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;)V

    return-void

    .line 201
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->UnquoteFieldName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v6

    .line 202
    :goto_0
    iget-boolean v7, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf8:Z

    .line 203
    iget-boolean v8, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf8:Z

    if-nez v8, :cond_2

    iget-boolean v8, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf16:Z

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    move v3, v6

    .line 204
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    .line 206
    sget-object v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingOrdinal:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v8

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    if-nez v2, :cond_6

    if-eqz v7, :cond_4

    .line 209
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->utf8ValueCache:[[B

    aget-object v0, p2, v6

    if-nez v0, :cond_3

    .line 211
    invoke-direct {p0, v6}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->getBytes(I)[B

    move-result-object v0

    aput-object v0, p2, v6

    .line 213
    :cond_3
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([B)V

    return-void

    :cond_4
    if-eqz v3, :cond_6

    .line 218
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->utf16ValueCache:[[C

    aget-object v0, p2, v6

    if-nez v0, :cond_5

    .line 220
    invoke-direct {p0, v6}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->getChars(I)[C

    move-result-object v0

    aput-object v0, p2, v6

    .line 222
    :cond_5
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([C)V

    return-void

    .line 227
    :cond_6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 228
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return-void

    :cond_7
    if-nez v2, :cond_b

    if-eqz v7, :cond_9

    .line 234
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->valueNameCacheUTF8:[[B

    aget-object v0, p2, v6

    if-nez v0, :cond_8

    .line 237
    invoke-direct {p0, v6}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->getNameBytes(I)[B

    move-result-object v0

    aput-object v0, p2, v6

    .line 239
    :cond_8
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([B)V

    return-void

    :cond_9
    if-eqz v3, :cond_b

    .line 244
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->valueNameCacheUTF16:[[C

    aget-object v0, p2, v6

    if-nez v0, :cond_a

    .line 246
    invoke-direct {p0, v6}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->getNameChars(I)[C

    move-result-object v0

    aput-object v0, p2, v6

    .line 248
    :cond_a
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([C)V

    return-void

    .line 254
    :cond_b
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 255
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public final writeEnumJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    .line 62
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->features:J

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    move-result-wide v0

    .line 63
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumsUsingName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v2, v4

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v6

    .line 64
    :goto_0
    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v7

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v6

    .line 66
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 67
    iget-object v1, p1, Lcom/alibaba/fastjson2/JSONWriter;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    .line 69
    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->writeSymbolNameOrdinal(Lcom/alibaba/fastjson2/JSONWriter;ILcom/alibaba/fastjson2/SymbolTable;)Z

    move-result v6

    if-eqz v6, :cond_3

    return-void

    :cond_3
    if-eqz v3, :cond_4

    .line 75
    invoke-direct {p0, p1, p2, v1}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->writeJSONBToString(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;Lcom/alibaba/fastjson2/SymbolTable;)V

    return-void

    :cond_4
    if-eqz v2, :cond_9

    const/4 p2, -0x1

    if-eqz v1, :cond_7

    .line 82
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 83
    iget-wide v6, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameSymbolCache:J

    cmp-long v3, v6, v4

    const/16 v4, 0x20

    if-nez v3, :cond_5

    .line 84
    iget-wide v5, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->hashCode:J

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result v1

    int-to-long v5, v1

    shl-long v3, v5, v4

    int-to-long v5, v2

    or-long v2, v3, v5

    .line 85
    iput-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameSymbolCache:J

    goto :goto_2

    .line 87
    :cond_5
    iget-wide v5, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameSymbolCache:J

    long-to-int v3, v5

    if-ne v3, v2, :cond_6

    .line 89
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameSymbolCache:J

    shr-long/2addr v1, v4

    long-to-int v1, v1

    goto :goto_2

    .line 91
    :cond_6
    iget-wide v5, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->hashCode:J

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result v1

    int-to-long v5, v1

    shl-long v3, v5, v4

    int-to-long v5, v2

    or-long v2, v3, v5

    .line 92
    iput-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameSymbolCache:J

    goto :goto_2

    :cond_7
    move v1, p2

    :goto_2
    if-eq v1, p2, :cond_8

    neg-int p2, v1

    .line 100
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeSymbol(I)V

    goto :goto_3

    .line 102
    :cond_8
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->nameJSONB:[B

    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->hashCode:J

    invoke-virtual {p1, p2, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([BJ)V

    .line 105
    :goto_3
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return-void

    .line 109
    :cond_9
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 110
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public final writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 0

    .line 301
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Enum;

    .line 302
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeEnum(Ljava/lang/Enum;)V

    return-void
.end method
