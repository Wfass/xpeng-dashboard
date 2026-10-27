.class final Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;
.super Lcom/alibaba/fastjson2/writer/FieldWriter;
.source "FieldWriterObjectArrayField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/writer/FieldWriter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final itemClass:Ljava/lang/Class;

.field itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

.field final itemType:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 13

    move-object v11, p0

    move-object v12, p2

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    .line 29
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 30
    iput-object v12, v11, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemType:Ljava/lang/reflect/Type;

    .line 31
    instance-of v0, v12, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 32
    move-object v0, v12

    check-cast v0, Ljava/lang/Class;

    iput-object v0, v11, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemClass:Ljava/lang/Class;

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, v11, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemClass:Ljava/lang/Class;

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    if-eqz p2, :cond_1

    .line 40
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemType:Ljava/lang/reflect/Type;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1

    .line 41
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-eqz v0, :cond_2

    return-object v0

    .line 45
    :cond_2
    const-class v0, Ljava/lang/Double;

    if-ne p2, v0, :cond_3

    .line 46
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;

    new-instance p2, Ljava/text/DecimalFormat;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->format:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;-><init>(Ljava/text/DecimalFormat;)V

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_1

    .line 47
    :cond_3
    const-class v0, Ljava/lang/Float;

    if-ne p2, v0, :cond_4

    .line 48
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;

    new-instance p2, Ljava/text/DecimalFormat;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->format:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;-><init>(Ljava/text/DecimalFormat;)V

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_1

    .line 49
    :cond_4
    const-class v0, Ljava/math/BigDecimal;

    if-ne p2, v0, :cond_5

    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz p2, :cond_5

    .line 50
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;-><init>(Ljava/text/DecimalFormat;Ljava/util/function/Function;)V

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_1

    .line 52
    :cond_5
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemType:Ljava/lang/reflect/Type;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemClass:Ljava/lang/Class;

    .line 53
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 55
    :goto_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p1
.end method

.method public getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 200
    const-class v0, [Ljava/lang/String;

    if-ne p2, v0, :cond_0

    .line 201
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;

    return-object p1

    .line 204
    :cond_0
    const-class v0, [Ljava/lang/Float;

    if-ne p2, v0, :cond_2

    .line 205
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_1

    .line 206
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    const-class p2, Ljava/lang/Float;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-direct {p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    return-object p1

    .line 208
    :cond_1
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->FLOAT_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    return-object p1

    .line 210
    :cond_2
    const-class v0, [Ljava/lang/Double;

    if-ne p2, v0, :cond_4

    .line 211
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_3

    .line 212
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    const-class p2, Ljava/lang/Double;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-direct {p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    return-object p1

    .line 214
    :cond_3
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->DOUBLE_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    return-object p1

    .line 216
    :cond_4
    const-class v0, [Ljava/math/BigDecimal;

    if-ne p2, v0, :cond_6

    .line 217
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_5

    .line 218
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    const-class p2, Ljava/math/BigDecimal;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-direct {p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    return-object p1

    .line 220
    :cond_5
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->DECIMAL_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    return-object p1

    .line 224
    :cond_6
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)Z"
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 66
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->features:J

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    move-result-wide v3

    or-long/2addr v1, v3

    .line 67
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v3, v5

    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v3, v5

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 69
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 76
    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->writeArray(Lcom/alibaba/fastjson2/JSONWriter;Z[Ljava/lang/Object;)V

    return v0
.end method

.method public writeArray(Lcom/alibaba/fastjson2/JSONWriter;Z[Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    move-result-wide v1

    .line 97
    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    const/4 v10, 0x1

    if-eqz v3, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    move v11, v4

    :goto_0
    if-eqz p2, :cond_2

    .line 101
    array-length v3, v9

    if-nez v3, :cond_1

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v12, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, v12

    cmp-long v1, v1, v5

    if-eqz v1, :cond_1

    return-void

    .line 105
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    :cond_2
    if-eqz v11, :cond_3

    .line 109
    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->fieldName:Ljava/lang/String;

    invoke-virtual {v8, v1, v9}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 111
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    return-void

    .line 116
    :cond_3
    iget-boolean v1, v8, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 117
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 118
    iget-object v3, v0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->fieldClass:Ljava/lang/Class;

    if-eq v1, v3, :cond_4

    .line 120
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName(Ljava/lang/String;)V

    .line 123
    :cond_4
    array-length v12, v9

    .line 124
    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    move-object v1, v2

    move v13, v4

    move v3, v11

    :goto_1
    if-ge v13, v12, :cond_a

    .line 126
    aget-object v14, v9, v13

    if-nez v14, :cond_5

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_4

    .line 133
    :cond_5
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, v2, :cond_7

    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    move-result v1

    .line 137
    invoke-virtual {v0, v8, v4}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    if-eqz v1, :cond_6

    .line 140
    invoke-static {v4}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    move-result v1

    xor-int/2addr v1, v10

    :cond_6
    move v3, v1

    move-object v15, v2

    move/from16 v17, v3

    move-object/from16 v16, v4

    goto :goto_2

    :cond_7
    move-object v15, v1

    move-object/from16 v16, v2

    move/from16 v17, v3

    :goto_2
    if-eqz v17, :cond_8

    .line 150
    invoke-virtual {v8, v13, v14}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 152
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    goto :goto_3

    .line 158
    :cond_8
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemType:Ljava/lang/reflect/Type;

    iget-wide v6, v0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->features:J

    move-object v1, v15

    move-object/from16 v2, p1

    move-object v3, v14

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    if-eqz v17, :cond_9

    .line 161
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    :cond_9
    :goto_3
    move-object v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_a
    if-eqz v11, :cond_b

    .line 166
    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    :cond_b
    return-void

    .line 172
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    move-object v1, v2

    .line 173
    :goto_5
    array-length v3, v9

    if-ge v4, v3, :cond_10

    if-eqz v4, :cond_d

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 178
    :cond_d
    aget-object v3, v9, v4

    if-nez v3, :cond_e

    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_7

    .line 183
    :cond_e
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, v2, :cond_f

    goto :goto_6

    .line 188
    :cond_f
    invoke-virtual {v0, v8, v5}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    move-object v2, v5

    .line 193
    :goto_6
    invoke-interface {v1, v8, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 195
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)V"
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 85
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->writeArray(Lcom/alibaba/fastjson2/JSONWriter;Z[Ljava/lang/Object;)V

    return-void
.end method
