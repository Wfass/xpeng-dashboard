.class Labh$f;
.super Lqf;
.source "JdbcSupport.java"

# interfaces
.implements Laem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field final o:Ljava/util/function/ToIntFunction;

.field final p:Ljava/util/function/Function;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2

    .line 374
    invoke-direct {p0, p2}, Lqf;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string p2, "getNanos"

    const/4 v0, 0x0

    .line 376
    new-array v1, v0, [Ljava/lang/Class;

    .line 377
    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 376
    invoke-static {p2}, Laat;->a(Ljava/lang/reflect/Method;)Ljava/util/function/ToIntFunction;

    move-result-object p2

    iput-object p2, p0, Labh$f;->o:Ljava/util/function/ToIntFunction;

    const-string p2, "toLocalDateTime"

    .line 379
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 380
    invoke-static {p1}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p1

    iput-object p1, p0, Labh$f;->p:Ljava/util/function/Function;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 382
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string v0, "illegal state"

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 389
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 393
    :cond_0
    move-object p3, p2

    check-cast p3, Ljava/util/Date;

    .line 396
    iget-object p4, p0, Labh$f;->o:Ljava/util/function/ToIntFunction;

    invoke-interface {p4, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p4

    if-nez p4, :cond_1

    .line 399
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/ab;->f(J)V

    return-void

    .line 403
    :cond_1
    iget-object p3, p0, Labh$f;->p:Ljava/util/function/Function;

    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/time/LocalDateTime;

    .line 404
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/time/LocalDateTime;)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    if-nez p2, :cond_0

    .line 410
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 414
    :cond_0
    iget-object v2, v1, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    .line 416
    move-object/from16 v3, p2

    check-cast v3, Ljava/util/Date;

    .line 418
    iget-boolean v4, v0, Labh$f;->b:Z

    if-nez v4, :cond_a

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/ab$a;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 424
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/ab$a;->b()Ljava/time/ZoneId;

    move-result-object v4

    .line 425
    invoke-virtual {v3}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object v5

    .line 426
    invoke-static {v5, v4}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v4

    .line 427
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v9

    .line 429
    iget-boolean v5, v0, Labh$f;->d:Z

    const v6, 0xf4240

    if-nez v5, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/ab$a;->f()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->getNano()I

    move-result v5

    rem-int/2addr v5, v6

    if-nez v5, :cond_3

    .line 430
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->getYear()I

    move-result v2

    .line 431
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->getMonthValue()I

    move-result v3

    .line 432
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v5

    .line 433
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->getHour()I

    move-result v7

    .line 434
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->getMinute()I

    move-result v8

    .line 435
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->getSecond()I

    move-result v10

    .line 436
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->getNano()I

    move-result v4

    .line 437
    div-int v11, v4, v6

    const/4 v12, 0x1

    move-object v1, p1

    move v4, v5

    move v5, v7

    move v6, v8

    move v7, v10

    move v8, v11

    move v10, v12

    .line 438
    invoke-virtual/range {v1 .. v10}, Lcom/alibaba/fastjson2/ab;->a(IIIIIIIIZ)V

    return-void

    .line 442
    :cond_3
    invoke-virtual {p0}, Labh$f;->a()Ljava/time/format/DateTimeFormatter;

    move-result-object v5

    if-nez v5, :cond_4

    .line 444
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/ab$a;->j()Ljava/time/format/DateTimeFormatter;

    move-result-object v5

    :cond_4
    if-nez v5, :cond_9

    .line 448
    iget-boolean v5, v0, Labh$f;->c:Z

    if-nez v5, :cond_8

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/ab$a;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 454
    :cond_5
    iget-object v2, v0, Labh$f;->o:Ljava/util/function/ToIntFunction;

    invoke-interface {v2, v3}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_6

    .line 457
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson2/ab;->e(J)V

    return-void

    .line 461
    :cond_6
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->getYear()I

    move-result v3

    .line 462
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->getMonthValue()I

    move-result v5

    .line 463
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v7

    .line 464
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->getHour()I

    move-result v8

    .line 465
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->getMinute()I

    move-result v10

    .line 466
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->getSecond()I

    move-result v11

    .line 467
    rem-int v12, v2, v6

    if-nez v12, :cond_7

    .line 468
    div-int v12, v2, v6

    const/4 v13, 0x0

    move-object v1, p1

    move v2, v3

    move v3, v5

    move v4, v7

    move v5, v8

    move v6, v10

    move v7, v11

    move v8, v12

    move v10, v13

    invoke-virtual/range {v1 .. v10}, Lcom/alibaba/fastjson2/ab;->a(IIIIIIIIZ)V

    goto :goto_1

    .line 470
    :cond_7
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/time/LocalDateTime;)V

    goto :goto_1

    .line 449
    :cond_8
    :goto_0
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 450
    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson2/ab;->e(J)V

    return-void

    .line 473
    :cond_9
    invoke-virtual {v5, v4}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v2

    .line 474
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 419
    :cond_a
    :goto_2
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    .line 420
    div-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson2/ab;->e(J)V

    return-void
.end method
