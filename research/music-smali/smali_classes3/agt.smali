.class final Lagt;
.super Lahp;
.source "ObjectWriterImplList.java"


# static fields
.field static final a:Lagt;

.field static final b:Lagt;

.field static final c:Lagt;

.field static final d:Ljava/lang/Class;

.field static final e:Ljava/lang/String;

.field static final f:[B

.field static final g:J


# instance fields
.field final h:Ljava/lang/Class;

.field final i:Ljava/lang/reflect/Type;

.field final j:Ljava/lang/Class;

.field final k:Ljava/lang/reflect/Type;

.field final l:J

.field final m:Z

.field volatile n:Laem;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 19
    new-instance v7, Lagt;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lagt;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V

    sput-object v7, Lagt;->a:Lagt;

    .line 22
    new-instance v0, Lagt;

    const-class v9, Lcom/alibaba/fastjson2/JSONArray;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lagt;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V

    sput-object v0, Lagt;->b:Lagt;

    .line 26
    sget-object v0, Labo;->c:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 27
    sput-object v0, Lagt;->c:Lagt;

    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Lagt;

    sget-object v2, Labo;->c:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lagt;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V

    sput-object v0, Lagt;->c:Lagt;

    .line 33
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lagt;->d:Ljava/lang/Class;

    .line 34
    const-class v0, Ljava/util/ArrayList;

    invoke-static {v0}, Labo;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lagt;->e:Ljava/lang/String;

    .line 35
    sget-object v0, Lagt;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lagt;->f:[B

    .line 36
    sget-object v0, Lagt;->e:Ljava/lang/String;

    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lagt;->g:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lahp;-><init>()V

    .line 53
    iput-object p1, p0, Lagt;->h:Ljava/lang/Class;

    .line 54
    iput-object p2, p0, Lagt;->i:Ljava/lang/reflect/Type;

    .line 55
    iput-object p3, p0, Lagt;->j:Ljava/lang/Class;

    .line 56
    iput-object p4, p0, Lagt;->k:Ljava/lang/reflect/Type;

    .line 57
    iput-wide p5, p0, Lagt;->l:J

    if-eqz p3, :cond_0

    .line 58
    invoke-static {p3}, Lahq;->d(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lagt;->m:Z

    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/util/List;
    .locals 3

    .line 376
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 377
    check-cast p1, Ljava/util/List;

    return-object p1

    .line 378
    :cond_0
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_3

    .line 379
    check-cast p1, Ljava/lang/Iterable;

    .line 380
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 382
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 383
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0

    .line 387
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not cast \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' to List"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    if-nez v1, :cond_0

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->s()V

    return-void

    .line 102
    :cond_0
    instance-of v3, v2, Ljava/lang/Class;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 103
    check-cast v2, Ljava/lang/Class;

    :goto_0
    move-object v11, v4

    goto :goto_2

    .line 104
    :cond_1
    iget-object v3, v0, Lagt;->i:Ljava/lang/reflect/Type;

    if-ne v2, v3, :cond_2

    .line 105
    iget-object v2, v0, Lagt;->j:Ljava/lang/Class;

    goto :goto_0

    .line 106
    :cond_2
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_5

    .line 107
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 108
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 109
    array-length v5, v3

    if-ne v5, v10, :cond_3

    .line 110
    aget-object v3, v3, v9

    .line 111
    instance-of v5, v3, Ljava/lang/Class;

    if-eqz v5, :cond_3

    .line 112
    check-cast v3, Ljava/lang/Class;

    goto :goto_1

    :cond_3
    move-object v3, v4

    .line 116
    :goto_1
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 117
    instance-of v5, v2, Ljava/lang/Class;

    if-eqz v5, :cond_4

    .line 118
    check-cast v2, Ljava/lang/Class;

    move-object v11, v3

    goto :goto_2

    :cond_4
    move-object v11, v3

    move-object v2, v4

    goto :goto_2

    :cond_5
    move-object v2, v4

    move-object v11, v2

    .line 122
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-wide/from16 v12, p5

    .line 123
    invoke-virtual {v8, v1, v2, v12, v13}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;Ljava/lang/Class;J)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 124
    sget-object v2, Lagt;->d:Ljava/lang/Class;

    if-eq v3, v2, :cond_7

    const-class v2, Ljava/util/ArrayList;

    if-ne v3, v2, :cond_6

    goto :goto_3

    .line 127
    :cond_6
    invoke-static {v3}, Labo;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-virtual {v8, v2}, Lcom/alibaba/fastjson2/ab;->c(Ljava/lang/String;)V

    goto :goto_4

    .line 125
    :cond_7
    :goto_3
    sget-object v2, Lagt;->f:[B

    sget-wide v5, Lagt;->g:J

    invoke-virtual {v8, v2, v5, v6}, Lcom/alibaba/fastjson2/ab;->b([BJ)Z

    .line 132
    :cond_8
    :goto_4
    invoke-direct {v0, v1}, Lagt;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 136
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_9

    const/16 v1, -0x6c

    .line 138
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/ab;->a(B)V

    return-void

    .line 142
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->f()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 144
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson2/ab;->c(I)V

    move-object v1, v4

    :goto_5
    if-ge v9, v15, :cond_c

    .line 146
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_a

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_7

    .line 151
    :cond_a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, v4, :cond_b

    move-object v10, v1

    move-object/from16 v16, v4

    goto :goto_6

    .line 156
    :cond_b
    invoke-virtual {v8, v2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Class;)Laem;

    move-result-object v1

    move-object v10, v1

    move-object/from16 v16, v2

    .line 161
    :goto_6
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, v10

    move-object/from16 v2, p1

    move-object v5, v11

    move-wide/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Laem;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    move-object/from16 v4, v16

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 163
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->n()V

    return-void

    .line 167
    :cond_d
    iget-object v11, v8, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    .line 169
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson2/ab;->c(I)V

    move-object v1, v4

    move v12, v9

    :goto_8
    if-ge v12, v15, :cond_1b

    .line 171
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_e

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto/16 :goto_e

    .line 177
    :cond_e
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 179
    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_f

    .line 180
    check-cast v13, Ljava/lang/String;

    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 184
    :cond_f
    iget-object v3, v0, Lagt;->j:Ljava/lang/Class;

    if-ne v2, v3, :cond_11

    .line 185
    iget-boolean v3, v0, Lagt;->m:Z

    if-eqz v3, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->e()Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v10

    goto :goto_9

    :cond_10
    move v3, v9

    goto :goto_9

    .line 186
    :cond_11
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson2/ab;->c(Ljava/lang/Object;)Z

    move-result v3

    .line 190
    :goto_9
    iget-object v5, v0, Lagt;->j:Ljava/lang/Class;

    if-ne v2, v5, :cond_12

    iget-object v5, v0, Lagt;->n:Laem;

    if-eqz v5, :cond_12

    .line 191
    iget-object v2, v0, Lagt;->n:Laem;

    move-object/from16 v18, v1

    move-object v1, v2

    goto :goto_a

    :cond_12
    if-ne v2, v4, :cond_13

    move-object/from16 v18, v1

    :goto_a
    move/from16 v16, v3

    move-object/from16 v17, v4

    goto :goto_c

    .line 195
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->e()Z

    move-result v3

    .line 197
    const-class v1, Lcom/alibaba/fastjson2/e;

    if-ne v2, v1, :cond_14

    .line 198
    sget-object v1, Laha;->c:Laha;

    goto :goto_b

    .line 199
    :cond_14
    sget-object v1, Labo;->a:Ljava/lang/Class;

    if-ne v2, v1, :cond_15

    .line 200
    sget-object v1, Laha;->d:Laha;

    goto :goto_b

    .line 201
    :cond_15
    const-class v1, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v2, v1, :cond_16

    .line 202
    sget-object v1, Lagt;->b:Lagt;

    goto :goto_b

    .line 203
    :cond_16
    sget-object v1, Labo;->c:Ljava/lang/Class;

    if-ne v2, v1, :cond_17

    .line 204
    sget-object v1, Lagt;->c:Lagt;

    goto :goto_b

    .line 206
    :cond_17
    invoke-virtual {v11, v2}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object v1

    .line 211
    :goto_b
    iget-object v4, v0, Lagt;->j:Ljava/lang/Class;

    if-ne v2, v4, :cond_18

    .line 212
    iput-object v1, v0, Lagt;->n:Laem;

    :cond_18
    move-object/from16 v18, v1

    move-object/from16 v17, v2

    move/from16 v16, v3

    :goto_c
    if-eqz v16, :cond_19

    .line 217
    invoke-virtual {v8, v12, v13}, Lcom/alibaba/fastjson2/ab;->b(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 219
    invoke-virtual {v8, v2}, Lcom/alibaba/fastjson2/ab;->f(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    goto :goto_d

    .line 225
    :cond_19
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lagt;->k:Ljava/lang/reflect/Type;

    iget-wide v6, v0, Lagt;->l:J

    move-object/from16 v2, p1

    move-object v3, v13

    invoke-interface/range {v1 .. v7}, Laem;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    if-eqz v16, :cond_1a

    .line 228
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    :cond_1a
    :goto_d
    move-object/from16 v4, v17

    move-object/from16 v1, v18

    :goto_e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_8

    .line 231
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->n()V

    return-void
.end method

.method public b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 9

    if-nez p2, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->s()V

    return-void

    .line 68
    :cond_0
    invoke-direct {p0, p2}, Lagt;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 72
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/ab;->c(I)V

    const/4 p3, 0x0

    const/4 p4, 0x0

    move-object v0, p4

    .line 73
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_3

    .line 74
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 76
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_2

    .line 79
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p4, :cond_2

    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Class;)Laem;

    move-result-object v0

    move-object p4, v1

    .line 89
    :goto_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lagt;->k:Ljava/lang/reflect/Type;

    iget-wide v1, p0, Lagt;->l:J

    or-long v7, v1, p5

    move-object v2, v0

    move-object v3, p1

    invoke-interface/range {v2 .. v8}, Laem;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    if-nez v1, :cond_0

    .line 237
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->s()V

    return-void

    .line 241
    :cond_0
    invoke-direct {v0, v1}, Lagt;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 246
    iget-boolean v1, v8, Lcom/alibaba/fastjson2/ab;->f:Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v1, :cond_4

    .line 247
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/ab;->c(I)V

    move-object v1, v10

    .line 248
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_3

    .line 249
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_2

    .line 254
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, v10, :cond_2

    move-object v12, v10

    move-object v10, v1

    goto :goto_1

    .line 259
    :cond_2
    invoke-virtual {v8, v2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Class;)Laem;

    move-result-object v1

    move-object v10, v1

    move-object v12, v2

    .line 264
    :goto_1
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lagt;->k:Ljava/lang/reflect/Type;

    move-object v1, v10

    move-object/from16 v2, p1

    move-wide/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Laem;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    move-object v10, v12

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 269
    :cond_4
    iget-object v12, v8, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    .line 270
    iget-object v13, v12, Lcom/alibaba/fastjson2/ab$a;->b:Lahq;

    .line 272
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->m()V

    move-object v6, v10

    move-object/from16 v16, v6

    move v15, v11

    const/16 v17, 0x1

    .line 273
    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_1b

    if-eqz v15, :cond_5

    .line 275
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->o()V

    .line 278
    :cond_5
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_6

    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->q()V

    :goto_4
    move-object v14, v6

    move/from16 p3, v15

    goto/16 :goto_5

    .line 284
    :cond_6
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 285
    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_7

    .line 286
    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    goto :goto_4

    .line 288
    :cond_7
    const-class v2, Ljava/lang/Integer;

    const-wide/16 v3, 0x2

    const-wide/16 v18, 0x0

    if-ne v1, v2, :cond_9

    move/from16 p3, v15

    .line 289
    iget-wide v14, v13, Lahq;->g:J

    and-long v2, v14, v3

    cmp-long v2, v2, v18

    if-nez v2, :cond_8

    .line 290
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Integer;)V

    move-object v14, v6

    goto/16 :goto_5

    .line 292
    :cond_8
    invoke-virtual {v13, v1, v1, v11}, Lahq;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Laem;

    move-result-object v1

    .line 293
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v5, Ljava/lang/Integer;

    move-object/from16 v2, p1

    move-object v3, v7

    move-object v14, v6

    move-wide/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto/16 :goto_5

    :cond_9
    move-object v14, v6

    move/from16 p3, v15

    .line 296
    const-class v2, Ljava/lang/Long;

    if-ne v1, v2, :cond_b

    .line 297
    iget-wide v2, v13, Lahq;->g:J

    const-wide/16 v4, 0x4

    and-long/2addr v2, v4

    cmp-long v2, v2, v18

    if-nez v2, :cond_a

    .line 298
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Long;)V

    goto/16 :goto_5

    .line 300
    :cond_a
    invoke-virtual {v13, v1, v1, v11}, Lahq;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Laem;

    move-result-object v1

    .line 301
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v5, Ljava/lang/Long;

    move-object/from16 v2, p1

    move-object v3, v7

    move-wide/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_5

    .line 304
    :cond_b
    const-class v2, Ljava/lang/Boolean;

    if-ne v1, v2, :cond_d

    .line 305
    iget-wide v5, v13, Lahq;->g:J

    and-long v2, v5, v3

    cmp-long v2, v2, v18

    if-nez v2, :cond_c

    .line 306
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/ab;->b(Z)V

    goto :goto_5

    .line 308
    :cond_c
    invoke-virtual {v13, v1, v1, v11}, Lahq;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Laem;

    move-result-object v1

    .line 309
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v5, Ljava/lang/Boolean;

    move-object/from16 v2, p1

    move-object v3, v7

    move-wide/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_5

    .line 312
    :cond_d
    const-class v2, Ljava/math/BigDecimal;

    if-ne v1, v2, :cond_f

    .line 313
    iget-wide v2, v13, Lahq;->g:J

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    cmp-long v2, v2, v18

    if-nez v2, :cond_e

    .line 314
    check-cast v7, Ljava/math/BigDecimal;

    move-wide/from16 v5, p5

    invoke-virtual {v8, v7, v5, v6, v10}, Lcom/alibaba/fastjson2/ab;->a(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    goto :goto_5

    :cond_e
    move-wide/from16 v5, p5

    .line 316
    invoke-virtual {v13, v1, v1, v11}, Lahq;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Laem;

    move-result-object v1

    .line 317
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v15, Ljava/math/BigDecimal;

    move-object/from16 v2, p1

    move-object v3, v7

    move-object v5, v15

    move-wide/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_5
    move/from16 v20, p3

    move-object v6, v14

    goto/16 :goto_c

    .line 325
    :cond_f
    iget-object v2, v0, Lagt;->j:Ljava/lang/Class;

    if-ne v1, v2, :cond_11

    iget-object v2, v0, Lagt;->n:Laem;

    if-eqz v2, :cond_11

    .line 326
    iget-object v1, v0, Lagt;->n:Laem;

    .line 327
    iget-boolean v2, v0, Lagt;->m:Z

    if-eqz v2, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->e()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_6

    :cond_10
    move v2, v11

    :goto_6
    move/from16 v15, v17

    move/from16 v17, v2

    goto :goto_a

    :cond_11
    if-ne v1, v14, :cond_12

    move-object/from16 v1, v16

    :goto_7
    move/from16 v15, v17

    goto :goto_a

    .line 332
    :cond_12
    const-class v2, Lcom/alibaba/fastjson2/e;

    if-ne v1, v2, :cond_13

    .line 333
    sget-object v2, Laha;->c:Laha;

    .line 334
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->e()Z

    move-result v3

    :goto_8
    move/from16 v17, v3

    goto :goto_9

    .line 335
    :cond_13
    sget-object v2, Labo;->a:Ljava/lang/Class;

    if-ne v1, v2, :cond_14

    .line 336
    sget-object v2, Laha;->d:Laha;

    .line 337
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->e()Z

    move-result v3

    goto :goto_8

    .line 338
    :cond_14
    const-class v2, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v1, v2, :cond_15

    .line 339
    sget-object v2, Lagt;->b:Lagt;

    .line 340
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->e()Z

    move-result v3

    goto :goto_8

    .line 341
    :cond_15
    sget-object v2, Labo;->c:Ljava/lang/Class;

    if-ne v1, v2, :cond_16

    .line 342
    sget-object v2, Lagt;->c:Lagt;

    .line 343
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->e()Z

    move-result v3

    goto :goto_8

    .line 345
    :cond_16
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object v2

    .line 346
    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson2/ab;->c(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_8

    .line 352
    :goto_9
    iget-object v3, v0, Lagt;->j:Ljava/lang/Class;

    if-ne v1, v3, :cond_17

    .line 353
    iput-object v2, v0, Lagt;->n:Laem;

    :cond_17
    move-object v14, v1

    move-object v1, v2

    move-object/from16 v16, v1

    goto :goto_7

    :goto_a
    if-eqz v17, :cond_18

    move/from16 v6, p3

    .line 358
    invoke-virtual {v8, v6, v7}, Lcom/alibaba/fastjson2/ab;->b(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 360
    invoke-virtual {v8, v2}, Lcom/alibaba/fastjson2/ab;->f(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    move/from16 v20, v6

    goto :goto_b

    :cond_18
    move/from16 v6, p3

    .line 366
    :cond_19
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lagt;->k:Ljava/lang/reflect/Type;

    iget-wide v2, v0, Lagt;->l:J

    move-wide/from16 v18, v2

    move-object/from16 v2, p1

    move-object v3, v7

    move/from16 v20, v6

    move-object v10, v7

    move-wide/from16 v6, v18

    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    if-eqz v17, :cond_1a

    .line 369
    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    :cond_1a
    :goto_b
    move-object v6, v14

    move/from16 v17, v15

    :goto_c
    add-int/lit8 v15, v20, 0x1

    const/4 v10, 0x0

    goto/16 :goto_3

    .line 372
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->n()V

    return-void
.end method
