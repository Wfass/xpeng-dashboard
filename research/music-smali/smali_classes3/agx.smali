.class final Lagx;
.super Lqf;
.source "ObjectWriterImplLocalDateTime.java"

# interfaces
.implements Laem;


# static fields
.field static final o:Lagx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lagx;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lagx;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lagx;->o:Lagx;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lqf;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 22
    check-cast p2, Ljava/time/LocalDateTime;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/time/LocalDateTime;)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    if-nez p2, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 32
    :cond_0
    iget-object v2, v1, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    .line 34
    move-object v3, p2

    check-cast v3, Ljava/time/LocalDateTime;

    .line 36
    iget-boolean v4, v0, Lagx;->b:Z

    if-nez v4, :cond_c

    iget-object v4, v0, Lagx;->a:Ljava/lang/String;

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/ab$a;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 44
    :cond_1
    iget-boolean v4, v0, Lagx;->c:Z

    if-nez v4, :cond_b

    iget-object v4, v0, Lagx;->a:Ljava/lang/String;

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/ab$a;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_1

    .line 52
    :cond_2
    invoke-virtual {v3}, Ljava/time/LocalDateTime;->getYear()I

    move-result v4

    if-ltz v4, :cond_8

    const/16 v5, 0x270f

    if-gt v4, v5, :cond_8

    .line 54
    iget-boolean v5, v0, Lagx;->d:Z

    if-nez v5, :cond_7

    iget-object v5, v0, Lagx;->a:Ljava/lang/String;

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/ab$a;->f()Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_0

    .line 66
    :cond_3
    iget-boolean v5, v0, Lagx;->i:Z

    if-eqz v5, :cond_4

    .line 69
    invoke-virtual {v3}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v5

    .line 70
    invoke-virtual {v3}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v6

    .line 71
    invoke-virtual {v3}, Ljava/time/LocalDateTime;->getHour()I

    move-result v7

    .line 72
    invoke-virtual {v3}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v8

    .line 73
    invoke-virtual {v3}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v9

    move-object v1, p1

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    .line 67
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson2/ab;->b(IIIIII)V

    return-void

    .line 78
    :cond_4
    iget-boolean v5, v0, Lagx;->k:Z

    if-eqz v5, :cond_5

    .line 81
    invoke-virtual {v3}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v5

    .line 82
    invoke-virtual {v3}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v6

    .line 83
    invoke-virtual {v3}, Ljava/time/LocalDateTime;->getHour()I

    move-result v7

    .line 84
    invoke-virtual {v3}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v8

    .line 85
    invoke-virtual {v3}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v9

    move-object v1, p1

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    .line 79
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson2/ab;->a(IIIIII)V

    return-void

    .line 90
    :cond_5
    iget-boolean v5, v0, Lagx;->m:Z

    if-eqz v5, :cond_6

    .line 93
    invoke-virtual {v3}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v2

    .line 94
    invoke-virtual {v3}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v3

    .line 91
    invoke-virtual {p1, v4, v2, v3}, Lcom/alibaba/fastjson2/ab;->a(III)V

    return-void

    .line 98
    :cond_6
    iget-boolean v5, v0, Lagx;->l:Z

    if-eqz v5, :cond_8

    .line 101
    invoke-virtual {v3}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v2

    .line 102
    invoke-virtual {v3}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v3

    .line 99
    invoke-virtual {p1, v4, v2, v3}, Lcom/alibaba/fastjson2/ab;->b(III)V

    return-void

    .line 55
    :cond_7
    :goto_0
    invoke-virtual {v3}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v5

    .line 56
    invoke-virtual {v3}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v6

    .line 57
    invoke-virtual {v3}, Ljava/time/LocalDateTime;->getHour()I

    move-result v7

    .line 58
    invoke-virtual {v3}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v8

    .line 59
    invoke-virtual {v3}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v9

    .line 60
    invoke-virtual {v3}, Ljava/time/LocalDateTime;->getNano()I

    move-result v10

    const v11, 0xf4240

    div-int/2addr v10, v11

    .line 61
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/ab$a;->b()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v11

    const/4 v12, 0x1

    move-object v1, p1

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    .line 62
    invoke-virtual/range {v1 .. v10}, Lcom/alibaba/fastjson2/ab;->a(IIIIIIIIZ)V

    return-void

    .line 107
    :cond_8
    invoke-virtual {p0}, Lagx;->a()Ljava/time/format/DateTimeFormatter;

    move-result-object v4

    if-nez v4, :cond_9

    .line 109
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/ab$a;->j()Ljava/time/format/DateTimeFormatter;

    move-result-object v4

    :cond_9
    if-nez v4, :cond_a

    .line 113
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/ab;->a(Ljava/time/LocalDateTime;)V

    return-void

    .line 117
    :cond_a
    invoke-virtual {v4, v3}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    return-void

    .line 45
    :cond_b
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/ab$a;->b()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 48
    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson2/ab;->e(J)V

    return-void

    .line 37
    :cond_c
    :goto_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/ab$a;->b()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    .line 40
    div-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson2/ab;->e(J)V

    return-void
.end method
