.class public Lzv;
.super Lwx;
.source "ObjectReaderNoneDefaultConstructor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lwx<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:[Ljava/lang/String;

.field final b:[Lsu;

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lsu;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/function/Function;Ljava/util/List;[Ljava/lang/String;[Lsu;[Lsu;[Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;TT;>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Lsu;",
            "[",
            "Lsu;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v12, p0

    move-object/from16 v13, p9

    .line 48
    invoke-static/range {p9 .. p10}, Lzv;->a([Lsu;[Lsu;)[Lsu;

    move-result-object v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    .line 38
    invoke-direct/range {v0 .. v11}, Lwx;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;[Ljava/lang/Class;[Ljava/lang/String;[Lsu;)V

    move-object/from16 v0, p8

    .line 51
    iput-object v0, v12, Lzv;->a:[Ljava/lang/String;

    move-object/from16 v0, p6

    .line 52
    iput-object v0, v12, Lzv;->d:Ljava/util/function/Function;

    move-object/from16 v0, p10

    .line 53
    iput-object v0, v12, Lzv;->b:[Lsu;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v12, Lzv;->c:Ljava/util/Map;

    .line 55
    array-length v0, v13

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, v13, v1

    .line 56
    iget-object v3, v12, Lzv;->c:Ljava/util/Map;

    iget-wide v4, v2, Lsu;->n:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static a([Lsu;[Lsu;)[Lsu;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 64
    :cond_0
    array-length v0, p0

    .line 65
    array-length v1, p1

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lsu;

    const/4 v1, 0x0

    .line 66
    array-length v2, p1

    invoke-static {p1, v1, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    move-object v0, p0

    move-object v7, p1

    .line 77
    iget-boolean v1, v0, Lzv;->ag:Z

    if-nez v1, :cond_0

    .line 78
    iget-object v1, v0, Lzv;->Y:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;)V

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->c()B

    move-result v1

    const/16 v2, -0x51

    const/4 v8, 0x0

    if-ne v1, v2, :cond_1

    .line 83
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    return-object v8

    :cond_1
    const/16 v2, -0x6e

    if-ne v1, v2, :cond_2

    .line 88
    iget-object v2, v0, Lzv;->Y:Ljava/lang/Class;

    iget-wide v3, v0, Lzv;->ad:J

    iget-wide v5, v0, Lzv;->ab:J

    or-long/2addr v5, p4

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;JJ)Lwk;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eq v1, v0, :cond_2

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 90
    invoke-interface/range {v1 .. v6}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 97
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->s()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 98
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->l()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 99
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->p()I

    move-result v1

    move v3, v2

    move-object v4, v8

    :goto_0
    if-ge v3, v1, :cond_4

    .line 101
    iget-object v5, v0, Lzv;->N:[Lsu;

    aget-object v5, v5, v3

    .line 102
    invoke-virtual {v5, p1}, Lsu;->b(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_3

    .line 104
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 106
    :cond_3
    iget-wide v9, v5, Lsu;->n:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    move-object v3, v8

    goto :goto_2

    .line 109
    :cond_5
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expect object, but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->c()B

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson2/b;->a(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->m()Z

    move v1, v2

    move-object v3, v8

    move-object v4, v3

    .line 114
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result v5

    if-eqz v5, :cond_b

    :goto_2
    if-nez v4, :cond_7

    .line 168
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 170
    :cond_7
    invoke-virtual {p0, v4}, Lzv;->a(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    .line 171
    iget-object v5, v0, Lzv;->b:[Lsu;

    if-eqz v5, :cond_8

    .line 172
    :goto_3
    iget-object v5, v0, Lzv;->b:[Lsu;

    array-length v6, v5

    if-ge v2, v6, :cond_8

    .line 173
    aget-object v5, v5, v2

    .line 174
    iget-wide v8, v5, Lsu;->n:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 175
    invoke-virtual {v5, v1, v6}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    if-eqz v3, :cond_a

    .line 180
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 181
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 182
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 183
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lzv;->b(J)Lsu;

    move-result-object v4

    const-string v5, ".."

    .line 184
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 185
    invoke-virtual {v4, v1, v1}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 188
    :cond_9
    invoke-virtual {v4, p1, v1, v3}, Lsu;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    return-object v1

    .line 118
    :cond_b
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v5

    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-nez v9, :cond_c

    goto/16 :goto_6

    .line 123
    :cond_c
    sget-wide v9, Lzv;->f:J

    cmp-long v9, v5, v9

    if-nez v9, :cond_f

    if-nez v1, :cond_f

    .line 124
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->G()J

    move-result-wide v1

    .line 125
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v3

    .line 126
    invoke-virtual {v3, v1, v2}, Lcom/alibaba/fastjson2/u$c;->a(J)Lwk;

    move-result-object v1

    if-nez v1, :cond_e

    .line 128
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object v1

    .line 129
    iget-object v2, v0, Lzv;->Y:Ljava/lang/Class;

    invoke-virtual {v3, v1, v2}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/String;Ljava/lang/Class;)Lwk;

    move-result-object v2

    if-eqz v2, :cond_d

    move-object v1, v2

    goto :goto_5

    .line 132
    :cond_d
    new-instance v2, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auotype not support : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    :goto_5
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 136
    invoke-interface/range {v1 .. v6}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 137
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    return-object v1

    .line 141
    :cond_f
    invoke-virtual {p0, v5, v6}, Lzv;->b(J)Lsu;

    move-result-object v9

    if-nez v9, :cond_10

    .line 143
    invoke-virtual {p0, p1, v8}, Lzv;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_6

    .line 148
    :cond_10
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->q()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 149
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    .line 150
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v9

    if-nez v3, :cond_11

    .line 152
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 154
    :cond_11
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 158
    :cond_12
    invoke-virtual {v9, p1}, Lsu;->b(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_13

    .line 160
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 162
    :cond_13
    iget-wide v9, v9, Lsu;->n:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method public a(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lzv;->d:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "J)TT;"
        }
    .end annotation

    .line 413
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    .line 414
    invoke-virtual {p0}, Lzv;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 416
    instance-of v2, v1, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 417
    check-cast v1, Ljava/lang/String;

    .line 418
    invoke-static {v1}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v4

    .line 420
    sget-object v2, Lcom/alibaba/fastjson2/u$d;->SupportAutoType:Lcom/alibaba/fastjson2/u$d;

    iget-wide v6, v2, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v6, p2

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_0

    .line 421
    invoke-virtual {p0, v0, v4, v5}, Lzv;->a(Lzx;J)Lwk;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_1

    .line 426
    invoke-virtual {p0}, Lzv;->d_()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lzv;->getFeatures()J

    move-result-wide v4

    or-long/2addr v4, p2

    .line 425
    invoke-virtual {v0, v1, v2, v4, v5}, Lzx;->a(Ljava/lang/String;Ljava/lang/Class;J)Lwk;

    move-result-object v2

    :cond_1
    if-eq v2, p0, :cond_2

    if-eqz v2, :cond_2

    .line 431
    invoke-interface {v2, p1, p2, p3}, Lwk;->a(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 437
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 438
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 439
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 441
    invoke-virtual {p0, v4}, Lzv;->a(Ljava/lang/String;)Lsu;

    move-result-object v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_4

    .line 444
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 445
    iget-object v6, v4, Lsu;->c:Ljava/lang/Class;

    if-eq v5, v6, :cond_4

    .line 447
    invoke-virtual {v0, v5, v6}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 449
    invoke-interface {v5, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_4
    if-nez v3, :cond_5

    .line 455
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 459
    :cond_5
    instance-of v5, v4, Lvy;

    if-eqz v5, :cond_6

    .line 460
    check-cast v4, Lvy;

    iget-wide v4, v4, Lvy;->A:J

    goto :goto_2

    .line 462
    :cond_6
    iget-wide v4, v4, Lsu;->n:J

    .line 464
    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    if-nez v3, :cond_8

    .line 470
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 468
    :cond_8
    invoke-virtual {p0, v3}, Lzv;->a(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    .line 474
    iget-object v2, p0, Lzv;->b:[Lsu;

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    move v3, v2

    .line 475
    :goto_3
    iget-object v4, p0, Lzv;->b:[Lsu;

    array-length v5, v4

    if-ge v3, v5, :cond_d

    .line 476
    aget-object v4, v4, v3

    .line 477
    iget-object v5, v4, Lsu;->b:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_9

    goto :goto_5

    .line 482
    :cond_9
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 483
    iget-object v7, v4, Lsu;->c:Ljava/lang/Class;

    .line 484
    iget-object v8, v4, Lsu;->d:Ljava/lang/reflect/Type;

    .line 485
    instance-of v9, v8, Ljava/lang/Class;

    if-nez v9, :cond_a

    .line 486
    invoke-static {v5, v8, v0}, Labo;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lzx;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_4

    :cond_a
    if-eq v6, v7, :cond_c

    .line 488
    invoke-virtual {v0, v6, v7}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 490
    invoke-interface {v6, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_4

    .line 491
    :cond_b
    instance-of v6, v5, Ljava/util/Map;

    if-eqz v6, :cond_c

    .line 492
    new-array v6, v2, [Lcom/alibaba/fastjson2/u$d;

    invoke-static {v0, v6}, Lcom/alibaba/fastjson2/d;->a(Lzx;[Lcom/alibaba/fastjson2/u$d;)Lcom/alibaba/fastjson2/u$c;

    move-result-object v6

    invoke-virtual {v4, v6}, Lsu;->a(Lcom/alibaba/fastjson2/u$c;)Lwk;

    move-result-object v6

    .line 493
    check-cast v5, Ljava/util/Map;

    iget-wide v7, v4, Lsu;->e:J

    or-long/2addr v7, p2

    invoke-interface {v6, v5, v7, v8}, Lwk;->a(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v5

    .line 497
    :cond_c
    :goto_4
    invoke-virtual {v4, v1, v5}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_d
    return-object v1
.end method

.method public createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection;",
            ")TT;"
        }
    .end annotation

    .line 377
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    .line 379
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 380
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 381
    iget-object v4, p0, Lzv;->N:[Lsu;

    array-length v4, v4

    if-lt v2, v4, :cond_0

    goto :goto_2

    .line 384
    :cond_0
    iget-object v4, p0, Lzv;->N:[Lsu;

    aget-object v4, v4, v2

    if-eqz v3, :cond_1

    .line 387
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 388
    iget-object v6, v4, Lsu;->c:Ljava/lang/Class;

    if-eq v5, v6, :cond_1

    .line 390
    invoke-virtual {v0, v5, v6}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 392
    invoke-interface {v5, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 398
    :cond_1
    instance-of v5, v4, Lvy;

    if-eqz v5, :cond_2

    .line 399
    check-cast v4, Lvy;

    iget-wide v4, v4, Lvy;->A:J

    goto :goto_1

    .line 401
    :cond_2
    iget-wide v4, v4, Lsu;->n:J

    .line 403
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 408
    :cond_3
    :goto_2
    invoke-virtual {p0, v1}, Lzv;->a(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 197
    iget-boolean v0, v6, Lzv;->ag:Z

    if-nez v0, :cond_0

    .line 198
    iget-object v0, v6, Lzv;->Y:Ljava/lang/Class;

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;)V

    .line 201
    :cond_0
    iget-boolean v0, v7, Lcom/alibaba/fastjson2/u;->b:Z

    if-eqz v0, :cond_1

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 202
    invoke-virtual/range {v0 .. v5}, Lzv;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 205
    :cond_1
    iget-wide v0, v6, Lzv;->ab:J

    or-long v0, p4, v0

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson2/u;->c(J)Z

    move-result v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v0, :cond_6

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->y()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 208
    :goto_0
    iget-object v0, v6, Lzv;->N:[Lsu;

    array-length v0, v0

    if-ge v8, v0, :cond_3

    .line 209
    iget-object v0, v6, Lzv;->N:[Lsu;

    aget-object v0, v0, v8

    .line 210
    invoke-virtual {v0, v7}, Lsu;->b(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;

    move-result-object v1

    if-nez v9, :cond_2

    .line 212
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v9, v2

    .line 214
    :cond_2
    iget-wide v2, v0, Lsu;->n:J

    .line 215
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->z()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 222
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->x()Z

    if-nez v9, :cond_4

    .line 225
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v9

    .line 223
    :cond_4
    invoke-virtual {v6, v9}, Lzv;->a(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 219
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "array not end, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->a()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->m()Z

    move-result v0

    if-nez v0, :cond_8

    .line 231
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->L()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 232
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson2/u;->a(Z)V

    goto :goto_1

    .line 233
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    return-object v9

    .line 239
    :cond_8
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v10

    .line 240
    iget-wide v0, v6, Lzv;->ab:J

    or-long v0, v0, p4

    invoke-virtual {v10}, Lcom/alibaba/fastjson2/u$c;->i()J

    move-result-wide v2

    or-long v11, v0, v2

    move v14, v8

    move-object v13, v9

    move-object v15, v13

    .line 244
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez v13, :cond_9

    .line 326
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_3

    :cond_9
    move-object v0, v13

    .line 327
    :goto_3
    iget-object v1, v6, Lzv;->d:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 329
    iget-object v1, v6, Lzv;->b:[Lsu;

    if-eqz v1, :cond_c

    if-eqz v13, :cond_c

    .line 330
    :goto_4
    iget-object v1, v6, Lzv;->b:[Lsu;

    array-length v2, v1

    if-ge v8, v2, :cond_c

    .line 331
    aget-object v1, v1, v8

    .line 332
    iget-object v2, v6, Lzv;->c:Ljava/util/Map;

    iget-wide v3, v1, Lsu;->n:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsu;

    if-eqz v2, :cond_a

    .line 333
    iget-object v2, v2, Lsu;->c:Ljava/lang/Class;

    iget-object v3, v1, Lsu;->c:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_5

    .line 337
    :cond_a
    iget-wide v2, v1, Lsu;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 339
    invoke-virtual {v1, v0, v2}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_c
    if-eqz v15, :cond_d

    .line 345
    invoke-virtual {v15}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 346
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsu;

    .line 347
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 348
    invoke-virtual {v3, v7, v0, v2}, Lsu;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 352
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->x()Z

    return-object v0

    .line 248
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    goto/16 :goto_b

    .line 253
    :cond_f
    iget-wide v4, v6, Lzv;->M:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_14

    if-nez v14, :cond_14

    .line 254
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->G()J

    move-result-wide v4

    .line 255
    iget-wide v0, v6, Lzv;->ad:J

    cmp-long v0, v4, v0

    if-nez v0, :cond_10

    goto/16 :goto_b

    .line 259
    :cond_10
    sget-object v0, Lcom/alibaba/fastjson2/u$d;->SupportAutoType:Lcom/alibaba/fastjson2/u$d;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v0, v11

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_7

    :cond_11
    move v0, v8

    :goto_7
    if-eqz v0, :cond_12

    .line 264
    iget-object v3, v6, Lzv;->Y:Ljava/lang/Class;

    iget-wide v1, v6, Lzv;->ab:J

    move-object/from16 v0, p1

    move-wide/from16 v16, v1

    move-wide v1, v4

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/u;->a(JLjava/lang/Class;J)Lwk;

    move-result-object v0

    goto :goto_8

    .line 266
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object v0

    .line 267
    iget-object v1, v6, Lzv;->Y:Ljava/lang/Class;

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/String;Ljava/lang/Class;)Lwk;

    move-result-object v0

    :goto_8
    if-nez v0, :cond_13

    .line 271
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object v0

    .line 272
    iget-object v1, v6, Lzv;->Y:Ljava/lang/Class;

    iget-wide v2, v6, Lzv;->ab:J

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/String;Ljava/lang/Class;J)Lwk;

    move-result-object v0

    :cond_13
    if-eqz v0, :cond_1c

    const-wide/16 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 276
    invoke-interface/range {v0 .. v5}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 277
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->x()Z

    return-object v0

    .line 283
    :cond_14
    invoke-virtual {v6, v0, v1}, Lzv;->b(J)Lsu;

    move-result-object v4

    .line 284
    iget-object v5, v6, Lzv;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsu;

    if-eqz v0, :cond_15

    if-eqz v4, :cond_15

    .line 285
    iget-object v1, v0, Lsu;->c:Ljava/lang/Class;

    if-eqz v1, :cond_15

    iget-object v1, v0, Lsu;->c:Ljava/lang/Class;

    iget-object v5, v4, Lsu;->c:Ljava/lang/Class;

    .line 288
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_9

    :cond_15
    move-object v0, v4

    :goto_9
    if-nez v0, :cond_16

    .line 293
    sget-object v1, Lcom/alibaba/fastjson2/u$d;->SupportSmartMatch:Lcom/alibaba/fastjson2/u$d;

    iget-wide v4, v1, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v4, v11

    cmp-long v1, v4, v2

    if-eqz v1, :cond_16

    .line 294
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->I()J

    move-result-wide v0

    .line 295
    invoke-virtual {v6, v0, v1}, Lzv;->c(J)Lsu;

    move-result-object v0

    :cond_16
    if-nez v0, :cond_17

    .line 299
    invoke-virtual {v6, v7, v9}, Lzv;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_b

    .line 303
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->q()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 304
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->r()Ljava/lang/String;

    move-result-object v1

    if-nez v15, :cond_18

    .line 306
    new-instance v15, Ljava/util/IdentityHashMap;

    invoke-direct {v15}, Ljava/util/IdentityHashMap;-><init>()V

    .line 308
    :cond_18
    invoke-virtual {v15, v0, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 312
    :cond_19
    invoke-virtual {v0, v7}, Lsu;->b(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;

    move-result-object v1

    if-nez v13, :cond_1a

    .line 314
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 318
    :cond_1a
    instance-of v2, v0, Lvy;

    if-eqz v2, :cond_1b

    .line 319
    check-cast v0, Lvy;

    iget-wide v2, v0, Lvy;->A:J

    goto :goto_a

    .line 321
    :cond_1b
    iget-wide v2, v0, Lsu;->n:J

    .line 323
    :goto_a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v13, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    :goto_b
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2
.end method
