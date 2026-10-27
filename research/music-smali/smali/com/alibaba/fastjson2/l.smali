.class final Lcom/alibaba/fastjson2/l;
.super Lcom/alibaba/fastjson2/g;
.source "JSONPathMulti.java"


# instance fields
.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/n;",
            ">;"
        }
    .end annotation
.end field

.field final g:Z

.field final h:Z


# direct methods
.method varargs constructor <init>(Ljava/lang/String;Ljava/util/List;[Lcom/alibaba/fastjson2/g$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/n;",
            ">;[",
            "Lcom/alibaba/fastjson2/g$b;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p3}, Lcom/alibaba/fastjson2/g;-><init>(Ljava/lang/String;[Lcom/alibaba/fastjson2/g$b;)V

    .line 19
    iput-object p2, p0, Lcom/alibaba/fastjson2/l;->f:Ljava/util/List;

    .line 23
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    move v0, p3

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/n;

    .line 24
    instance-of v2, v1, Lcom/alibaba/fastjson2/o;

    if-eqz v2, :cond_1

    .line 25
    check-cast v1, Lcom/alibaba/fastjson2/o;

    iget v1, v1, Lcom/alibaba/fastjson2/o;->e:I

    if-gez v1, :cond_0

    move v0, p2

    goto :goto_0

    .line 30
    :cond_1
    instance-of v1, v1, Lcom/alibaba/fastjson2/p;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_2
    move p2, p3

    .line 36
    :cond_3
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/l;->h:Z

    .line 37
    iput-boolean p2, p0, Lcom/alibaba/fastjson2/l;->g:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;
    .locals 13

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 337
    :cond_1
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/l;->h:Z

    if-nez v2, :cond_2

    .line 338
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object p1

    .line 339
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v2, 0x0

    move-object v5, v0

    move v10, v2

    :goto_0
    if-ge v2, v1, :cond_7

    .line 345
    iget-object v3, p0, Lcom/alibaba/fastjson2/l;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/alibaba/fastjson2/n;

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_3

    .line 350
    iget-object v3, p0, Lcom/alibaba/fastjson2/l;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson2/n;

    move-object v7, v3

    goto :goto_1

    :cond_3
    move-object v7, v0

    .line 353
    :goto_1
    new-instance v12, Lcom/alibaba/fastjson2/g$a;

    const-wide/16 v8, 0x0

    move-object v3, v12

    move-object v4, p0

    move-object v6, v11

    invoke-direct/range {v3 .. v9}, Lcom/alibaba/fastjson2/g$a;-><init>(Lcom/alibaba/fastjson2/g;Lcom/alibaba/fastjson2/g$a;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;J)V

    if-eqz v10, :cond_4

    .line 355
    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson2/n;->a(Lcom/alibaba/fastjson2/g$a;)V

    goto :goto_2

    .line 357
    :cond_4
    invoke-virtual {v11, p1, v12}, Lcom/alibaba/fastjson2/n;->a(Lcom/alibaba/fastjson2/u;Lcom/alibaba/fastjson2/g$a;)V

    .line 360
    :goto_2
    iget-boolean v3, v12, Lcom/alibaba/fastjson2/g$a;->h:Z

    if-eqz v3, :cond_6

    .line 362
    iget-object v3, v12, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    if-nez v3, :cond_5

    move-object v5, v12

    goto :goto_3

    :cond_5
    const/4 v3, 0x1

    move v10, v3

    :cond_6
    move-object v5, v12

    goto :goto_0

    .line 368
    :cond_7
    :goto_3
    iget-object p1, v5, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 369
    instance-of v0, p1, Lcom/alibaba/fastjson2/g$e;

    if-eqz v0, :cond_8

    .line 370
    check-cast p1, Lcom/alibaba/fastjson2/g$e;

    iget-object p1, p1, Lcom/alibaba/fastjson2/g$e;->a:Ljava/util/List;

    .line 373
    :cond_8
    iget-wide v0, p0, Lcom/alibaba/fastjson2/l;->e:J

    sget-object v2, Lcom/alibaba/fastjson2/g$b;->AlwaysReturnList:Lcom/alibaba/fastjson2/g$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/g$b;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    if-nez p1, :cond_9

    .line 375
    new-instance p1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    goto :goto_4

    .line 376
    :cond_9
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_a

    .line 377
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p1

    :cond_a
    :goto_4
    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 192
    iget-object v0, v7, Lcom/alibaba/fastjson2/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v2, 0x0

    const/4 v13, 0x0

    :goto_0
    add-int/lit8 v14, v10, -0x1

    if-ge v13, v14, :cond_a

    .line 194
    iget-object v0, v7, Lcom/alibaba/fastjson2/l;->f:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/alibaba/fastjson2/n;

    add-int/lit8 v15, v13, 0x1

    if-ge v15, v10, :cond_0

    .line 198
    iget-object v0, v7, Lcom/alibaba/fastjson2/l;->f:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/n;

    move-object v5, v0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 200
    :goto_1
    new-instance v6, Lcom/alibaba/fastjson2/g$a;

    const-wide/16 v16, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v3, v14

    move-object v4, v5

    move-object v11, v5

    move-object v12, v6

    move-wide/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/g$a;-><init>(Lcom/alibaba/fastjson2/g;Lcom/alibaba/fastjson2/g$a;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;J)V

    if-nez v13, :cond_1

    .line 202
    iput-object v8, v12, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    .line 205
    :cond_1
    invoke-virtual {v14, v12}, Lcom/alibaba/fastjson2/n;->a(Lcom/alibaba/fastjson2/g$a;)V

    .line 206
    iget-object v0, v12, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    if-nez v0, :cond_9

    if-eqz v11, :cond_9

    if-nez v9, :cond_2

    return-void

    :cond_2
    if-nez v13, :cond_3

    move-object v0, v8

    goto :goto_2

    .line 215
    :cond_3
    iget-object v0, v12, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 219
    :goto_2
    instance-of v1, v11, Lcom/alibaba/fastjson2/o;

    if-eqz v1, :cond_4

    .line 220
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    goto :goto_3

    .line 221
    :cond_4
    instance-of v1, v11, Lcom/alibaba/fastjson2/p;

    if-eqz v1, :cond_8

    .line 222
    new-instance v1, Lcom/alibaba/fastjson2/e;

    invoke-direct {v1}, Lcom/alibaba/fastjson2/e;-><init>()V

    .line 226
    :goto_3
    iput-object v1, v12, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 228
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_5

    instance-of v2, v14, Lcom/alibaba/fastjson2/p;

    if-eqz v2, :cond_5

    .line 229
    check-cast v0, Ljava/util/Map;

    check-cast v14, Lcom/alibaba/fastjson2/p;

    iget-object v2, v14, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 230
    :cond_5
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_7

    instance-of v2, v14, Lcom/alibaba/fastjson2/o;

    if-eqz v2, :cond_7

    .line 231
    check-cast v0, Ljava/util/List;

    .line 232
    check-cast v14, Lcom/alibaba/fastjson2/o;

    iget v2, v14, Lcom/alibaba/fastjson2/o;->e:I

    .line 233
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 234
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 236
    :cond_6
    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_9

    .line 239
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/l;->c()Lcom/alibaba/fastjson2/u$c;

    move-result-object v2

    .line 241
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v1

    .line 242
    instance-of v3, v14, Lcom/alibaba/fastjson2/p;

    if-eqz v3, :cond_9

    .line 243
    check-cast v14, Lcom/alibaba/fastjson2/p;

    iget-wide v3, v14, Lcom/alibaba/fastjson2/p;->d:J

    invoke-interface {v1, v3, v4}, Lwk;->b(J)Lsu;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 245
    invoke-virtual {v1, v2}, Lsu;->a(Lcom/alibaba/fastjson2/u$c;)Lwk;

    move-result-object v2

    .line 246
    invoke-interface {v2}, Lwk;->b()Ljava/lang/Object;

    move-result-object v2

    .line 247
    invoke-virtual {v1, v0, v2}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 248
    iput-object v2, v12, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    goto :goto_4

    :cond_8
    return-void

    :cond_9
    :goto_4
    move-object v2, v12

    move v13, v15

    goto/16 :goto_0

    .line 254
    :cond_a
    new-instance v10, Lcom/alibaba/fastjson2/g$a;

    iget-object v0, v7, Lcom/alibaba/fastjson2/l;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/alibaba/fastjson2/n;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/g$a;-><init>(Lcom/alibaba/fastjson2/g;Lcom/alibaba/fastjson2/g$a;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;J)V

    .line 255
    iput-object v8, v10, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    .line 257
    iget-object v0, v7, Lcom/alibaba/fastjson2/l;->f:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/n;

    .line 258
    invoke-virtual {v0, v10, v9}, Lcom/alibaba/fastjson2/n;->b(Lcom/alibaba/fastjson2/g$a;Ljava/lang/Object;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/l;->g:Z

    return v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 14

    .line 78
    iget-object v0, p0, Lcom/alibaba/fastjson2/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const/4 v2, 0x0

    move v3, v1

    move-object v6, v2

    :goto_0
    if-ge v3, v0, :cond_5

    .line 84
    iget-object v4, p0, Lcom/alibaba/fastjson2/l;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/alibaba/fastjson2/n;

    add-int/lit8 v12, v3, 0x1

    if-ge v12, v0, :cond_2

    .line 88
    iget-object v4, p0, Lcom/alibaba/fastjson2/l;->f:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson2/n;

    move-object v8, v4

    goto :goto_1

    :cond_2
    move-object v8, v2

    .line 90
    :goto_1
    new-instance v13, Lcom/alibaba/fastjson2/g$a;

    const-wide/16 v9, 0x0

    move-object v4, v13

    move-object v5, p0

    move-object v7, v11

    invoke-direct/range {v4 .. v10}, Lcom/alibaba/fastjson2/g$a;-><init>(Lcom/alibaba/fastjson2/g;Lcom/alibaba/fastjson2/g$a;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;J)V

    if-nez v3, :cond_3

    .line 92
    iput-object p1, v13, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    :cond_3
    add-int/lit8 v4, v0, -0x1

    if-ne v3, v4, :cond_4

    .line 96
    invoke-virtual {v11, v13}, Lcom/alibaba/fastjson2/n;->c(Lcom/alibaba/fastjson2/g$a;)Z

    move-result p1

    return p1

    .line 98
    :cond_4
    invoke-virtual {v11, v13}, Lcom/alibaba/fastjson2/n;->a(Lcom/alibaba/fastjson2/g$a;)V

    move v3, v12

    move-object v6, v13

    goto :goto_0

    :cond_5
    return v1
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 158
    iget-object v0, p0, Lcom/alibaba/fastjson2/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 164
    iget-object v3, p0, Lcom/alibaba/fastjson2/l;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/alibaba/fastjson2/n;

    add-int/lit8 v11, v1, 0x1

    if-ge v11, v0, :cond_1

    .line 168
    iget-object v3, p0, Lcom/alibaba/fastjson2/l;->f:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson2/n;

    move-object v7, v3

    goto :goto_1

    :cond_1
    move-object v7, v2

    .line 170
    :goto_1
    new-instance v12, Lcom/alibaba/fastjson2/g$a;

    const-wide/16 v8, 0x0

    move-object v3, v12

    move-object v4, p0

    move-object v6, v10

    invoke-direct/range {v3 .. v9}, Lcom/alibaba/fastjson2/g$a;-><init>(Lcom/alibaba/fastjson2/g;Lcom/alibaba/fastjson2/g$a;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;J)V

    if-nez v1, :cond_2

    .line 172
    iput-object p1, v12, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    .line 175
    :cond_2
    invoke-virtual {v10, v12}, Lcom/alibaba/fastjson2/n;->a(Lcom/alibaba/fastjson2/g$a;)V

    move v1, v11

    move-object v5, v12

    goto :goto_0

    .line 178
    :cond_3
    iget-object p1, v5, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 179
    iget-object v0, v5, Lcom/alibaba/fastjson2/g$a;->a:Lcom/alibaba/fastjson2/g;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/g;->e:J

    sget-object v2, Lcom/alibaba/fastjson2/g$b;->AlwaysReturnList:Lcom/alibaba/fastjson2/g$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/g$b;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    if-nez p1, :cond_4

    .line 181
    new-instance p1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    goto :goto_2

    .line 182
    :cond_4
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_5

    .line 183
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p1

    :cond_5
    :goto_2
    return-object p1
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 14

    .line 44
    iget-object v0, p0, Lcom/alibaba/fastjson2/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    move v3, v1

    move-object v6, v2

    :goto_0
    if-ge v3, v0, :cond_5

    .line 50
    iget-object v4, p0, Lcom/alibaba/fastjson2/l;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/alibaba/fastjson2/n;

    add-int/lit8 v12, v3, 0x1

    if-ge v12, v0, :cond_1

    .line 54
    iget-object v4, p0, Lcom/alibaba/fastjson2/l;->f:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson2/n;

    move-object v8, v4

    goto :goto_1

    :cond_1
    move-object v8, v2

    .line 56
    :goto_1
    new-instance v13, Lcom/alibaba/fastjson2/g$a;

    const-wide/16 v9, 0x0

    move-object v4, v13

    move-object v5, p0

    move-object v7, v11

    invoke-direct/range {v4 .. v10}, Lcom/alibaba/fastjson2/g$a;-><init>(Lcom/alibaba/fastjson2/g;Lcom/alibaba/fastjson2/g$a;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;J)V

    if-nez v3, :cond_2

    .line 58
    iput-object p1, v13, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    :cond_2
    add-int/lit8 v4, v0, -0x1

    if-ne v3, v4, :cond_3

    .line 62
    invoke-virtual {v11, v13}, Lcom/alibaba/fastjson2/n;->b(Lcom/alibaba/fastjson2/g$a;)Z

    move-result p1

    return p1

    .line 64
    :cond_3
    invoke-virtual {v11, v13}, Lcom/alibaba/fastjson2/n;->a(Lcom/alibaba/fastjson2/g$a;)V

    .line 66
    iget-object v3, v13, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    if-nez v3, :cond_4

    return v1

    :cond_4
    move v3, v12

    move-object v6, v13

    goto :goto_0

    :cond_5
    return v1
.end method
