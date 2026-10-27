.class public final Lyw;
.super Ljava/lang/Object;
.source "ObjectReaderImplMap.java"

# interfaces
.implements Lwk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyw$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/function/Function;

.field static b:Ljava/util/function/Function;

.field static final c:Ljava/lang/Class;

.field static final d:Ljava/lang/Class;

.field static final e:Ljava/lang/Class;

.field static final g:Ljava/lang/Class;

.field static final h:Ljava/lang/Class;

.field static final i:Ljava/lang/Class;

.field static final j:Ljava/lang/Class;

.field public static final k:Lyw;

.field public static final l:Lyw;


# instance fields
.field final m:Ljava/lang/reflect/Type;

.field final n:Ljava/lang/Class;

.field final o:J

.field final p:Ljava/lang/Class;

.field final q:J

.field final r:Ljava/util/function/Function;

.field s:Ljava/lang/Object;

.field volatile t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 21
    sget-object v0, L-$$Lambda$yw$cqfpg_7wrm-5b2-6V7X8XCpxAzY;->INSTANCE:L-$$Lambda$yw$cqfpg_7wrm-5b2-6V7X8XCpxAzY;

    sput-object v0, Lyw;->a:Ljava/util/function/Function;

    const/4 v0, 0x1

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lyw;->c:Ljava/lang/Class;

    .line 24
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lyw;->d:Ljava/lang/Class;

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptySortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lyw;->e:Ljava/lang/Class;

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyNavigableMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lyw;->g:Ljava/lang/Class;

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lyw;->h:Ljava/lang/Class;

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptySortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lyw;->i:Ljava/lang/Class;

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyNavigableMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lyw;->j:Ljava/lang/Class;

    .line 31
    new-instance v0, Lyw;

    const-class v3, Ljava/util/HashMap;

    const-class v4, Ljava/util/HashMap;

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lyw;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;JLjava/util/function/Function;)V

    sput-object v0, Lyw;->k:Lyw;

    .line 32
    new-instance v0, Lyw;

    const-class v10, Lcom/alibaba/fastjson2/e;

    const-class v11, Lcom/alibaba/fastjson2/e;

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lyw;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;JLjava/util/function/Function;)V

    sput-object v0, Lyw;->l:Lyw;

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
    invoke-direct/range {v0 .. v6}, Lyw;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;JLjava/util/function/Function;)V

    .line 198
    iput-object p4, p0, Lyw;->s:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;JLjava/util/function/Function;)V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p1, p0, Lyw;->m:Ljava/lang/reflect/Type;

    .line 203
    iput-object p2, p0, Lyw;->n:Ljava/lang/Class;

    .line 204
    invoke-static {p2}, Labo;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Labc;->b(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lyw;->o:J

    .line 205
    iput-object p3, p0, Lyw;->p:Ljava/lang/Class;

    .line 206
    iput-wide p4, p0, Lyw;->q:J

    .line 207
    iput-object p6, p0, Lyw;->r:Ljava/util/function/Function;

    return-void
.end method

.method private static synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 21
    new-instance v0, Ljava/util/EnumMap;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private static synthetic a(Ljava/util/Map;)Ljava/util/Map;
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

.method static a(Ljava/lang/Class;)Ljava/util/function/Function;
    .locals 1

    .line 464
    sget-object v0, Lyw;->b:Ljava/util/function/Function;

    if-eqz v0, :cond_0

    return-object v0

    .line 467
    :cond_0
    new-instance v0, Lyw$a;

    invoke-direct {v0, p0}, Lyw$a;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lyw;->b:Ljava/util/function/Function;

    return-object v0
.end method

.method public static a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;
    .locals 17

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

    const-string v4, "com.google.common.collect.RegularImmutableMap"

    const-string v7, "com.google.common.collect.SingletonImmutableBiMap"

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eq v0, v3, :cond_e

    const-class v3, Ljava/util/AbstractMap;

    if-eq v0, v3, :cond_e

    sget-object v3, Lyw;->c:Ljava/lang/Class;

    if-ne v0, v3, :cond_2

    goto/16 :goto_5

    .line 59
    :cond_2
    sget-object v3, Lyw;->h:Ljava/lang/Class;

    if-ne v0, v3, :cond_3

    .line 60
    const-class v1, Ljava/util/LinkedHashMap;

    goto/16 :goto_6

    .line 61
    :cond_3
    const-class v3, Ljava/util/SortedMap;

    if-eq v0, v3, :cond_d

    sget-object v3, Lyw;->i:Ljava/lang/Class;

    if-eq v0, v3, :cond_d

    sget-object v3, Lyw;->j:Ljava/lang/Class;

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

    move-result v16

    sparse-switch v16, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v15

    goto :goto_2

    :sswitch_1
    const-string v8, "com.google.common.collect.ImmutableMap"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v13

    goto :goto_2

    :sswitch_2
    const-string v8, "java.util.Collections$SynchronizedNavigableMap"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v11

    goto :goto_2

    :sswitch_3
    const-string v8, "java.util.Collections$SynchronizedMap"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v12

    goto :goto_2

    :sswitch_4
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v14

    goto :goto_2

    :sswitch_5
    const-string v8, "java.util.Collections$SynchronizedSortedMap"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v10

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v3, -0x1

    :goto_2
    if-eqz v3, :cond_c

    if-eq v3, v15, :cond_c

    if-eq v3, v14, :cond_b

    if-eq v3, v12, :cond_a

    if-eq v3, v11, :cond_9

    if-eq v3, v10, :cond_8

    goto :goto_6

    .line 90
    :cond_8
    const-class v1, Ljava/util/TreeMap;

    .line 91
    sget-object v3, L-$$Lambda$wYLEAQPOTKVqLtLivrwguf8vywY;->INSTANCE:L-$$Lambda$wYLEAQPOTKVqLtLivrwguf8vywY;

    goto :goto_3

    .line 86
    :cond_9
    const-class v1, Ljava/util/TreeMap;

    .line 87
    sget-object v3, L-$$Lambda$P2BGAVOo6bhKxuVpDE1y8Di1yzs;->INSTANCE:L-$$Lambda$P2BGAVOo6bhKxuVpDE1y8Di1yzs;

    goto :goto_3

    .line 82
    :cond_a
    const-class v1, Ljava/util/HashMap;

    .line 83
    sget-object v3, L-$$Lambda$gvQiFZwj0ym1HqQhhxhLNTwCwe4;->INSTANCE:L-$$Lambda$gvQiFZwj0ym1HqQhhxhLNTwCwe4;

    goto :goto_3

    .line 78
    :cond_b
    const-class v1, Ljava/util/HashMap;

    .line 79
    invoke-static {}, Labd;->d()Ljava/util/function/Function;

    move-result-object v3

    goto :goto_3

    .line 74
    :cond_c
    const-class v1, Ljava/util/HashMap;

    .line 75
    invoke-static {}, Labd;->c()Ljava/util/function/Function;

    move-result-object v3

    :goto_3
    move-object v8, v3

    move-object v3, v1

    goto :goto_7

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

    const/4 v8, 0x0

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
    array-length v9, v1

    if-ne v9, v14, :cond_10

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "org.springframework.util.LinkedMultiValueMap"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 103
    aget-object v4, v1, v13

    .line 104
    aget-object v7, v1, v15

    .line 106
    const-class v1, Ljava/lang/String;

    if-ne v4, v1, :cond_f

    const-class v1, Ljava/lang/String;

    if-ne v7, v1, :cond_f

    if-nez v8, :cond_f

    .line 107
    new-instance v1, Lyz;

    invoke-direct {v1, v0, v3, v5, v6}, Lyz;-><init>(Ljava/lang/Class;Ljava/lang/Class;J)V

    return-object v1

    .line 110
    :cond_f
    new-instance v9, Lza;

    const-wide/16 v10, 0x0

    move-object v1, v9

    move-object/from16 v2, p1

    move-object v5, v7

    move-wide v6, v10

    invoke-direct/range {v1 .. v8}, Lza;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;JLjava/util/function/Function;)V

    return-object v9

    :cond_10
    if-nez v2, :cond_12

    const-wide/16 v9, 0x0

    cmp-long v1, v5, v9

    if-nez v1, :cond_12

    .line 115
    const-class v1, Ljava/util/HashMap;

    if-ne v0, v1, :cond_11

    const-class v1, Ljava/util/HashMap;

    if-ne v3, v1, :cond_11

    .line 116
    sget-object v0, Lyw;->k:Lyw;

    return-object v0

    .line 119
    :cond_11
    const-class v1, Lcom/alibaba/fastjson2/e;

    if-ne v0, v1, :cond_12

    const-class v1, Lcom/alibaba/fastjson2/e;

    if-ne v3, v1, :cond_12

    .line 120
    sget-object v0, Lyw;->l:Lyw;

    return-object v0

    .line 124
    :cond_12
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1

    goto :goto_8

    :sswitch_6
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v15

    goto :goto_9

    :sswitch_7
    const-string v4, "kotlin.collections.EmptyMap"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v11

    goto :goto_9

    :sswitch_8
    const-string v4, "com.google.common.collect.ArrayListMultimap"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v12

    goto :goto_9

    :sswitch_9
    const-string v4, "java.util.Collections$EmptyMap"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x5

    goto :goto_9

    :sswitch_a
    const-string v4, "com.alibaba.fastjson.JSONObject"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v13

    goto :goto_9

    :sswitch_b
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v14

    goto :goto_9

    :cond_13
    :goto_8
    const/4 v1, -0x1

    :goto_9
    if-eqz v1, :cond_22

    if-eq v1, v15, :cond_21

    if-eq v1, v14, :cond_20

    if-eq v1, v12, :cond_1f

    if-eq v1, v11, :cond_1d

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1c

    .line 159
    invoke-virtual {v3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 160
    const-class v4, Lcom/alibaba/fastjson2/e;

    if-eq v0, v4, :cond_15

    instance-of v4, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_15

    .line 161
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 162
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 163
    array-length v4, v1

    if-ne v4, v14, :cond_15

    .line 164
    aget-object v4, v1, v13

    .line 165
    aget-object v7, v1, v15

    .line 166
    instance-of v1, v4, Ljava/lang/reflect/TypeVariable;

    if-nez v1, :cond_14

    instance-of v1, v7, Ljava/lang/reflect/TypeVariable;

    if-nez v1, :cond_14

    move v13, v15

    :cond_14
    if-eqz v13, :cond_15

    .line 168
    new-instance v9, Lza;

    const-wide/16 v10, 0x0

    move-object v1, v9

    move-object/from16 v2, p1

    move-object v5, v7

    move-wide v6, v10

    invoke-direct/range {v1 .. v8}, Lza;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;JLjava/util/function/Function;)V

    return-object v9

    .line 173
    :cond_15
    const-class v1, Labg;

    if-ne v3, v1, :cond_16

    .line 174
    sget-object v1, Labo;->a:Ljava/lang/Class;

    invoke-static {v1}, Lyw;->a(Ljava/lang/Class;)Ljava/util/function/Function;

    move-result-object v1

    .line 175
    const-class v3, Ljava/util/LinkedHashMap;

    goto/16 :goto_b

    .line 176
    :cond_16
    sget-object v1, Lyw;->h:Ljava/lang/Class;

    if-ne v0, v1, :cond_17

    .line 177
    sget-object v1, L-$$Lambda$9fcgnbopkPj30ReBUuotL7FkW1A;->INSTANCE:L-$$Lambda$9fcgnbopkPj30ReBUuotL7FkW1A;

    goto/16 :goto_b

    .line 178
    :cond_17
    sget-object v1, Lyw;->i:Ljava/lang/Class;

    if-ne v0, v1, :cond_18

    .line 179
    sget-object v1, L-$$Lambda$9uKMy62MdTULUdJDO6M_KfCFe1Q;->INSTANCE:L-$$Lambda$9uKMy62MdTULUdJDO6M_KfCFe1Q;

    goto/16 :goto_b

    .line 180
    :cond_18
    sget-object v1, Lyw;->j:Ljava/lang/Class;

    if-ne v0, v1, :cond_19

    .line 181
    sget-object v1, L-$$Lambda$78YOfU-nPjCDjRF_fDI7QhoK8JI;->INSTANCE:L-$$Lambda$78YOfU-nPjCDjRF_fDI7QhoK8JI;

    goto/16 :goto_b

    .line 182
    :cond_19
    sget-object v1, Lyw;->c:Ljava/lang/Class;

    if-ne v0, v1, :cond_1a

    .line 183
    sget-object v1, L-$$Lambda$yw$Mu8rCY1hIMv-u-ZMA5JytxsAuag;->INSTANCE:L-$$Lambda$yw$Mu8rCY1hIMv-u-ZMA5JytxsAuag;

    goto :goto_b

    .line 187
    :cond_1a
    const-class v1, Ljava/util/EnumMap;

    if-ne v0, v1, :cond_1b

    .line 188
    const-class v1, Ljava/util/LinkedHashMap;

    .line 189
    sget-object v3, Lyw;->a:Ljava/util/function/Function;

    move-object v4, v1

    move-object v7, v3

    goto :goto_c

    :cond_1b
    move-object v4, v3

    move-object v7, v8

    goto :goto_c

    .line 156
    :cond_1c
    new-instance v0, Lyw;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0, v3, v5, v6, v1}, Lyw;-><init>(Ljava/lang/Class;JLjava/lang/Object;)V

    return-object v0

    :cond_1d
    :try_start_0
    const-string v0, "INSTANCE"

    .line 145
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 147
    invoke-virtual {v0, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_1e
    const/4 v1, 0x0

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    new-instance v1, Lyw;

    invoke-direct {v1, v3, v5, v6, v0}, Lyw;-><init>(Ljava/lang/Class;JLjava/lang/Object;)V

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

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 139
    :cond_1f
    invoke-static {v3}, Labd;->b(Ljava/lang/Class;)Ljava/util/function/Function;

    move-result-object v1

    .line 140
    const-class v3, Ljava/util/HashMap;

    goto :goto_b

    .line 135
    :cond_20
    invoke-static {}, Labd;->d()Ljava/util/function/Function;

    move-result-object v1

    .line 136
    const-class v3, Ljava/util/HashMap;

    goto :goto_b

    .line 131
    :cond_21
    invoke-static {}, Labd;->c()Ljava/util/function/Function;

    move-result-object v1

    .line 132
    const-class v3, Ljava/util/HashMap;

    goto :goto_b

    .line 127
    :cond_22
    invoke-static {v3}, Lyw;->a(Ljava/lang/Class;)Ljava/util/function/Function;

    move-result-object v1

    .line 128
    const-class v3, Ljava/util/HashMap;

    :goto_b
    move-object v7, v1

    move-object v4, v3

    .line 193
    :goto_c
    new-instance v8, Lyw;

    move-object v1, v8

    move-object/from16 v3, p1

    move-wide/from16 v5, p2

    invoke-direct/range {v1 .. v7}, Lyw;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;JLjava/util/function/Function;)V

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

    :sswitch_data_1
    .sparse-switch
        -0x64f58121 -> :sswitch_b
        -0x23f72d4e -> :sswitch_a
        -0x18a7fb22 -> :sswitch_9
        0x10bbc8bb -> :sswitch_8
        0x15488ff5 -> :sswitch_7
        0x79522977 -> :sswitch_6
    .end sparse-switch
