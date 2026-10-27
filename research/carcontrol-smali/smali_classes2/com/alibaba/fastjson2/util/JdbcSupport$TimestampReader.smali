.class Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;
.source "JdbcSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/util/JdbcSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimestampReader"
.end annotation


# instance fields
.field final function:Ljava/util/function/LongFunction;

.field final functionSetNanos:Ljava/util/function/ObjIntConsumer;

.field final functionValueOf:Ljava/util/function/Function;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 4

    const-string v0, "illegal state"

    .line 486
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 p2, 0x1

    :try_start_0
    new-array p3, p2, [Ljava/lang/Class;

    .line 488
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, p3, v2

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    .line 489
    invoke-static {p3}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createLongFunction(Ljava/lang/reflect/Constructor;)Ljava/util/function/LongFunction;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;->function:Ljava/util/function/LongFunction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo p3, "setNanos"

    new-array v1, p2, [Ljava/lang/Class;

    .line 495
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {p1, p3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    .line 496
    invoke-static {p3}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createObjIntConsumer(Ljava/lang/reflect/Method;)Ljava/util/function/ObjIntConsumer;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;->functionSetNanos:Ljava/util/function/ObjIntConsumer;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p3, 0x0

    :try_start_2
    const-string/jumbo v0, "valueOf"

    new-array p2, p2, [Ljava/lang/Class;

    .line 503
    const-class v1, Ljava/time/LocalDateTime;

    aput-object v1, p2, v2

    invoke-virtual {p1, v0, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 504
    invoke-static {p1}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 508
    :catchall_0
    iput-object p3, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;->functionValueOf:Ljava/util/function/Function;

    return-void

    :catch_0
    move-exception p1

    .line 498
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_1
    move-exception p1

    .line 491
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method createTimestamp(JI)Ljava/lang/Object;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;->function:Ljava/util/function/LongFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 533
    iget-object p2, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;->functionSetNanos:Ljava/util/function/ObjIntConsumer;

    invoke-interface {p2, p1, p3}, Ljava/util/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    :cond_0
    return-object p1
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 513
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    move-result-wide p1

    .line 516
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;->formatUnixTime:Z

    if-eqz p3, :cond_0

    const-wide/16 p3, 0x3e8

    mul-long/2addr p1, p3

    :cond_0
    const/4 p3, 0x0

    .line 520
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;->createTimestamp(JI)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 523
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 527
    :cond_2
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .line 540
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 541
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    move-result-wide p1

    .line 543
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;->formatUnixTime:Z

    if-eqz p3, :cond_0

    const-wide/16 p3, 0x3e8

    mul-long/2addr p1, p3

    :cond_0
    const/4 p3, 0x0

    .line 547
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;->createTimestamp(JI)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 550
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    return-object p3

    .line 554
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;->format:Ljava/lang/String;

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;->formatISO8601:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;->formatMillis:Z

    if-eqz p2, :cond_3

    goto :goto_1

    .line 573
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p2

    .line 574
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_4

    return-object p3

    .line 578
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;->getDateFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object p3

    .line 581
    iget-boolean p4, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;->formatHasHour:Z

    if-nez p4, :cond_5

    .line 582
    invoke-static {p2, p3}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p2

    .line 583
    sget-object p3, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p2, p3}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p2

    .line 584
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    goto :goto_0

    .line 586
    :cond_5
    invoke-static {p2, p3}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p2

    .line 587
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    .line 590
    :goto_0
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p2

    .line 591
    invoke-virtual {p1}, Ljava/time/Instant;->getNano()I

    move-result p1

    .line 593
    invoke-virtual {p0, p2, p3, p1}, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;->createTimestamp(JI)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 555
    :cond_6
    :goto_1
    iget-object p2, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;->functionValueOf:Ljava/util/function/Function;

    if-eqz p2, :cond_8

    .line 556
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 558
    iget-object p1, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;->functionValueOf:Ljava/util/function/Function;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 561
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->wasNull()Z

    move-result p2

    if-eqz p2, :cond_8

    return-object p3

    .line 566
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readMillisFromString()J

    move-result-wide p4

    const-wide/16 v0, 0x0

    cmp-long p2, p4, v0

    if-nez p2, :cond_9

    .line 567
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->wasNull()Z

    move-result p1

    if-eqz p1, :cond_9

    return-object p3

    .line 570
    :cond_9
    iget-object p1, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;->function:Ljava/util/function/LongFunction;

    invoke-interface {p1, p4, p5}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
