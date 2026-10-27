.class final Lagy;
.super Lqf;
.source "ObjectWriterImplLocalTime.java"

# interfaces
.implements Laem;


# static fields
.field static final o:Lagy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lagy;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lagy;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lagy;->o:Lagy;

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
    check-cast p2, Ljava/time/LocalTime;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/time/LocalTime;)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 1

    if-nez p2, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 32
    :cond_0
    iget-object p3, p1, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    .line 34
    check-cast p2, Ljava/time/LocalTime;

    .line 36
    iget-boolean p4, p0, Lagy;->c:Z

    const/16 p5, 0x7b2

    const/4 p6, 0x1

    if-nez p4, :cond_9

    iget-object p4, p0, Lagy;->a:Ljava/lang/String;

    if-nez p4, :cond_1

    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab$a;->d()Z

    move-result p4

    if-eqz p4, :cond_1

    goto/16 :goto_4

    .line 47
    :cond_1
    iget-boolean p4, p0, Lagy;->b:Z

    if-nez p4, :cond_8

    iget-object p4, p0, Lagy;->a:Ljava/lang/String;

    if-nez p4, :cond_2

    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab$a;->e()Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_3

    .line 58
    :cond_2
    invoke-virtual {p0}, Lagy;->a()Ljava/time/format/DateTimeFormatter;

    move-result-object p4

    if-nez p4, :cond_3

    .line 60
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab$a;->j()Ljava/time/format/DateTimeFormatter;

    move-result-object p4

    :cond_3
    if-nez p4, :cond_5

    .line 64
    invoke-virtual {p2}, Ljava/time/LocalTime;->getHour()I

    move-result p3

    .line 65
    invoke-virtual {p2}, Ljava/time/LocalTime;->getMinute()I

    move-result p4

    .line 66
    invoke-virtual {p2}, Ljava/time/LocalTime;->getSecond()I

    move-result p5

    .line 67
    invoke-virtual {p2}, Ljava/time/LocalTime;->getNano()I

    move-result p6

    if-nez p6, :cond_4

    .line 69
    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/ab;->c(III)V

    goto :goto_0

    .line 71
    :cond_4
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/time/LocalTime;)V

    :goto_0
    return-void

    .line 77
    :cond_5
    iget-boolean v0, p0, Lagy;->e:Z

    if-nez v0, :cond_7

    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab$a;->g()Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_1

    .line 80
    :cond_6
    invoke-virtual {p4, p2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 78
    :cond_7
    :goto_1
    invoke-static {p5, p6, p6}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p3

    invoke-static {p3, p2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p2

    .line 82
    :goto_2
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    return-void

    .line 49
    :cond_8
    :goto_3
    invoke-static {p5, p6, p6}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p4

    .line 48
    invoke-static {p4, p2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p2

    .line 52
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab$a;->b()Ljava/time/ZoneId;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p2

    .line 53
    invoke-virtual {p2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p2

    const-wide/16 p4, 0x3e8

    div-long/2addr p2, p4

    long-to-int p2, p2

    .line 54
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(I)V

    return-void

    .line 38
    :cond_9
    :goto_4
    invoke-static {p5, p6, p6}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p4

    .line 37
    invoke-static {p4, p2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p2

    .line 41
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab$a;->b()Ljava/time/ZoneId;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p2

    .line 42
    invoke-virtual {p2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p2

    .line 43
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/ab;->e(J)V

    return-void
.end method