.end method

.method public static synthetic lambda$Mu8rCY1hIMv-u-ZMA5JytxsAuag(Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lyw;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$cqfpg_7wrm-5b2-6V7X8XCpxAzY(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lyw;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(J)Ljava/lang/Object;
    .locals 4

    .line 222
    iget-object p1, p0, Lyw;->p:Ljava/lang/Class;

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
    const-class p2, Lcom/alibaba/fastjson2/e;

    if-ne p1, p2, :cond_2

    .line 231
    new-instance p1, Lcom/alibaba/fastjson2/e;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/e;-><init>()V

    return-object p1

    .line 234
    :cond_2
    iget-object p2, p0, Lyw;->s:Ljava/lang/Object;

    if-eqz p2, :cond_3

    return-object p2

    .line 238
    :cond_3
    sget-object p2, Lyw;->e:Ljava/lang/Class;

    if-ne p1, p2, :cond_4

    .line 239
    invoke-static {}, Ljava/util/Collections;->emptySortedMap()Ljava/util/SortedMap;

    move-result-object p1

    return-object p1

    .line 242
    :cond_4
    sget-object p2, Lyw;->g:Ljava/lang/Class;

    if-ne p1, p2, :cond_5

    .line 243
    invoke-static {}, Ljava/util/Collections;->emptyNavigableMap()Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1

    .line 246
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    .line 247
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x57be006

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_8

    const v1, 0x57be023

    if-eq v0, v1, :cond_7

    const v1, 0xf9f99a4

    if-eq v0, v1, :cond_6

    goto :goto_0

    :cond_6
    const-string v0, "com.ali.com.google.common.collect.EmptyImmutableBiMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p2, 0x0

    goto :goto_0

    :cond_7
    const-string v0, "java.util.ImmutableCollections$MapN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    move p2, v2

    goto :goto_0

    :cond_8
    const-string v0, "java.util.ImmutableCollections$Map1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    move p2, v3

    :cond_9
    :goto_0
    const-string p1, "create map error : "

    if-eqz p2, :cond_c

    if-eq p2, v3, :cond_b

    if-eq p2, v2, :cond_a

    .line 263
    :try_start_0
    iget-object p2, p0, Lyw;->p:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 265
    :catch_0
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lyw;->p:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    .line 257
    :cond_a
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p1

    .line 255
    :cond_b
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    .line 250
    :cond_c
    :try_start_1
    sget-object p2, Labf;->a:Lsun/misc/Unsafe;

    iget-object v0, p0, Lyw;->p:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 252
    :catch_1
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lyw;->p:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p4

    .line 291
    iget-object v2, v0, Lyw;->n:Ljava/lang/Class;

    iget-wide v3, v0, Lyw;->o:J

    iget-wide v5, v0, Lyw;->q:J

    or-long/2addr v5, v8

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;JJ)Lwk;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eq v1, v0, :cond_0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    .line 293
    invoke-interface/range {v1 .. v6}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 296
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result v1

    const/4 v10, 0x0

    if-eqz v1, :cond_1

    return-object v10

    :cond_1
    const/16 v11, -0x5a

    .line 301
    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson2/u;->a(B)Z

    .line 303
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u$c;->e()Ljava/util/function/Supplier;

    move-result-object v1

    .line 304
    invoke-virtual {v7, v8, v9}, Lcom/alibaba/fastjson2/u;->a(J)J

    move-result-wide v2

    or-long v12, v8, v2

    .line 307
    iget-object v2, v0, Lyw;->n:Ljava/lang/Class;

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 308
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    goto :goto_0

    .line 310
    :cond_2
    iget-object v1, v0, Lyw;->p:Ljava/lang/Class;

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
    const-class v2, Lcom/alibaba/fastjson2/e;

    if-ne v1, v2, :cond_5

    .line 315
    new-instance v1, Lcom/alibaba/fastjson2/e;

    invoke-direct {v1}, Lcom/alibaba/fastjson2/e;-><init>()V

    goto :goto_0

    .line 316
    :cond_5
    sget-object v2, Lyw;->d:Ljava/lang/Class;

    if-ne v1, v2, :cond_6

    .line 317
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_0

    .line 321
    :cond_6
    iget-boolean v1, v0, Lyw;->t:Z

    const-string v2, "create map error "

    if-nez v1, :cond_7

    .line 323
    :try_start_0
    iget-object v1, v0, Lyw;->p:Ljava/lang/Class;

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
    iput-boolean v1, v0, Lyw;->t:Z

    .line 326
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lyw;->p:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    move-object v3, v10

    goto :goto_1

    :cond_7
    move-object v1, v10

    move-object v3, v1

    .line 330
    :goto_1
    iget-boolean v4, v0, Lyw;->t:Z

    if-eqz v4, :cond_8

    const-class v4, Ljava/util/Map;

    iget-object v5, v0, Lyw;->p:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 332
    :try_start_1
    iget-object v4, v0, Lyw;->p:Ljava/lang/Class;

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
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lyw;->p:Ljava/lang/Class;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    :cond_8
    :goto_2
    if-nez v1, :cond_19

    move-object v14, v3

    :goto_3
    const/4 v1, 0x0

    move v15, v1

    .line 349
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->c()B

    move-result v1

    const/16 v2, -0x5b

    if-ne v1, v2, :cond_a

    .line 351
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->E()V

    .line 418
    iget-object v1, v0, Lyw;->r:Ljava/util/function/Function;

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
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->J()Ljava/lang/String;

    move-result-object v1

    :goto_5
    move-object v5, v1

    goto :goto_6

    .line 358
    :cond_b
    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson2/u;->a(B)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 359
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v1

    .line 360
    new-instance v4, Labn;

    invoke-direct {v4, v15}, Labn;-><init>(I)V

    .line 361
    invoke-static {v1}, Lcom/alibaba/fastjson2/g;->a(Ljava/lang/String;)Lcom/alibaba/fastjson2/g;

    move-result-object v1

    invoke-virtual {v7, v14, v4, v1}, Lcom/alibaba/fastjson2/u;->a(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/g;)V

    move-object v5, v4

    goto :goto_6

    .line 363
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object v1

    goto :goto_5

    .line 366
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->q()Z

    move-result v1

    const-string v4, ".."

    if-eqz v1, :cond_e

    .line 367
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->r()Ljava/lang/String;

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
    invoke-static {v1}, Lcom/alibaba/fastjson2/g;->a(Ljava/lang/String;)Lcom/alibaba/fastjson2/g;

    move-result-object v1

    invoke-virtual {v7, v14, v5, v1}, Lcom/alibaba/fastjson2/u;->a(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/g;)V

    .line 372
    invoke-interface {v14, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    move v2, v11

    goto/16 :goto_b

    .line 378
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->c()B

    move-result v1

    if-lt v1, v3, :cond_f

    const/16 v3, 0x7d

    if-gt v1, v3, :cond_f

    .line 380
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

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

    iget-wide v10, v0, Lyw;->q:J

    or-long/2addr v10, v8

    move-object/from16 v1, p1

    move-object/from16 v16, v5

    move-wide v5, v10

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;JJ)Lwk;

    move-result-object v1

    if-eqz v1, :cond_10

    const/4 v3, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, v16

    move-wide/from16 v5, p4

    .line 384
    invoke-interface/range {v1 .. v6}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    goto :goto_8

    .line 386
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object v1

    goto :goto_8

    :cond_11
    move-object/from16 v16, v5

    const/16 v3, -0x4f

    if-ne v1, v3, :cond_12

    .line 389
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 390
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->E()V

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
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->E()V

    goto :goto_8

    :cond_13
    if-ne v1, v2, :cond_15

    .line 395
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->r()Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object v1, v14

    goto :goto_8

    .line 400
    :cond_14
    invoke-static {v1}, Lcom/alibaba/fastjson2/g;->a(Ljava/lang/String;)Lcom/alibaba/fastjson2/g;

    move-result-object v1

    move-object/from16 v4, v16

    invoke-virtual {v7, v14, v4, v1}, Lcom/alibaba/fastjson2/u;->a(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/g;)V

    const/4 v1, 0x0

    goto :goto_9

    :cond_15
    move-object/from16 v4, v16

    const/16 v2, -0x5a

    if-ne v1, v2, :cond_16

    .line 403
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aU()Ljava/util/Map;

    move-result-object v1

    goto :goto_a

    :cond_16
    const/16 v3, -0x6c

    if-lt v1, v3, :cond_17

    const/16 v3, -0x5c

    if-gt v1, v3, :cond_17

    .line 405
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aZ()Ljava/util/List;

    move-result-object v1

    goto :goto_a

    .line 407
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object v1

    :goto_a
    if-nez v1, :cond_18

    .line 410
    sget-object v3, Lcom/alibaba/fastjson2/u$d;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/u$d;

    iget-wide v5, v3, Lcom/alibaba/fastjson2/u$d;->mask:J

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

.method public a(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 2

    .line 271
    iget-object v0, p0, Lyw;->n:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 275
    :cond_0
    iget-object v0, p0, Lyw;->n:Ljava/lang/Class;

    const-class v1, Lcom/alibaba/fastjson2/e;

    if-ne v0, v1, :cond_1

    .line 276
    new-instance p2, Lcom/alibaba/fastjson2/e;

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/e;-><init>(Ljava/util/Map;)V

    return-object p2

    .line 279
    :cond_1
    invoke-virtual {p0, p2, p3}, Lyw;->a(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 280
    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 282
    iget-object p1, p0, Lyw;->r:Ljava/util/function/Function;

    if-eqz p1, :cond_2

    .line 283
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2
.end method

.method public d_()Ljava/lang/Class;
    .locals 1

    .line 212
    iget-object v0, p0, Lyw;->n:Ljava/lang/Class;

    return-object v0
.end method

.method public e()Ljava/util/function/Function;
    .locals 1

    .line 217
    iget-object v0, p0, Lyw;->r:Ljava/util/function/Function;

    return-object v0
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .line 426
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/u;->b:Z

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual/range {p0 .. p5}, Lyw;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 430
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 434
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object p2

    .line 435
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alibaba/fastjson2/u$c;->e()Ljava/util/function/Supplier;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 437
    iget-object v0, p0, Lyw;->n:Ljava/lang/Class;

    if-eqz v0, :cond_2

    const-class v1, Lcom/alibaba/fastjson2/e;

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
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/u$c;->i()J

    move-result-wide p2

    or-long/2addr p2, p4

    invoke-virtual {p0, p2, p3}, Lyw;->a(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 443
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->v()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->L()Z

    move-result p3

    if-nez p3, :cond_5

    .line 444
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object p3

    .line 445
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 446
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p3

    .line 447
    :try_start_0
    invoke-virtual {p3, p2, p4, p5}, Lcom/alibaba/fastjson2/u;->a(Ljava/util/Map;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_6

    .line 448
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/u;->close()V

    goto :goto_2

    :catch_0
    move-exception p1

    if-eqz p3, :cond_4

    .line 446
    :try_start_1
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p1

    .line 451
    :cond_5
    invoke-virtual {p1, p2, p4, p5}, Lcom/alibaba/fastjson2/u;->a(Ljava/util/Map;J)V

    .line 454
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    .line 456
    iget-object p1, p0, Lyw;->r:Ljava/util/function/Function;

    if-eqz p1, :cond_7

    .line 457
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    return-object p2
.end method
