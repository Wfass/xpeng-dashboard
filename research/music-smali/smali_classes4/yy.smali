.class public Lyy;
.super Ljava/lang/Object;
.source "ObjectReaderImplMapMultiValueType.java"

# interfaces
.implements Lwk;


# instance fields
.field final a:Ljava/lang/Class;

.field final b:Ljava/lang/Class;

.field final c:Ljava/util/function/Function;

.field final d:Labk;


# direct methods
.method public constructor <init>(Labk;)V
    .locals 9

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lyy;->d:Labk;

    .line 31
    invoke-virtual {p1}, Labk;->a()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lyy;->a:Ljava/lang/Class;

    .line 33
    iget-object p1, p0, Lyy;->a:Ljava/lang/Class;

    .line 35
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_c

    const-class v0, Ljava/util/AbstractMap;

    if-eq p1, v0, :cond_c

    sget-object v0, Lyw;->c:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    goto/16 :goto_2

    .line 40
    :cond_0
    iget-object v0, p0, Lyy;->a:Ljava/lang/Class;

    sget-object v2, Lyw;->h:Ljava/lang/Class;

    if-ne v0, v2, :cond_1

    .line 41
    const-class p1, Ljava/util/LinkedHashMap;

    goto/16 :goto_3

    .line 42
    :cond_1
    iget-object v0, p0, Lyy;->a:Ljava/lang/Class;

    const-class v2, Ljava/util/SortedMap;

    if-eq v0, v2, :cond_b

    sget-object v2, Lyw;->i:Ljava/lang/Class;

    if-eq v0, v2, :cond_b

    iget-object v0, p0, Lyy;->a:Ljava/lang/Class;

    sget-object v2, Lyw;->j:Ljava/lang/Class;

    if-ne v0, v2, :cond_2

    goto/16 :goto_1

    .line 47
    :cond_2
    iget-object v0, p0, Lyy;->a:Ljava/lang/Class;

    const-class v2, Ljava/util/concurrent/ConcurrentMap;

    if-ne v0, v2, :cond_3

    .line 48
    const-class p1, Ljava/util/concurrent/ConcurrentHashMap;

    goto/16 :goto_3

    .line 49
    :cond_3
    const-class v2, Ljava/util/concurrent/ConcurrentNavigableMap;

    if-ne v0, v2, :cond_4

    .line 50
    const-class p1, Ljava/util/concurrent/ConcurrentSkipListMap;

    goto/16 :goto_3

    .line 52
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "com.google.common.collect.RegularImmutableMap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v8

    goto :goto_0

    :sswitch_1
    const-string v3, "com.google.common.collect.ImmutableMap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_2
    const-string v3, "java.util.Collections$SynchronizedNavigableMap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v5

    goto :goto_0

    :sswitch_3
    const-string v3, "java.util.Collections$SynchronizedMap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v6

    goto :goto_0

    :sswitch_4
    const-string v3, "com.google.common.collect.SingletonImmutableBiMap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v7

    goto :goto_0

    :sswitch_5
    const-string v3, "java.util.Collections$SynchronizedSortedMap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v4

    :cond_5
    :goto_0
    if-eqz v2, :cond_a

    if-eq v2, v8, :cond_a

    if-eq v2, v7, :cond_9

    if-eq v2, v6, :cond_8

    if-eq v2, v5, :cond_7

    if-eq v2, v4, :cond_6

    goto :goto_3

    .line 71
    :cond_6
    const-class p1, Ljava/util/TreeMap;

    .line 72
    sget-object v1, L-$$Lambda$wYLEAQPOTKVqLtLivrwguf8vywY;->INSTANCE:L-$$Lambda$wYLEAQPOTKVqLtLivrwguf8vywY;

    goto :goto_3

    .line 67
    :cond_7
    const-class p1, Ljava/util/TreeMap;

    .line 68
    sget-object v1, L-$$Lambda$P2BGAVOo6bhKxuVpDE1y8Di1yzs;->INSTANCE:L-$$Lambda$P2BGAVOo6bhKxuVpDE1y8Di1yzs;

    goto :goto_3

    .line 63
    :cond_8
    const-class p1, Ljava/util/HashMap;

    .line 64
    sget-object v1, L-$$Lambda$gvQiFZwj0ym1HqQhhxhLNTwCwe4;->INSTANCE:L-$$Lambda$gvQiFZwj0ym1HqQhhxhLNTwCwe4;

    goto :goto_3

    .line 59
    :cond_9
    const-class p1, Ljava/util/HashMap;

    .line 60
    invoke-static {}, Labd;->d()Ljava/util/function/Function;

    move-result-object v1

    goto :goto_3

    .line 55
    :cond_a
    const-class p1, Ljava/util/HashMap;

    .line 56
    invoke-static {}, Labd;->c()Ljava/util/function/Function;

    move-result-object v1

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
    iput-object p1, p0, Lyy;->b:Ljava/lang/Class;

    .line 79
    iput-object v1, p0, Lyy;->c:Ljava/util/function/Function;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a825504 -> :sswitch_5
        -0x64f58121 -> :sswitch_4
        -0x6007bb47 -> :sswitch_3
        -0x82bc1bc -> :sswitch_2
        0x35fc9059 -> :sswitch_1
        0x79522977 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a(J)Ljava/lang/Object;
    .locals 1

    .line 84
    iget-object p1, p0, Lyy;->b:Ljava/lang/Class;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-nez p1, :cond_0

    .line 86
    :try_start_0
    iget-object p1, p0, Lyy;->b:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 88
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string v0, "create map error"

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 91
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->m()Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_1

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v8

    .line 100
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expect \'{\', but \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->a()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u$c;->i()J

    move-result-wide v2

    or-long v9, v2, p4

    .line 106
    iget-object v2, v0, Lyy;->b:Ljava/lang/Class;

    const-class v3, Ljava/util/HashMap;

    if-ne v2, v3, :cond_3

    .line 107
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u$c;->e()Ljava/util/function/Supplier;

    move-result-object v1

    .line 108
    iget-object v2, v0, Lyy;->a:Ljava/lang/Class;

    const-class v3, Ljava/util/Map;

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_2

    .line 109
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 110
    invoke-static {v1}, Labo;->a(Ljava/util/Map;)Ljava/util/Map;

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
    const-class v1, Lcom/alibaba/fastjson2/e;

    if-ne v2, v1, :cond_4

    .line 115
    new-instance v1, Lcom/alibaba/fastjson2/e;

    invoke-direct {v1}, Lcom/alibaba/fastjson2/e;-><init>()V

    goto :goto_1

    .line 117
    :cond_4
    invoke-virtual {p0, v9, v10}, Lyy;->a(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    :goto_1
    move-object v11, v1

    move-object v12, v8

    :goto_2
    move-object v1, v8

    .line 123
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_8

    .line 127
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x3a

    .line 128
    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v13, v1

    move-object v14, v8

    goto :goto_4

    .line 129
    :cond_6
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "illegal json"

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->J()Ljava/lang/String;

    move-result-object v1

    .line 134
    iget-object v2, v0, Lyy;->d:Labk;

    invoke-virtual {v2, v1}, Labk;->a(Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v2

    move-object v14, v1

    move-object v13, v2

    :goto_4
    if-nez v13, :cond_8

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object v1

    goto :goto_5

    .line 141
    :cond_8
    invoke-virtual {v7, v13}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v1

    const-wide/16 v5, 0x0

    move-object/from16 v2, p1

    move-object v3, v13

    move-object/from16 v4, p3

    .line 142
    invoke-interface/range {v1 .. v6}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    :goto_5
    const-wide/16 v2, 0x0

    if-nez v1, :cond_9

    .line 145
    sget-object v4, Lcom/alibaba/fastjson2/u$d;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/u$d;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/u$d;->mask:J

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
    sget-object v5, Lcom/alibaba/fastjson2/u$d;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/u$d;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/u$d;->mask:J

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
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson2/u;->a(C)Z

    .line 171
    iget-object v1, v0, Lyy;->c:Ljava/util/function/Function;

    if-eqz v1, :cond_e

    .line 172
    invoke-interface {v1, v11}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_e
    return-object v11
.end method
