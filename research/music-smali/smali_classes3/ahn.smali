.class final Lahn;
.super Lqf;
.source "ObjectWriterImplZonedDateTime.java"

# interfaces
.implements Laem;


# static fields
.field static final o:Lahn;


# instance fields
.field private final p:Ljava/util/function/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lahn;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lahn;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lahn;->o:Lahn;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lahn;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/function/Function;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/function/Function;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lqf;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 25
    iput-object p3, p0, Lahn;->p:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 30
    check-cast p2, Ljava/time/ZonedDateTime;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/time/ZonedDateTime;)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    if-nez v2, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 41
    :cond_0
    iget-object v3, v0, Lahn;->p:Ljava/util/function/Function;

    if-eqz v3, :cond_1

    .line 42
    invoke-interface {v3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/ZonedDateTime;

    goto :goto_0

    .line 44
    :cond_1
    check-cast v2, Ljava/time/ZonedDateTime;

    .line 47
    :goto_0
    iget-object v3, v1, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    .line 49
    iget-boolean v4, v0, Lahn;->b:Z

    if-nez v4, :cond_b

    iget-object v4, v0, Lahn;->a:Ljava/lang/String;

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/alibaba/fastjson2/ab$a;->e()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_3

    .line 55
    :cond_2
    iget-boolean v4, v0, Lahn;->c:Z

    if-nez v4, :cond_a

    iget-object v4, v0, Lahn;->a:Ljava/lang/String;

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/alibaba/fastjson2/ab$a;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_2

    .line 62
    :cond_3
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getYear()I

    move-result v4

    if-ltz v4, :cond_7

    const/16 v5, 0x270f

    if-gt v4, v5, :cond_7

    .line 64
    iget-boolean v5, v0, Lahn;->d:Z

    if-nez v5, :cond_6

    invoke-virtual {v3}, Lcom/alibaba/fastjson2/ab$a;->f()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 79
    :cond_4
    iget-boolean v5, v0, Lahn;->i:Z

    if-eqz v5, :cond_5

    .line 82
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getMonthValue()I

    move-result v3

    .line 83
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v5

    .line 84
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getHour()I

    move-result v6

    .line 85
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getMinute()I

    move-result v7

    .line 86
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getSecond()I

    move-result v8

    move-object v1, p1

    move v2, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    .line 80
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson2/ab;->b(IIIIII)V

    return-void

    .line 91
    :cond_5
    iget-boolean v5, v0, Lahn;->k:Z

    if-eqz v5, :cond_7

    .line 94
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getMonthValue()I

    move-result v3

    .line 95
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v5

    .line 96
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getHour()I

    move-result v6

    .line 97
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getMinute()I

    move-result v7

    .line 98
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getSecond()I

    move-result v8

    move-object v1, p1

    move v2, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    .line 92
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson2/ab;->a(IIIIII)V

    return-void

    .line 67
    :cond_6
    :goto_1
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getMonthValue()I

    move-result v3

    .line 68
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v5

    .line 69
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getHour()I

    move-result v6

    .line 70
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getMinute()I

    move-result v7

    .line 71
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getSecond()I

    move-result v8

    .line 72
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getNano()I

    move-result v9

    const v10, 0xf4240

    div-int/2addr v9, v10

    .line 73
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v10

    const/4 v11, 0x1

    move-object v1, p1

    move v2, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    .line 65
    invoke-virtual/range {v1 .. v10}, Lcom/alibaba/fastjson2/ab;->a(IIIIIIIIZ)V

    return-void

    .line 104
    :cond_7
    invoke-virtual {p0}, Lahn;->a()Ljava/time/format/DateTimeFormatter;

    move-result-object v4

    if-nez v4, :cond_8

    .line 106
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/ab$a;->j()Ljava/time/format/DateTimeFormatter;

    move-result-object v4

    :cond_8
    if-nez v4, :cond_9

    .line 110
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/time/ZonedDateTime;)V

    return-void

    .line 114
    :cond_9
    invoke-virtual {v4, v2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    return-void

    .line 57
    :cond_a
    :goto_2
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 56
    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson2/ab;->e(J)V

    return-void

    .line 50
    :cond_b
    :goto_3
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    .line 51
    div-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson2/ab;->e(J)V

    return-void
.end method
