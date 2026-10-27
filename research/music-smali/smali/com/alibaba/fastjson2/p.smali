.class Lcom/alibaba/fastjson2/p;
.super Lcom/alibaba/fastjson2/n;
.source "JSONPathSegmentName.java"


# static fields
.field static final a:J

.field static final b:J


# instance fields
.field final c:Ljava/lang/String;

.field final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "name"

    .line 24
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/p;->a:J

    const-string v0, "ordinal"

    .line 25
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/p;->b:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/alibaba/fastjson2/n;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    .line 32
    iput-wide p2, p0, Lcom/alibaba/fastjson2/p;->d:J

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/g$a;)V
    .locals 11

    .line 191
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 199
    :cond_1
    instance-of v1, v0, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 200
    check-cast v0, Ljava/util/Map;

    .line 201
    iget-object v1, p0, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 203
    iget-object v3, p0, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    invoke-static {v3}, Labe;->a(Ljava/lang/String;)Z

    move-result v3

    .line 206
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 207
    check-cast v4, Ljava/util/Map$Entry;

    .line 208
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 209
    instance-of v6, v5, Ljava/lang/Enum;

    if-eqz v6, :cond_3

    move-object v6, v5

    check-cast v6, Ljava/lang/Enum;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 210
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 212
    :cond_3
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_2

    if-nez v2, :cond_4

    if-eqz v3, :cond_4

    .line 214
    iget-object v2, p0, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 216
    :cond_4
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 217
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 224
    :cond_5
    :goto_1
    iput-object v1, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    return-void

    .line 228
    :cond_6
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v3, 0x1

    if-eqz v1, :cond_e

    .line 229
    check-cast v0, Ljava/util/Collection;

    .line 230
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 232
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 233
    instance-of v5, v4, Ljava/util/Map;

    if-eqz v5, :cond_7

    .line 234
    check-cast v4, Ljava/util/Map;

    iget-object v5, p0, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_8

    goto :goto_2

    .line 238
    :cond_8
    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_b

    if-ne v1, v3, :cond_9

    .line 240
    check-cast v4, Ljava/util/Collection;

    move-object v2, v4

    goto :goto_2

    :cond_9
    if-nez v2, :cond_a

    .line 243
    new-instance v2, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 245
    :cond_a
    check-cast v4, Ljava/util/Collection;

    invoke-interface {v2, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_b
    if-nez v2, :cond_c

    .line 249
    new-instance v2, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 251
    :cond_c
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 255
    :cond_d
    iput-object v2, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    return-void

    .line 259
    :cond_e
    instance-of v1, v0, Lcom/alibaba/fastjson2/g$e;

    if-eqz v1, :cond_13

    .line 260
    check-cast v0, Lcom/alibaba/fastjson2/g$e;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$e;->a:Ljava/util/List;

    .line 261
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 262
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 263
    iput-object v2, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 264
    new-instance v2, Lcom/alibaba/fastjson2/g$a;

    iget-object v5, p1, Lcom/alibaba/fastjson2/g$a;->a:Lcom/alibaba/fastjson2/g;

    iget-object v7, p1, Lcom/alibaba/fastjson2/g$a;->c:Lcom/alibaba/fastjson2/n;

    iget-object v8, p1, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    iget-wide v9, p1, Lcom/alibaba/fastjson2/g$a;->e:J

    move-object v4, v2

    move-object v6, p1

    invoke-direct/range {v4 .. v10}, Lcom/alibaba/fastjson2/g$a;-><init>(Lcom/alibaba/fastjson2/g;Lcom/alibaba/fastjson2/g$a;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;J)V

    .line 265
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/p;->a(Lcom/alibaba/fastjson2/g$a;)V

    .line 266
    iget-object v2, v2, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    if-nez v2, :cond_f

    .line 268
    iget-object v4, p1, Lcom/alibaba/fastjson2/g$a;->a:Lcom/alibaba/fastjson2/g;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/g;->e:J

    sget-object v6, Lcom/alibaba/fastjson2/g$b;->KeepNullValue:Lcom/alibaba/fastjson2/g$b;

    iget-wide v6, v6, Lcom/alibaba/fastjson2/g$b;->mask:J

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_f

    goto :goto_3

    .line 272
    :cond_f
    instance-of v4, v2, Ljava/util/Collection;

    if-eqz v4, :cond_10

    .line 273
    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONArray;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 275
    :cond_10
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 278
    :cond_11
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    if-eqz v0, :cond_12

    .line 279
    new-instance v0, Lcom/alibaba/fastjson2/g$e;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/g$e;-><init>(Ljava/util/List;)V

    iput-object v0, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    goto :goto_4

    .line 281
    :cond_12
    iput-object v1, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 283
    :goto_4
    iput-boolean v3, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 287
    :cond_13
    iget-object v1, p1, Lcom/alibaba/fastjson2/g$a;->a:Lcom/alibaba/fastjson2/g;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/g;->d()Lcom/alibaba/fastjson2/ab$a;

    move-result-object v1

    .line 288
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object v1

    .line 289
    instance-of v3, v1, Laez;

    if-eqz v3, :cond_15

    .line 290
    iget-wide v2, p0, Lcom/alibaba/fastjson2/p;->d:J

    invoke-interface {v1, v2, v3}, Laem;->a_(J)Labq;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 292
    invoke-virtual {v1, v0}, Labq;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    :cond_14
    return-void

    .line 298
    :cond_15
    iget-wide v3, p0, Lcom/alibaba/fastjson2/p;->d:J

    sget-wide v5, Lcom/alibaba/fastjson2/p;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_16

    instance-of v1, v0, Ljava/lang/Enum;

    if-eqz v1, :cond_16

    .line 299
    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    return-void

    .line 303
    :cond_16
    iget-wide v3, p0, Lcom/alibaba/fastjson2/p;->d:J

    sget-wide v5, Lcom/alibaba/fastjson2/p;->b:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_17

    instance-of v1, v0, Ljava/lang/Enum;

    if-eqz v1, :cond_17

    .line 304
    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    return-void

    .line 308
    :cond_17
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 309
    check-cast v0, Ljava/lang/String;

    .line 310
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x7b

    if-ne v1, v3, :cond_18

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-static {v1}, Lcom/alibaba/fastjson2/g;->a(Ljava/lang/String;)Lcom/alibaba/fastjson2/g;

    move-result-object v1

    .line 314
    invoke-static {v0}, Lcom/alibaba/fastjson2/u;->c(Ljava/lang/String;)Lcom/alibaba/fastjson2/u;

    move-result-object v0

    .line 313
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/g;->a(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    return-void

    .line 318
    :cond_18
    iput-object v2, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    return-void

    .line 322
    :cond_19
    instance-of v1, v0, Ljava/lang/Number;

    if-nez v1, :cond_1b

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1a

    goto :goto_5

    .line 327
    :cond_1a
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 323
    :cond_1b
    :goto_5
    iput-object v2, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/alibaba/fastjson2/u;Lcom/alibaba/fastjson2/g$a;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 444
    iget-object v3, v2, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-boolean v3, v3, Lcom/alibaba/fastjson2/g$a;->h:Z

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object v3, v3, Lcom/alibaba/fastjson2/g$a;->c:Lcom/alibaba/fastjson2/n;

    instance-of v3, v3, Lcom/alibaba/fastjson2/j;

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object v3, v3, Lcom/alibaba/fastjson2/g$a;->c:Lcom/alibaba/fastjson2/n;

    instance-of v3, v3, Lcom/alibaba/fastjson2/n$i;

    if-eqz v3, :cond_1

    .line 449
    :cond_0
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/p;->a(Lcom/alibaba/fastjson2/g$a;)V

    return-void

    .line 453
    :cond_1
    iget-boolean v3, v1, Lcom/alibaba/fastjson2/u;->b:Z

    const/4 v5, 0x1

    if-eqz v3, :cond_11

    .line 454
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->m()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 456
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 460
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    goto :goto_0

    .line 464
    :cond_3
    iget-wide v8, v0, Lcom/alibaba/fastjson2/p;->d:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_4

    move v3, v5

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_5

    .line 466
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->P()V

    goto :goto_0

    .line 470
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->s()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->t()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 471
    :cond_6
    iget-object v3, v2, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    if-eqz v3, :cond_7

    goto :goto_2

    .line 476
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v2, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 477
    iput-boolean v5, v2, Lcom/alibaba/fastjson2/g$a;->h:Z

    :goto_2
    return-void

    .line 481
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->s()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v2, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-eqz v3, :cond_10

    iget-object v3, v2, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object v3, v3, Lcom/alibaba/fastjson2/g$a;->c:Lcom/alibaba/fastjson2/n;

    instance-of v3, v3, Lcom/alibaba/fastjson2/n$a;

    if-eqz v3, :cond_10

    .line 484
    new-instance v3, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v3}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 485
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->p()I

    move-result v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_f

    const/16 v8, -0x5a

    .line 487
    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson2/u;->a(B)Z

    move-result v8

    if-eqz v8, :cond_e

    :goto_4
    const/16 v8, -0x5b

    .line 489
    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson2/u;->a(B)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_6

    .line 493
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v8

    .line 494
    iget-wide v10, v0, Lcom/alibaba/fastjson2/p;->d:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_a

    move v8, v5

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    :goto_5
    if-nez v8, :cond_b

    .line 497
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->P()V

    goto :goto_4

    .line 501
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->s()Z

    move-result v8

    if-nez v8, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->t()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 502
    :cond_c
    iget-object v8, v2, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    if-eqz v8, :cond_d

    goto :goto_6

    .line 507
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 510
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->P()V

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 514
    :cond_f
    iput-object v3, v2, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 515
    iput-boolean v5, v2, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 519
    :cond_10
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "TODO"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 522
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->m()Z

    move-result v3

    const-string v7, "TODO : "

    const/16 v8, 0x74

    const/16 v9, 0x6e

    const/16 v10, 0x66

    const/16 v11, 0x2d

    const/16 v12, 0x2b

    const/16 v13, 0x27

    const/16 v14, 0x22

    const/16 v15, 0x7d

    const/16 v4, 0x2c

    const/16 v5, 0x5b

    if-eqz v3, :cond_20

    .line 523
    iget-char v3, v1, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v3, v15, :cond_13

    .line 524
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->E()V

    .line 525
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->b()Z

    move-result v3

    if-eqz v3, :cond_12

    return-void

    .line 528
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->x()Z

    .line 534
    :cond_13
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 535
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->E()V

    goto/16 :goto_12

    .line 539
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v16

    move-object v3, v7

    .line 540
    iget-wide v6, v0, Lcom/alibaba/fastjson2/p;->d:J

    cmp-long v6, v16, v6

    if-nez v6, :cond_15

    const/4 v6, 0x1

    goto :goto_8

    :cond_15
    const/4 v6, 0x0

    :goto_8
    if-nez v6, :cond_17

    .line 543
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->P()V

    .line 544
    iget-char v6, v1, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v6, v4, :cond_16

    .line 545
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->E()V

    :cond_16
    move-object v7, v3

    goto :goto_7

    .line 551
    :cond_17
    iget-char v4, v1, Lcom/alibaba/fastjson2/u;->f:C

    if-eq v4, v14, :cond_1f

    if-eq v4, v13, :cond_1f

    if-eq v4, v12, :cond_1e

    if-eq v4, v11, :cond_1e

    if-eq v4, v5, :cond_1c

    if-eq v4, v10, :cond_1b

    if-eq v4, v9, :cond_1a

    if-eq v4, v8, :cond_1b

    const/16 v5, 0x7b

    if-eq v4, v5, :cond_18

    packed-switch v4, :pswitch_data_0

    .line 598
    new-instance v2, Lcom/alibaba/fastjson2/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, v1, Lcom/alibaba/fastjson2/u;->f:C

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v2

    .line 577
    :cond_18
    iget-object v3, v2, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    if-eqz v3, :cond_19

    iget-object v3, v2, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    instance-of v3, v3, Lcom/alibaba/fastjson2/n$d;

    if-nez v3, :cond_19

    iget-object v3, v2, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    instance-of v3, v3, Lcom/alibaba/fastjson2/n$a;

    if-nez v3, :cond_19

    goto/16 :goto_12

    .line 582
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aU()Ljava/util/Map;

    move-result-object v6

    const/4 v1, 0x1

    .line 583
    iput-boolean v1, v2, Lcom/alibaba/fastjson2/g$a;->h:Z

    goto :goto_9

    .line 594
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aQ()V

    const/4 v6, 0x0

    goto :goto_9

    .line 591
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aX()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_9

    .line 568
    :cond_1c
    iget-object v3, v2, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    if-eqz v3, :cond_1d

    iget-object v3, v2, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    instance-of v3, v3, Lcom/alibaba/fastjson2/n$d;

    if-nez v3, :cond_1d

    iget-object v3, v2, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    instance-of v3, v3, Lcom/alibaba/fastjson2/p;

    if-nez v3, :cond_1d

    iget-object v3, v2, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    instance-of v3, v3, Lcom/alibaba/fastjson2/n$a;

    if-nez v3, :cond_1d

    goto/16 :goto_12

    .line 573
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aZ()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    .line 574
    iput-boolean v7, v2, Lcom/alibaba/fastjson2/g$a;->h:Z

    goto :goto_9

    .line 564
    :cond_1e
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aM()V

    .line 565
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->bc()Ljava/lang/Number;

    move-result-object v6

    goto :goto_9

    .line 587
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v6

    .line 601
    :goto_9
    iput-object v6, v2, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    goto/16 :goto_12

    :cond_20
    move-object v3, v7

    const/4 v7, 0x1

    .line 604
    iget-char v6, v1, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v6, v5, :cond_33

    iget-object v6, v2, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-eqz v6, :cond_33

    iget-object v6, v2, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object v6, v6, Lcom/alibaba/fastjson2/g$a;->c:Lcom/alibaba/fastjson2/n;

    instance-of v6, v6, Lcom/alibaba/fastjson2/n$a;

    if-eqz v6, :cond_33

    .line 605
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->E()V

    .line 606
    new-instance v6, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v6}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 607
    :goto_a
    iget-char v7, v1, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v11, 0x1a

    if-eq v7, v11, :cond_32

    .line 608
    iget-char v7, v1, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v11, 0x5d

    if-ne v7, v11, :cond_21

    .line 609
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->E()V

    goto/16 :goto_11

    .line 612
    :cond_21
    iget-char v7, v1, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v11, 0x7b

    if-ne v7, v11, :cond_30

    .line 613
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->E()V

    .line 617
    :goto_b
    iget-char v7, v1, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v7, v15, :cond_22

    .line 618
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->E()V

    move v7, v8

    const/16 v11, 0x7b

    goto/16 :goto_10

    .line 622
    :cond_22
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v18

    .line 623
    iget-wide v8, v0, Lcom/alibaba/fastjson2/p;->d:J

    cmp-long v8, v18, v8

    if-nez v8, :cond_23

    const/4 v8, 0x1

    goto :goto_c

    :cond_23
    const/4 v8, 0x0

    :goto_c
    if-nez v8, :cond_25

    .line 626
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->P()V

    .line 627
    iget-char v8, v1, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v8, v4, :cond_24

    .line 628
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->E()V

    :cond_24
    const/16 v8, 0x74

    const/16 v9, 0x6e

    goto :goto_b

    .line 634
    :cond_25
    iget-char v8, v1, Lcom/alibaba/fastjson2/u;->f:C

    if-eq v8, v14, :cond_2f

    if-eq v8, v13, :cond_2f

    if-eq v8, v12, :cond_2d

    if-eq v8, v5, :cond_2b

    if-eq v8, v10, :cond_2a

    const/16 v9, 0x6e

    if-eq v8, v9, :cond_29

    const/16 v7, 0x74

    if-eq v8, v7, :cond_28

    const/16 v11, 0x7b

    if-eq v8, v11, :cond_26

    const/16 v5, 0x2d

    if-eq v8, v5, :cond_2e

    const/16 v5, 0x2e

    if-eq v8, v5, :cond_2e

    packed-switch v8, :pswitch_data_1

    .line 676
    new-instance v2, Lcom/alibaba/fastjson2/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, v1, Lcom/alibaba/fastjson2/u;->f:C

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v2

    .line 658
    :cond_26
    iget-object v5, v2, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    if-eqz v5, :cond_27

    goto :goto_10

    .line 661
    :cond_27
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aU()Ljava/util/Map;

    move-result-object v5

    goto :goto_f

    :cond_28
    :goto_d
    const/16 v11, 0x7b

    goto :goto_e

    :cond_29
    const/16 v7, 0x74

    const/16 v11, 0x7b

    .line 672
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aQ()V

    const/4 v5, 0x0

    goto :goto_f

    :cond_2a
    const/16 v7, 0x74

    const/16 v9, 0x6e

    goto :goto_d

    .line 669
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aX()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_f

    :cond_2b
    const/16 v7, 0x74

    const/16 v9, 0x6e

    const/16 v11, 0x7b

    .line 652
    iget-object v5, v2, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    if-eqz v5, :cond_2c

    goto :goto_10

    .line 655
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aZ()Ljava/util/List;

    move-result-object v5

    goto :goto_f

    :cond_2d
    const/16 v7, 0x74

    const/16 v9, 0x6e

    const/16 v11, 0x7b

    .line 648
    :cond_2e
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aM()V

    .line 649
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->bc()Ljava/lang/Number;

    move-result-object v5

    goto :goto_f

    :cond_2f
    const/16 v7, 0x74

    const/16 v9, 0x6e

    const/16 v11, 0x7b

    .line 665
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v5

    .line 678
    :goto_f
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v7

    const/16 v5, 0x5b

    goto/16 :goto_b

    :cond_30
    move v7, v8

    .line 681
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->P()V

    .line 684
    :goto_10
    iget-char v5, v1, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v5, v4, :cond_31

    .line 685
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->E()V

    :cond_31
    move v8, v7

    const/16 v5, 0x5b

    const/16 v11, 0x2d

    goto/16 :goto_a

    .line 689
    :cond_32
    :goto_11
    iput-object v6, v2, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    :cond_33
    :goto_12
    return-void

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

