.class public final Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "ObjectReaderImplObject.java"


# static fields
.field public static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public createInstance(J)Ljava/lang/Object;
    .locals 0

    .line 25
    new-instance p1, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    return-object p1
.end method

.method public createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public createInstance(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 9

    .line 34
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;->getTypeKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 37
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 38
    check-cast v1, Ljava/lang/String;

    .line 39
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x0

    .line 41
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v5, p2

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 42
    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;->autoType(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    :cond_0
    if-nez v4, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;->getObjectClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;->getFeatures()J

    move-result-wide v3

    or-long/2addr v3, p2

    .line 46
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No suitable ObjectReader found for"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-eq v4, p0, :cond_3

    .line 56
    invoke-interface {v4, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public bridge synthetic getObjectClass()Ljava/lang/Class;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;->getObjectClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 12

    .line 311
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    move-result v0

    const/16 v1, 0x49

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_0

    .line 313
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, -0x6e

    if-ne v0, v1, :cond_1

    .line 317
    const-class v3, Ljava/lang/Object;

    const-wide/16 v4, 0x0

    move-object v2, p1

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v6

    if-eqz v6, :cond_1

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-wide/from16 v10, p4

    .line 319
    invoke-interface/range {v6 .. v11}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, -0x51

    if-ne v0, v1, :cond_2

    .line 324
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    const/4 v0, 0x0

    return-object v0

    .line 328
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p1

    move-wide/from16 v4, p4

    .line 65
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getFeatures()J

    move-result-wide v2

    or-long/2addr v2, v4

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->isObject()Z

    move-result v6

    const/16 v14, 0x27

    const/16 v15, 0x22

    const/16 v7, 0x5b

    if-eqz v6, :cond_20

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v6

    const/4 v8, 0x0

    const-wide/16 v16, 0x0

    if-eqz v6, :cond_9

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v18

    .line 80
    sget-wide v20, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;->HASH_TYPE:J

    cmp-long v6, v18, v20

    if-nez v6, :cond_8

    .line 81
    sget-object v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson2/JSONReader$Context;->isEnabled(Lcom/alibaba/fastjson2/JSONReader$Feature;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide v9

    .line 87
    invoke-virtual {v0, v9, v10}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 90
    invoke-interface {v9}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 92
    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    if-eq v6, v11, :cond_2

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v6

    if-nez v11, :cond_1

    .line 100
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    .line 102
    :cond_1
    invoke-virtual {v11, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v11, v8

    .line 106
    :goto_0
    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 107
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v9

    goto :goto_1

    :cond_2
    move-object v6, v8

    :cond_3
    :goto_1
    if-nez v9, :cond_6

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v6

    .line 115
    invoke-virtual {v0, v6, v8}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v9

    goto :goto_2

    .line 118
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v6

    .line 119
    invoke-virtual {v0, v6, v8}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v9

    if-nez v9, :cond_6

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v10

    sget-object v11, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson2/JSONReader$Context;->isEnabled(Lcom/alibaba/fastjson2/JSONReader$Feature;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_2

    .line 122
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoType not support : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    if-eqz v9, :cond_7

    const/4 v0, 0x1

    .line 127
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReader;->setTypeRedirect(Z)V

    move-object v0, v9

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    .line 129
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7
    move-object v9, v6

    goto :goto_3

    :cond_8
    move-object v9, v8

    goto :goto_3

    :cond_9
    move-object v9, v8

    move-wide/from16 v18, v16

    .line 135
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectSupplier()Ljava/util/function/Supplier;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 137
    invoke-interface {v6}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_4

    .line 139
    :cond_a
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getFeatures()J

    move-result-wide v10

    or-long/2addr v10, v4

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v12, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v10, v12

    cmp-long v0, v10, v16

    if-eqz v0, :cond_b

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_4

    .line 142
    :cond_b
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->INSTANCE_OBJECT:Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->createInstance(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :goto_4
    if-eqz v9, :cond_d

    .line 147
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    const-string v4, "java.util.ImmutableCollections$Map1"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "java.util.ImmutableCollections$MapN"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "@type"

    .line 152
    invoke-interface {v0, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    move-wide/from16 v18, v16

    :cond_d
    const/4 v4, 0x0

    .line 159
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-object v0

    :cond_e
    const/16 v5, 0x3a

    if-nez v4, :cond_f

    if-nez v9, :cond_f

    cmp-long v6, v18, v16

    if-eqz v6, :cond_f

    .line 165
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 166
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->isNumber()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    move-result-object v6

    .line 168
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    goto :goto_6

    .line 170
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldName()Ljava/lang/String;

    move-result-object v6

    :goto_6
    const/16 v10, 0x7b

    if-nez v6, :cond_14

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v6

    if-eq v6, v10, :cond_12

    if-ne v6, v7, :cond_11

    goto :goto_7

    .line 180
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameUnquote()Ljava/lang/String;

    move-result-object v6

    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v11

    if-ne v11, v5, :cond_14

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    goto :goto_8

    .line 175
    :cond_12
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v6

    .line 176
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_8

    .line 177
    :cond_13
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "illegal input"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_8
    move-object v5, v6

    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v11

    if-eq v11, v15, :cond_1c

    if-eq v11, v14, :cond_1c

    const/16 v6, 0x2b

    if-eq v11, v6, :cond_1b

    const/16 v6, 0x53

    if-eq v11, v6, :cond_19

    if-eq v11, v7, :cond_18

    const/16 v6, 0x66

    if-eq v11, v6, :cond_17

    const/16 v6, 0x6e

    if-eq v11, v6, :cond_16

    const/16 v6, 0x74

    if-eq v11, v6, :cond_17

    if-eq v11, v10, :cond_15

    const/16 v10, 0x2d

    if-eq v11, v10, :cond_1b

    const/16 v10, 0x2e

    if-eq v11, v10, :cond_1b

    packed-switch v11, :pswitch_data_0

    .line 230
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    move-result-object v10

    goto :goto_9

    .line 219
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readNull()V

    move-object v10, v8

    goto :goto_9

    .line 216
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_9

    .line 205
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    move-result-object v10

    goto :goto_9

    .line 223
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfSet()Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 224
    const-class v10, Ljava/util/HashSet;

    invoke-virtual {v1, v10}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_9

    .line 226
    :cond_1a
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1b
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    move-result-object v10

    goto :goto_9

    .line 212
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v10

    :goto_9
    if-nez v10, :cond_1d

    .line 233
    sget-object v11, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v11, v11, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v11, v2

    cmp-long v11, v11, v16

    if-eqz v11, :cond_1d

    goto :goto_a

    .line 237
    :cond_1d
    invoke-interface {v0, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1f

    .line 239
    sget-object v12, Lcom/alibaba/fastjson2/JSONReader$Feature;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v12, v12, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v12, v2

    cmp-long v12, v12, v16

    if-eqz v12, :cond_1f

    .line 240
    instance-of v12, v11, Ljava/util/Collection;

    if-eqz v12, :cond_1e

    .line 241
    move-object v12, v11

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 244
    :cond_1e
    invoke-static {v11, v10}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object v10

    .line 245
    invoke-interface {v0, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 256
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_21

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->skipComment()V

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v0

    :cond_21
    if-eq v0, v15, :cond_28

    if-eq v0, v14, :cond_28

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_27

    const/16 v2, 0x53

    if-eq v0, v2, :cond_25

    if-eq v0, v7, :cond_24

    const/16 v2, 0x66

    if-eq v0, v2, :cond_23

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_22

    const/16 v2, 0x74

    if-eq v0, v2, :cond_23

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_27

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_27

    packed-switch v0, :pswitch_data_1

    .line 303
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_22
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readNullOrNewDate()Ljava/util/Date;

    move-result-object v0

    goto :goto_b

    .line 288
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_b

    .line 280
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    move-result-object v0

    goto :goto_b

    .line 294
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfSet()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 295
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 296
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Collection;)V

    goto :goto_b

    .line 299
    :cond_26
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_27
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    move-result-object v0

    goto :goto_b

    .line 284
    :cond_28
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
