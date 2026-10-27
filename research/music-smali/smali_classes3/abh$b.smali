.class Labh$b;
.super Lxp;
.source "JdbcSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final p:Ljava/util/function/LongFunction;

.field final q:Ljava/util/function/Function;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 3

    const-string v0, "illegal state"

    .line 603
    invoke-direct {p0, p2, p3}, Lxp;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 p2, 0x1

    .line 606
    :try_start_0
    new-array p3, p2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, p3, v2

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    .line 607
    invoke-static {p3}, Laat;->a(Ljava/lang/reflect/Constructor;)Ljava/util/function/LongFunction;

    move-result-object p3

    iput-object p3, p0, Labh$b;->p:Ljava/util/function/LongFunction;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string p3, "valueOf"

    .line 613
    new-array p2, p2, [Ljava/lang/Class;

    const-class v1, Ljava/time/LocalDate;

    aput-object v1, p2, v2

    invoke-virtual {p1, p3, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 614
    invoke-static {p1}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p1

    iput-object p1, p0, Labh$b;->q:Ljava/util/function/Function;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 616
    :goto_0
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 609
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 622
    invoke-virtual/range {p0 .. p5}, Labh$b;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .line 627
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->d()Z

    move-result p2

    const-wide/16 p3, 0x3e8

    if-eqz p2, :cond_1

    .line 628
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aa()J

    move-result-wide p1

    .line 630
    iget-boolean p5, p0, Labh$b;->b:Z

    if-eqz p5, :cond_0

    mul-long/2addr p1, p3

    .line 634
    :cond_0
    iget-object p3, p0, Labh$b;->p:Ljava/util/function/LongFunction;

    invoke-interface {p3, p1, p2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 637
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aR()Z

    move-result p2

    const/4 p5, 0x0

    if-eqz p2, :cond_2

    return-object p5

    .line 641
    :cond_2
    iget-boolean p2, p0, Labh$b;->b:Z

    if-eqz p2, :cond_3

    .line 642
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->v()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 643
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object p1

    .line 644
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    mul-long/2addr p1, p3

    .line 646
    iget-object p3, p0, Labh$b;->p:Ljava/util/function/LongFunction;

    invoke-interface {p3, p1, p2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 650
    :cond_3
    iget-object p2, p0, Labh$b;->a:Ljava/lang/String;

    if-eqz p2, :cond_7

    iget-boolean p2, p0, Labh$b;->d:Z

    if-nez p2, :cond_7

    iget-boolean p2, p0, Labh$b;->c:Z

    if-eqz p2, :cond_4

    goto :goto_1

    .line 667
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object p2

    .line 668
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    return-object p5

    .line 672
    :cond_5
    invoke-virtual {p0}, Labh$b;->a()Ljava/time/format/DateTimeFormatter;

    move-result-object p3

    .line 675
    iget-boolean p4, p0, Labh$b;->a_:Z

    if-nez p4, :cond_6

    .line 676
    invoke-static {p2, p3}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p2

    .line 677
    sget-object p3, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p2, p3}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p2

    .line 678
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u$c;->h()Ljava/time/ZoneId;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    goto :goto_0

    .line 680
    :cond_6
    invoke-static {p2, p3}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p2

    .line 681
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u$c;->h()Ljava/time/ZoneId;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    .line 684
    :goto_0
    iget-object p2, p0, Labh$b;->p:Ljava/util/function/LongFunction;

    .line 685
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p3

    .line 684
    invoke-interface {p2, p3, p4}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 651
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->al()Ljava/time/LocalDateTime;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 653
    iget-object p1, p0, Labh$b;->q:Ljava/util/function/Function;

    invoke-virtual {p2}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 656
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aT()Z

    move-result p2

    if-eqz p2, :cond_9

    return-object p5

    .line 660
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->as()J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-nez p4, :cond_a

    .line 661
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aT()Z

    move-result p1

    if-eqz p1, :cond_a

    return-object p5

    .line 664
    :cond_a
    iget-object p1, p0, Labh$b;->p:Ljava/util/function/LongFunction;

    invoke-interface {p1, p2, p3}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
