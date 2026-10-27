.class public final Laal;
.super Laai;
.source "NumberSchema.java"


# instance fields
.field final a:Ljava/math/BigDecimal;

.field final b:J

.field final c:Z

.field final d:Ljava/math/BigDecimal;

.field final e:J

.field final f:Z

.field final g:Ljava/math/BigDecimal;

.field final h:J

.field final i:Z


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson2/e;)V
    .locals 8

    .line 23
    invoke-direct {p0, p1}, Laai;-><init>(Lcom/alibaba/fastjson2/e;)V

    const-string v0, "type"

    .line 25
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Laal;->i:Z

    const-string v0, "exclusiveMinimum"

    .line 27
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "minimum"

    .line 28
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/e;->i(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 29
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v3, :cond_0

    .line 30
    iput-object v2, p0, Laal;->a:Ljava/math/BigDecimal;

    .line 31
    iput-boolean v5, p0, Laal;->c:Z

    goto :goto_0

    .line 32
    :cond_0
    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 33
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/e;->i(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Laal;->a:Ljava/math/BigDecimal;

    .line 34
    iput-boolean v5, p0, Laal;->c:Z

    goto :goto_0

    .line 36
    :cond_1
    iput-object v2, p0, Laal;->a:Ljava/math/BigDecimal;

    .line 37
    iput-boolean v4, p0, Laal;->c:Z

    .line 40
    :goto_0
    iget-object v0, p0, Laal;->a:Ljava/math/BigDecimal;

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 43
    :cond_2
    iget-object v0, p0, Laal;->a:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Laal;->b:J

    goto :goto_2

    .line 41
    :cond_3
    :goto_1
    iput-wide v1, p0, Laal;->b:J

    :goto_2
    const-string v0, "maximum"

    .line 46
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/e;->i(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    const-string v3, "exclusiveMaximum"

    .line 47
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 48
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v6, v7, :cond_4

    .line 49
    iput-object v0, p0, Laal;->d:Ljava/math/BigDecimal;

    .line 50
    iput-boolean v5, p0, Laal;->f:Z

    goto :goto_3

    .line 51
    :cond_4
    instance-of v6, v6, Ljava/lang/Number;

    if-eqz v6, :cond_5

    .line 52
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/e;->i(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Laal;->d:Ljava/math/BigDecimal;

    .line 53
    iput-boolean v5, p0, Laal;->f:Z

    goto :goto_3

    .line 55
    :cond_5
    iput-object v0, p0, Laal;->d:Ljava/math/BigDecimal;

    .line 56
    iput-boolean v4, p0, Laal;->f:Z

    .line 59
    :goto_3
    iget-object v0, p0, Laal;->d:Ljava/math/BigDecimal;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    .line 62
    :cond_6
    iget-object v0, p0, Laal;->d:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Laal;->e:J

    goto :goto_5

    .line 60
    :cond_7
    :goto_4
    iput-wide v1, p0, Laal;->e:J

    :goto_5
    const-string v0, "multipleOf"

    .line 65
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/e;->i(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Laal;->g:Ljava/math/BigDecimal;

    .line 66
    iget-object p1, p0, Laal;->g:Ljava/math/BigDecimal;

    if-nez p1, :cond_8

    .line 67
    iput-wide v1, p0, Laal;->h:J

    goto :goto_6

    .line 69
    :cond_8
    invoke-virtual {p1}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v3

    .line 70
    iget-object p1, p0, Laal;->g:Ljava/math/BigDecimal;

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-nez p1, :cond_9

    .line 71
    iput-wide v3, p0, Laal;->h:J

    goto :goto_6

    .line 73
    :cond_9
    iput-wide v1, p0, Laal;->h:J

    :goto_6
    return-void
.end method


# virtual methods
.method public a()Laai$b;
    .locals 1

    .line 80
    sget-object v0, Laai$b;->Number:Laai$b;

    return-object v0
.end method

.method public a(D)Laaq;
    .locals 11

    .line 231
    iget-object v0, p0, Laal;->a:Ljava/math/BigDecimal;

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    .line 232
    iget-wide v6, p0, Laal;->b:J

    cmp-long v8, v6, v1

    const-string v9, "exclusiveMinimum not match, expect > %s, but %s"

    const-string v10, "minimum not match, expect >= %s, but %s"

    if-eqz v8, :cond_2

    .line 233
    iget-boolean v0, p0, Laal;->c:Z

    if-eqz v0, :cond_0

    long-to-double v6, v6

    cmpg-double v0, p1, v6

    if-gtz v0, :cond_5

    goto :goto_0

    :cond_0
    long-to-double v6, v6

    cmpg-double v0, p1, v6

    if-gez v0, :cond_5

    .line 234
    :goto_0
    new-instance v0, Laaq;

    iget-boolean v1, p0, Laal;->c:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v9, v10

    :goto_1
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Laal;->a:Ljava/math/BigDecimal;

    aput-object v2, v1, v5

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-direct {v0, v5, v9, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 237
    :cond_2
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    .line 238
    iget-boolean v0, p0, Laal;->c:Z

    if-eqz v0, :cond_3

    cmpg-double v0, p1, v6

    if-gtz v0, :cond_5

    goto :goto_2

    :cond_3
    cmpg-double v0, p1, v6

    if-gez v0, :cond_5

    .line 239
    :goto_2
    new-instance v0, Laaq;

    iget-boolean v1, p0, Laal;->c:Z

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v9, v10

    :goto_3
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Laal;->a:Ljava/math/BigDecimal;

    aput-object v2, v1, v5

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-direct {v0, v5, v9, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 244
    :cond_5
    iget-object v0, p0, Laal;->d:Ljava/math/BigDecimal;

    if-eqz v0, :cond_b

    .line 245
    iget-wide v6, p0, Laal;->e:J

    cmp-long v8, v6, v1

    const-string v9, "exclusiveMaximum not match, expect < %s, but %s"

    const-string v10, "maximum not match, expect <= %s, but %s"

    if-eqz v8, :cond_8

    .line 246
    iget-boolean v0, p0, Laal;->f:Z

    if-eqz v0, :cond_6

    long-to-double v6, v6

    cmpl-double v0, p1, v6

    if-ltz v0, :cond_b

    goto :goto_4

    :cond_6
    long-to-double v6, v6

    cmpl-double v0, p1, v6

    if-lez v0, :cond_b

    .line 247
    :goto_4
    new-instance v0, Laaq;

    iget-boolean v1, p0, Laal;->f:Z

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    move-object v9, v10

    :goto_5
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Laal;->d:Ljava/math/BigDecimal;

    aput-object v2, v1, v5

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-direct {v0, v5, v9, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 250
    :cond_8
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    .line 251
    iget-boolean v0, p0, Laal;->f:Z

    if-eqz v0, :cond_9

    cmpl-double v0, p1, v6

    if-ltz v0, :cond_b

    goto :goto_6

    :cond_9
    cmpl-double v0, p1, v6

    if-lez v0, :cond_b

    .line 252
    :goto_6
    new-instance v0, Laaq;

    iget-boolean v1, p0, Laal;->f:Z

    if-eqz v1, :cond_a

    goto :goto_7

    :cond_a
    move-object v9, v10

    :goto_7
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Laal;->d:Ljava/math/BigDecimal;

    aput-object v2, v1, v5

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-direct {v0, v5, v9, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 257
    :cond_b
    iget-object v0, p0, Laal;->g:Ljava/math/BigDecimal;

    if-eqz v0, :cond_d

    .line 258
    iget-wide v6, p0, Laal;->h:J

    cmp-long v1, v6, v1

    const-string v2, "multipleOf not match, expect multipleOf %s, but %s"

    if-eqz v1, :cond_c

    long-to-double v6, v6

    rem-double v6, p1, v6

    const-wide/16 v8, 0x0

    cmpl-double v1, v6, v8

    if-eqz v1, :cond_c

    .line 260
    new-instance v1, Laaq;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-direct {v1, v5, v2, v3}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 264
    :cond_c
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    .line 265
    iget-object p2, p0, Laal;->g:Ljava/math/BigDecimal;

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;)[Ljava/math/BigDecimal;

    move-result-object p2

    aget-object p2, p2, v4

    invoke-virtual {p2}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object p2

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p2, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p2

    if-lez p2, :cond_d

    .line 266
    new-instance p2, Laaq;

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Laal;->g:Ljava/math/BigDecimal;

    aput-object v1, v0, v5

    aput-object p1, v0, v4

    invoke-direct {p2, v5, v2, v0}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 269
    :cond_d
    sget-object p1, Laal;->u:Laaq;

    return-object p1
.end method

.method public a(J)Laaq;
    .locals 11

    .line 177
    iget-object v0, p0, Laal;->a:Ljava/math/BigDecimal;

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    .line 178
    iget-wide v6, p0, Laal;->b:J

    cmp-long v0, v6, v1

    const-string v8, "exclusiveMinimum not match, expect > %s, but %s"

    const-string v9, "minimum not match, expect >= %s, but %s"

    if-eqz v0, :cond_2

    .line 179
    iget-boolean v0, p0, Laal;->c:Z

    if-eqz v0, :cond_0

    cmp-long v0, p1, v6

    if-gtz v0, :cond_5

    goto :goto_0

    :cond_0
    cmp-long v0, p1, v6

    if-gez v0, :cond_5

    .line 180
    :goto_0
    new-instance v0, Laaq;

    iget-boolean v1, p0, Laal;->c:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v8, v9

    :goto_1
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Laal;->a:Ljava/math/BigDecimal;

    aput-object v2, v1, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-direct {v0, v5, v8, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 183
    :cond_2
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 184
    iget-boolean v6, p0, Laal;->c:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Laal;->a:Ljava/math/BigDecimal;

    .line 185
    invoke-virtual {v6, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v6

    if-ltz v6, :cond_6

    goto :goto_2

    :cond_3
    iget-object v6, p0, Laal;->a:Ljava/math/BigDecimal;

    .line 186
    invoke-virtual {v6, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v6

    if-lez v6, :cond_6

    .line 187
    :goto_2
    new-instance v0, Laaq;

    iget-boolean v1, p0, Laal;->c:Z

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v8, v9

    :goto_3
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Laal;->a:Ljava/math/BigDecimal;

    aput-object v2, v1, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-direct {v0, v5, v8, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_5
    const/4 v0, 0x0

    .line 192
    :cond_6
    iget-object v6, p0, Laal;->d:Ljava/math/BigDecimal;

    if-eqz v6, :cond_d

    .line 193
    iget-wide v6, p0, Laal;->e:J

    cmp-long v8, v6, v1

    const-string v9, "exclusiveMaximum not match, expect < %s, but %s"

    const-string v10, "maximum not match, expect <= %s, but %s"

    if-eqz v8, :cond_9

    .line 194
    iget-boolean v8, p0, Laal;->f:Z

    if-eqz v8, :cond_7

    cmp-long v6, p1, v6

    if-ltz v6, :cond_d

    goto :goto_4

    :cond_7
    cmp-long v6, p1, v6

    if-lez v6, :cond_d

    .line 195
    :goto_4
    new-instance v0, Laaq;

    iget-boolean v1, p0, Laal;->f:Z

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    move-object v9, v10

    :goto_5
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Laal;->d:Ljava/math/BigDecimal;

    aput-object v2, v1, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-direct {v0, v5, v9, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_9
    if-nez v0, :cond_a

    .line 199
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 202
    :cond_a
    iget-boolean v6, p0, Laal;->f:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Laal;->d:Ljava/math/BigDecimal;

    .line 203
    invoke-virtual {v6, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v6

    if-gtz v6, :cond_d

    goto :goto_6

    :cond_b
    iget-object v6, p0, Laal;->d:Ljava/math/BigDecimal;

    .line 204
    invoke-virtual {v6, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v6

    if-gez v6, :cond_d

    .line 205
    :goto_6
    new-instance v0, Laaq;

    iget-boolean v1, p0, Laal;->f:Z

    if-eqz v1, :cond_c

    goto :goto_7

    :cond_c
    move-object v9, v10

    :goto_7
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Laal;->d:Ljava/math/BigDecimal;

    aput-object v2, v1, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-direct {v0, v5, v9, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 210
    :cond_d
    iget-object v6, p0, Laal;->g:Ljava/math/BigDecimal;

    if-eqz v6, :cond_10

    .line 211
    iget-wide v7, p0, Laal;->h:J

    cmp-long v1, v7, v1

    const-string v2, "multipleOf not match, expect multipleOf %s, but %s"

    if-eqz v1, :cond_e

    .line 212
    rem-long v7, p1, v7

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-eqz v1, :cond_e

    .line 213
    new-instance p1, Laaq;

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v6, p2, v5

    aput-object v0, p2, v4

    invoke-direct {p1, v5, v2, p2}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_e
    if-nez v0, :cond_f

    .line 218
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 221
    :cond_f
    iget-object v1, p0, Laal;->g:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;)[Ljava/math/BigDecimal;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_10

    .line 222
    new-instance v0, Laaq;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Laal;->g:Ljava/math/BigDecimal;

    aput-object v3, v1, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-direct {v0, v5, v2, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 226
    :cond_10
    sget-object p1, Laal;->u:Laaq;

    return-object p1
.end method

.method public a(Ljava/lang/Double;)Laaq;
    .locals 2

    if-nez p1, :cond_0

    .line 158
    sget-object p1, Laal;->u:Laaq;

    return-object p1

    .line 161
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Laal;->a(D)Laaq;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Float;)Laaq;
    .locals 2

    if-nez p1, :cond_0

    .line 149
    sget-object p1, Laal;->u:Laaq;

    return-object p1

    .line 152
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Laal;->a(D)Laaq;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Integer;)Laaq;
    .locals 2

    if-nez p1, :cond_0

    .line 140
    sget-object p1, Laal;->u:Laaq;

    return-object p1

    .line 143
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Laal;->a(J)Laaq;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Long;)Laaq;
    .locals 2

    if-nez p1, :cond_0

    .line 167
    sget-object p1, Laal;->u:Laaq;

    return-object p1

    .line 170
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Laal;->a(J)Laaq;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Laaq;
    .locals 6

    if-nez p1, :cond_1

    .line 86
    iget-boolean p1, p0, Laal;->i:Z

    if-eqz p1, :cond_0

    sget-object p1, Laal;->v:Laaq;

    goto :goto_0

    :cond_0
    sget-object p1, Laal;->u:Laaq;

    :goto_0
    return-object p1

    .line 89
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_f

    .line 90
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    .line 92
    instance-of v1, v0, Ljava/lang/Byte;

    if-nez v1, :cond_e

    instance-of v1, v0, Ljava/lang/Short;

    if-nez v1, :cond_e

    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_e

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    goto/16 :goto_7

    .line 96
    :cond_2
    instance-of v1, v0, Ljava/lang/Float;

    if-nez v1, :cond_d

    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_3

    goto/16 :goto_6

    .line 101
    :cond_3
    instance-of v1, v0, Ljava/math/BigInteger;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 102
    new-instance v1, Ljava/math/BigDecimal;

    check-cast v0, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_1

    .line 103
    :cond_4
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_c

    .line 104
    move-object v1, v0

    check-cast v1, Ljava/math/BigDecimal;

    .line 109
    :goto_1
    iget-object v0, p0, Laal;->a:Ljava/math/BigDecimal;

    if-eqz v0, :cond_7

    .line 110
    iget-boolean v5, p0, Laal;->c:Z

    if-eqz v5, :cond_5

    .line 111
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_7

    goto :goto_2

    .line 112
    :cond_5
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_7

    .line 113
    :goto_2
    new-instance v0, Laaq;

    iget-boolean v1, p0, Laal;->c:Z

    if-eqz v1, :cond_6

    const-string v1, "exclusiveMinimum not match, expect > %s, but %s"

    goto :goto_3

    :cond_6
    const-string v1, "minimum not match, expect >= %s, but %s"

    :goto_3
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Laal;->a:Ljava/math/BigDecimal;

    aput-object v5, v2, v4

    aput-object p1, v2, v3

    invoke-direct {v0, v4, v1, v2}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 117
    :cond_7
    iget-object v0, p0, Laal;->d:Ljava/math/BigDecimal;

    if-eqz v0, :cond_a

    .line 118
    iget-boolean v5, p0, Laal;->f:Z

    if-eqz v5, :cond_8

    .line 119
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_a

    goto :goto_4

    .line 120
    :cond_8
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_a

    .line 121
    :goto_4
    new-instance v0, Laaq;

    iget-boolean v1, p0, Laal;->f:Z

    if-eqz v1, :cond_9

    const-string v1, "exclusiveMaximum not match, expect < %s, but %s"

    goto :goto_5

    :cond_9
    const-string v1, "maximum not match, expect <= %s, but %s"

    :goto_5
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Laal;->d:Ljava/math/BigDecimal;

    aput-object v5, v2, v4

    aput-object p1, v2, v3

    invoke-direct {v0, v4, v1, v2}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 125
    :cond_a
    iget-object p1, p0, Laal;->g:Ljava/math/BigDecimal;

    if-eqz p1, :cond_b

    .line 126
    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;)[Ljava/math/BigDecimal;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object p1

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-lez p1, :cond_b

    .line 127
    new-instance p1, Laaq;

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Laal;->g:Ljava/math/BigDecimal;

    aput-object v2, v0, v4

    aput-object v1, v0, v3

    const-string v1, "multipleOf not match, expect multipleOf %s, but %s"

    invoke-direct {p1, v4, v1, v0}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 131
    :cond_b
    sget-object p1, Laal;->u:Laaq;

    return-object p1

    .line 106
    :cond_c
    new-instance v0, Laaq;

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v2, Laai$b;->Number:Laai$b;

    aput-object v2, v1, v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "expect type %s, but %s"

    invoke-direct {v0, v4, p1, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 97
    :cond_d
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Laal;->a(D)Laaq;

    move-result-object p1

    return-object p1

    .line 93
    :cond_e
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Laal;->a(J)Laaq;

    move-result-object p1

    return-object p1

    .line 134
    :cond_f
    iget-boolean p1, p0, Laal;->i:Z

    if-eqz p1, :cond_10

    sget-object p1, Laal;->z:Laaq;

    goto :goto_8

    :cond_10
    sget-object p1, Laal;->u:Laaq;

    :goto_8
    return-object p1
.end method

.method public b()Lcom/alibaba/fastjson2/e;
    .locals 7

    const-string v0, "type"

    const-string v1, "number"

    .line 274
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/e;

    move-result-object v0

    .line 276
    iget-wide v1, p0, Laal;->b:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    const-string v2, "exclusiveMinimum"

    const-string v5, "minimum"

    if-eqz v1, :cond_1

    .line 277
    iget-boolean v1, p0, Laal;->c:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v5

    :goto_0
    iget-wide v5, p0, Laal;->b:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 278
    :cond_1
    iget-object v1, p0, Laal;->a:Ljava/math/BigDecimal;

    if-eqz v1, :cond_3

    .line 279
    iget-boolean v1, p0, Laal;->c:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v5

    :goto_1
    iget-object v1, p0, Laal;->a:Ljava/math/BigDecimal;

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_3
    :goto_2
    iget-wide v1, p0, Laal;->e:J

    cmp-long v1, v1, v3

    const-string v2, "exclusiveMaximum"

    const-string v5, "maximum"

    if-eqz v1, :cond_5

    .line 283
    iget-boolean v1, p0, Laal;->f:Z

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, v5

    :goto_3
    iget-wide v5, p0, Laal;->b:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 284
    :cond_5
    iget-object v1, p0, Laal;->d:Ljava/math/BigDecimal;

    if-eqz v1, :cond_7

    .line 285
    iget-boolean v1, p0, Laal;->f:Z

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v2, v5

    :goto_4
    iget-object v1, p0, Laal;->d:Ljava/math/BigDecimal;

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_7
    :goto_5
    iget-wide v1, p0, Laal;->h:J

    cmp-long v3, v1, v3

    const-string v4, "multipleOf"

    if-eqz v3, :cond_8

    .line 289
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 290
    :cond_8
    iget-object v1, p0, Laal;->g:Ljava/math/BigDecimal;

    if-eqz v1, :cond_9

    .line 291
    invoke-virtual {v0, v4, v1}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_6
    return-object v0
.end method
