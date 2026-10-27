.class final Lahc;
.super Lqf;
.source "ObjectWriterImplOffsetDateTime.java"

# interfaces
.implements Laem;


# static fields
.field static final o:Lahc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lahc;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lahc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lahc;->o:Lahc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lqf;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Locale;)Lahc;
    .locals 1

    if-nez p0, :cond_0

    .line 21
    sget-object p0, Lahc;->o:Lahc;

    return-object p0

    .line 23
    :cond_0
    new-instance v0, Lahc;

    invoke-direct {v0, p0, p1}, Lahc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    if-nez p2, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 33
    :cond_0
    iget-object v2, v1, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    .line 35
    move-object v3, p2

    check-cast v3, Ljava/time/OffsetDateTime;

    .line 37
    iget-boolean v4, v0, Lahc;->b:Z

    if-nez v4, :cond_a

    iget-object v4, v0, Lahc;->a:Ljava/lang/String;

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/ab$a;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 45
    :cond_1
    iget-boolean v4, v0, Lahc;->c:Z

    if-nez v4, :cond_9

    iget-object v4, v0, Lahc;->a:Ljava/lang/String;

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/ab$a;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_1

    .line 53
    :cond_2
    invoke-virtual {v3}, Ljava/time/OffsetDateTime;->getYear()I

    move-result v4

    if-ltz v4, :cond_6

    const/16 v5, 0x270f

    if-gt v4, v5, :cond_6

    .line 55
    iget-boolean v5, v0, Lahc;->d:Z

    if-nez v5, :cond_5

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/ab$a;->f()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 70
    :cond_3
    iget-boolean v5, v0, Lahc;->i:Z

    if-eqz v5, :cond_4

    .line 73
    invoke-virtual {v3}, Ljava/time/OffsetDateTime;->getMonthValue()I

    move-result v5

    .line 74
    invoke-virtual {v3}, Ljava/time/OffsetDateTime;->getDayOfMonth()I

    move-result v6

    .line 75
    invoke-virtual {v3}, Ljava/time/OffsetDateTime;->getHour()I

    move-result v7

    .line 76
    invoke-virtual {v3}, Ljava/time/OffsetDateTime;->getMinute()I

    move-result v8

    .line 77
    invoke-virtual {v3}, Ljava/time/OffsetDateTime;->getSecond()I

    move-result v9

    move-object v1, p1

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    .line 71
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson2/ab;->b(IIIIII)V

    return-void

    .line 82
    :cond_4
    iget-boolean v5, v0, Lahc;->k:Z

    if-eqz v5, :cond_6

    .line 85
    invoke-virtual {v3}, Ljava/time/OffsetDateTime;->getMonthValue()I

    move-result v5

    .line 86
    invoke-virtual {v3}, Ljava/time/OffsetDateTime;->getDayOfMonth()I

    move-result v6

    .line 87
    invoke-virtual {v3}, Ljava/time/OffsetDateTime;->getHour()I

    move-result v7

    .line 88
    invoke-virtual {v3}, Ljava/time/OffsetDateTime;->getMinute()I

    move-result v8

    .line 89
    invoke-virtual {v3}, Ljava/time/OffsetDateTime;->getSecond()I

    move-result v9

    move-object v1, p1

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    .line 83
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson2/ab;->a(IIIIII)V

    return-void

    .line 58
    :cond_5
    :goto_0
    invoke-virtual {v3}, Ljava/time/OffsetDateTime;->getMonthValue()I

    move-result v5

    .line 59
    invoke-virtual {v3}, Ljava/time/OffsetDateTime;->getDayOfMonth()I

    move-result v6

    .line 60
    invoke-virtual {v3}, Ljava/time/OffsetDateTime;->getHour()I

    move-result v7

    .line 61
    invoke-virtual {v3}, Ljava/time/OffsetDateTime;->getMinute()I

    move-result v8

    .line 62
    invoke-virtual {v3}, Ljava/time/OffsetDateTime;->getSecond()I

    move-result v9

    .line 63
    invoke-virtual {v3}, Ljava/time/OffsetDateTime;->getNano()I

    move-result v2

    const v10, 0xf4240

    div-int v10, v2, v10

    .line 64
    invoke-virtual {v3}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

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

    .line 56
    invoke-virtual/range {v1 .. v10}, Lcom/alibaba/fastjson2/ab;->a(IIIIIIIIZ)V

    return-void

    .line 95
    :cond_6
    invoke-virtual {p0}, Lahc;->a()Ljava/time/format/DateTimeFormatter;

    move-result-object v4

    if-nez v4, :cond_7

    .line 97
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/ab$a;->j()Ljava/time/format/DateTimeFormatter;

    move-result-object v4

    :cond_7
    if-nez v4, :cond_8

    .line 101
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/ab;->a(Ljava/time/OffsetDateTime;)V

    return-void

    .line 105
    :cond_8
    invoke-virtual {v4, v3}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    return-void

    .line 47
    :cond_9
    :goto_1
    invoke-virtual {v3}, Ljava/time/OffsetDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    .line 48
    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 49
    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson2/ab;->e(J)V

    return-void

    .line 39
    :cond_a
    :goto_2
    invoke-virtual {v3}, Ljava/time/OffsetDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    .line 40
    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    .line 41
    div-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson2/ab;->e(J)V

    return-void
.end method
