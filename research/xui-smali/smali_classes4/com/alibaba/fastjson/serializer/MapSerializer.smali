.class public Lcom/alibaba/fastjson/serializer/MapSerializer;
.super Lcom/alibaba/fastjson/serializer/SerializeFilterable;
.source "MapSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field private static final NON_STRINGKEY_AS_STRING:I

.field public static instance:Lcom/alibaba/fastjson/serializer/MapSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lcom/alibaba/fastjson/serializer/MapSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MapSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v0

    sput v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->NON_STRINGKEY_AS_STRING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 7
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/serializer/MapSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    .line 45
    return-void
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V
    .locals 31
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .param p6, "unwrapped"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move/from16 v12, p5

    .line 54
    iget-object v14, v9, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 56
    .local v14, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez v10, :cond_0

    .line 57
    invoke-virtual {v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 58
    return-void

    .line 61
    :cond_0
    move-object v0, v10

    check-cast v0, Ljava/util/Map;

    .line 62
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->MapSortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v15, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 63
    .local v15, "mapSortFieldMask":I
    iget v1, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v1, v15

    if-nez v1, :cond_2

    and-int v1, v12, v15

    if-eqz v1, :cond_1

    goto :goto_1

    .line 77
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_1
    :goto_0
    move-object v7, v0

    goto :goto_2

    .line 64
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_2
    :goto_1
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_3

    .line 65
    move-object v1, v0

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v0

    .line 68
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_3
    move-object v1, v0

    instance-of v0, v1, Ljava/util/SortedMap;

    if-nez v0, :cond_4

    instance-of v0, v1, Ljava/util/LinkedHashMap;

    if-nez v0, :cond_4

    .line 70
    :try_start_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    goto :goto_0

    .line 71
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :catch_0
    move-exception v0

    .line 77
    :cond_4
    move-object v7, v1

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .restart local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :goto_2
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 78
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    .line 79
    return-void

    .line 82
    :cond_5
    iget-object v6, v9, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 83
    .local v6, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    const/4 v0, 0x0

    move-object/from16 v4, p3

    invoke-virtual {v9, v6, v10, v4, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 85
    if-nez p6, :cond_6

    .line 86
    const/16 v1, 0x7b

    :try_start_1
    invoke-virtual {v14, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 275
    :catchall_0
    move-exception v0

    move-object v1, v6

    move-object v3, v7

    move/from16 v28, v15

    goto/16 :goto_1c

    .line 89
    :cond_6
    :goto_3
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 94
    .local v2, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    const/4 v3, 0x1

    .line 96
    .local v3, "first":Z
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v14, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v5, :cond_9

    .line 97
    :try_start_3
    iget-object v5, v9, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object v5, v5, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 98
    .local v5, "typeKey":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    move-object/from16 v17, v16

    .line 99
    .local v17, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v19, v1

    move-object/from16 v1, v17

    if-eq v1, v0, :cond_7

    .end local v17    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v19, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/util/HashMap;

    if-eq v1, v0, :cond_7

    const-class v0, Ljava/util/LinkedHashMap;

    if-ne v1, v0, :cond_8

    .line 100
    :cond_7
    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    .line 101
    .local v0, "containsKey":Z
    :goto_4
    if-nez v0, :cond_a

    .line 102
    invoke-virtual {v14, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 103
    move/from16 v20, v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .end local v0    # "containsKey":Z
    .local v20, "containsKey":Z
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    const/4 v3, 0x0

    .end local v1    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "typeKey":Ljava/lang/String;
    .end local v20    # "containsKey":Z
    goto :goto_5

    .line 108
    .end local v19    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    move-object/from16 v19, v1

    .end local v1    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v19    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    :goto_5
    :try_start_4
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v3, v19

    .end local v2    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v19    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v3, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v16, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .local v17, "first":Z
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v1, :cond_34

    :try_start_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v2, v1

    .line 109
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 111
    .local v1, "value":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 114
    .local v5, "entryKey":Ljava/lang/Object;
    move-object/from16 v21, v0

    iget-object v0, v9, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 115
    .local v0, "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    if-eqz v0, :cond_e

    :try_start_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_e

    .line 116
    if-eqz v5, :cond_d

    move-object/from16 v22, v0

    instance-of v0, v5, Ljava/lang/String;

    .end local v0    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .local v22, "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    if-eqz v0, :cond_b

    goto :goto_7

    .line 120
    :cond_b
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_c

    instance-of v0, v5, Ljava/lang/Number;

    if-eqz v0, :cond_e

    .line 121
    :cond_c
    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "strKey":Ljava/lang/String;
    invoke-virtual {v8, v9, v10, v0}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_e

    .line 123
    goto :goto_8

    .line 117
    .end local v22    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .local v0, "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    :cond_d
    move-object/from16 v22, v0

    .end local v0    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .restart local v22    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    :goto_7
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v0}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v0, :cond_e

    .line 118
    nop

    .line 108
    .end local v1    # "value":Ljava/lang/Object;
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "entryKey":Ljava/lang/Object;
    .end local v22    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    :goto_8
    move-object/from16 v29, v6

    move-object v13, v7

    move/from16 v28, v15

    move-object v15, v3

    goto/16 :goto_15

    .line 129
    .restart local v1    # "value":Ljava/lang/Object;
    .restart local v2    # "entry":Ljava/util/Map$Entry;
    .restart local v5    # "entryKey":Ljava/lang/Object;
    :cond_e
    :try_start_7
    iget-object v0, v8, Lcom/alibaba/fastjson/serializer/MapSerializer;->propertyPreFilters:Ljava/util/List;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 130
    .restart local v0    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    if-eqz v0, :cond_12

    :try_start_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_12

    .line 131
    if-eqz v5, :cond_11

    move-object/from16 v23, v0

    instance-of v0, v5, Ljava/lang/String;

    .end local v0    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .local v23, "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    if-eqz v0, :cond_f

    goto :goto_9

    .line 135
    :cond_f
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_10

    instance-of v0, v5, Ljava/lang/Number;

    if-eqz v0, :cond_12

    .line 136
    :cond_10
    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "strKey":Ljava/lang/String;
    invoke-virtual {v8, v9, v10, v0}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_12

    .line 138
    goto :goto_8

    .line 132
    .end local v23    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .local v0, "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    :cond_11
    move-object/from16 v23, v0

    .end local v0    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .restart local v23    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    :goto_9
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v0}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v0, :cond_12

    .line 133
    goto :goto_8

    .line 145
    .end local v23    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    :cond_12
    :try_start_9
    iget-object v0, v9, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 146
    .local v0, "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    if-eqz v0, :cond_16

    :try_start_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_16

    .line 147
    if-eqz v5, :cond_15

    move-object/from16 v24, v0

    instance-of v0, v5, Ljava/lang/String;

    .end local v0    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .local v24, "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    if-eqz v0, :cond_13

    goto :goto_a

    .line 151
    :cond_13
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_14

    instance-of v0, v5, Ljava/lang/Number;

    if-eqz v0, :cond_16

    .line 152
    :cond_14
    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "strKey":Ljava/lang/String;
    invoke-virtual {v8, v9, v10, v0, v1}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_16

    .line 154
    goto :goto_8

    .line 148
    .end local v24    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .local v0, "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    :cond_15
    move-object/from16 v24, v0

    .end local v0    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .restart local v24    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    :goto_a
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v0, v1}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez v0, :cond_16

    .line 149
    goto :goto_8

    .line 160
    .end local v24    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    :cond_16
    :try_start_b
    iget-object v0, v8, Lcom/alibaba/fastjson/serializer/MapSerializer;->propertyFilters:Ljava/util/List;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 161
    .restart local v0    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    if-eqz v0, :cond_1a

    :try_start_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_1a

    .line 162
    if-eqz v5, :cond_19

    move-object/from16 v25, v0

    instance-of v0, v5, Ljava/lang/String;

    .end local v0    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .local v25, "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    if-eqz v0, :cond_17

    goto :goto_b

    .line 166
    :cond_17
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_18

    instance-of v0, v5, Ljava/lang/Number;

    if-eqz v0, :cond_1a

    .line 167
    :cond_18
    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "strKey":Ljava/lang/String;
    invoke-virtual {v8, v9, v10, v0, v1}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1a

    .line 169
    goto/16 :goto_8

    .line 163
    .end local v25    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .local v0, "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    :cond_19
    move-object/from16 v25, v0

    .end local v0    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .restart local v25    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    :goto_b
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v0, v1}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-nez v0, :cond_1a

    .line 164
    goto/16 :goto_8

    .line 176
    .end local v25    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    :cond_1a
    :try_start_d
    iget-object v0, v9, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 177
    .local v0, "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    if-eqz v0, :cond_1e

    :try_start_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_1e

    .line 178
    if-eqz v5, :cond_1d

    move-object/from16 v26, v0

    instance-of v0, v5, Ljava/lang/String;

    .end local v0    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .local v26, "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    if-eqz v0, :cond_1b

    goto :goto_c

    .line 180
    :cond_1b
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1c

    instance-of v0, v5, Ljava/lang/Number;

    if-eqz v0, :cond_1e

    .line 181
    :cond_1c
    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "strKey":Ljava/lang/String;
    invoke-virtual {v8, v9, v10, v0, v1}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v5, v19

    .end local v0    # "strKey":Ljava/lang/String;
    .end local v26    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    goto :goto_d

    .line 179
    .local v0, "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    :cond_1d
    move-object/from16 v26, v0

    .end local v0    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .restart local v26    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    :goto_c
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v0, v1}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-object v5, v0

    .line 187
    .end local v26    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    :cond_1e
    :goto_d
    :try_start_f
    iget-object v0, v8, Lcom/alibaba/fastjson/serializer/MapSerializer;->nameFilters:Ljava/util/List;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 188
    .restart local v0    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    if-eqz v0, :cond_22

    :try_start_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_22

    .line 189
    if-eqz v5, :cond_21

    move-object/from16 v27, v0

    instance-of v0, v5, Ljava/lang/String;

    .end local v0    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .local v27, "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    if-eqz v0, :cond_1f

    goto :goto_e

    .line 191
    :cond_1f
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_20

    instance-of v0, v5, Ljava/lang/Number;

    if-eqz v0, :cond_22

    .line 192
    :cond_20
    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "strKey":Ljava/lang/String;
    invoke-virtual {v8, v9, v10, v0, v1}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    .end local v5    # "entryKey":Ljava/lang/Object;
    .end local v27    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .local v0, "entryKey":Ljava/lang/Object;
    goto :goto_f

    .line 190
    .local v0, "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .restart local v5    # "entryKey":Ljava/lang/Object;
    :cond_21
    move-object/from16 v27, v0

    .end local v0    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .restart local v27    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    :goto_e
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v0, v1}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .end local v5    # "entryKey":Ljava/lang/Object;
    .local v0, "entryKey":Ljava/lang/Object;
    goto :goto_f

    .line 199
    .end local v0    # "entryKey":Ljava/lang/Object;
    .end local v27    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .restart local v5    # "entryKey":Ljava/lang/Object;
    :cond_22
    move-object v0, v5

    .end local v5    # "entryKey":Ljava/lang/Object;
    .restart local v0    # "entryKey":Ljava/lang/Object;
    :goto_f
    if-eqz v0, :cond_27

    :try_start_11
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_23

    .line 200
    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v29, v6

    move-object v13, v7

    move/from16 v28, v15

    move-object v15, v3

    goto :goto_12

    .line 202
    :cond_23
    instance-of v5, v0, Ljava/util/Map;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-nez v5, :cond_25

    :try_start_12
    instance-of v5, v0, Ljava/util/Collection;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eqz v5, :cond_24

    goto :goto_10

    :cond_24
    const/4 v5, 0x0

    goto :goto_11

    :cond_25
    :goto_10
    const/4 v5, 0x1

    :goto_11
    move/from16 v19, v5

    .line 203
    .local v19, "objectOrArray":Z
    if-nez v19, :cond_26

    .line 204
    :try_start_13
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 205
    .local v5, "strKey":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v22, v1

    move-object v1, v8

    .end local v1    # "value":Ljava/lang/Object;
    .local v22, "value":Ljava/lang/Object;
    move-object/from16 v23, v2

    move-object v2, v9

    .end local v2    # "entry":Ljava/util/Map$Entry;
    .local v23, "entry":Ljava/util/Map$Entry;
    move/from16 v28, v15

    move-object v15, v3

    move-object/from16 v3, v20

    .end local v3    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v15, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v28, "mapSortFieldMask":I
    move-object v4, v10

    move-object/from16 v29, v6

    move-object/from16 v6, v22

    .end local v6    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .local v29, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    move-object v13, v7

    move v7, v12

    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local v13, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :try_start_14
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .end local v5    # "strKey":Ljava/lang/String;
    .end local v19    # "objectOrArray":Z
    .end local v22    # "value":Ljava/lang/Object;
    .restart local v1    # "value":Ljava/lang/Object;
    goto :goto_13

    .line 210
    .end local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v23    # "entry":Ljava/util/Map$Entry;
    .end local v28    # "mapSortFieldMask":I
    .end local v29    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v2    # "entry":Ljava/util/Map$Entry;
    .restart local v3    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local v15, "mapSortFieldMask":I
    :cond_26
    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v29, v6

    move-object v13, v7

    move/from16 v28, v15

    move-object v15, v3

    move-object/from16 v7, v22

    .end local v1    # "value":Ljava/lang/Object;
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .restart local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local v15, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v22    # "value":Ljava/lang/Object;
    .restart local v23    # "entry":Ljava/util/Map$Entry;
    .restart local v28    # "mapSortFieldMask":I
    .restart local v29    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto :goto_14

    .line 200
    .end local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v22    # "value":Ljava/lang/Object;
    .end local v23    # "entry":Ljava/util/Map$Entry;
    .end local v28    # "mapSortFieldMask":I
    .end local v29    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v1    # "value":Ljava/lang/Object;
    .restart local v2    # "entry":Ljava/util/Map$Entry;
    .restart local v3    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local v15, "mapSortFieldMask":I
    :cond_27
    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v29, v6

    move-object v13, v7

    move/from16 v28, v15

    move-object v15, v3

    .end local v1    # "value":Ljava/lang/Object;
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .restart local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local v15, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v22    # "value":Ljava/lang/Object;
    .restart local v23    # "entry":Ljava/util/Map$Entry;
    .restart local v28    # "mapSortFieldMask":I
    .restart local v29    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :goto_12
    const/4 v3, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    move-object v1, v8

    move-object v2, v9

    move-object v4, v10

    move-object/from16 v6, v22

    move v7, v12

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 210
    .end local v22    # "value":Ljava/lang/Object;
    .local v7, "value":Ljava/lang/Object;
    :goto_13
    move-object v7, v1

    :goto_14
    if-nez v7, :cond_28

    .line 211
    iget v1, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v1, v12, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(IILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 212
    nop

    .line 108
    .end local v0    # "entryKey":Ljava/lang/Object;
    .end local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v23    # "entry":Ljava/util/Map$Entry;
    .end local v28    # "mapSortFieldMask":I
    .end local v29    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v3    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local v15, "mapSortFieldMask":I
    :goto_15
    move-object/from16 v4, p3

    move-object v7, v13

    move-object v3, v15

    move-object/from16 v0, v21

    move/from16 v15, v28

    move-object/from16 v6, v29

    .end local v3    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .restart local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local v15, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v28    # "mapSortFieldMask":I
    .restart local v29    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto/16 :goto_6

    .line 216
    .restart local v0    # "entryKey":Ljava/lang/Object;
    .local v7, "value":Ljava/lang/Object;
    .restart local v23    # "entry":Ljava/util/Map$Entry;
    :cond_28
    instance-of v1, v0, Ljava/lang/String;

    const/16 v2, 0x2c

    if-eqz v1, :cond_2b

    .line 217
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 219
    .local v1, "key":Ljava/lang/String;
    if-nez v17, :cond_29

    .line 220
    invoke-virtual {v14, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 223
    :cond_29
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v14, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 226
    :cond_2a
    const/4 v2, 0x1

    invoke-virtual {v14, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 227
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_17

    .line 228
    :cond_2b
    if-nez v17, :cond_2c

    .line 229
    invoke-virtual {v14, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 232
    :cond_2c
    sget v1, Lcom/alibaba/fastjson/serializer/MapSerializer;->NON_STRINGKEY_AS_STRING:I

    invoke-virtual {v14, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_2d

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v12, v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_2e

    :cond_2d
    instance-of v1, v0, Ljava/lang/Enum;

    if-nez v1, :cond_2e

    .line 234
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "strEntryKey":Ljava/lang/String;
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 236
    .end local v1    # "strEntryKey":Ljava/lang/String;
    goto :goto_16

    .line 237
    :cond_2e
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 240
    :goto_16
    const/16 v1, 0x3a

    invoke-virtual {v14, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 243
    :goto_17
    const/16 v17, 0x0

    .line 245
    if-nez v7, :cond_2f

    .line 246
    invoke-virtual {v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 247
    nop

    .line 108
    move-object/from16 v4, p3

    move-object v7, v13

    move-object v3, v15

    .end local v0    # "entryKey":Ljava/lang/Object;
    .end local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v23    # "entry":Ljava/util/Map$Entry;
    .end local v28    # "mapSortFieldMask":I
    .end local v29    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v3    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local v15, "mapSortFieldMask":I
    :goto_18
    move-object/from16 v0, v21

    move/from16 v15, v28

    move-object/from16 v6, v29

    goto/16 :goto_6

    .line 250
    .end local v3    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v0    # "entryKey":Ljava/lang/Object;
    .local v7, "value":Ljava/lang/Object;
    .restart local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local v15, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v23    # "entry":Ljava/util/Map$Entry;
    .restart local v28    # "mapSortFieldMask":I
    .restart local v29    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :cond_2f
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v6, v1

    .line 252
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v6, v15, :cond_30

    .line 253
    move-object v1, v6

    .line 254
    .end local v15    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    .line 257
    .end local v16    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .local v2, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object v15, v1

    move-object v5, v2

    goto :goto_19

    .end local v1    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v15    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v16    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_30
    move-object/from16 v5, v16

    .end local v16    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .local v5, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :goto_19
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v12, v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_33

    instance-of v1, v5, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v1, :cond_33

    .line 259
    const/4 v1, 0x0

    .line 260
    .local v1, "valueType":Ljava/lang/reflect/Type;
    instance-of v2, v11, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_32

    .line 261
    move-object v2, v11

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 262
    .local v2, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 263
    .local v3, "actualTypeArguments":[Ljava/lang/reflect/Type;
    array-length v4, v3

    move-object/from16 v30, v1

    const/4 v1, 0x2

    .end local v1    # "valueType":Ljava/lang/reflect/Type;
    .local v30, "valueType":Ljava/lang/reflect/Type;
    if-ne v4, v1, :cond_31

    .line 264
    const/16 v16, 0x1

    aget-object v1, v3, v16

    .line 268
    .end local v2    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v3    # "actualTypeArguments":[Ljava/lang/reflect/Type;
    .end local v30    # "valueType":Ljava/lang/reflect/Type;
    .restart local v1    # "valueType":Ljava/lang/reflect/Type;
    move-object/from16 v30, v1

    goto :goto_1a

    .end local v1    # "valueType":Ljava/lang/reflect/Type;
    .restart local v30    # "valueType":Ljava/lang/reflect/Type;
    :cond_31
    const/16 v16, 0x1

    goto :goto_1a

    .end local v30    # "valueType":Ljava/lang/reflect/Type;
    .restart local v1    # "valueType":Ljava/lang/reflect/Type;
    :cond_32
    move-object/from16 v30, v1

    const/16 v16, 0x1

    .end local v1    # "valueType":Ljava/lang/reflect/Type;
    .restart local v30    # "valueType":Ljava/lang/reflect/Type;
    :goto_1a
    move-object v1, v5

    check-cast v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 269
    .local v1, "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    move-object v2, v9

    move-object v3, v7

    move-object v4, v0

    move-object/from16 v18, v5

    move-object/from16 v5, v30

    .end local v5    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .local v18, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object/from16 v19, v6

    move v6, v12

    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v19, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeNoneASM(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 270
    .end local v1    # "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .end local v30    # "valueType":Ljava/lang/reflect/Type;
    goto :goto_1b

    .line 271
    .end local v18    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v19    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_33
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    const/16 v16, 0x1

    .end local v5    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v19    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    move-object/from16 v1, v18

    move-object v2, v9

    move-object v3, v7

    move-object v4, v0

    move v6, v12

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 273
    .end local v0    # "entryKey":Ljava/lang/Object;
    .end local v7    # "value":Ljava/lang/Object;
    .end local v19    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "entry":Ljava/util/Map$Entry;
    :goto_1b
    nop

    .line 108
    move-object/from16 v4, p3

    move-object v7, v13

    move-object v3, v15

    move-object/from16 v16, v18

    goto :goto_18

    .line 275
    .end local v15    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "first":Z
    .end local v18    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :catchall_1
    move-exception v0

    move-object v3, v13

    move-object/from16 v1, v29

    goto :goto_1c

    .end local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v28    # "mapSortFieldMask":I
    .end local v29    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .local v6, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local v15, "mapSortFieldMask":I
    :catchall_2
    move-exception v0

    move/from16 v28, v15

    move-object v1, v6

    move-object v3, v7

    .end local v6    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v15    # "mapSortFieldMask":I
    .restart local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .restart local v28    # "mapSortFieldMask":I
    .restart local v29    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto :goto_1c

    .end local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v28    # "mapSortFieldMask":I
    .end local v29    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v6    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .restart local v15    # "mapSortFieldMask":I
    :cond_34
    move-object/from16 v29, v6

    move-object v13, v7

    move/from16 v28, v15

    .end local v6    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v15    # "mapSortFieldMask":I
    .restart local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .restart local v28    # "mapSortFieldMask":I
    .restart local v29    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    move-object/from16 v1, v29

    iput-object v1, v9, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 276
    .end local v29    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .local v1, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    nop

    .line 278
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 279
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_35

    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 283
    :cond_35
    move-object v3, v13

    if-nez p6, :cond_36

    .line 284
    .end local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/16 v0, 0x7d

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 286
    :cond_36
    return-void

    .line 275
    .end local v1    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v28    # "mapSortFieldMask":I
    .restart local v6    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .restart local v15    # "mapSortFieldMask":I
    :catchall_3
    move-exception v0

    move-object v1, v6

    move-object v3, v7

    move/from16 v28, v15

    .end local v6    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v15    # "mapSortFieldMask":I
    .restart local v1    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .restart local v28    # "mapSortFieldMask":I
    :goto_1c
    iput-object v1, v9, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v0
.end method
