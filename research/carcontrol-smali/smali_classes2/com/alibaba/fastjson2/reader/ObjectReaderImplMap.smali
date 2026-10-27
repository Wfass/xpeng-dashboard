.class public final Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;
.super Ljava/lang/Object;
.source "ObjectReaderImplMap.java"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap$ObjectCreatorUF;
    }
.end annotation


# static fields
.field static final CLASS_EMPTY_MAP:Ljava/lang/Class;

.field static final CLASS_EMPTY_NAVIGABLE_MAP:Ljava/lang/Class;

.field static final CLASS_EMPTY_SORTED_MAP:Ljava/lang/Class;

.field static final CLASS_SINGLETON_MAP:Ljava/lang/Class;

.field static final CLASS_UNMODIFIABLE_MAP:Ljava/lang/Class;

.field static final CLASS_UNMODIFIABLE_NAVIGABLE_MAP:Ljava/lang/Class;

.field static final CLASS_UNMODIFIABLE_SORTED_MAP:Ljava/lang/Class;

.field static final ENUM_MAP_BUILDER:Ljava/util/function/Function;

.field public static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

.field public static final INSTANCE_OBJECT:Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

.field static UNSAFE_OBJECT_CREATOR:Ljava/util/function/Function;


# instance fields
.field final builder:Ljava/util/function/Function;

.field final features:J

.field final fieldType:Ljava/lang/reflect/Type;

.field volatile instanceError:Z

.field final instanceType:Ljava/lang/Class;

.field mapSingleton:Ljava/lang/Object;

.field final mapType:Ljava/lang/Class;

.field final mapTypeHash:J


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 21
    sget-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$kPLTlWiLNIFdvfnMj4QjUOTOkLg;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$kPLTlWiLNIFdvfnMj4QjUOTOkLg;

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->ENUM_MAP_BUILDER:Ljava/util/function/Function;

    const/4 v0, 0x1

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->CLASS_SINGLETON_MAP:Ljava/lang/Class;

    .line 24
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->CLASS_EMPTY_MAP:Ljava/lang/Class;

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptySortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->CLASS_EMPTY_SORTED_MAP:Ljava/lang/Class;

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyNavigableMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->CLASS_EMPTY_NAVIGABLE_MAP:Ljava/lang/Class;

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->CLASS_UNMODIFIABLE_MAP:Ljava/lang/Class;

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptySortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->CLASS_UNMODIFIABLE_SORTED_MAP:Ljava/lang/Class;

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyNavigableMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->CLASS_UNMODIFIABLE_NAVIGABLE_MAP:Ljava/lang/Class;

    .line 31
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    const-class v3, Ljava/util/HashMap;

    const-class v4, Ljava/util/HashMap;

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;JLjava/util/function/Function;)V

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    .line 32
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    const-class v10, Lcom/alibaba/fastjson2/JSONObject;

    const-class v11, Lcom/alibaba/fastjson2/JSONObject;

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;JLjava/util/function/Function;)V

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->INSTANCE_OBJECT:Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;JLjava/lang/Object;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p1

    move-wide v4, p2

    .line 197
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;JLjava/util/function/Function;)V

    .line 198
    iput-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->mapSingleton:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;JLjava/util/function/Function;)V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->fieldType:Ljava/lang/reflect/Type;

    .line 203
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->mapType:Ljava/lang/Class;

    .line 204
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->mapTypeHash:J

    .line 205
    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceType:Ljava/lang/Class;

    .line 206
    iput-wide p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->features:J

    .line 207
    iput-object p6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->builder:Ljava/util/function/Function;

    return-void
.end method

.method static createObjectSupplier(Ljava/lang/Class;)Ljava/util/function/Function;
    .locals 1

    .line 464
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->UNSAFE_OBJECT_CREATOR:Ljava/util/function/Function;

    if-eqz v0, :cond_0

    return-object v0

    .line 467
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap$ObjectCreatorUF;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap$ObjectCreatorUF;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->UNSAFE_OBJECT_CREATOR:Ljava/util/function/Function;

    return-object v0
