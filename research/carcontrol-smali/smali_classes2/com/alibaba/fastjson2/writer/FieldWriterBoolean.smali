.class abstract Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;
.super Lcom/alibaba/fastjson2/writer/FieldWriter;
.source "FieldWriterBoolean.java"


# instance fields
.field final utf16Value0:[C

.field final utf16Value1:[C

.field final utf16ValueFalse:[C

.field final utf16ValueTrue:[C

.field final utf8Value0:[B

.field final utf8Value1:[B

.field final utf8ValueFalse:[B

.field final utf8ValueTrue:[B


# direct methods
.method constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 2

    .line 32
    invoke-direct/range {p0 .. p10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 34
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF8:[B

    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF8:[B

    array-length p2, p2

    add-int/lit8 p2, p2, 0x4

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 35
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF8:[B

    array-length p2, p2

    const/16 p3, 0x74

    aput-byte p3, p1, p2

    .line 36
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF8:[B

    array-length p2, p2

    add-int/lit8 p2, p2, 0x1

    const/16 p4, 0x72

    aput-byte p4, p1, p2

    .line 37
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF8:[B

    array-length p2, p2

    add-int/lit8 p2, p2, 0x2

    const/16 p5, 0x75

    aput-byte p5, p1, p2

    .line 38
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF8:[B

    array-length p2, p2

    add-int/lit8 p2, p2, 0x3

    const/16 p6, 0x65

    aput-byte p6, p1, p2

    .line 39
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf8ValueTrue:[B

    .line 42
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF8:[B

    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF8:[B

    array-length p2, p2

    add-int/lit8 p2, p2, 0x5

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 43
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF8:[B

    array-length p2, p2

    const/16 p7, 0x66

    aput-byte p7, p1, p2

    .line 44
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF8:[B

    array-length p2, p2

    add-int/lit8 p2, p2, 0x1

    const/16 p8, 0x61

    aput-byte p8, p1, p2

    .line 45
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF8:[B

    array-length p2, p2

    add-int/lit8 p2, p2, 0x2

    const/16 p9, 0x6c

    aput-byte p9, p1, p2

    .line 46
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF8:[B

    array-length p2, p2

    add-int/lit8 p2, p2, 0x3

    const/16 p10, 0x73

    aput-byte p10, p1, p2

    .line 47
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF8:[B

    array-length p2, p2

    add-int/lit8 p2, p2, 0x4

    aput-byte p6, p1, p2

    .line 48
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf8ValueFalse:[B

    .line 51
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF8:[B

    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF8:[B

    array-length p2, p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 52
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF8:[B

    array-length p2, p2

    const/16 v0, 0x31

    aput-byte v0, p1, p2

    .line 53
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf8Value1:[B

    .line 56
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF8:[B

    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF8:[B

    array-length p2, p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 57
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF8:[B

    array-length p2, p2

    const/16 v1, 0x30

    aput-byte v1, p1, p2

    .line 58
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf8Value0:[B

    .line 62
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF16:[C

    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF16:[C

    array-length p2, p2

    add-int/lit8 p2, p2, 0x4

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    .line 63
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF16:[C

    array-length p2, p2

    aput-char p3, p1, p2

    .line 64
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF16:[C

    array-length p2, p2

    add-int/lit8 p2, p2, 0x1

    aput-char p4, p1, p2

    .line 65
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF16:[C

    array-length p2, p2

    add-int/lit8 p2, p2, 0x2

    aput-char p5, p1, p2

    .line 66
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF16:[C

    array-length p2, p2

    add-int/lit8 p2, p2, 0x3

    aput-char p6, p1, p2

    .line 67
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf16ValueTrue:[C

    .line 70
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF16:[C

    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF16:[C

    array-length p2, p2

    add-int/lit8 p2, p2, 0x5

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    .line 71
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF16:[C

    array-length p2, p2

    aput-char p7, p1, p2

    .line 72
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF16:[C

    array-length p2, p2

    add-int/lit8 p2, p2, 0x1

    aput-char p8, p1, p2

    .line 73
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF16:[C

    array-length p2, p2

    add-int/lit8 p2, p2, 0x2

    aput-char p9, p1, p2

    .line 74
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF16:[C

    array-length p2, p2

    add-int/lit8 p2, p2, 0x3

    aput-char p10, p1, p2

    .line 75
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF16:[C

    array-length p2, p2

    add-int/lit8 p2, p2, 0x4

    aput-char p6, p1, p2

    .line 76
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf16ValueFalse:[C

    .line 79
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF16:[C

    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF16:[C

    array-length p2, p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    .line 80
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF16:[C

    array-length p2, p2

    aput-char v0, p1, p2

    .line 81
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf16Value1:[C

    .line 84
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF16:[C

    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF16:[C

    array-length p2, p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    .line 85
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->nameWithColonUTF16:[C

    array-length p2, p2

    aput-char v1, p1, p2

    .line 86
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf16Value0:[C

    return-void
.end method


# virtual methods
.method public getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 0

    .line 166
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolean;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolean;

    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x0

    .line 135
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-nez p2, :cond_1

    .line 144
    iget-wide v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->features:J

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    move-result-wide v6

    or-long/2addr v4, v6

    .line 145
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v6, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v6, v8

    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v6, v8

    and-long/2addr v4, v6

    cmp-long p2, v4, v2

    if-nez p2, :cond_0

    return v0

    .line 148
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 149
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeBooleanNull()V

    return v1

    .line 153
    :cond_1
    iget-object v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->fieldClass:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_2

    .line 154
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    iget-wide v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->features:J

    .line 155
    invoke-virtual {p1, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    move-result-wide v4

    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, v6

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2

    return v0

    .line 160
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->writeBool(Lcom/alibaba/fastjson2/JSONWriter;Z)V

    return v1

    :catch_0
    move-exception p2

    .line 137
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isIgnoreErrorGetter()Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    .line 140
    :cond_3
    throw p2
.end method

.method public final writeBool(Lcom/alibaba/fastjson2/JSONWriter;Z)V
    .locals 6

    .line 102
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->features:J

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    move-result-wide v0

    .line 103
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 104
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    if-eqz p2, :cond_0

    const-string/jumbo p2, "true"

    goto :goto_0

    :cond_0
    const-string p2, "false"

    .line 105
    :goto_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    .line 109
    :cond_1
    iget-boolean v2, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf8:Z

    if-eqz v2, :cond_5

    .line 111
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteBooleanAsNumber:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 112
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf8Value1:[B

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf8Value0:[B

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 113
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf8ValueTrue:[B

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf8ValueFalse:[B

    .line 110
    :goto_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([B)V

    return-void

    .line 118
    :cond_5
    iget-boolean v2, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf16:Z

    if-eqz v2, :cond_9

    .line 120
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteBooleanAsNumber:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    if-eqz p2, :cond_6

    .line 121
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf16Value1:[C

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf16Value0:[C

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_8

    .line 122
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf16ValueTrue:[C

    goto :goto_2

    :cond_8
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf16ValueFalse:[C

    .line 119
    :goto_2
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([C)V

    return-void

    .line 127
    :cond_9
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 128
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    return-void
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 0

    .line 92
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    if-nez p2, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 97
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    return-void
.end method
