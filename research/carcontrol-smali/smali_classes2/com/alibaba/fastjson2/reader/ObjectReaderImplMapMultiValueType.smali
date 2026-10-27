.class public Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;
.super Ljava/lang/Object;
.source "ObjectReaderImplMapMultiValueType.java"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# instance fields
.field final builder:Ljava/util/function/Function;

.field final instanceType:Ljava/lang/Class;

.field final mapType:Ljava/lang/Class;

.field final multiValueType:Lcom/alibaba/fastjson2/util/MapMultiValueType;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/util/MapMultiValueType;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;->multiValueType:Lcom/alibaba/fastjson2/util/MapMultiValueType;

    .line 31
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/util/MapMultiValueType;->getMapType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;->mapType:Ljava/lang/Class;

    .line 35
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_c

    const-class v0, Ljava/util/AbstractMap;

    if-eq p1, v0, :cond_c

    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->CLASS_SINGLETON_MAP:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    goto/16 :goto_2

    .line 40
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->CLASS_UNMODIFIABLE_MAP:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 41
    const-class p1, Ljava/util/LinkedHashMap;

    goto/16 :goto_3

    .line 42
    :cond_1
    const-class v0, Ljava/util/SortedMap;

    if-eq p1, v0, :cond_b

    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->CLASS_UNMODIFIABLE_SORTED_MAP:Ljava/lang/Class;

    if-eq p1, v0, :cond_b

    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->CLASS_UNMODIFIABLE_NAVIGABLE_MAP:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    goto/16 :goto_1

    .line 47
    :cond_2
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    if-ne p1, v0, :cond_3

    .line 48
    const-class p1, Ljava/util/concurrent/ConcurrentHashMap;

    goto/16 :goto_3

    .line 49
    :cond_3
    const-class v0, Ljava/util/concurrent/ConcurrentNavigableMap;

    if-ne p1, v0, :cond_4

    .line 50
    const-class p1, Ljava/util/concurrent/ConcurrentSkipListMap;

    goto/16 :goto_3

    .line 52
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "com.google.common.collect.RegularImmutableMap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v3, "com.google.common.collect.ImmutableMap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v3, "java.util.Collections$SynchronizedNavigableMap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v3, "java.util.Collections$SynchronizedMap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v3, "com.google.common.collect.SingletonImmutableBiMap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v3, "java.util.Collections$SynchronizedSortedMap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_3

    .line 55
    :pswitch_0
    const-class p1, Ljava/util/HashMap;

    .line 56
    invoke-static {}, Lcom/alibaba/fastjson2/util/GuavaSupport;->immutableMapConverter()Ljava/util/function/Function;

    move-result-object v1

    goto :goto_3

    .line 67
    :pswitch_1
    const-class p1, Ljava/util/TreeMap;

    .line 68
    sget-object v1, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMapMultiValueType$80Asldl59DOY_NNxKTGMF4O8n6w;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMapMultiValueType$80Asldl59DOY_NNxKTGMF4O8n6w;

    goto :goto_3

    .line 63
    :pswitch_2
    const-class p1, Ljava/util/HashMap;

    .line 64
    sget-object v1, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMapMultiValueType$so52ntfiUt2W36ptSNfrspYimdo;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMapMultiValueType$so52ntfiUt2W36ptSNfrspYimdo;

    goto :goto_3

    .line 59
    :pswitch_3
    const-class p1, Ljava/util/HashMap;

    .line 60
    invoke-static {}, Lcom/alibaba/fastjson2/util/GuavaSupport;->singletonBiMapConverter()Ljava/util/function/Function;

    move-result-object v1

    goto :goto_3

    .line 71
    :pswitch_4
    const-class p1, Ljava/util/TreeMap;

    .line 72
    sget-object v1, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMapMultiValueType$q2UOmpaIwwnhNE4REAAf1v71xO4;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMapMultiValueType$q2UOmpaIwwnhNE4REAAf1v71xO4;

    goto :goto_3

    .line 46
    :cond_b
    :goto_1
    const-class p1, Ljava/util/TreeMap;

    goto :goto_3

    .line 39
    :cond_c
    :goto_2
    const-class p1, Ljava/util/HashMap;

    .line 78
    :goto_3
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;->instanceType:Ljava/lang/Class;

    .line 79
    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;->builder:Ljava/util/function/Function;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7a825504 -> :sswitch_5
        -0x64f58121 -> :sswitch_4
        -0x6007bb47 -> :sswitch_3
        -0x82bc1bc -> :sswitch_2
        0x35fc9059 -> :sswitch_1
        0x79522977 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$80Asldl59DOY_NNxKTGMF4O8n6w(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->synchronizedNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$q2UOmpaIwwnhNE4REAAf1v71xO4(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$so52ntfiUt2W36ptSNfrspYimdo(Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createInstance(J)Ljava/lang/Object;
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;->instanceType:Ljava/lang/Class;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-nez p1, :cond_0

    .line 86
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;->instanceType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 88
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "create map error"

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 91
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_1

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v8

    .line 100
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expect \'{\', but \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getFeatures()J

    move-result-wide v2

    or-long v9, v2, p4

    .line 106
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;->instanceType:Ljava/lang/Class;

    const-class v3, Ljava/util/HashMap;

    if-ne v2, v3, :cond_3

    .line 107
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectSupplier()Ljava/util/function/Supplier;

    move-result-object v1

    .line 108
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;->mapType:Ljava/lang/Class;

    const-class v3, Ljava/util/Map;

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_2

    .line 109
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 110
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getInnerMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    .line 112
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v2, v8

    :goto_0
    move-object v11, v1

    move-object v12, v2

    goto :goto_2

    .line 114
    :cond_3
    const-class v1, Lcom/alibaba/fastjson2/JSONObject;

    if-ne v2, v1, :cond_4

    .line 115
    new-instance v1, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    goto :goto_1

    .line 117
    :cond_4
    invoke-virtual {p0, v9, v10}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;->createInstance(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    :goto_1
    move-object v11, v1

    move-object v12, v8

    :goto_2
    move-object v1, v8

    .line 123
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_8

    .line 127
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x3a

    .line 128
    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v13, v1

    move-object v14, v8

    goto :goto_4

    .line 129
    :cond_6
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "illegal json"

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldName()Ljava/lang/String;

    move-result-object v1

    .line 134
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;->multiValueType:Lcom/alibaba/fastjson2/util/MapMultiValueType;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/util/MapMultiValueType;->getType(Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v2

    move-object v14, v1

    move-object v13, v2

    :goto_4
    if-nez v13, :cond_8

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v1

    goto :goto_5

    .line 141
    :cond_8
    invoke-virtual {v7, v13}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    const-wide/16 v5, 0x0

    move-object/from16 v2, p1

    move-object v3, v13

    move-object/from16 v4, p3

    .line 142
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    :goto_5
    const-wide/16 v2, 0x0

    if-nez v1, :cond_9

    .line 145
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v4, v9

    cmp-long v4, v4, v2

    if-eqz v4, :cond_9

    goto :goto_7

    :cond_9
    if-eqz v12, :cond_a

    .line 151
    invoke-interface {v12, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_6

    .line 153
    :cond_a
    invoke-interface {v11, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_6
    if-eqz v4, :cond_c

    .line 157
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v5, v9

    cmp-long v2, v5, v2

    if-eqz v2, :cond_c

    .line 158
    instance-of v2, v4, Ljava/util/Collection;

    if-eqz v2, :cond_b

    .line 159
    move-object v2, v4

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-interface {v11, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 162
    :cond_b
    invoke-static {v4, v1}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object v1

    .line 163
    invoke-interface {v11, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_7
    move-object v1, v13

    goto/16 :goto_3

    :cond_d
    :goto_8
    const/16 v1, 0x2c

    .line 169
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    .line 171
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;->builder:Ljava/util/function/Function;

    if-eqz v1, :cond_e

    .line 172
    invoke-interface {v1, v11}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_e
    return-object v11
.end method
