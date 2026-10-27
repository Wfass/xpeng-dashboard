.class final Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;
.source "ObjectReaderSeeAlso.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter<",
        "TT;>;"
    }
.end annotation


# direct methods
.method varargs constructor <init>(Ljava/lang/Class;Ljava/util/function/Supplier;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")V"
        }
    .end annotation

    .line 24
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v8, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct/range {v1 .. v13}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-void
.end method


# virtual methods
.method addSubType(Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;
    .locals 9

    const/4 v0, 0x0

    .line 40
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->seeAlso:[Ljava/lang/Class;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->seeAlso:[Ljava/lang/Class;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->seeAlso:[Ljava/lang/Class;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->seeAlso:[Ljava/lang/Class;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Ljava/lang/Class;

    .line 47
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->seeAlsoNames:[Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->seeAlsoNames:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    .line 48
    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    aput-object p1, v5, v0

    if-nez p2, :cond_2

    .line 50
    const-class v0, Lcom/alibaba/fastjson2/annotation/JSONType;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/annotation/JSONType;

    if-eqz p1, :cond_2

    .line 52
    invoke-interface {p1}, Lcom/alibaba/fastjson2/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object p2

    :cond_2
    if-eqz p2, :cond_3

    .line 56
    array-length p1, v6

    add-int/lit8 p1, p1, -0x1

    aput-object p2, v6, p1

    .line 59
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->objectClass:Ljava/lang/Class;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->creator:Ljava/util/function/Supplier;

    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->typeKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->seeAlsoDefault:Ljava/lang/Class;

    iget-object v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;-><init>(Ljava/lang/Class;Ljava/util/function/Supplier;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-object p1
.end method

.method public createInstance(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 72
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->creator:Ljava/util/function/Supplier;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->creator:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    .line 80
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    iget-boolean v0, v6, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->serializable:Z

    if-nez v0, :cond_1

    .line 85
    iget-object v0, v6, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->objectClass:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 88
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-object v2

    .line 93
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readValueHashCode()J

    move-result-wide v4

    .line 96
    :goto_0
    iget-object v0, v6, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->seeAlso:[Ljava/lang/Class;

    array-length v0, v0

    if-ge v3, v0, :cond_5

    .line 97
    iget-object v0, v6, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->seeAlso:[Ljava/lang/Class;

    aget-object v0, v0, v3

    .line 98
    const-class v7, Ljava/lang/Enum;

    invoke-virtual {v7, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 99
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 102
    instance-of v7, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;

    if-eqz v7, :cond_3

    .line 103
    check-cast v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not support input "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->mark()Lcom/alibaba/fastjson2/JSONReader$SavePoint;

    move-result-object v0

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->getFeatures()J

    move-result-wide v4

    or-long v4, v4, p4

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    move-result-wide v4

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_8

    .line 120
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v4

    cmp-long v0, v2, v8

    if-eqz v0, :cond_7

    .line 121
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->readArrayMappingObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 124
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->processObjectInputSingleItemArray(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 128
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v4

    if-nez v4, :cond_c

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v4

    const/16 v5, 0x74

    if-eq v4, v5, :cond_b

    const/16 v5, 0x66

    if-ne v4, v5, :cond_9

    goto :goto_2

    :cond_9
    const/16 v5, 0x22

    if-eq v4, v5, :cond_c

    const/16 v5, 0x27

    if-eq v4, v5, :cond_c

    const/16 v5, 0x7d

    if-ne v4, v5, :cond_a

    goto :goto_3

    .line 138
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_b
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    return-object v2

    :cond_c
    :goto_3
    move-object v4, v2

    .line 143
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v5

    if-eqz v5, :cond_10

    if-nez v4, :cond_d

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getFeatures()J

    move-result-wide v2

    or-long v2, v2, p4

    invoke-virtual {v6, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->createInstance(J)Ljava/lang/Object;

    move-result-object v4

    .line 246
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->getBuildFunction()Ljava/util/function/Function;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 250
    invoke-interface {v0, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 253
    :cond_e
    iget-object v0, v6, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v0, :cond_f

    .line 254
    iget-object v0, v6, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(Ljava/lang/Object;)V

    :cond_f
    return-object v4

    .line 150
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v5

    .line 151
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v10

    .line 152
    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONReader$Context;->getContextAutoTypeBeforeHandler()Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    move-result-object v7

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->getTypeKeyHash()J

    move-result-wide v12

    cmp-long v12, v10, v12

    if-nez v12, :cond_20

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->getFeatures()J

    move-result-wide v12

    or-long v12, p4, v12

    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONReader$Context;->getFeatures()J

    move-result-wide v14

    or-long v13, v12, v14

    sget-object v12, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    move/from16 v18, v3

    iget-wide v2, v12, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v13

    cmp-long v2, v2, v8

    if-nez v2, :cond_11

    if-eqz v7, :cond_21

    .line 157
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide v2

    const-wide/16 v15, -0x1

    cmp-long v12, v2, v15

    if-nez v12, :cond_12

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->isNumber()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    move-result-object v2

    .line 163
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-static {v3}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v15

    move-object/from16 v19, v3

    move-wide/from16 v22, v15

    move-object v15, v2

    move-wide/from16 v2, v22

    goto :goto_5

    :cond_12
    const/4 v15, 0x0

    const/16 v19, 0x0

    :goto_5
    if-eqz v7, :cond_14

    .line 167
    iget-object v12, v6, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->objectClass:Ljava/lang/Class;

    move-object/from16 v16, v12

    move-object v12, v7

    move-wide/from16 v20, v13

    move-wide v13, v2

    move-object v8, v15

    move-object/from16 v15, v16

    move-wide/from16 v16, v20

    invoke-interface/range {v12 .. v17}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(JLjava/lang/Class;J)Ljava/lang/Class;

    move-result-object v9

    if-nez v9, :cond_13

    .line 169
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v9

    iget-object v12, v6, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->objectClass:Ljava/lang/Class;

    move-wide/from16 v13, v20

    invoke-interface {v7, v9, v12, v13, v14}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_15

    .line 171
    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v7

    goto :goto_7

    :cond_13
    move-wide/from16 v13, v20

    goto :goto_6

    :cond_14
    move-object v8, v15

    :cond_15
    :goto_6
    const/4 v7, 0x0

    :goto_7
    if-nez v7, :cond_16

    .line 177
    invoke-virtual {v6, v5, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->autoType(Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v7

    :cond_16
    if-nez v7, :cond_19

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v2

    .line 183
    iget-object v3, v6, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->objectClass:Ljava/lang/Class;

    invoke-virtual {v5, v2, v3, v13, v14}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v3

    if-nez v3, :cond_17

    .line 187
    iget-object v7, v6, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->seeAlsoDefault:Ljava/lang/Class;

    if-eqz v7, :cond_17

    .line 188
    iget-object v3, v6, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->seeAlsoDefault:Ljava/lang/Class;

    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v3

    :cond_17
    if-eqz v3, :cond_18

    goto :goto_8

    .line 192
    :cond_18
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No suitable ObjectReader found for"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    move-object v3, v7

    const/4 v2, 0x0

    :goto_8
    if-ne v3, v6, :cond_1a

    goto/16 :goto_c

    .line 200
    :cond_1a
    invoke-interface {v3, v10, v11}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v7

    if-eqz v7, :cond_1c

    if-nez v2, :cond_1c

    if-eqz v19, :cond_1b

    goto :goto_9

    .line 205
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v19

    :goto_9
    move-object/from16 v9, v19

    goto :goto_a

    :cond_1c
    move-object v9, v2

    :goto_a
    if-eqz v18, :cond_1d

    .line 210
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReader;->reset(Lcom/alibaba/fastjson2/JSONReader$SavePoint;)V

    .line 214
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->getFeatures()J

    move-result-wide v4

    or-long v4, p4, v4

    move-object v0, v3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 213
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v7, :cond_1f

    if-eqz v8, :cond_1e

    .line 219
    invoke-virtual {v7, v0, v8}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    .line 221
    :cond_1e
    invoke-virtual {v7, v0, v9}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    :goto_b
    return-object v0

    :cond_20
    move/from16 v18, v3

    .line 228
    :cond_21
    invoke-virtual {v6, v10, v11}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v2

    if-nez v2, :cond_22

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->getFeatures()J

    move-result-wide v7

    or-long v7, p4, v7

    invoke-virtual {v1, v7, v8}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 230
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    move-result-wide v2

    .line 231
    invoke-virtual {v6, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v2

    :cond_22
    if-nez v4, :cond_23

    .line 235
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getFeatures()J

    move-result-wide v3

    or-long v3, v3, p4

    invoke-virtual {v6, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->createInstance(J)Ljava/lang/Object;

    move-result-object v4

    :cond_23
    if-nez v2, :cond_24

    .line 239
    invoke-virtual {v6, v1, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_c

    .line 243
    :cond_24
    invoke-virtual {v2, v1, v4}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    :goto_c
    add-int/lit8 v3, v18, 0x1

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    goto/16 :goto_4
.end method