.method public b(Lcom/alibaba/fastjson2/g$a;Ljava/lang/Object;)V
    .locals 9

    .line 332
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    goto :goto_0

    .line 334
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 336
    :goto_0
    instance-of v1, v0, Ljava/util/Map;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_3

    .line 337
    check-cast v0, Ljava/util/Map;

    .line 338
    iget-object v1, p0, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 340
    iget-wide v4, p1, Lcom/alibaba/fastjson2/g$a;->e:J

    sget-object p1, Lcom/alibaba/fastjson2/u$d;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/u$d;

    iget-wide v6, p1, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v4, v6

    cmp-long p1, v4, v2

    if-eqz p1, :cond_2

    .line 341
    instance-of p1, v1, Ljava/util/Collection;

    if-eqz p1, :cond_1

    .line 342
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object p1, p0, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 345
    :cond_1
    invoke-static {v1, p2}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p1

    .line 346
    iget-object p2, p0, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void

    .line 353
    :cond_3
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_9

    .line 354
    check-cast v0, Ljava/util/Collection;

    .line 355
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    .line 360
    :cond_5
    instance-of v4, v1, Ljava/util/Map;

    if-eqz v4, :cond_7

    .line 361
    check-cast v1, Ljava/util/Map;

    .line 362
    iget-object v4, p0, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    invoke-interface {v1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 364
    iget-wide v5, p1, Lcom/alibaba/fastjson2/g$a;->e:J

    sget-object v7, Lcom/alibaba/fastjson2/u$d;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/u$d;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v5, v7

    cmp-long v5, v5, v2

    if-eqz v5, :cond_4

    .line 365
    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_6

    .line 366
    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v4, p0, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    invoke-interface {v1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 369
    :cond_6
    invoke-static {v4, p2}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object v4

    .line 370
    iget-object v5, p0, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 377
    :cond_7
    iget-object v4, p1, Lcom/alibaba/fastjson2/g$a;->a:Lcom/alibaba/fastjson2/g;

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/g;->c()Lcom/alibaba/fastjson2/u$c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/u$c;->b()Lzx;

    move-result-object v4

    .line 378
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v4

    .line 379
    iget-wide v5, p0, Lcom/alibaba/fastjson2/p;->d:J

    invoke-interface {v4, v5, v6}, Lwk;->b(J)Lsu;

    move-result-object v4

    if-eqz v4, :cond_4

    const/4 v5, 0x0

    .line 381
    invoke-virtual {v4, v1, v5}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    return-void

    .line 387
    :cond_9
    iget-object p1, p1, Lcom/alibaba/fastjson2/g$a;->a:Lcom/alibaba/fastjson2/g;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/g;->c()Lcom/alibaba/fastjson2/u$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u$c;->b()Lzx;

    move-result-object p1

    .line 388
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v1

    .line 389
    iget-wide v2, p0, Lcom/alibaba/fastjson2/p;->d:J

    invoke-interface {v1, v2, v3}, Lwk;->b(J)Lsu;

    move-result-object v1

    if-nez v1, :cond_a

    return-void

    :cond_a
    if-eqz p2, :cond_b

    .line 395
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 396
    iget-object v3, v1, Lsu;->c:Ljava/lang/Class;

    if-eq v2, v3, :cond_b

    .line 398
    invoke-virtual {p1, v2, v3}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 400
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 404
    :cond_b
    invoke-virtual {v1, v0, p2}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/alibaba/fastjson2/g$a;)Z
    .locals 7

    .line 37
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 41
    :goto_0
    instance-of v1, v0, Ljava/util/Map;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Ljava/util/Map;

    .line 43
    iget-object v1, p0, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iput-boolean v2, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return v2

    .line 47
    :cond_1
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    .line 48
    check-cast v0, Ljava/util/Collection;

    .line 49
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 54
    :cond_3
    instance-of v4, v1, Ljava/util/Map;

    if-eqz v4, :cond_4

    .line 55
    check-cast v1, Ljava/util/Map;

    .line 56
    iget-object v4, p0, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 60
    :cond_4
    iget-object v4, p1, Lcom/alibaba/fastjson2/g$a;->a:Lcom/alibaba/fastjson2/g;

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/g;->c()Lcom/alibaba/fastjson2/u$c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/u$c;->b()Lzx;

    move-result-object v4

    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v4

    .line 62
    iget-wide v5, p0, Lcom/alibaba/fastjson2/p;->d:J

    invoke-interface {v4, v5, v6}, Lwk;->b(J)Lsu;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 64
    invoke-virtual {v4, v1, v3}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 67
    :cond_5
    iput-boolean v2, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return v2

    .line 70
    :cond_6
    iget-object v1, p1, Lcom/alibaba/fastjson2/g$a;->a:Lcom/alibaba/fastjson2/g;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/g;->c()Lcom/alibaba/fastjson2/u$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u$c;->b()Lzx;

    move-result-object v1

    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v1

    .line 72
    iget-wide v4, p0, Lcom/alibaba/fastjson2/p;->d:J

    invoke-interface {v1, v4, v5}, Lwk;->b(J)Lsu;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 74
    invoke-virtual {v1, v0, v3}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    :cond_7
    iput-boolean v2, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return v2
.end method

.method public c(Lcom/alibaba/fastjson2/g$a;)Z
    .locals 10

    .line 82
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 90
    :cond_1
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 91
    check-cast v0, Ljava/util/Map;

    iget-object p1, p0, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 94
    :cond_2
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    .line 95
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 100
    :cond_4
    instance-of v4, v2, Ljava/util/Map;

    if-eqz v4, :cond_5

    .line 101
    move-object v4, v2

    check-cast v4, Ljava/util/Map;

    iget-object v5, p0, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    return v3

    .line 106
    :cond_5
    iget-object v4, p1, Lcom/alibaba/fastjson2/g$a;->a:Lcom/alibaba/fastjson2/g;

    .line 107
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/g;->d()Lcom/alibaba/fastjson2/ab$a;

    move-result-object v4

    .line 108
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object v4

    .line 109
    instance-of v5, v4, Laez;

    if-eqz v5, :cond_3

    .line 110
    iget-wide v5, p0, Lcom/alibaba/fastjson2/p;->d:J

    invoke-interface {v4, v5, v6}, Laem;->a_(J)Labq;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 112
    invoke-virtual {v4, v2}, Labq;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    return v3

    :cond_6
    return v1

    .line 121
    :cond_7
    instance-of v2, v0, Lcom/alibaba/fastjson2/g$e;

    if-eqz v2, :cond_c

    .line 122
    check-cast v0, Lcom/alibaba/fastjson2/g$e;

    .line 123
    iget-object v0, v0, Lcom/alibaba/fastjson2/g$e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_2

    .line 128
    :cond_9
    instance-of v4, v2, Ljava/util/Map;

    if-eqz v4, :cond_a

    .line 129
    move-object v4, v2

    check-cast v4, Ljava/util/Map;

    iget-object v5, p0, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a

    return v3

    .line 134
    :cond_a
    iget-object v4, p1, Lcom/alibaba/fastjson2/g$a;->a:Lcom/alibaba/fastjson2/g;

    .line 135
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/g;->d()Lcom/alibaba/fastjson2/ab$a;

    move-result-object v4

    .line 136
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object v4

    .line 137
    instance-of v5, v4, Laez;

    if-eqz v5, :cond_8

    .line 138
    iget-wide v5, p0, Lcom/alibaba/fastjson2/p;->d:J

    invoke-interface {v4, v5, v6}, Laem;->a_(J)Labq;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 140
    invoke-virtual {v4, v2}, Labq;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    return v3

    :cond_b
    return v1

    .line 149
    :cond_c
    instance-of v2, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_10

    .line 150
    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    .line 151
    array-length v4, v2

    move v5, v1

    :goto_3
    if-ge v5, v4, :cond_10

    aget-object v6, v2, v5

    if-nez v6, :cond_d

    goto :goto_4

    .line 156
    :cond_d
    instance-of v7, v6, Ljava/util/Map;

    if-eqz v7, :cond_e

    .line 157
    move-object v7, v6

    check-cast v7, Ljava/util/Map;

    iget-object v8, p0, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_e

    return v3

    .line 162
    :cond_e
    iget-object v7, p1, Lcom/alibaba/fastjson2/g$a;->a:Lcom/alibaba/fastjson2/g;

    .line 163
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/g;->d()Lcom/alibaba/fastjson2/ab$a;

    move-result-object v7

    .line 164
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object v7

    .line 165
    instance-of v8, v7, Laez;

    if-eqz v8, :cond_f

    .line 166
    iget-wide v8, p0, Lcom/alibaba/fastjson2/p;->d:J

    invoke-interface {v7, v8, v9}, Laem;->a_(J)Labq;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 168
    invoke-virtual {v7, v6}, Labq;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_f

    return v3

    :cond_f
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 176
    :cond_10
    iget-object p1, p1, Lcom/alibaba/fastjson2/g$a;->a:Lcom/alibaba/fastjson2/g;

    .line 177
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/g;->d()Lcom/alibaba/fastjson2/ab$a;

    move-result-object p1

    .line 178
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object p1

    .line 179
    instance-of v2, p1, Laez;

    if-eqz v2, :cond_11

    .line 180
    iget-wide v4, p0, Lcom/alibaba/fastjson2/p;->d:J

    invoke-interface {p1, v4, v5}, Laem;->a_(J)Labq;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 182
    invoke-virtual {p1, v0}, Labq;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_11

    move v1, v3

    :cond_11
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 700
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 703
    :cond_1
    check-cast p1, Lcom/alibaba/fastjson2/p;

    .line 704
    iget-wide v2, p0, Lcom/alibaba/fastjson2/p;->d:J

    iget-wide v4, p1, Lcom/alibaba/fastjson2/p;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 709
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/alibaba/fastjson2/p;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    return-object v0
.end method
