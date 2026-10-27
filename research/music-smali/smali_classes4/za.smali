.class Lza;
.super Ljava/lang/Object;
.source "ObjectReaderImplMapTyped.java"

# interfaces
.implements Lwk;


# instance fields
.field final a:Ljava/lang/Class;

.field final b:Ljava/lang/Class;

.field final c:Ljava/lang/reflect/Type;

.field final d:Ljava/lang/reflect/Type;

.field final e:Ljava/lang/Class;

.field final g:J

.field final h:Ljava/util/function/Function;

.field final i:Ljava/lang/reflect/Constructor;

.field j:Lwk;

.field k:Lwk;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;JLjava/util/function/Function;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    move-object p3, v1

    .line 39
    :cond_0
    iput-object p1, p0, Lza;->a:Ljava/lang/Class;

    .line 40
    iput-object p2, p0, Lza;->b:Ljava/lang/Class;

    .line 41
    iput-object p3, p0, Lza;->c:Ljava/lang/reflect/Type;

    .line 42
    iput-object p4, p0, Lza;->d:Ljava/lang/reflect/Type;

    .line 43
    invoke-static {p4}, Labo;->d(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lza;->e:Ljava/lang/Class;

    .line 44
    iput-wide p5, p0, Lza;->g:J

    .line 45
    iput-object p7, p0, Lza;->h:Ljava/util/function/Function;

    .line 48
    iget-object p1, p0, Lza;->b:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 49
    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    aget-object p4, p1, p3

    .line 50
    invoke-virtual {p4}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result p5

    if-nez p5, :cond_1

    .line 51
    invoke-virtual {p4}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result p5

    invoke-static {p5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p5

    if-nez p5, :cond_1

    const/4 p1, 0x1

    .line 52
    invoke-virtual {p4, p1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    move-object p4, v1

    .line 57
    :goto_1
    iput-object p4, p0, Lza;->i:Ljava/lang/reflect/Constructor;

    return-void
.end method


# virtual methods
.method public a(J)Ljava/lang/Object;
    .locals 1

    .line 147
    iget-object p1, p0, Lza;->b:Ljava/lang/Class;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-nez p1, :cond_1

    .line 149
    :try_start_0
    iget-object p1, p0, Lza;->i:Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lza;->i:Ljava/lang/reflect/Constructor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 152
    :cond_0
    iget-object p1, p0, Lza;->b:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 154
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string v0, "create map error"

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 157
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    .line 163
    iget-object v8, v0, Lza;->h:Ljava/util/function/Function;

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->c()B

    move-result v1

    const/4 v9, 0x0

    const/16 v2, -0x6e

    if-ne v1, v2, :cond_0

    .line 165
    iget-object v2, v0, Lza;->a:Ljava/lang/Class;

    const-wide/16 v3, 0x0

    iget-wide v5, v0, Lza;->g:J

    or-long v5, v5, p4

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;JJ)Lwk;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eq v1, v0, :cond_1

    .line 168
    invoke-interface {v1}, Lwk;->e()Ljava/util/function/Function;

    move-result-object v8

    .line 169
    instance-of v2, v1, Lyw;

    if-nez v2, :cond_1

    instance-of v2, v1, Lza;

    if-nez v2, :cond_1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    .line 170
    invoke-interface/range {v1 .. v6}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    move-object v1, v9

    .line 175
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->c()B

    move-result v2

    const/16 v3, -0x51

    if-ne v2, v3, :cond_2

    .line 177
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->E()V

    return-object v9

    :cond_2
    const/16 v3, -0x5a

    if-ne v2, v3, :cond_3

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->E()V

    .line 185
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u$c;->i()J

    move-result-wide v2

    or-long v10, p4, v2

    if-eqz v1, :cond_4

    .line 190
    invoke-interface {v1, v10, v11}, Lwk;->a(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    :goto_0
    move-object v12, v1

    goto :goto_1

    .line 192
    :cond_4
    iget-object v1, v0, Lza;->b:Ljava/lang/Class;

    const-class v2, Ljava/util/HashMap;

    if-ne v1, v2, :cond_5

    .line 193
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 194
    :cond_5
    invoke-virtual {p0}, Lza;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    move v13, v1

    .line 198
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->c()B

    move-result v1

    const/16 v2, -0x5b

    if-ne v1, v2, :cond_8

    .line 200
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->E()V

    if-eqz v8, :cond_7

    .line 266
    sget-object v1, Lyw;->a:Ljava/util/function/Function;

    if-ne v8, v1, :cond_6

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 267
    new-instance v1, Ljava/util/EnumMap;

    iget-object v2, v0, Lza;->c:Ljava/lang/reflect/Type;

    check-cast v2, Ljava/lang/Class;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object v1

    .line 269
    :cond_6
    invoke-interface {v8, v12}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_7
    return-object v12

    .line 205
    :cond_8
    iget-object v1, v0, Lza;->c:Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/String;

    if-eq v1, v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->v()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_3

    .line 208
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->q()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 209
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->r()Ljava/lang/String;

    move-result-object v1

    .line 210
    new-instance v2, Labn;

    invoke-direct {v2, v13}, Labn;-><init>(I)V

    .line 211
    invoke-static {v1}, Lcom/alibaba/fastjson2/g;->a(Ljava/lang/String;)Lcom/alibaba/fastjson2/g;

    move-result-object v1

    invoke-virtual {v7, v12, v2, v1}, Lcom/alibaba/fastjson2/u;->a(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/g;)V

    move-object v14, v2

    goto :goto_5

    .line 213
    :cond_a
    iget-object v1, v0, Lza;->k:Lwk;

    if-nez v1, :cond_b

    iget-object v1, v0, Lza;->c:Ljava/lang/reflect/Type;

    if-eqz v1, :cond_b

    .line 214
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v1

    iput-object v1, v0, Lza;->k:Lwk;

    .line 217
    :cond_b
    iget-object v1, v0, Lza;->k:Lwk;

    if-nez v1, :cond_c

    .line 218
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    :cond_c
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p1

    move-wide/from16 v5, p4

    .line 220
    invoke-interface/range {v1 .. v6}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    .line 206
    :cond_d
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->J()Ljava/lang/String;

    move-result-object v1

    :goto_4
    move-object v14, v1

    .line 225
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->q()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 226
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->r()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".."

    .line 227
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 228
    invoke-interface {v12, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 230
    :cond_e
    invoke-static {v1}, Lcom/alibaba/fastjson2/g;->a(Ljava/lang/String;)Lcom/alibaba/fastjson2/g;

    move-result-object v1

    invoke-virtual {v7, v12, v14, v1}, Lcom/alibaba/fastjson2/u;->a(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/g;)V

    .line 231
    instance-of v1, v12, Ljava/util/concurrent/ConcurrentMap;

    if-nez v1, :cond_15

    .line 232
    invoke-interface {v12, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 238
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 239
    invoke-interface {v12, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 244
    :cond_10
    iget-object v1, v0, Lza;->d:Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_11

    .line 245
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object v1

    goto :goto_6

    .line 247
    :cond_11
    iget-object v2, v0, Lza;->e:Ljava/lang/Class;

    const-wide/16 v3, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;JJ)Lwk;

    move-result-object v1

    if-eqz v1, :cond_12

    if-eq v1, v0, :cond_12

    .line 249
    iget-object v3, v0, Lza;->d:Ljava/lang/reflect/Type;

    move-object/from16 v2, p1

    move-object v4, v14

    move-wide/from16 v5, p4

    invoke-interface/range {v1 .. v6}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    goto :goto_6

    .line 251
    :cond_12
    iget-object v1, v0, Lza;->j:Lwk;

    if-nez v1, :cond_13

    .line 252
    iget-object v1, v0, Lza;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v1

    iput-object v1, v0, Lza;->j:Lwk;

    .line 254
    :cond_13
    iget-object v1, v0, Lza;->j:Lwk;

    iget-object v3, v0, Lza;->d:Ljava/lang/reflect/Type;

    move-object/from16 v2, p1

    move-object v4, v14

    move-wide/from16 v5, p4

    invoke-interface/range {v1 .. v6}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    :goto_6
    if-nez v1, :cond_14

    .line 258
    sget-object v2, Lcom/alibaba/fastjson2/u$d;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/u$d;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v2, v10

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_14

    goto :goto_7

    .line 262
    :cond_14
    invoke-interface {v12, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2
.end method

.method public a(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 7

    .line 67
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lza;->b:Ljava/lang/Class;

    const-class v2, Ljava/util/Map;

    if-eq v1, v2, :cond_1

    const-class v2, Ljava/util/HashMap;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0, p2, p3}, Lza;->a(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    goto :goto_1

    .line 71
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 76
    :goto_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 77
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 78
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 80
    iget-object v4, p0, Lza;->c:Ljava/lang/reflect/Type;

    if-eqz v4, :cond_3

    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_2

    goto :goto_3

    .line 83
    :cond_2
    invoke-static {v3, v4}, Labo;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_4

    .line 81
    :cond_3
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    if-eqz v2, :cond_11

    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 90
    iget-object v5, p0, Lza;->d:Ljava/lang/reflect/Type;

    const-class v6, Ljava/lang/Object;

    if-ne v5, v6, :cond_4

    goto/16 :goto_6

    .line 92
    :cond_4
    const-class v5, Lcom/alibaba/fastjson2/e;

    if-eq v4, v5, :cond_f

    sget-object v5, Labo;->a:Ljava/lang/Class;

    if-ne v4, v5, :cond_5

    goto/16 :goto_5

    .line 101
    :cond_5
    const-class v5, Lcom/alibaba/fastjson2/JSONArray;

    if-eq v4, v5, :cond_6

    sget-object v5, Labo;->c:Ljava/lang/Class;

    if-ne v4, v5, :cond_8

    :cond_6
    iget-object v5, p0, Lza;->e:Ljava/lang/Class;

    const-class v6, Ljava/util/List;

    if-ne v5, v6, :cond_8

    .line 104
    iget-object v4, p0, Lza;->j:Lwk;

    if-nez v4, :cond_7

    .line 105
    iget-object v4, p0, Lza;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v4}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v4

    iput-object v4, p0, Lza;->j:Lwk;

    .line 108
    :cond_7
    :try_start_0
    iget-object v4, p0, Lza;->j:Lwk;

    move-object v5, v2

    check-cast v5, Lcom/alibaba/fastjson2/JSONArray;

    invoke-interface {v4, v5}, Lwk;->createInstance(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 112
    :cond_8
    iget-object v5, p0, Lza;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v4, v5}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 113
    invoke-interface {v5, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_6

    .line 114
    :cond_9
    instance-of v5, v2, Ljava/util/Map;

    if-eqz v5, :cond_b

    .line 115
    move-object v4, v2

    check-cast v4, Ljava/util/Map;

    .line 116
    iget-object v5, p0, Lza;->j:Lwk;

    if-nez v5, :cond_a

    .line 117
    iget-object v5, p0, Lza;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v5}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v5

    iput-object v5, p0, Lza;->j:Lwk;

    .line 120
    :cond_a
    :try_start_1
    iget-object v5, p0, Lza;->j:Lwk;

    invoke-interface {v5, v4, p2, p3}, Lwk;->a(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 124
    :cond_b
    instance-of v5, v2, Ljava/util/Collection;

    if-eqz v5, :cond_d

    .line 125
    iget-object v4, p0, Lza;->j:Lwk;

    if-nez v4, :cond_c

    .line 126
    iget-object v4, p0, Lza;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v4}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v4

    iput-object v4, p0, Lza;->j:Lwk;

    .line 128
    :cond_c
    iget-object v4, p0, Lza;->j:Lwk;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v4, v2}, Lwk;->createInstance(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_6

    .line 130
    :cond_d
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_6

    .line 131
    :cond_e
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "can not convert from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lza;->d:Ljava/lang/reflect/Type;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_f
    :goto_5
    iget-object v4, p0, Lza;->j:Lwk;

    if-nez v4, :cond_10

    .line 94
    iget-object v4, p0, Lza;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v4}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v4

    iput-object v4, p0, Lza;->j:Lwk;

    .line 97
    :cond_10
    :try_start_2
    iget-object v4, p0, Lza;->j:Lwk;

    move-object v5, v2

    check-cast v5, Lcom/alibaba/fastjson2/e;

    invoke-interface {v4, v5, p2, p3}, Lwk;->a(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 135
    :catch_0
    :cond_11
    :goto_6
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 138
    :cond_12
    iget-object p1, p0, Lza;->h:Ljava/util/function/Function;

    if-eqz p1, :cond_13

    .line 139
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_13
    return-object v1
.end method

.method public d_()Ljava/lang/Class;
    .locals 1

    .line 62
    iget-object v0, p0, Lza;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p4

    .line 278
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->m()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v10, 0x0

    if-nez v1, :cond_2

    .line 279
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->L()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson2/u;->a(Z)V

    const/4 v2, 0x1

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v10

    .line 286
    :cond_1
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

    .line 290
    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v1

    .line 291
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u$c;->i()J

    move-result-wide v3

    or-long v11, v3, v8

    .line 293
    iget-object v3, v0, Lza;->b:Ljava/lang/Class;

    const-class v4, Ljava/util/HashMap;

    if-ne v3, v4, :cond_5

    .line 294
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u$c;->e()Ljava/util/function/Supplier;

    move-result-object v1

    .line 295
    iget-object v3, v0, Lza;->a:Ljava/lang/Class;

    const-class v4, Ljava/util/Map;

    if-ne v3, v4, :cond_4

    if-eqz v1, :cond_4

    .line 296
    iget-object v3, v0, Lza;->c:Ljava/lang/reflect/Type;

    const-class v4, Ljava/lang/String;

    if-eq v3, v4, :cond_3

    .line 297
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.alibaba.fastjson.JSONObject$Creator"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 299
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_1

    .line 301
    :cond_3
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 302
    invoke-static {v1}, Labo;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    goto :goto_2

    .line 305
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_1
    move-object v3, v10

    :goto_2
    move-object v13, v1

    move v14, v2

    move-object v15, v3

    goto :goto_3

    .line 308
    :cond_5
    invoke-virtual {v0, v11, v12}, Lza;->a(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    move-object v13, v1

    move v14, v2

    move-object v15, v10

    .line 313
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_a

    .line 317
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result v1

    const-string v2, "illegal json"

    const/16 v5, 0x3a

    const-wide/16 v16, 0x0

    if-eqz v1, :cond_8

    .line 318
    invoke-virtual {v7, v5}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_7

    .line 319
    :cond_7
    new-instance v1, Lcom/alibaba/fastjson2/c;

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    :cond_8
    iget-object v1, v0, Lza;->c:Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/String;

    if-ne v1, v3, :cond_c

    .line 323
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->J()Ljava/lang/String;

    move-result-object v1

    if-nez v14, :cond_9

    .line 324
    sget-object v3, Lcom/alibaba/fastjson2/u$d;->SupportAutoType:Lcom/alibaba/fastjson2/u$d;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v3, v11

    cmp-long v3, v3, v16

    if-eqz v3, :cond_9

    .line 326
    invoke-virtual/range {p0 .. p0}, Lza;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 328
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->G()J

    move-result-wide v2

    .line 329
    iget-object v4, v0, Lza;->a:Ljava/lang/Class;

    move-object/from16 v1, p1

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/u;->a(JLjava/lang/Class;J)Lwk;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 331
    instance-of v2, v1, Lyw;

    if-eqz v2, :cond_16

    .line 332
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lyw;

    iget-object v3, v3, Lyw;->p:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 333
    invoke-interface {v1, v8, v9}, Lwk;->a(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    :goto_4
    move-object v13, v1

    goto/16 :goto_9

    :cond_9
    if-nez v1, :cond_b

    .line 341
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-virtual {v7, v5}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_5

    .line 343
    :cond_a
    new-instance v1, Lcom/alibaba/fastjson2/c;

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :goto_5
    move-object v10, v1

    goto/16 :goto_7

    :cond_c
    if-nez v14, :cond_f

    .line 347
    sget-object v1, Lcom/alibaba/fastjson2/u$d;->SupportAutoType:Lcom/alibaba/fastjson2/u$d;

    .line 348
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson2/u;->a(Lcom/alibaba/fastjson2/u$d;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 349
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->a()C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_f

    iget-object v1, v0, Lza;->c:Ljava/lang/reflect/Type;

    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_d

    const-class v2, Ljava/lang/Enum;

    check-cast v1, Ljava/lang/Class;

    .line 350
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 352
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->J()Ljava/lang/String;

    move-result-object v1

    .line 353
    invoke-virtual/range {p0 .. p0}, Lza;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 354
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->G()J

    move-result-wide v2

    .line 355
    iget-object v4, v0, Lza;->a:Ljava/lang/Class;

    move-object/from16 v1, p1

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/u;->a(JLjava/lang/Class;J)Lwk;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 357
    instance-of v2, v1, Lyw;

    if-eqz v2, :cond_16

    .line 358
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lyw;

    iget-object v3, v3, Lyw;->p:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 359
    invoke-interface {v1, v8, v9}, Lwk;->a(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    goto :goto_4

    .line 365
    :cond_e
    iget-object v2, v0, Lza;->c:Ljava/lang/reflect/Type;

    invoke-static {v1, v2}, Labo;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_5

    .line 368
    :cond_f
    iget-object v1, v0, Lza;->k:Lwk;

    if-eqz v1, :cond_10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v2, p1

    move v10, v5

    move-wide/from16 v5, v18

    .line 369
    invoke-interface/range {v1 .. v6}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    goto :goto_6

    :cond_10
    move v10, v5

    .line 371
    iget-object v1, v0, Lza;->c:Ljava/lang/reflect/Type;

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    :goto_6
    if-nez v14, :cond_11

    .line 373
    sget-object v2, Lcom/alibaba/fastjson2/u$d;->SupportAutoType:Lcom/alibaba/fastjson2/u$d;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v2, v11

    cmp-long v2, v2, v16

    if-eqz v2, :cond_11

    .line 375
    invoke-virtual/range {p0 .. p0}, Lza;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_9

    .line 378
    :cond_11
    invoke-virtual {v7, v10}, Lcom/alibaba/fastjson2/u;->a(C)Z

    goto/16 :goto_5

    .line 381
    :goto_7
    iget-object v1, v0, Lza;->j:Lwk;

    if-nez v1, :cond_12

    .line 382
    iget-object v1, v0, Lza;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v1

    iput-object v1, v0, Lza;->j:Lwk;

    .line 385
    :cond_12
    iget-object v1, v0, Lza;->j:Lwk;

    iget-object v3, v0, Lza;->d:Ljava/lang/reflect/Type;

    const-wide/16 v5, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    invoke-interface/range {v1 .. v6}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_13

    .line 387
    sget-object v2, Lcom/alibaba/fastjson2/u$d;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/u$d;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v2, v11

    cmp-long v2, v2, v16

    if-eqz v2, :cond_13

    goto :goto_9

    :cond_13
    if-eqz v15, :cond_14

    .line 393
    invoke-interface {v15, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_8

    .line 395
    :cond_14
    invoke-interface {v13, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_8
    if-eqz v2, :cond_16

    .line 399
    sget-object v3, Lcom/alibaba/fastjson2/u$d;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/u$d;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v3, v11

    cmp-long v3, v3, v16

    if-eqz v3, :cond_16

    .line 400
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_15

    .line 401
    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-interface {v13, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 404
    :cond_15
    invoke-static {v2, v1}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object v1

    .line 405
    invoke-interface {v13, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    :goto_9
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x0

    goto/16 :goto_3

    .line 411
    :cond_17
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->x()Z

    .line 413
    iget-object v1, v0, Lza;->h:Ljava/util/function/Function;

    if-eqz v1, :cond_18

    .line 414
    invoke-interface {v1, v13}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_18
    return-object v13
.end method