.end method

.method public static synthetic lambda$80Asldl59DOY_NNxKTGMF4O8n6w(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->synchronizedNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$QwlwfsAe5ZBeHLEGvjVgwR7-wx4(Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$of$1(Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .line 184
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 185
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

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

.method static synthetic lambda$static$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 21
    new-instance v0, Ljava/util/EnumMap;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static synthetic lambda$x-YGPje38LmstTuieg8HtbrFY4M(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$yrlztY2MyddZHkDhukzHK0MNAto(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 19

    move-object/from16 v0, p1

    move-wide/from16 v5, p2

    .line 47
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-nez p0, :cond_0

    .line 50
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p0

    goto :goto_0

    :cond_1
    move-object/from16 v2, p0

    move-object v1, v0

    .line 54
    :goto_0
    const-class v3, Ljava/util/Map;

    const-string v7, "com.google.common.collect.RegularImmutableMap"

    const/4 v9, 0x3

    const-string v10, "com.google.common.collect.SingletonImmutableBiMap"

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eq v0, v3, :cond_e

    const-class v3, Ljava/util/AbstractMap;

    if-eq v0, v3, :cond_e

    sget-object v3, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->CLASS_SINGLETON_MAP:Ljava/lang/Class;

    if-ne v0, v3, :cond_2

    goto/16 :goto_5

    .line 59
    :cond_2
    sget-object v3, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->CLASS_UNMODIFIABLE_MAP:Ljava/lang/Class;

    if-ne v0, v3, :cond_3

    .line 60
    const-class v1, Ljava/util/LinkedHashMap;

    goto/16 :goto_6

    .line 61
    :cond_3
    const-class v3, Ljava/util/SortedMap;

    if-eq v0, v3, :cond_d

    sget-object v3, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->CLASS_UNMODIFIABLE_SORTED_MAP:Ljava/lang/Class;

    if-eq v0, v3, :cond_d

    sget-object v3, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->CLASS_UNMODIFIABLE_NAVIGABLE_MAP:Ljava/lang/Class;

    if-ne v0, v3, :cond_4

    goto/16 :goto_4

    .line 66
    :cond_4
    const-class v3, Ljava/util/concurrent/ConcurrentMap;

    if-ne v0, v3, :cond_5

    .line 67
    const-class v1, Ljava/util/concurrent/ConcurrentHashMap;

    goto/16 :goto_6

    .line 68
    :cond_5
    const-class v3, Ljava/util/concurrent/ConcurrentNavigableMap;

    if-ne v0, v3, :cond_6

    .line 69
    const-class v1, Ljava/util/concurrent/ConcurrentSkipListMap;

    goto/16 :goto_6

    .line 71
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :goto_1
    move v4, v11

    goto :goto_2

    :sswitch_0
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    const/4 v4, 0x5

    goto :goto_2

    :sswitch_1
    const-string v4, "com.google.common.collect.ImmutableMap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    const/4 v4, 0x4

    goto :goto_2

    :sswitch_2
    const-string v4, "java.util.Collections$SynchronizedNavigableMap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_1

    :cond_9
    move v4, v9

    goto :goto_2

    :sswitch_3
    const-string v4, "java.util.Collections$SynchronizedMap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_1

    :cond_a
    move v4, v13

    goto :goto_2

    :sswitch_4
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_1

    :cond_b
    move v4, v15

    goto :goto_2

    :sswitch_5
    const-string v4, "java.util.Collections$SynchronizedSortedMap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_1

    :cond_c
    move v4, v14

    :goto_2
    packed-switch v4, :pswitch_data_0

    goto :goto_6

    .line 74
    :pswitch_0
    const-class v1, Ljava/util/HashMap;

    .line 75
    invoke-static {}, Lcom/alibaba/fastjson2/util/GuavaSupport;->immutableMapConverter()Ljava/util/function/Function;

    move-result-object v3

    :goto_3
    move-object/from16 v16, v3

    move-object v3, v1

    goto :goto_7

    .line 86
    :pswitch_1
    const-class v1, Ljava/util/TreeMap;

    .line 87
    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$80Asldl59DOY_NNxKTGMF4O8n6w;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$80Asldl59DOY_NNxKTGMF4O8n6w;

    goto :goto_3

    .line 82
    :pswitch_2
    const-class v1, Ljava/util/HashMap;

    .line 83
    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$so52ntfiUt2W36ptSNfrspYimdo;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$so52ntfiUt2W36ptSNfrspYimdo;

    goto :goto_3

    .line 78
    :pswitch_3
    const-class v1, Ljava/util/HashMap;

    .line 79
    invoke-static {}, Lcom/alibaba/fastjson2/util/GuavaSupport;->singletonBiMapConverter()Ljava/util/function/Function;

    move-result-object v3

    goto :goto_3

    .line 90
    :pswitch_4
    const-class v1, Ljava/util/TreeMap;

    .line 91
    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$q2UOmpaIwwnhNE4REAAf1v71xO4;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$q2UOmpaIwwnhNE4REAAf1v71xO4;

    goto :goto_3

    .line 65
    :cond_d
    :goto_4
    const-class v1, Ljava/util/TreeMap;

    goto :goto_6

    .line 58
    :cond_e
    :goto_5
    const-class v1, Ljava/util/HashMap;

    :goto_6
    move-object v3, v1

    move-object/from16 v16, v12

    .line 98
    :goto_7
    instance-of v1, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_10

    .line 99
    move-object v1, v2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 101
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 102
    array-length v4, v1

    if-ne v4, v13, :cond_10

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "org.springframework.util.LinkedMultiValueMap"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 103
    aget-object v4, v1, v14

    .line 104
    aget-object v7, v1, v15

    .line 106
    const-class v1, Ljava/lang/String;

    if-ne v4, v1, :cond_f

    const-class v1, Ljava/lang/String;

    if-ne v7, v1, :cond_f

    if-nez v16, :cond_f

    .line 107
    new-instance v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapString;

    invoke-direct {v1, v0, v3, v5, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapString;-><init>(Ljava/lang/Class;Ljava/lang/Class;J)V

    return-object v1

    .line 110
    :cond_f
    new-instance v9, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;

    const-wide/16 v10, 0x0

    move-object v1, v9

    move-object/from16 v2, p1

    move-object v5, v7

    move-wide v6, v10

    move-object/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;JLjava/util/function/Function;)V

    return-object v9

    :cond_10
    if-nez v2, :cond_12

    const-wide/16 v17, 0x0

    cmp-long v1, v5, v17

    if-nez v1, :cond_12

    .line 115
    const-class v1, Ljava/util/HashMap;

    if-ne v0, v1, :cond_11

    const-class v1, Ljava/util/HashMap;

    if-ne v3, v1, :cond_11

    .line 116
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    return-object v0

    .line 119
    :cond_11
    const-class v1, Lcom/alibaba/fastjson2/JSONObject;

    if-ne v0, v1, :cond_12

    const-class v1, Lcom/alibaba/fastjson2/JSONObject;

    if-ne v3, v1, :cond_12

    .line 120
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->INSTANCE_OBJECT:Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    return-object v0

    .line 124
    :cond_12
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :goto_8
    move v4, v11

    goto :goto_9

    :sswitch_6
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_8

    :cond_13
    const/4 v4, 0x5

    goto :goto_9

    :sswitch_7
    const-string v4, "kotlin.collections.EmptyMap"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_8

    :cond_14
    const/4 v4, 0x4

    goto :goto_9

    :sswitch_8
    const-string v4, "com.google.common.collect.ArrayListMultimap"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_8

    :cond_15
    move v4, v9

    goto :goto_9

    :sswitch_9
    const-string v4, "java.util.Collections$EmptyMap"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_8

    :cond_16
    move v4, v13

    goto :goto_9

    :sswitch_a
    const-string v4, "com.alibaba.fastjson.JSONObject"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_8

    :cond_17
    move v4, v15

    goto :goto_9

    :sswitch_b
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_8

    :cond_18
    move v4, v14

    :goto_9
    packed-switch v4, :pswitch_data_1

    .line 159
    invoke-virtual {v3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 160
    const-class v4, Lcom/alibaba/fastjson2/JSONObject;

    if-eq v0, v4, :cond_1a

    instance-of v4, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_1a

    .line 161
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 162
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 163
    array-length v4, v1

    if-ne v4, v13, :cond_1a

    .line 164
    aget-object v4, v1, v14

    .line 165
    aget-object v7, v1, v15

    .line 166
    instance-of v1, v4, Ljava/lang/reflect/TypeVariable;

    if-nez v1, :cond_19

    instance-of v1, v7, Ljava/lang/reflect/TypeVariable;

    if-nez v1, :cond_19

    move v14, v15

    :cond_19
    if-eqz v14, :cond_1a

    .line 168
    new-instance v9, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;

    const-wide/16 v10, 0x0

    move-object v1, v9

    move-object/from16 v2, p1

    move-object v5, v7

    move-wide v6, v10

    move-object/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;JLjava/util/function/Function;)V

    return-object v9

    .line 173
    :cond_1a
    const-class v1, Lcom/alibaba/fastjson2/util/JSONObject1O;

    if-ne v3, v1, :cond_1b

    .line 174
    sget-object v1, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_JSON_OBJECT_1x:Ljava/lang/Class;

    invoke-static {v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->createObjectSupplier(Ljava/lang/Class;)Ljava/util/function/Function;

    move-result-object v1

    .line 175
    const-class v3, Ljava/util/LinkedHashMap;

    goto/16 :goto_b

    .line 176
    :cond_1b
    sget-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->CLASS_UNMODIFIABLE_MAP:Ljava/lang/Class;

    if-ne v0, v1, :cond_1c

    .line 177
    sget-object v1, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$QwlwfsAe5ZBeHLEGvjVgwR7-wx4;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$QwlwfsAe5ZBeHLEGvjVgwR7-wx4;

    goto/16 :goto_b

    .line 178
    :cond_1c
    sget-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->CLASS_UNMODIFIABLE_SORTED_MAP:Ljava/lang/Class;

    if-ne v0, v1, :cond_1d

    .line 179
    sget-object v1, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$yrlztY2MyddZHkDhukzHK0MNAto;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$yrlztY2MyddZHkDhukzHK0MNAto;

    goto/16 :goto_b

    .line 180
    :cond_1d
    sget-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->CLASS_UNMODIFIABLE_NAVIGABLE_MAP:Ljava/lang/Class;

    if-ne v0, v1, :cond_1e

    .line 181
    sget-object v1, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$x-YGPje38LmstTuieg8HtbrFY4M;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$x-YGPje38LmstTuieg8HtbrFY4M;

    goto/16 :goto_b

    .line 182
    :cond_1e
    sget-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->CLASS_SINGLETON_MAP:Ljava/lang/Class;

    if-ne v0, v1, :cond_1f

    .line 183
    sget-object v1, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$MN4OgACQx6816oP2wXfu7nXckMM;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$MN4OgACQx6816oP2wXfu7nXckMM;

    goto :goto_b

    .line 187
    :cond_1f
    const-class v1, Ljava/util/EnumMap;

    if-ne v0, v1, :cond_20

    .line 188
    const-class v1, Ljava/util/LinkedHashMap;

    .line 189
    sget-object v3, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->ENUM_MAP_BUILDER:Ljava/util/function/Function;

    move-object v4, v1

    move-object v7, v3

    goto :goto_c

    :cond_20
    move-object v4, v3

    move-object/from16 v7, v16

    goto :goto_c

    .line 131
    :pswitch_5
    invoke-static {}, Lcom/alibaba/fastjson2/util/GuavaSupport;->immutableMapConverter()Ljava/util/function/Function;

    move-result-object v1

    .line 132
    const-class v3, Ljava/util/HashMap;

    goto :goto_b

    :pswitch_6
    :try_start_0
    const-string v0, "INSTANCE"

    .line 145
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_21

    .line 147
    invoke-virtual {v0, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 149
    :cond_21
    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    new-instance v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    invoke-direct {v1, v3, v5, v6, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;-><init>(Ljava/lang/Class;JLjava/lang/Object;)V

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    .line 151
    :goto_a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get singleton of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 139
    :pswitch_7
    invoke-static {v3}, Lcom/alibaba/fastjson2/util/GuavaSupport;->createConvertFunction(Ljava/lang/Class;)Ljava/util/function/Function;

    move-result-object v1

    .line 140
    const-class v3, Ljava/util/HashMap;

    goto :goto_b

    .line 156
    :pswitch_8
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0, v3, v5, v6, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;-><init>(Ljava/lang/Class;JLjava/lang/Object;)V

    return-object v0

    .line 127
    :pswitch_9
    invoke-static {v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->createObjectSupplier(Ljava/lang/Class;)Ljava/util/function/Function;

    move-result-object v1

    .line 128
    const-class v3, Ljava/util/HashMap;

    :goto_b
    move-object v7, v1

    move-object v4, v3

    goto :goto_c

    .line 135
    :pswitch_a
    invoke-static {}, Lcom/alibaba/fastjson2/util/GuavaSupport;->singletonBiMapConverter()Ljava/util/function/Function;

    move-result-object v1

    .line 136
    const-class v3, Ljava/util/HashMap;

    goto :goto_b

    .line 193
    :goto_c
    new-instance v8, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    move-object v1, v8

    move-object/from16 v3, p1

    move-wide/from16 v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;JLjava/util/function/Function;)V

    return-object v8

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

    :sswitch_data_1
    .sparse-switch
        -0x64f58121 -> :sswitch_b
        -0x23f72d4e -> :sswitch_a
        -0x18a7fb22 -> :sswitch_9
        0x10bbc8bb -> :sswitch_8
        0x15488ff5 -> :sswitch_7
        0x79522977 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public createInstance(J)Ljava/lang/Object;
    .locals 1

    .line 222
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceType:Ljava/lang/Class;

    const-class p2, Ljava/util/HashMap;

    if-ne p1, p2, :cond_0

    .line 223
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    .line 226
    :cond_0
    const-class p2, Ljava/util/LinkedHashMap;

    if-ne p1, p2, :cond_1

    .line 227
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p1

    .line 230
    :cond_1
    const-class p2, Lcom/alibaba/fastjson2/JSONObject;

    if-ne p1, p2, :cond_2

    .line 231
    new-instance p1, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    return-object p1

    .line 234
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->mapSingleton:Ljava/lang/Object;

    if-eqz p2, :cond_3

    return-object p2

    .line 238
    :cond_3
    sget-object p2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->CLASS_EMPTY_SORTED_MAP:Ljava/lang/Class;

    if-ne p1, p2, :cond_4

    .line 239
    invoke-static {}, Ljava/util/Collections;->emptySortedMap()Ljava/util/SortedMap;

    move-result-object p1

    return-object p1

    .line 242
    :cond_4
    sget-object p2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->CLASS_EMPTY_NAVIGABLE_MAP:Ljava/lang/Class;

    if-ne p1, p2, :cond_5

    .line 243
    invoke-static {}, Ljava/util/Collections;->emptyNavigableMap()Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1

    .line 246
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 247
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.ali.com.google.common.collect.EmptyImmutableBiMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "java.util.ImmutableCollections$MapN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "java.util.ImmutableCollections$Map1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 p2, 0x0

    :goto_0
    const-string p1, "create map error : "

    packed-switch p2, :pswitch_data_0

    .line 263
    :try_start_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceType:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 265
    :catch_0
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 250
    :pswitch_0
    :try_start_1
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceType:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 252
    :catch_1
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 257
    :pswitch_1
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p1

    .line 255
    :pswitch_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x57be006 -> :sswitch_2
        0x57be023 -> :sswitch_1
        0xf9f99a4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createInstance(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->mapType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->mapType:Ljava/lang/Class;

    const-class v1, Lcom/alibaba/fastjson2/JSONObject;

    if-ne v0, v1, :cond_1

    .line 276
    new-instance p2, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONObject;-><init>(Ljava/util/Map;)V

    return-object p2

    .line 279
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->createInstance(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 280
    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 282
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->builder:Ljava/util/function/Function;

    if-eqz p1, :cond_2

    .line 283
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2
.end method

.method public getBuildFunction()Ljava/util/function/Function;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->builder:Ljava/util/function/Function;

    return-object v0
.end method

.method public getObjectClass()Ljava/lang/Class;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->mapType:Ljava/lang/Class;

    return-object v0
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p4

    .line 291
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->mapType:Ljava/lang/Class;

    iget-wide v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->mapTypeHash:J

    iget-wide v5, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->features:J

    or-long/2addr v5, v8

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eq v1, v0, :cond_0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    .line 293
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 296
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v1

    const/4 v10, 0x0

    if-eqz v1, :cond_1

    return-object v10

    :cond_1
    const/16 v11, -0x5a

    .line 301
    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    .line 303
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectSupplier()Ljava/util/function/Supplier;

    move-result-object v1

    .line 304
    invoke-virtual {v7, v8, v9}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    move-result-wide v2

    or-long v12, v8, v2

    .line 307
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->mapType:Ljava/lang/Class;

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 308
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    goto :goto_0

    .line 310
    :cond_2
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceType:Ljava/lang/Class;

    const-class v2, Ljava/util/HashMap;

    if-ne v1, v2, :cond_3

    .line 311
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    move-object v14, v1

    goto/16 :goto_3

    .line 312
    :cond_3
    const-class v2, Ljava/util/LinkedHashMap;

    if-ne v1, v2, :cond_4

    .line 313
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 314
    :cond_4
    const-class v2, Lcom/alibaba/fastjson2/JSONObject;

    if-ne v1, v2, :cond_5

    .line 315
    new-instance v1, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    goto :goto_0

    .line 316
    :cond_5
    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->CLASS_EMPTY_MAP:Ljava/lang/Class;

    if-ne v1, v2, :cond_6

    .line 317
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_0

    .line 321
    :cond_6
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceError:Z

    const-string v2, "create map error "

    if-nez v1, :cond_7

    .line 323
    :try_start_0
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    move-object v1, v10

    goto :goto_1

    :catch_0
    const/4 v1, 0x1

    .line 325
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceError:Z

    .line 326
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceType:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    move-object v3, v10

    goto :goto_1

    :cond_7
    move-object v1, v10

    move-object v3, v1

    .line 330
    :goto_1
    iget-boolean v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceError:Z

    if-eqz v4, :cond_8

    const-class v4, Ljava/util/Map;

    iget-object v5, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceType:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 332
    :try_start_1
    iget-object v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceType:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    move-object v1, v10

    goto :goto_2

    :catch_1
    if-nez v1, :cond_8

    .line 336
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->instanceType:Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    :cond_8
    :goto_2
    if-nez v1, :cond_19

    move-object v14, v3

    :goto_3
    const/4 v1, 0x0

    move v15, v1

    .line 349
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    move-result v1

    const/16 v2, -0x5b

    if-ne v1, v2, :cond_a

    .line 351
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 418
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->builder:Ljava/util/function/Function;

    if-eqz v1, :cond_9

    .line 419
    invoke-interface {v1, v14}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_9
    return-object v14

    :cond_a
    const/16 v2, -0x6d

    const/16 v3, 0x49

    if-lt v1, v3, :cond_b

    .line 357
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldName()Ljava/lang/String;

    move-result-object v1

    :goto_5
    move-object v5, v1

    goto :goto_6

    .line 358
    :cond_b
    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 359
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 360
    new-instance v4, Lcom/alibaba/fastjson2/util/ReferenceKey;

    invoke-direct {v4, v15}, Lcom/alibaba/fastjson2/util/ReferenceKey;-><init>(I)V

    .line 361
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v1

    invoke-virtual {v7, v14, v4, v1}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    move-object v5, v4

    goto :goto_6

    .line 363
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v1

    goto :goto_5

    .line 366
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    move-result v1

    const-string v4, ".."

    if-eqz v1, :cond_e

    .line 367
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 369
    invoke-interface {v14, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 371
    :cond_d
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v1

    invoke-virtual {v7, v14, v5, v1}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    .line 372
    invoke-interface {v14, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    move v2, v11

    goto/16 :goto_b

    .line 378
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    move-result v1

    if-lt v1, v3, :cond_f

    const/16 v3, 0x7d

    if-gt v1, v3, :cond_f

    .line 380
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v5

    move v2, v11

    goto/16 :goto_a

    :cond_f
    const/16 v3, -0x6e

    if-ne v1, v3, :cond_11

    .line 382
    const-class v2, Ljava/lang/Object;

    const-wide/16 v3, 0x0

    iget-wide v10, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->features:J

    or-long/2addr v10, v8

    move-object/from16 v1, p1

    move-object/from16 v16, v5

    move-wide v5, v10

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-eqz v1, :cond_10

    const/4 v3, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, v16

    move-wide/from16 v5, p4

    .line 384
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    goto :goto_8

    .line 386
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v1

    goto :goto_8

    :cond_11
    move-object/from16 v16, v5

    const/16 v3, -0x4f

    if-ne v1, v3, :cond_12

    .line 389
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 390
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    :goto_8
    move-object/from16 v4, v16

    :goto_9
    const/16 v2, -0x5a

    goto :goto_a

    :cond_12
    const/16 v3, -0x50

    if-ne v1, v3, :cond_13

    .line 392
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 393
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    goto :goto_8

    :cond_13
    if-ne v1, v2, :cond_15

    .line 395
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object v1, v14

    goto :goto_8

    .line 400
    :cond_14
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v1

    move-object/from16 v4, v16

    invoke-virtual {v7, v14, v4, v1}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    const/4 v1, 0x0

    goto :goto_9

    :cond_15
    move-object/from16 v4, v16

    const/16 v2, -0x5a

    if-ne v1, v2, :cond_16

    .line 403
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    move-result-object v1

    goto :goto_a

    :cond_16
    const/16 v3, -0x6c

    if-lt v1, v3, :cond_17

    const/16 v3, -0x5c

    if-gt v1, v3, :cond_17

    .line 405
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    move-result-object v1

    goto :goto_a

    .line 407
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v1

    :goto_a
    if-nez v1, :cond_18

    .line 410
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v5, v12

    const-wide/16 v10, 0x0

    cmp-long v3, v5, v10

    if-eqz v3, :cond_18

    goto :goto_b

    .line 414
    :cond_18
    invoke-interface {v14, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    add-int/lit8 v15, v15, 0x1

    move v11, v2

    const/4 v10, 0x0

    goto/16 :goto_4

    .line 342
    :cond_19
    throw v1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .line 426
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 430
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 434
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    .line 435
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectSupplier()Ljava/util/function/Supplier;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 437
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->mapType:Ljava/lang/Class;

    if-eqz v0, :cond_2

    const-class v1, Lcom/alibaba/fastjson2/JSONObject;

    if-eq v0, v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.alibaba.fastjson.JSONObject"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 438
    :cond_2
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    goto :goto_0

    .line 440
    :cond_3
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getFeatures()J

    move-result-wide p2

    or-long/2addr p2, p4

    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->createInstance(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 443
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isTypeRedirect()Z

    move-result p3

    if-nez p3, :cond_5

    .line 444
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p3

    .line 445
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 446
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p3

    .line 447
    :try_start_0
    invoke-virtual {p3, p2, p4, p5}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_6

    .line 448
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_4

    .line 446
    :try_start_1
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p1

    .line 451
    :cond_5
    invoke-virtual {p1, p2, p4, p5}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 454
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 456
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->builder:Ljava/util/function/Function;

    if-eqz p1, :cond_7

    .line 457
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    return-object p2
.end method
