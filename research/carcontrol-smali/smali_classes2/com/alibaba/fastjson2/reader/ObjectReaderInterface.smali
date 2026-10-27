.class public final Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;
.source "ObjectReaderInterface.java"


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
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 10

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 25
    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-void
.end method


# virtual methods
.method public createInstance(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 226
    new-instance p1, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 227
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->objectClass:Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->newProxyInstance(Ljava/lang/Class;Lcom/alibaba/fastjson2/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createInstance(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "J)TT;"
        }
    .end annotation

    .line 233
    instance-of p2, p1, Lcom/alibaba/fastjson2/JSONObject;

    if-eqz p2, :cond_0

    .line 234
    check-cast p1, Lcom/alibaba/fastjson2/JSONObject;

    goto :goto_0

    .line 236
    :cond_0
    new-instance p2, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONObject;-><init>(Ljava/util/Map;)V

    move-object p1, p2

    .line 238
    :goto_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->objectClass:Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->newProxyInstance(Ljava/lang/Class;Lcom/alibaba/fastjson2/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 30
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    return-object v6

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->objectClass:Ljava/lang/Class;

    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->typeNameHash:J

    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->features:J

    or-long/2addr v4, p4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    invoke-interface {v0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->objectClass:Ljava/lang/Class;

    if-eq v1, v2, :cond_1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 36
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isSupportBeanArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 43
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expect object, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    move-result v2

    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 49
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 52
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 95
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->objectClass:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->newProxyInstance(Ljava/lang/Class;Lcom/alibaba/fastjson2/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v1, :cond_4

    .line 97
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(Ljava/lang/Object;)V

    :cond_4
    return-object v0

    .line 56
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v2

    .line 57
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->typeKeyHashCode:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_9

    if-nez v1, :cond_9

    .line 58
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readValueHashCode()J

    move-result-wide v2

    .line 59
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v4

    .line 60
    invoke-virtual {p0, v4, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->autoType(Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    if-nez v2, :cond_7

    .line 62
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {v4, v2, v6}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v3

    if-eqz v3, :cond_6

    move-object v2, v3

    goto :goto_1

    .line 66
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auotype not support : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_1
    if-ne v2, p0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x1

    .line 74
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->setTypeRedirect(Z)V

    move-object v0, v2

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 75
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_9
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_a

    goto :goto_2

    .line 82
    :cond_a
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v2

    if-nez v2, :cond_b

    .line 83
    iget-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->features:J

    or-long/2addr v3, p4

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 84
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    move-result-wide v2

    .line 85
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v2

    :cond_b
    if-nez v2, :cond_c

    .line 88
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 90
    :cond_c
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object v3

    .line 91
    iget-object v2, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 105
    iget-boolean v1, v2, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 109
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-object v3

    .line 114
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->getFeatures()J

    move-result-wide v4

    or-long v4, v4, p4

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson2/JSONReader;->isSupportBeanArray(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->readArrayMappingObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 119
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v4

    if-nez v4, :cond_6

    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v4

    const/16 v5, 0x74

    if-eq v4, v5, :cond_5

    const/16 v5, 0x66

    if-ne v4, v5, :cond_3

    goto :goto_0

    :cond_3
    const/16 v5, 0x22

    if-eq v4, v5, :cond_6

    const/16 v5, 0x27

    if-eq v4, v5, :cond_6

    const/16 v5, 0x7d

    if-ne v4, v5, :cond_4

    goto :goto_1

    .line 130
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_5
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    return-object v3

    :cond_6
    :goto_1
    const/4 v4, 0x0

    .line 135
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 209
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 211
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->objectClass:Ljava/lang/Class;

    invoke-static {v2, v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->newProxyInstance(Ljava/lang/Class;Lcom/alibaba/fastjson2/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->getBuildFunction()Ljava/util/function/Function;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 214
    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 217
    :cond_7
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v2, :cond_8

    .line 218
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(Ljava/lang/Object;)V

    :cond_8
    return-object v1

    .line 139
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v5

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v6

    .line 141
    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONReader$Context;->getContextAutoTypeBeforeHandler()Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    move-result-object v14

    if-nez v4, :cond_14

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->getTypeKeyHash()J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-nez v8, :cond_14

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->getFeatures()J

    move-result-wide v8

    or-long v8, p4, v8

    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONReader$Context;->getFeatures()J

    move-result-wide v10

    or-long v12, v8, v10

    sget-object v8, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v8, v12

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_a

    if-eqz v14, :cond_14

    .line 148
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide v9

    if-eqz v14, :cond_c

    .line 150
    iget-object v11, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->objectClass:Ljava/lang/Class;

    move-object v8, v14

    move-wide/from16 p2, v9

    move-wide v15, v12

    invoke-interface/range {v8 .. v13}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(JLjava/lang/Class;J)Ljava/lang/Class;

    move-result-object v8

    if-nez v8, :cond_b

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->objectClass:Ljava/lang/Class;

    move-wide v10, v15

    invoke-interface {v14, v8, v9, v10, v11}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 154
    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v8

    goto :goto_4

    :cond_b
    move-wide v10, v15

    goto :goto_3

    :cond_c
    move-wide/from16 p2, v9

    move-wide v10, v12

    :cond_d
    :goto_3
    move-object v8, v3

    :goto_4
    if-nez v8, :cond_e

    move-wide/from16 v12, p2

    .line 160
    invoke-virtual {v0, v5, v12, v13}, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->autoType(Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v8

    :cond_e
    if-nez v8, :cond_10

    .line 165
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v8

    .line 166
    iget-object v9, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->objectClass:Ljava/lang/Class;

    invoke-virtual {v5, v8, v9, v10, v11}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v5

    if-eqz v5, :cond_f

    goto :goto_5

    .line 171
    :cond_f
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No suitable ObjectReader found for"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    move-object v5, v8

    move-object v8, v3

    :goto_5
    if-ne v5, v0, :cond_11

    goto :goto_6

    .line 179
    :cond_11
    invoke-interface {v5, v6, v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v7

    if-eqz v7, :cond_12

    if-nez v8, :cond_12

    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v8

    :cond_12
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->getFeatures()J

    move-result-wide v9

    or-long v9, p4, v9

    move-object v1, v5

    move-object/from16 v2, p1

    move-wide v5, v9

    .line 184
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v7, :cond_13

    .line 189
    invoke-virtual {v7, v1, v8}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_13
    return-object v1

    .line 195
    :cond_14
    invoke-virtual {v0, v6, v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v5

    if-nez v5, :cond_15

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->getFeatures()J

    move-result-wide v6

    or-long v6, p4, v6

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    move-result-wide v5

    .line 198
    invoke-virtual {v0, v5, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderInterface;->getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v5

    :cond_15
    if-nez v5, :cond_16

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 204
    :cond_16
    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object v6

    .line 205
    iget-object v5, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/fastjson2/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2
.end method
