.class public final Laah;
.super Laai;
.source "IntegerSchema.java"


# instance fields
.field final a:Z

.field final b:J

.field final c:Z

.field final d:J

.field final e:Z

.field final f:J

.field final g:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson2/e;)V
    .locals 9

    .line 27
    invoke-direct {p0, p1}, Laai;-><init>(Lcom/alibaba/fastjson2/e;)V

    const-string v0, "type"

    .line 28
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "integer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "required"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/e;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Laah;->a:Z

    const-string v0, "exclusiveMinimum"

    .line 30
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-wide/high16 v4, -0x8000000000000000L

    const-string v6, "minimum"

    .line 32
    invoke-virtual {p1, v6, v4, v5}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 33
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v3, v8, :cond_2

    .line 34
    iput-boolean v2, p0, Laah;->c:Z

    .line 35
    iput-wide v6, p0, Laah;->b:J

    goto :goto_2

    .line 36
    :cond_2
    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_3

    .line 37
    iput-boolean v2, p0, Laah;->c:Z

    .line 38
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/e;->g(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Laah;->b:J

    goto :goto_2

    .line 40
    :cond_3
    iput-wide v6, p0, Laah;->b:J

    .line 41
    iput-boolean v1, p0, Laah;->c:Z

    :goto_2
    const-string v0, "maximum"

    .line 44
    invoke-virtual {p1, v0, v4, v5}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "exclusiveMaximum"

    .line 45
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 46
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v5, v6, :cond_4

    .line 47
    iput-boolean v2, p0, Laah;->e:Z

    .line 48
    iput-wide v3, p0, Laah;->d:J

    goto :goto_3

    .line 49
    :cond_4
    instance-of v5, v5, Ljava/lang/Number;

    if-eqz v5, :cond_5

    .line 50
    iput-boolean v2, p0, Laah;->e:Z

    .line 51
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/e;->g(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Laah;->d:J

    goto :goto_3

    .line 53
    :cond_5
    iput-boolean v1, p0, Laah;->e:Z

    .line 54
    iput-wide v3, p0, Laah;->d:J

    :goto_3
    const-wide/16 v0, 0x0

    const-string v2, "multipleOf"

    .line 57
    invoke-virtual {p1, v2, v0, v1}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Laah;->f:J

    const-string v0, "const"

    .line 59
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/e;->f(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Laah;->g:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public a()Laai$b;
    .locals 1

    .line 64
    sget-object v0, Laai$b;->Integer:Laai$b;

    return-object v0
.end method

.method public a(J)Laaq;
    .locals 10

    .line 172
    iget-wide v0, p0, Laah;->b:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    .line 173
    iget-boolean v4, p0, Laah;->c:Z

    if-eqz v4, :cond_0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_0
    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 174
    :goto_0
    new-instance v0, Laaq;

    iget-boolean v1, p0, Laah;->c:Z

    if-eqz v1, :cond_1

    const-string v1, "exclusiveMinimum not match, expect > %s, but %s"

    goto :goto_1

    :cond_1
    const-string v1, "minimum not match, expect >= %s, but %s"

    :goto_1
    new-array v2, v6, [Ljava/lang/Object;

    iget-wide v3, p0, Laah;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-direct {v0, v7, v1, v2}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 178
    :cond_2
    iget-wide v0, p0, Laah;->d:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_5

    .line 179
    iget-boolean v2, p0, Laah;->e:Z

    if-eqz v2, :cond_3

    cmp-long v0, p1, v0

    if-ltz v0, :cond_5

    goto :goto_2

    :cond_3
    cmp-long v0, p1, v0

    if-lez v0, :cond_5

    .line 180
    :goto_2
    new-instance v0, Laaq;

    iget-boolean v1, p0, Laah;->e:Z

    if-eqz v1, :cond_4

    const-string v1, "exclusiveMaximum not match, expect < %s, but %s"

    goto :goto_3

    :cond_4
    const-string v1, "maximum not match, expect <= %s, but %s"

    :goto_3
    new-array v2, v6, [Ljava/lang/Object;

    iget-wide v3, p0, Laah;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-direct {v0, v7, v1, v2}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 184
    :cond_5
    iget-wide v0, p0, Laah;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    .line 185
    rem-long v8, p1, v0

    cmp-long v2, v8, v2

    if-eqz v2, :cond_6

    .line 186
    new-instance v2, Laaq;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v5

    const-string p1, "multipleOf not match, expect multipleOf %s, but %s"

    invoke-direct {v2, v7, p1, v3}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 190
    :cond_6
    iget-object v0, p0, Laah;->g:Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 191
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_7

    .line 192
    new-instance v0, Laaq;

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Laah;->g:Ljava/lang/Long;

    aput-object v2, v1, v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "const not match, expect %s, but %s"

    invoke-direct {v0, v7, p1, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 196
    :cond_7
    sget-object p1, Laah;->u:Laaq;

    return-object p1
.end method

.method public a(Ljava/lang/Integer;)Laaq;
    .locals 12

    if-nez p1, :cond_1

    .line 235
    iget-boolean p1, p0, Laah;->a:Z

    if-eqz p1, :cond_0

    sget-object p1, Laah;->v:Laaq;

    goto :goto_0

    :cond_0
    sget-object p1, Laah;->u:Laaq;

    :goto_0
    return-object p1

    .line 238
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    .line 239
    iget-wide v2, p0, Laah;->b:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v6, :cond_4

    .line 240
    iget-boolean v6, p0, Laah;->c:Z

    if-eqz v6, :cond_2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    goto :goto_1

    :cond_2
    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    .line 241
    :goto_1
    new-instance v0, Laaq;

    iget-boolean v1, p0, Laah;->c:Z

    if-eqz v1, :cond_3

    const-string v1, "exclusiveMinimum not match, expect > %s, but %s"

    goto :goto_2

    :cond_3
    const-string v1, "minimum not match, expect >= %s, but %s"

    :goto_2
    new-array v2, v8, [Ljava/lang/Object;

    iget-wide v3, p0, Laah;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object p1, v2, v7

    invoke-direct {v0, v9, v1, v2}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 245
    :cond_4
    iget-wide v2, p0, Laah;->d:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_7

    .line 246
    iget-boolean v4, p0, Laah;->e:Z

    if-eqz v4, :cond_5

    cmp-long v2, v0, v2

    if-ltz v2, :cond_7

    goto :goto_3

    :cond_5
    cmp-long v2, v0, v2

    if-lez v2, :cond_7

    .line 247
    :goto_3
    new-instance v0, Laaq;

    iget-boolean v1, p0, Laah;->e:Z

    if-eqz v1, :cond_6

    const-string v1, "exclusiveMaximum not match, expect < %s, but %s"

    goto :goto_4

    :cond_6
    const-string v1, "maximum not match, expect <= %s, but %s"

    :goto_4
    new-array v2, v8, [Ljava/lang/Object;

    iget-wide v3, p0, Laah;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object p1, v2, v7

    invoke-direct {v0, v9, v1, v2}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 251
    :cond_7
    iget-wide v2, p0, Laah;->f:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_8

    .line 252
    rem-long v10, v0, v2

    cmp-long v4, v10, v4

    if-eqz v4, :cond_8

    .line 253
    new-instance p1, Laaq;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v7

    const-string v0, "multipleOf not match, expect multipleOf %s, but %s"

    invoke-direct {p1, v9, v0, v4}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 257
    :cond_8
    iget-object v2, p0, Laah;->g:Ljava/lang/Long;

    if-eqz v2, :cond_9

    .line 258
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_9

    .line 259
    new-instance v0, Laaq;

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p0, Laah;->g:Ljava/lang/Long;

    aput-object v2, v1, v9

    aput-object p1, v1, v7

    const-string p1, "const not match, expect %s, but %s"

    invoke-direct {v0, v9, p1, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 263
    :cond_9
    sget-object p1, Laah;->u:Laaq;

    return-object p1
.end method

.method public a(Ljava/lang/Long;)Laaq;
    .locals 12

    if-nez p1, :cond_1

    .line 202
    iget-boolean p1, p0, Laah;->a:Z

    if-eqz p1, :cond_0

    sget-object p1, Laah;->v:Laaq;

    goto :goto_0

    :cond_0
    sget-object p1, Laah;->u:Laaq;

    :goto_0
    return-object p1

    .line 205
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 206
    iget-wide v2, p0, Laah;->b:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v6, :cond_4

    .line 207
    iget-boolean v6, p0, Laah;->c:Z

    if-eqz v6, :cond_2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    goto :goto_1

    :cond_2
    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    .line 208
    :goto_1
    new-instance v0, Laaq;

    iget-boolean v1, p0, Laah;->c:Z

    if-eqz v1, :cond_3

    const-string v1, "exclusiveMinimum not match, expect > %s, but %s"

    goto :goto_2

    :cond_3
    const-string v1, "minimum not match, expect >= %s, but %s"

    :goto_2
    new-array v2, v8, [Ljava/lang/Object;

    iget-wide v3, p0, Laah;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object p1, v2, v7

    invoke-direct {v0, v9, v1, v2}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 212
    :cond_4
    iget-wide v2, p0, Laah;->d:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_7

    .line 213
    iget-boolean v4, p0, Laah;->e:Z

    if-eqz v4, :cond_5

    cmp-long v2, v0, v2

    if-ltz v2, :cond_7

    goto :goto_3

    :cond_5
    cmp-long v2, v0, v2

    if-lez v2, :cond_7

    .line 214
    :goto_3
    new-instance v0, Laaq;

    iget-boolean v1, p0, Laah;->e:Z

    if-eqz v1, :cond_6

    const-string v1, "exclusiveMaximum not match, expect < %s, but %s"

    goto :goto_4

    :cond_6
    const-string v1, "maximum not match, expect <= %s, but %s"

    :goto_4
    new-array v2, v8, [Ljava/lang/Object;

    iget-wide v3, p0, Laah;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object p1, v2, v7

    invoke-direct {v0, v9, v1, v2}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 218
    :cond_7
    iget-wide v2, p0, Laah;->f:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_8

    .line 219
    rem-long v10, v0, v2

    cmp-long v4, v10, v4

    if-eqz v4, :cond_8

    .line 220
    new-instance p1, Laaq;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v7

    const-string v0, "multipleOf not match, expect multipleOf %s, but %s"

    invoke-direct {p1, v9, v0, v4}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 224
    :cond_8
    iget-object v2, p0, Laah;->g:Ljava/lang/Long;

    if-eqz v2, :cond_9

    .line 225
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_9

    .line 226
    new-instance v0, Laaq;

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p0, Laah;->g:Ljava/lang/Long;

    aput-object v2, v1, v9

    aput-object p1, v1, v7

    const-string p1, "const not match, expect %s, but %s"

    invoke-direct {v0, v9, p1, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 229
    :cond_9
    sget-object p1, Laah;->u:Laaq;

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Laaq;
    .locals 14

    if-nez p1, :cond_1

    .line 70
    iget-boolean p1, p0, Laah;->a:Z

    if-eqz p1, :cond_0

    sget-object p1, Laah;->v:Laaq;

    goto :goto_0

    :cond_0
    sget-object p1, Laah;->u:Laaq;

    :goto_0
    return-object p1

    .line 73
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 74
    const-class v1, Ljava/lang/Byte;

    const-string v2, "const not match, expect %s, but %s"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v1, :cond_c

    const-class v1, Ljava/lang/Short;

    if-eq v0, v1, :cond_c

    const-class v1, Ljava/lang/Integer;

    if-eq v0, v1, :cond_c

    const-class v1, Ljava/lang/Long;

    if-eq v0, v1, :cond_c

    const-class v1, Ljava/math/BigInteger;

    if-eq v0, v1, :cond_c

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eq v0, v1, :cond_c

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne v0, v1, :cond_2

    goto/16 :goto_4

    .line 116
    :cond_2
    instance-of v1, p1, Ljava/math/BigDecimal;

    if-eqz v1, :cond_6

    .line 117
    move-object v1, p1

    check-cast v1, Ljava/math/BigDecimal;

    .line 118
    invoke-static {v1}, Labo;->a(Ljava/math/BigDecimal;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 120
    invoke-virtual {v1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    .line 121
    iget-object v1, p0, Laah;->g:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 123
    invoke-static {v0}, Labo;->b(Ljava/math/BigInteger;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    iget-object v1, p0, Laah;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    cmp-long v0, v6, v0

    if-nez v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v5

    :goto_1
    if-nez v0, :cond_4

    .line 127
    new-instance v0, Laaq;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Laah;->g:Ljava/lang/Long;

    aput-object v3, v1, v5

    aput-object p1, v1, v4

    invoke-direct {v0, v5, v2, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 131
    :cond_4
    sget-object p1, Laah;->u:Laaq;

    return-object p1

    .line 134
    :cond_5
    iget-object v1, p0, Laah;->g:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 135
    new-instance v0, Laaq;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    aput-object p1, v3, v4

    invoke-direct {v0, v5, v2, v3}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 139
    :cond_6
    iget-object v1, p0, Laah;->g:Ljava/lang/Long;

    if-eqz v1, :cond_a

    .line 140
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 141
    move-object v1, p1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 142
    iget-object v6, p0, Laah;->g:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-float v6, v6

    cmpl-float v1, v6, v1

    if-eqz v1, :cond_a

    .line 143
    new-instance v0, Laaq;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Laah;->g:Ljava/lang/Long;

    aput-object v3, v1, v5

    aput-object p1, v1, v4

    invoke-direct {v0, v5, v2, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 145
    :cond_7
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_8

    .line 146
    move-object v1, p1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 147
    iget-object v1, p0, Laah;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-double v8, v8

    cmpl-double v1, v8, v6

    if-eqz v1, :cond_a

    .line 148
    new-instance v0, Laaq;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Laah;->g:Ljava/lang/Long;

    aput-object v3, v1, v5

    aput-object p1, v1, v4

    invoke-direct {v0, v5, v2, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 150
    :cond_8
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 151
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 153
    invoke-static {v1}, Labo;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x15

    if-ge v6, v7, :cond_9

    .line 155
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 156
    iget-object v1, p0, Laah;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v1, v8, v6

    if-nez v1, :cond_9

    move v1, v4

    goto :goto_2

    :catch_0
    :cond_9
    move v1, v5

    :goto_2
    if-nez v1, :cond_a

    .line 162
    new-instance v0, Laaq;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Laah;->g:Ljava/lang/Long;

    aput-object v3, v1, v5

    aput-object p1, v1, v4

    invoke-direct {v0, v5, v2, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 167
    :cond_a
    iget-boolean p1, p0, Laah;->a:Z

    if-eqz p1, :cond_b

    new-instance p1, Laaq;

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v2, Laai$b;->Integer:Laai$b;

    aput-object v2, v1, v5

    aput-object v0, v1, v4

    const-string v0, "expect type %s, but %s"

    invoke-direct {p1, v5, v0, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_b
    sget-object p1, Laah;->u:Laaq;

    :goto_3
    return-object p1

    .line 83
    :cond_c
    :goto_4
    const-class v1, Ljava/math/BigInteger;

    if-ne v0, v1, :cond_d

    .line 84
    move-object v0, p1

    check-cast v0, Ljava/math/BigInteger;

    invoke-static {v0}, Labo;->b(Ljava/math/BigInteger;)Z

    move-result v0

    goto :goto_5

    :cond_d
    move v0, v4

    .line 87
    :goto_5
    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 89
    iget-wide v8, p0, Laah;->b:J

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v1, v8, v10

    if-eqz v1, :cond_10

    .line 90
    iget-boolean v1, p0, Laah;->c:Z

    if-eqz v1, :cond_e

    cmp-long v1, v6, v8

    if-gtz v1, :cond_10

    goto :goto_6

    :cond_e
    cmp-long v1, v6, v8

    if-gez v1, :cond_10

    .line 91
    :goto_6
    new-instance v0, Laaq;

    iget-boolean v1, p0, Laah;->c:Z

    if-eqz v1, :cond_f

    const-string v1, "exclusiveMinimum not match, expect > %s, but %s"

    goto :goto_7

    :cond_f
    const-string v1, "minimum not match, expect >= %s, but %s"

    :goto_7
    new-array v2, v3, [Ljava/lang/Object;

    iget-wide v6, p0, Laah;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p1, v2, v4

    invoke-direct {v0, v5, v1, v2}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 95
    :cond_10
    iget-wide v8, p0, Laah;->d:J

    cmp-long v1, v8, v10

    if-eqz v1, :cond_13

    .line 96
    iget-boolean v1, p0, Laah;->e:Z

    if-eqz v1, :cond_11

    cmp-long v1, v6, v8

    if-ltz v1, :cond_13

    goto :goto_8

    :cond_11
    cmp-long v1, v6, v8

    if-lez v1, :cond_13

    .line 97
    :goto_8
    new-instance v0, Laaq;

    iget-boolean v1, p0, Laah;->e:Z

    if-eqz v1, :cond_12

    const-string v1, "exclusiveMaximum not match, expect < %s, but %s"

    goto :goto_9

    :cond_12
    const-string v1, "maximum not match, expect <= %s, but %s"

    :goto_9
    new-array v2, v3, [Ljava/lang/Object;

    iget-wide v6, p0, Laah;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p1, v2, v4

    invoke-direct {v0, v5, v1, v2}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 101
    :cond_13
    iget-wide v8, p0, Laah;->f:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-eqz v1, :cond_14

    .line 102
    rem-long v12, v6, v8

    cmp-long v1, v12, v10

    if-eqz v1, :cond_14

    .line 103
    new-instance v0, Laaq;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object p1, v1, v4

    const-string p1, "multipleOf not match, expect multipleOf %s, but %s"

    invoke-direct {v0, v5, p1, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 107
    :cond_14
    iget-object v1, p0, Laah;->g:Ljava/lang/Long;

    if-eqz v1, :cond_16

    .line 108
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-nez v1, :cond_15

    if-nez v0, :cond_16

    .line 109
    :cond_15
    new-instance v0, Laaq;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Laah;->g:Ljava/lang/Long;

    aput-object v3, v1, v5

    aput-object p1, v1, v4

    invoke-direct {v0, v5, v2, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 113
    :cond_16
    sget-object p1, Laah;->u:Laaq;

    return-object p1
.end method

.method public b()Lcom/alibaba/fastjson2/e;
    .locals 7

    .line 268
    new-instance v0, Lcom/alibaba/fastjson2/e;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/e;-><init>()V

    const-string v1, "type"

    const-string v2, "integer"

    .line 270
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-wide v1, p0, Laah;->b:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 273
    iget-boolean v1, p0, Laah;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "exclusiveMinimum"

    goto :goto_0

    :cond_0
    const-string v1, "minimum"

    :goto_0
    iget-wide v5, p0, Laah;->b:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_1
    iget-wide v1, p0, Laah;->d:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 277
    iget-boolean v1, p0, Laah;->e:Z

    if-eqz v1, :cond_2

    const-string v1, "exclusiveMaximum"

    goto :goto_1

    :cond_2
    const-string v1, "maximum"

    :goto_1
    iget-wide v2, p0, Laah;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_3
    iget-wide v1, p0, Laah;->f:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_4

    .line 281
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "multipleOf"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_4
    iget-object v1, p0, Laah;->g:Ljava/lang/Long;

    if-eqz v1, :cond_5

    const-string v2, "const"

    .line 285
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method
