.class abstract Lcom/alibaba/fastjson2/writer/FieldWriterList;
.super Lcom/alibaba/fastjson2/writer/FieldWriter;
.source "FieldWriterList.java"


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

.field final itemClassNotReferenceDetect:Z

.field itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

.field final itemType:Ljava/lang/reflect/Type;

.field listWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 13

    move-object v11, p0

    move-object/from16 v12, p6

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

    .line 37
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    if-nez p2, :cond_0

    .line 39
    const-class v0, Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, v11, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    .line 40
    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_3

    .line 41
    move-object v3, p2

    check-cast v3, Ljava/lang/Class;

    iput-object v3, v11, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemClass:Ljava/lang/Class;

    if-eqz v3, :cond_4

    .line 43
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListEnum;

    move-wide/from16 v5, p4

    move-object/from16 v1, p9

    invoke-direct {v0, v1, v3, v5, v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListEnum;-><init>(Ljava/lang/Class;Ljava/lang/Class;J)V

    iput-object v0, v11, Lcom/alibaba/fastjson2/writer/FieldWriterList;->listWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_1

    :cond_1
    move-wide/from16 v5, p4

    move-object/from16 v1, p9

    .line 45
    const-class v0, Ljava/lang/String;

    if-ne v3, v0, :cond_2

    .line 46
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListStr;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplListStr;

    iput-object v0, v11, Lcom/alibaba/fastjson2/writer/FieldWriterList;->listWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_1

    .line 48
    :cond_2
    new-instance v7, Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;

    move-object v0, v7

    move-object/from16 v1, p9

    move-object/from16 v2, p8

    move-object v4, p2

    move-wide/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V

    iput-object v7, v11, Lcom/alibaba/fastjson2/writer/FieldWriterList;->listWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_1

    .line 52
    :cond_3
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, v11, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemClass:Ljava/lang/Class;

    .line 54
    :cond_4
    :goto_1
    iget-object v0, v11, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemClass:Ljava/lang/Class;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, v11, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemClassNotReferenceDetect:Z

    if-eqz v12, :cond_6

    .line 57
    iget-object v0, v11, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemClass:Ljava/lang/Class;

    const-class v1, Ljava/util/Date;

    if-ne v0, v1, :cond_6

    .line 58
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;

    const/4 v1, 0x0

    invoke-direct {v0, v12, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, v11, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    :cond_6
    return-void
.end method


# virtual methods
.method public getItemClass()Ljava/lang/Class;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getItemType()Ljava/lang/reflect/Type;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    if-eqz p2, :cond_1

    .line 75
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1

    .line 76
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-eqz v0, :cond_2

    return-object v0

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->format:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 81
    const-class v0, Ljava/lang/Double;

    if-ne p2, v0, :cond_3

    .line 82
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;

    new-instance p2, Ljava/text/DecimalFormat;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->format:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;-><init>(Ljava/text/DecimalFormat;)V

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p1

    .line 85
    :cond_3
    const-class v0, Ljava/lang/Float;

    if-ne p2, v0, :cond_4

    .line 86
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;

    new-instance p2, Ljava/text/DecimalFormat;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->format:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;-><init>(Ljava/text/DecimalFormat;)V

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p1

    .line 89
    :cond_4
    const-class v0, Ljava/math/BigDecimal;

    if-ne p2, v0, :cond_5

    .line 90
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    new-instance p2, Ljava/text/DecimalFormat;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->format:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;-><init>(Ljava/text/DecimalFormat;Ljava/util/function/Function;)V

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p1

    .line 94
    :cond_5
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemClass:Ljava/lang/Class;

    .line 95
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p1
.end method

.method public getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->listWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-eqz v0, :cond_0

    .line 105
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->fieldClass:Ljava/lang/Class;

    if-ne p2, v0, :cond_1

    .line 110
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->listWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p1

    .line 113
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public writeList(Lcom/alibaba/fastjson2/JSONWriter;Ljava/util/List;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 303
    iget-boolean v1, v8, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v1, :cond_0

    .line 304
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson2/writer/FieldWriterList;->writeListJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/util/List;)V

    return-void

    .line 311
    :cond_0
    iget-wide v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->features:J

    invoke-virtual {v8, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    move-result-wide v9

    .line 313
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, v9

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 317
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriterList;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 318
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, v9

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_2

    move v1, v11

    goto :goto_0

    :cond_2
    move v1, v2

    .line 320
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    const/4 v3, 0x0

    move v12, v2

    move-object v2, v3

    .line 321
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v12, v4, :cond_a

    if-eqz v12, :cond_3

    .line 323
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    :cond_3
    move-object/from16 v13, p2

    .line 326
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_4

    .line 328
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_4

    .line 332
    :cond_4
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 333
    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_5

    .line 334
    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    if-ne v4, v3, :cond_6

    move v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_2

    .line 344
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    move-result v1

    .line 345
    invoke-virtual {v0, v8, v4}, Lcom/alibaba/fastjson2/writer/FieldWriterList;->getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    if-eqz v1, :cond_7

    .line 349
    invoke-static {v4}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    move-result v1

    xor-int/2addr v1, v11

    :cond_7
    move v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    :goto_2
    if-eqz v15, :cond_8

    .line 354
    invoke-virtual {v8, v12, v14}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    .line 358
    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide v6, v9

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    if-eqz v15, :cond_9

    .line 361
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    :cond_9
    :goto_3
    move v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 364
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method public final writeListJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/util/List;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 241
    iget-wide v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->features:J

    invoke-virtual {v8, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    move-result-wide v10

    .line 242
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, v10

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_0

    move v13, v12

    goto :goto_0

    :cond_0
    move v13, v2

    .line 244
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    .line 246
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v10

    cmp-long v1, v5, v3

    if-eqz v1, :cond_1

    if-nez v14, :cond_1

    return-void

    .line 250
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriterList;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 252
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v10

    cmp-long v1, v5, v3

    if-eqz v1, :cond_2

    move v1, v12

    goto :goto_1

    :cond_2
    move v1, v2

    .line 253
    :goto_1
    iget-object v3, v0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v8, v9, v3}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 255
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-virtual {v8, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName(Ljava/lang/String;)V

    .line 258
    :cond_3
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    const/4 v3, 0x0

    move v15, v2

    move-object v2, v3

    :goto_2
    if-ge v15, v14, :cond_c

    .line 260
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    .line 262
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto/16 :goto_8

    .line 265
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, v3, :cond_8

    .line 268
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    move-result v1

    .line 269
    iget-object v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    if-ne v4, v2, :cond_5

    iget-object v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-eqz v2, :cond_5

    goto :goto_3

    .line 272
    :cond_5
    invoke-virtual {v0, v8, v4}, Lcom/alibaba/fastjson2/writer/FieldWriterList;->getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    :goto_3
    if-eqz v1, :cond_7

    .line 276
    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemClass:Ljava/lang/Class;

    if-ne v4, v1, :cond_6

    .line 277
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemClassNotReferenceDetect:Z

    goto :goto_4

    .line 279
    :cond_6
    invoke-static {v4}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    move-result v1

    :goto_4
    xor-int/2addr v1, v12

    :cond_7
    move/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    goto :goto_5

    :cond_8
    move/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    :goto_5
    if-eqz v16, :cond_9

    .line 285
    invoke-virtual {v8, v15, v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_7

    :cond_9
    if-eqz v13, :cond_a

    .line 290
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object v3, v6

    move-object/from16 v19, v6

    move-wide v6, v10

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_6

    :cond_a
    move-object/from16 v19, v6

    .line 292
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    move-wide v6, v10

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_6
    if-eqz v16, :cond_b

    move-object/from16 v1, v19

    .line 296
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    :cond_b
    :goto_7
    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    :goto_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public writeListStr(Lcom/alibaba/fastjson2/JSONWriter;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 370
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriterList;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 373
    :cond_0
    iget-boolean p2, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz p2, :cond_1

    .line 374
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->fieldClass:Ljava/lang/Class;

    invoke-virtual {p1, p3, p2}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 376
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    .line 375
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName(Ljava/lang/String;)V

    .line 380
    :cond_1
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/util/List;)V

    return-void
.end method

.method public writeListValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/util/List;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 178
    iget-boolean v1, v8, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson2/writer/FieldWriterList;->writeListJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/util/List;)V

    return-void

    .line 186
    :cond_0
    iget-wide v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->features:J

    invoke-virtual {v8, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    move-result-wide v9

    .line 188
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, v9

    const-wide/16 v11, 0x0

    cmp-long v1, v1, v11

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v1, :cond_1

    move v1, v14

    goto :goto_0

    :cond_1
    move v1, v13

    .line 190
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    const/4 v2, 0x0

    move-object v3, v2

    move v15, v13

    .line 191
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v15, v4, :cond_a

    if-eqz v15, :cond_2

    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    :cond_2
    move-object/from16 v6, p2

    .line 196
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    .line 198
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_5

    .line 202
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 203
    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_4

    .line 204
    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    if-ne v4, v2, :cond_5

    move/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    goto :goto_3

    .line 214
    :cond_5
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, v9

    cmp-long v1, v1, v11

    if-eqz v1, :cond_6

    move v1, v14

    goto :goto_2

    :cond_6
    move v1, v13

    .line 215
    :goto_2
    invoke-virtual {v0, v8, v4}, Lcom/alibaba/fastjson2/writer/FieldWriterList;->getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v3

    if-eqz v1, :cond_7

    .line 219
    invoke-static {v4}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    move-result v1

    xor-int/2addr v1, v14

    :cond_7
    move/from16 v16, v1

    move-object/from16 v18, v3

    move-object/from16 v17, v4

    :goto_3
    if-eqz v16, :cond_8

    .line 224
    invoke-virtual {v8, v15, v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    .line 228
    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move-object v3, v7

    move-object v11, v7

    move-wide v6, v9

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    if-eqz v16, :cond_9

    .line 231
    invoke-virtual {v8, v11}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    :cond_9
    :goto_4
    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    :goto_5
    add-int/lit8 v15, v15, 0x1

    const-wide/16 v11, 0x0

    goto :goto_1

    .line 234
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method public final writeListValueJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/util/List;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 121
    iget-wide v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->features:J

    invoke-virtual {v8, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    move-result-wide v10

    .line 122
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, v10

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_0

    move v13, v12

    goto :goto_0

    :cond_0
    move v13, v2

    .line 124
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    .line 126
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v10

    cmp-long v1, v5, v3

    if-eqz v1, :cond_1

    move v1, v12

    goto :goto_1

    :cond_1
    move v1, v2

    .line 128
    :goto_1
    iget-object v3, v0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v8, v9, v3}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-virtual {v8, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName(Ljava/lang/String;)V

    .line 133
    :cond_2
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    const/4 v3, 0x0

    move v15, v2

    move-object v2, v3

    :goto_2
    if-ge v15, v14, :cond_b

    .line 135
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto/16 :goto_8

    .line 140
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, v3, :cond_7

    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    move-result v1

    .line 144
    iget-object v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    if-ne v4, v2, :cond_4

    iget-object v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-eqz v2, :cond_4

    goto :goto_3

    .line 147
    :cond_4
    invoke-virtual {v0, v8, v4}, Lcom/alibaba/fastjson2/writer/FieldWriterList;->getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    :goto_3
    if-eqz v1, :cond_6

    .line 151
    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemClass:Ljava/lang/Class;

    if-ne v4, v1, :cond_5

    .line 152
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemClassNotReferenceDetect:Z

    goto :goto_4

    .line 154
    :cond_5
    invoke-static {v4}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    move-result v1

    :goto_4
    xor-int/2addr v1, v12

    :cond_6
    move/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    goto :goto_5

    :cond_7
    move/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    :goto_5
    if-eqz v16, :cond_8

    .line 160
    invoke-virtual {v8, v15, v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_7

    :cond_8
    if-eqz v13, :cond_9

    .line 165
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object v3, v6

    move-object/from16 v19, v6

    move-wide v6, v10

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_6

    :cond_9
    move-object/from16 v19, v6

    .line 167
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    move-wide v6, v10

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_6
    if-eqz v16, :cond_a

    move-object/from16 v1, v19

    .line 171
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    :cond_a
    :goto_7
    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    :goto_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_b
    return-void
.end method
