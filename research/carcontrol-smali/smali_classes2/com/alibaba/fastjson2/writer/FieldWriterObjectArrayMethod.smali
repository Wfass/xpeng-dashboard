.class final Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;
.super Lcom/alibaba/fastjson2/writer/FieldWriter;
.source "FieldWriterObjectArrayMethod.java"


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
.method constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 13

    move-object v11, p0

    move-object v12, p2

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    .line 33
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 34
    iput-object v12, v11, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->itemType:Ljava/lang/reflect/Type;

    .line 35
    instance-of v0, v12, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 36
    move-object v0, v12

    check-cast v0, Ljava/lang/Class;

    iput-object v0, v11, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->itemClass:Ljava/lang/Class;

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, v11, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->itemClass:Ljava/lang/Class;

    :goto_0
    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 47
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "field.get error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->fieldName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 53
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->itemType:Ljava/lang/reflect/Type;

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1

    .line 54
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-eqz v1, :cond_2

    return-object v1

    .line 58
    :cond_2
    const-class v1, [Ljava/lang/Float;

    if-ne p2, v1, :cond_4

    .line 59
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_3

    .line 60
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    const-class p2, Ljava/lang/Float;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-direct {p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    return-object p1

    .line 62
    :cond_3
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->FLOAT_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    return-object p1

    .line 64
    :cond_4
    const-class v1, [Ljava/lang/Double;

    if-ne p2, v1, :cond_6

    .line 65
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_5

    .line 66
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    const-class p2, Ljava/lang/Double;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-direct {p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    return-object p1

    .line 68
    :cond_5
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->DOUBLE_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    return-object p1

    .line 70
    :cond_6
    const-class v1, [Ljava/math/BigDecimal;

    if-ne p2, v1, :cond_8

    .line 71
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_7

    .line 72
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    const-class p2, Ljava/math/BigDecimal;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-direct {p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    return-object p1

    .line 74
    :cond_7
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->DECIMAL_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    return-object p1

    .line 76
    :cond_8
    const-class v1, Ljava/lang/Float;

    if-ne p2, v1, :cond_a

    .line 77
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_9

    .line 78
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;

    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;-><init>(Ljava/text/DecimalFormat;)V

    return-object p1

    .line 80
    :cond_9
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;

    return-object p1

    .line 82
    :cond_a
    const-class v1, Ljava/lang/Double;

    if-ne p2, v1, :cond_c

    .line 83
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_b

    .line 84
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;

    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;-><init>(Ljava/text/DecimalFormat;)V

    return-object p1

    .line 86
    :cond_b
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;

    return-object p1

    .line 88
    :cond_c
    const-class v1, Ljava/math/BigDecimal;

    if-ne p2, v1, :cond_e

    .line 89
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_d

    .line 90
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-direct {p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;-><init>(Ljava/text/DecimalFormat;Ljava/util/function/Function;)V

    return-object p1

    .line 92
    :cond_d
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    return-object p1

    .line 95
    :cond_e
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->itemType:Ljava/lang/reflect/Type;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->itemClass:Ljava/lang/Class;

    .line 96
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

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

    .line 104
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 107
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->features:J

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    move-result-wide v3

    or-long/2addr v1, v3

    .line 108
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

    .line 109
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 110
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 117
    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->writeArray(Lcom/alibaba/fastjson2/JSONWriter;Z[Ljava/lang/Object;)V

    return v0
.end method

.method public writeArray(Lcom/alibaba/fastjson2/JSONWriter;Z[Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    if-eqz p2, :cond_0

    .line 138
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 141
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 145
    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->fieldName:Ljava/lang/String;

    invoke-virtual {v8, v1, v9}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    return-void

    .line 152
    :cond_1
    iget-boolean v1, v8, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    .line 153
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 154
    iget-object v4, v0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->fieldClass:Ljava/lang/Class;

    if-eq v1, v4, :cond_2

    .line 156
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName(Ljava/lang/String;)V

    .line 159
    :cond_2
    array-length v11, v9

    .line 160
    invoke-virtual {v8, v11}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    move v12, v2

    move-object v1, v3

    move v2, v10

    :goto_0
    if-ge v12, v11, :cond_8

    .line 162
    aget-object v13, v9, v12

    if-nez v13, :cond_3

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_3

    .line 169
    :cond_3
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, v3, :cond_5

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    move-result v1

    .line 173
    invoke-virtual {v0, v8, v4}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    if-eqz v1, :cond_4

    .line 176
    invoke-static {v4}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :cond_4
    move v15, v1

    move-object v14, v2

    move-object/from16 v16, v4

    goto :goto_1

    :cond_5
    move-object v14, v1

    move v15, v2

    move-object/from16 v16, v3

    :goto_1
    if-eqz v15, :cond_6

    .line 185
    invoke-virtual {v8, v12, v13}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 187
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    goto :goto_2

    .line 193
    :cond_6
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->itemType:Ljava/lang/reflect/Type;

    iget-wide v6, v0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->features:J

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v3, v13

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    if-eqz v15, :cond_7

    .line 196
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    :cond_7
    :goto_2
    move-object v1, v14

    move v2, v15

    move-object/from16 v3, v16

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_8
    if-eqz v10, :cond_9

    .line 201
    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    :cond_9
    return-void

    .line 207
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    move-object v1, v3

    .line 208
    :goto_4
    array-length v4, v9

    if-ge v2, v4, :cond_e

    if-eqz v2, :cond_b

    .line 210
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 213
    :cond_b
    aget-object v4, v9, v2

    if-nez v4, :cond_c

    .line 215
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_6

    .line 218
    :cond_c
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, v3, :cond_d

    goto :goto_5

    .line 223
    :cond_d
    invoke-virtual {v0, v8, v5}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    move-object v3, v5

    .line 228
    :goto_5
    invoke-interface {v1, v8, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 230
    :cond_e
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

    .line 123
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->writeArray(Lcom/alibaba/fastjson2/JSONWriter;Z[Ljava/lang/Object;)V

    return-void
.end method
