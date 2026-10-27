.class final Lcom/alibaba/fastjson2/s;
.super Lcom/alibaba/fastjson2/q;
.source "JSONPathSingleName.java"


# instance fields
.field final i:J

.field final j:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson2/p;[Lcom/alibaba/fastjson2/g$b;)V
    .locals 0

    .line 20
    invoke-direct {p0, p2, p1, p3}, Lcom/alibaba/fastjson2/q;-><init>(Lcom/alibaba/fastjson2/n;Ljava/lang/String;[Lcom/alibaba/fastjson2/g$b;)V

    .line 21
    iget-object p1, p2, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/fastjson2/s;->j:Ljava/lang/String;

    .line 22
    iget-wide p1, p2, Lcom/alibaba/fastjson2/p;->d:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/s;->i:J

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;
    .locals 10

    .line 262
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/u;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_6

    .line 263
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 264
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result v0

    if-nez v0, :cond_4

    .line 265
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-nez v0, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    iget-wide v8, p0, Lcom/alibaba/fastjson2/s;->i:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    .line 271
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->t()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->s()Z

    move-result v0

    if-nez v0, :cond_2

    .line 272
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    goto :goto_0

    .line 276
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->ag()Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 280
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "TODO"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 284
    :cond_4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/s;->e:J

    sget-object p1, Lcom/alibaba/fastjson2/g$b;->AlwaysReturnList:Lcom/alibaba/fastjson2/g$b;

    iget-wide v6, p1, Lcom/alibaba/fastjson2/g$b;->mask:J

    and-long/2addr v0, v6

    cmp-long p1, v0, v4

    if-eqz p1, :cond_5

    .line 285
    new-instance p1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    return-object p1

    :cond_5
    return-object v3

    .line 290
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->m()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 291
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result v0

    if-nez v0, :cond_11

    .line 292
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v6

    .line 293
    iget-wide v8, p0, Lcom/alibaba/fastjson2/s;->i:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_3

    :cond_7
    move v0, v2

    :goto_3
    if-nez v0, :cond_8

    .line 296
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    goto :goto_2

    .line 301
    :cond_8
    iget-char v0, p1, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_e

    const/16 v1, 0x27

    if-eq v0, v1, :cond_e

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_d

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_d

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_c

    const/16 v1, 0x66

    if-eq v0, v1, :cond_b

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_a

    const/16 v1, 0x74

    if-eq v0, v1, :cond_b

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_9

    packed-switch v0, :pswitch_data_0

    .line 335
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TODO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p1, Lcom/alibaba/fastjson2/u;->f:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aU()Ljava/util/Map;

    move-result-object v3

    goto :goto_4

    .line 331
    :cond_a
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aQ()V

    goto :goto_4

    .line 328
    :cond_b
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aX()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_4

    .line 317
    :cond_c
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aZ()Ljava/util/List;

    move-result-object v3

    goto :goto_4

    .line 314
    :cond_d
    :pswitch_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->ag()Ljava/lang/Number;

    move-result-object v3

    goto :goto_4

    .line 324
    :cond_e
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v3

    .line 338
    :goto_4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/s;->e:J

    sget-object p1, Lcom/alibaba/fastjson2/g$b;->AlwaysReturnList:Lcom/alibaba/fastjson2/g$b;

    iget-wide v6, p1, Lcom/alibaba/fastjson2/g$b;->mask:J

    and-long/2addr v0, v6

    cmp-long p1, v0, v4

    if-eqz p1, :cond_10

    if-nez v3, :cond_f

    .line 340
    new-instance v3, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v3}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    goto :goto_5

    .line 342
    :cond_f
    invoke-static {v3}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object v3

    :cond_10
    :goto_5
    return-object v3

    .line 350
    :cond_11
    iget-wide v0, p0, Lcom/alibaba/fastjson2/s;->e:J

    sget-object p1, Lcom/alibaba/fastjson2/g$b;->AlwaysReturnList:Lcom/alibaba/fastjson2/g$b;

    iget-wide v6, p1, Lcom/alibaba/fastjson2/g$b;->mask:J

    and-long/2addr v0, v6

    cmp-long p1, v0, v4

    if-eqz p1, :cond_12

    .line 351
    new-instance p1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    return-object p1

    :cond_12
    return-object v3

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
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 135
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 136
    check-cast p1, Ljava/util/Map;

    .line 137
    iget-object v0, p0, Lcom/alibaba/fastjson2/s;->j:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/s;->c()Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u$c;->b()Lzx;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v2

    .line 142
    iget-wide v3, p0, Lcom/alibaba/fastjson2/s;->i:J

    invoke-interface {v2, v3, v4}, Lwk;->b(J)Lsu;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    .line 146
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 147
    iget-object v3, v1, Lsu;->c:Ljava/lang/Class;

    .line 148
    invoke-virtual {v1, v2}, Lsu;->a(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 149
    invoke-virtual {v0, v2, v3}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 155
    :cond_1
    invoke-virtual {v1, p1, p2}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    :cond_2
    instance-of v0, v2, Lwz;

    if-eqz v0, :cond_3

    .line 157
    iget-object v4, p0, Lcom/alibaba/fastjson2/s;->j:Ljava/lang/String;

    const-wide/16 v6, 0x0

    move-object v3, p1

    move-object v5, p2

    invoke-interface/range {v2 .. v7}, Lwk;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 4

    .line 114
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 115
    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lcom/alibaba/fastjson2/s;->j:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/s;->d()Lcom/alibaba/fastjson2/ab$a;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/fastjson2/ab$a;->b:Lahq;

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lahq;->b(Ljava/lang/Class;)Laem;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 125
    :cond_1
    iget-wide v2, p0, Lcom/alibaba/fastjson2/s;->i:J

    invoke-interface {v0, v2, v3}, Laem;->a_(J)Labq;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 130
    :cond_2
    invoke-virtual {v0, p1}, Labq;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 28
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 29
    check-cast p1, Ljava/util/Map;

    .line 30
    iget-object v0, p0, Lcom/alibaba/fastjson2/s;->j:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 32
    iget-object v2, p0, Lcom/alibaba/fastjson2/s;->j:Ljava/lang/String;

    invoke-static {v2}, Labe;->a(Ljava/lang/String;)Z

    move-result v2

    .line 35
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 36
    check-cast v3, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 38
    instance-of v5, v4, Ljava/lang/Enum;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Ljava/lang/Enum;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson2/s;->j:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 39
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_1
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_0

    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    .line 43
    iget-object v1, p0, Lcom/alibaba/fastjson2/s;->j:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 45
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/s;->d()Lcom/alibaba/fastjson2/ab$a;

    move-result-object v0

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 54
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object v0

    if-nez v0, :cond_4

    return-object v1

    .line 61
    :cond_4
    iget-wide v2, p0, Lcom/alibaba/fastjson2/s;->i:J

    invoke-interface {v0, v2, v3}, Laem;->a_(J)Labq;

    move-result-object v0

    if-nez v0, :cond_5

    return-object v1

    .line 66
    :cond_5
    invoke-virtual {v0, p1}, Labq;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    :cond_6
    :goto_0
    iget-wide v1, p0, Lcom/alibaba/fastjson2/s;->e:J

    sget-object p1, Lcom/alibaba/fastjson2/g$b;->AlwaysReturnList:Lcom/alibaba/fastjson2/g$b;

    iget-wide v3, p1, Lcom/alibaba/fastjson2/g$b;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_8

    if-nez v0, :cond_7

    .line 71
    new-instance p1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    goto :goto_1

    .line 72
    :cond_7
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p1

    :goto_1
    move-object v0, p1

    :cond_8
    return-object v0
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 83
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 84
    check-cast p1, Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/fastjson2/s;->j:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    move v0, v2

    :cond_1
    return v0

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/s;->c()Lcom/alibaba/fastjson2/u$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u$c;->b()Lzx;

    move-result-object v1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v1

    if-nez v1, :cond_3

    return v0

    .line 94
    :cond_3
    iget-wide v3, p0, Lcom/alibaba/fastjson2/s;->i:J

    invoke-interface {v1, v3, v4}, Lwk;->b(J)Lsu;

    move-result-object v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    const/4 v3, 0x0

    .line 100
    :try_start_0
    invoke-virtual {v1, p1, v3}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    return v0
.end method
