.class public final Lze;
.super Lzw;
.source "ObjectReaderImplObject.java"


# static fields
.field public static final a:Lze;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lze;

    invoke-direct {v0}, Lze;-><init>()V

    sput-object v0, Lze;->a:Lze;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lzw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(J)Ljava/lang/Object;
    .locals 0

    .line 25
    new-instance p1, Lcom/alibaba/fastjson2/e;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/e;-><init>()V

    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 12

    .line 311
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->c()B

    move-result v0

    const/16 v1, 0x49

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_0

    .line 313
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

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

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;JJ)Lwk;

    move-result-object v6

    if-eqz v6, :cond_1

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-wide/from16 v10, p4

    .line 319
    invoke-interface/range {v6 .. v11}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, -0x51

    if-ne v0, v1, :cond_2

    .line 324
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    const/4 v0, 0x0

    return-object v0

    .line 328
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 9

    .line 34
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    .line 35
    invoke-virtual {p0}, Lze;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 37
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 38
    check-cast v1, Ljava/lang/String;

    .line 39
    invoke-static {v1}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x0

    .line 41
    sget-object v5, Lcom/alibaba/fastjson2/u$d;->SupportAutoType:Lcom/alibaba/fastjson2/u$d;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v5, p2

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 42
    invoke-virtual {p0, v0, v2, v3}, Lze;->a(Lzx;J)Lwk;

    move-result-object v4

    :cond_0
    if-nez v4, :cond_2

    .line 47
    invoke-virtual {p0}, Lze;->d_()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lze;->getFeatures()J

    move-result-wide v3

    or-long/2addr v3, p2

    .line 46
    invoke-virtual {v0, v1, v2, v3, v4}, Lzx;->a(Ljava/lang/String;Ljava/lang/Class;J)Lwk;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No suitable ObjectReader found for"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-eq v4, p0, :cond_3

    .line 56
    invoke-interface {v4, p1, p2, p3}, Lwk;->a(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic d_()Ljava/lang/Class;
    .locals 1

    .line 15
    invoke-super {p0}, Lzw;->d_()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p1

    move-wide/from16 v4, p4

    .line 65
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/u;->b:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u$c;->i()J

    move-result-wide v2

    or-long/2addr v2, v4

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->t()Z

    move-result v6

    const/16 v15, 0x22

    const/16 v7, 0x5b

    if-eqz v6, :cond_23

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->m()Z

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->v()Z

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v16, 0x0

    if-eqz v6, :cond_9

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v18

    .line 80
    sget-wide v20, Lze;->f:J

    cmp-long v6, v18, v20

    if-nez v6, :cond_8

    .line 81
    sget-object v6, Lcom/alibaba/fastjson2/u$d;->SupportAutoType:Lcom/alibaba/fastjson2/u$d;

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson2/u$c;->a(Lcom/alibaba/fastjson2/u$d;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->G()J

    move-result-wide v10

    .line 87
    invoke-virtual {v0, v10, v11}, Lcom/alibaba/fastjson2/u$c;->a(J)Lwk;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 90
    invoke-interface {v10}, Lwk;->d_()Ljava/lang/Class;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 92
    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    if-eq v6, v12, :cond_2

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object v6

    if-nez v12, :cond_1

    .line 100
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    .line 102
    :cond_1
    invoke-virtual {v12, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v12, v9

    .line 106
    :goto_0
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 107
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v10

    goto :goto_1

    :cond_2
    move-object v6, v9

    :cond_3
    :goto_1
    if-nez v10, :cond_6

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object v6

    .line 115
    invoke-virtual {v0, v6, v9}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/String;Ljava/lang/Class;)Lwk;

    move-result-object v10

    goto :goto_2

    .line 118
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v6

    .line 119
    invoke-virtual {v0, v6, v9}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/String;Ljava/lang/Class;)Lwk;

    move-result-object v10

    if-nez v10, :cond_6

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v11

    sget-object v12, Lcom/alibaba/fastjson2/u$d;->ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson2/u$d;

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson2/u$c;->a(Lcom/alibaba/fastjson2/u$d;)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_2

    .line 122
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoType not support : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    if-eqz v10, :cond_7

    .line 127
    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson2/u;->a(Z)V

    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    .line 129
    invoke-interface/range {v0 .. v5}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7
    move-object v10, v6

    goto :goto_3

    :cond_8
    move-object v10, v9

    goto :goto_3

    :cond_9
    move-object v10, v9

    move-wide/from16 v18, v16

    .line 135
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/fastjson2/u$c;->e()Ljava/util/function/Supplier;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 137
    invoke-interface {v6}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_4

    .line 139
    :cond_a
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u$c;->i()J

    move-result-wide v11

    or-long/2addr v11, v4

    sget-object v0, Lcom/alibaba/fastjson2/u$d;->UseNativeObject:Lcom/alibaba/fastjson2/u$d;

    iget-wide v13, v0, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v11, v13

    cmp-long v0, v11, v16

    if-eqz v0, :cond_b

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_4

    .line 142
    :cond_b
    sget-object v0, Lyw;->l:Lyw;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/fastjson2/u;->a(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lyw;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :goto_4
    const/4 v4, 0x0

    if-eqz v10, :cond_10

    const/4 v5, -0x1

    .line 147
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v11, 0x57be006

    if-eq v6, v11, :cond_d

    const v11, 0x57be023

    if-eq v6, v11, :cond_c

    goto :goto_5

    :cond_c
    const-string v6, "java.util.ImmutableCollections$MapN"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    move v5, v8

    goto :goto_5

    :cond_d
    const-string v6, "java.util.ImmutableCollections$Map1"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    move v5, v4

    :cond_e
    :goto_5
    if-eqz v5, :cond_f

    if-eq v5, v8, :cond_f

    const-string v5, "@type"

    .line 152
    invoke-interface {v0, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    move-wide/from16 v18, v16

    .line 159
    :cond_10
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->x()Z

    return-object v0

    :cond_11
    const/16 v5, 0x3a

    if-nez v4, :cond_12

    if-nez v10, :cond_12

    cmp-long v6, v18, v16

    if-eqz v6, :cond_12

    .line 165
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 166
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->u()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->ag()Ljava/lang/Number;

    move-result-object v6

    .line 168
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson2/u;->a(C)Z

    goto :goto_7

    .line 170
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->J()Ljava/lang/String;

    move-result-object v6

    :goto_7
    if-nez v6, :cond_17

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->a()C

    move-result v6

    const/16 v8, 0x7b

    if-eq v6, v8, :cond_15

    if-ne v6, v7, :cond_14

    goto :goto_8

    .line 180
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->N()Ljava/lang/String;

    move-result-object v6

    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->a()C

    move-result v8

    if-ne v8, v5, :cond_17

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->E()V

    goto :goto_9

    .line 175
    :cond_15
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object v6

    .line 176
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_9

    .line 177
    :cond_16
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v2, "illegal input"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_9
    move-object v5, v6

    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->a()C

    move-result v8

    if-eq v8, v15, :cond_1f

    const/16 v6, 0x27

    if-eq v8, v6, :cond_1f

    const/16 v6, 0x2b

    if-eq v8, v6, :cond_1e

    const/16 v6, 0x53

    if-eq v8, v6, :cond_1c

    if-eq v8, v7, :cond_1b

    const/16 v6, 0x66

    if-eq v8, v6, :cond_1a

    const/16 v6, 0x6e

    if-eq v8, v6, :cond_19

    const/16 v11, 0x74

    if-eq v8, v11, :cond_1a

    const/16 v11, 0x7b

    if-eq v8, v11, :cond_18

    const/16 v11, 0x2d

    if-eq v8, v11, :cond_1e

    const/16 v11, 0x2e

    if-eq v8, v11, :cond_1e

    packed-switch v8, :pswitch_data_0

    .line 230
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->be()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aU()Ljava/util/Map;

    move-result-object v8

    goto :goto_a

    .line 219
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aQ()V

    move-object v8, v9

    goto :goto_a

    .line 216
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aX()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_a

    .line 205
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aZ()Ljava/util/List;

    move-result-object v8

    goto :goto_a

    .line 223
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->A()Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 224
    const-class v8, Ljava/util/HashSet;

    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_a

    .line 226
    :cond_1d
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->be()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1e
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->ag()Ljava/lang/Number;

    move-result-object v8

    goto :goto_a

    .line 212
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v8

    :goto_a
    if-nez v8, :cond_20

    .line 233
    sget-object v11, Lcom/alibaba/fastjson2/u$d;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/u$d;

    iget-wide v11, v11, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v11, v2

    cmp-long v11, v11, v16

    if-eqz v11, :cond_20

    goto :goto_b

    .line 237
    :cond_20
    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_22

    .line 239
    sget-object v12, Lcom/alibaba/fastjson2/u$d;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/u$d;

    iget-wide v12, v12, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v12, v2

    cmp-long v12, v12, v16

    if-eqz v12, :cond_22

    .line 240
    instance-of v12, v11, Ljava/util/Collection;

    if-eqz v12, :cond_21

    .line 241
    move-object v12, v11

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 244
    :cond_21
    invoke-static {v11, v8}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object v8

    .line 245
    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 256
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->a()C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_24

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aV()V

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->a()C

    move-result v0

    :cond_24
    if-eq v0, v15, :cond_2b

    const/16 v2, 0x27

    if-eq v0, v2, :cond_2b

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_2a

    const/16 v2, 0x53

    if-eq v0, v2, :cond_28

    if-eq v0, v7, :cond_27

    const/16 v2, 0x66

    if-eq v0, v2, :cond_26

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_25

    const/16 v2, 0x74

    if-eq v0, v2, :cond_26

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_2a

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_2a

    packed-switch v0, :pswitch_data_1

    .line 303
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->be()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->f()Ljava/util/Date;

    move-result-object v0

    goto :goto_c

    .line 288
    :cond_26
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aX()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c

    .line 280
    :cond_27
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aZ()Ljava/util/List;

    move-result-object v0

    goto :goto_c

    .line 294
    :cond_28
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->A()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 295
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 296
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/util/Collection;)V

    goto :goto_c

    .line 299
    :cond_29
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->be()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_2a
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->ag()Ljava/lang/Number;

    move-result-object v0

    goto :goto_c

    .line 284
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v0

    :goto_c
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
