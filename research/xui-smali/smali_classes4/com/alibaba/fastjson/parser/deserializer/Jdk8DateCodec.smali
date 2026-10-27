.class public Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;
.super Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;
.source "Jdk8DateCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/serializer/ContextObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field private static final ISO_FIXED_FORMAT:Ljava/time/format/DateTimeFormatter;

.field private static final defaultFormatter:Ljava/time/format/DateTimeFormatter;

.field private static final defaultFormatter_23:Ljava/time/format/DateTimeFormatter;

.field private static final defaultPatttern:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static final formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_de:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_in:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_us:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d8:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_iso8601:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_iso8601_pattern:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss"

.field private static final formatter_iso8601_pattern_23:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

.field private static final formatter_iso8601_pattern_29:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSSSS"

.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    .line 34
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    .line 35
    const-string v0, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter_23:Ljava/time/format/DateTimeFormatter;

    .line 36
    const-string v0, "yyyy/MM/dd HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

    .line 37
    const-string v0, "yyyy\u5e74M\u6708d\u65e5 HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

    .line 38
    const-string v0, "yyyy\u5e74M\u6708d\u65e5 H\u65f6m\u5206s\u79d2"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

    .line 39
    const-string v0, "yyyy\ub144M\uc6d4d\uc77c HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

    .line 40
    const-string v0, "MM/dd/yyyy HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    .line 41
    const-string v0, "dd/MM/yyyy HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    .line 42
    const-string v0, "dd.MM.yyyy HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

    .line 43
    const-string v0, "dd-MM-yyyy HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

    .line 45
    const-string v0, "yyyyMMdd"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d8:Ljava/time/format/DateTimeFormatter;

    .line 46
    const-string v0, "yyyy/MM/dd"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

    .line 47
    const-string v0, "yyyy\u5e74M\u6708d\u65e5"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

    .line 48
    const-string v0, "yyyy\ub144M\uc6d4d\uc77c"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

    .line 49
    const-string v0, "MM/dd/yyyy"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    .line 50
    const-string v0, "dd/MM/yyyy"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    .line 51
    const-string v0, "dd.MM.yyyy"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_de:Ljava/time/format/DateTimeFormatter;

    .line 52
    const-string v0, "dd-MM-yyyy"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_in:Ljava/time/format/DateTimeFormatter;

    .line 54
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 55
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->ISO_FIXED_FORMAT:Ljava/time/format/DateTimeFormatter;

    .line 60
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_iso8601:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;-><init>()V

    return-void
.end method

.method private write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V
    .locals 4
    .param p1, "out"    # Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .param p2, "object"    # Ljava/time/temporal/TemporalAccessor;
    .param p3, "format"    # Ljava/lang/String;

    .line 557
    const-string v0, "unixtime"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    const/4 v0, 0x0

    .line 559
    .local v0, "instant":Ljava/time/Instant;
    instance-of v1, p2, Ljava/time/chrono/ChronoZonedDateTime;

    if-eqz v1, :cond_0

    .line 560
    move-object v1, p2

    check-cast v1, Ljava/time/chrono/ChronoZonedDateTime;

    invoke-interface {v1}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v1

    .line 561
    .local v1, "seconds":J
    long-to-int v3, v1

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 562
    return-void

    .line 565
    .end local v1    # "seconds":J
    :cond_0
    instance-of v1, p2, Ljava/time/LocalDateTime;

    if-eqz v1, :cond_1

    .line 566
    move-object v1, p2

    check-cast v1, Ljava/time/LocalDateTime;

    sget-object v2, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v1

    .line 567
    .restart local v1    # "seconds":J
    long-to-int v3, v1

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 568
    return-void

    .line 572
    .end local v0    # "instant":Ljava/time/Instant;
    .end local v1    # "seconds":J
    :cond_1
    const-string v0, "millis"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 573
    const/4 v0, 0x0

    .line 574
    .restart local v0    # "instant":Ljava/time/Instant;
    instance-of v1, p2, Ljava/time/chrono/ChronoZonedDateTime;

    if-eqz v1, :cond_2

    .line 575
    move-object v1, p2

    check-cast v1, Ljava/time/chrono/ChronoZonedDateTime;

    invoke-interface {v1}, Ljava/time/chrono/ChronoZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    goto :goto_0

    .line 576
    :cond_2
    instance-of v1, p2, Ljava/time/LocalDateTime;

    if-eqz v1, :cond_3

    .line 577
    move-object v1, p2

    check-cast v1, Ljava/time/LocalDateTime;

    sget-object v2, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    .line 579
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 580
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 581
    .local v1, "millis":J
    invoke-virtual {p1, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 582
    return-void

    .line 586
    .end local v0    # "instant":Ljava/time/Instant;
    .end local v1    # "millis":J
    :cond_4
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    if-ne p3, v0, :cond_5

    .line 587
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_iso8601:Ljava/time/format/DateTimeFormatter;

    .local v0, "formatter":Ljava/time/format/DateTimeFormatter;
    goto :goto_1

    .line 589
    .end local v0    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_5
    invoke-static {p3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 592
    .restart local v0    # "formatter":Ljava/time/format/DateTimeFormatter;
    :goto_1
    invoke-virtual {v0, p2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 594
    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 19
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "feature"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 64
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 65
    .local v4, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-ne v5, v7, :cond_0

    .line 66
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 67
    return-object v6

    .line 70
    :cond_0
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/4 v8, 0x4

    if-ne v5, v8, :cond_1c

    .line 71
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, "text":Ljava/lang/String;
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 74
    const/4 v8, 0x0

    .line 75
    .local v8, "formatter":Ljava/time/format/DateTimeFormatter;
    if-eqz v3, :cond_2

    .line 76
    const-string v9, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 77
    sget-object v8, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 79
    :cond_1
    invoke-static/range {p4 .. p4}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v8

    .line 83
    :cond_2
    :goto_0
    const-string v9, ""

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 84
    return-object v6

    .line 87
    :cond_3
    const-class v9, Ljava/time/LocalDateTime;

    if-ne v2, v9, :cond_6

    .line 89
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v9, 0xa

    if-eq v6, v9, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v7, :cond_4

    goto :goto_1

    .line 93
    :cond_4
    invoke-virtual {v0, v5, v8}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v6

    goto :goto_2

    .line 90
    :cond_5
    :goto_1
    invoke-virtual {v0, v5, v3, v8}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v6

    .line 91
    .local v6, "localDate":Ljava/time/LocalDate;
    sget-object v7, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v6, v7}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v6

    .line 92
    .local v6, "localDateTime":Ljava/time/LocalDateTime;
    nop

    .line 93
    :goto_2
    nop

    .line 95
    return-object v6

    .line 96
    .end local v6    # "localDateTime":Ljava/time/LocalDateTime;
    :cond_6
    const-class v9, Ljava/time/LocalDate;

    const/16 v10, 0x17

    if-ne v2, v9, :cond_8

    .line 98
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v10, :cond_7

    .line 99
    invoke-static {v5}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v6

    .line 100
    .restart local v6    # "localDateTime":Ljava/time/LocalDateTime;
    invoke-virtual {v6}, Ljava/time/LocalDateTime;->getYear()I

    move-result v7

    invoke-virtual {v6}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v9

    .line 101
    invoke-virtual {v6}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v10

    .line 100
    invoke-static {v7, v9, v10}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v6

    .line 102
    .local v6, "localDate":Ljava/time/LocalDate;
    goto :goto_3

    .line 103
    .end local v6    # "localDate":Ljava/time/LocalDate;
    :cond_7
    invoke-virtual {v0, v5, v3, v8}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v6

    .line 106
    .restart local v6    # "localDate":Ljava/time/LocalDate;
    :goto_3
    return-object v6

    .line 107
    .end local v6    # "localDate":Ljava/time/LocalDate;
    :cond_8
    const-class v9, Ljava/time/LocalTime;

    const/16 v11, 0x39

    const/16 v12, 0x30

    const/16 v13, 0x13

    const/4 v14, 0x0

    if-ne v2, v9, :cond_e

    .line 109
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v10, :cond_9

    .line 110
    invoke-static {v5}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v6

    .line 111
    .local v6, "localDateTime":Ljava/time/LocalDateTime;
    invoke-virtual {v6}, Ljava/time/LocalDateTime;->getHour()I

    move-result v7

    invoke-virtual {v6}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v9

    .line 112
    invoke-virtual {v6}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v10

    invoke-virtual {v6}, Ljava/time/LocalDateTime;->getNano()I

    move-result v11

    .line 111
    invoke-static {v7, v9, v10, v11}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v6

    .line 113
    .local v6, "localTime":Ljava/time/LocalTime;
    goto :goto_6

    .line 114
    .end local v6    # "localTime":Ljava/time/LocalTime;
    :cond_9
    const/4 v6, 0x1

    .line 115
    .local v6, "digit":Z
    nop

    .local v14, "i":I
    :goto_4
    move v9, v14

    .end local v14    # "i":I
    .local v9, "i":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_c

    .line 116
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 117
    .local v10, "ch":C
    if-lt v10, v12, :cond_b

    if-le v10, v11, :cond_a

    goto :goto_5

    .line 115
    .end local v10    # "ch":C
    :cond_a
    add-int/lit8 v14, v9, 0x1

    .end local v9    # "i":I
    .restart local v14    # "i":I
    goto :goto_4

    .line 118
    .end local v14    # "i":I
    .restart local v9    # "i":I
    .restart local v10    # "ch":C
    :cond_b
    :goto_5
    const/4 v6, 0x0

    .line 119
    nop

    .line 123
    .end local v9    # "i":I
    .end local v10    # "ch":C
    :cond_c
    if-eqz v6, :cond_d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v7, :cond_d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v13, :cond_d

    .line 124
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 125
    .local v9, "epochMillis":J
    nop

    .line 127
    invoke-static {v9, v10}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v7

    sget-object v11, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    .line 128
    invoke-virtual {v11}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v11

    .line 126
    invoke-static {v7, v11}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v7

    .line 129
    invoke-virtual {v7}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v7

    .line 130
    .end local v9    # "epochMillis":J
    .local v7, "localTime":Ljava/time/LocalTime;
    nop

    .line 131
    move-object v6, v7

    goto :goto_6

    .end local v7    # "localTime":Ljava/time/LocalTime;
    :cond_d
    invoke-static {v5}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object v6

    .line 134
    .local v6, "localTime":Ljava/time/LocalTime;
    :goto_6
    return-object v6

    .line 135
    .end local v6    # "localTime":Ljava/time/LocalTime;
    :cond_e
    const-class v9, Ljava/time/ZonedDateTime;

    if-ne v2, v9, :cond_11

    .line 136
    sget-object v6, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    if-ne v8, v6, :cond_f

    .line 137
    sget-object v8, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->ISO_FIXED_FORMAT:Ljava/time/format/DateTimeFormatter;

    .line 140
    :cond_f
    if-nez v8, :cond_10

    .line 141
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v13, :cond_10

    .line 142
    new-instance v6, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v6, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 143
    .local v6, "s":Lcom/alibaba/fastjson/parser/JSONScanner;
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    .line 144
    .local v7, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(Ljava/util/TimeZone;)V

    .line 145
    invoke-virtual {v6, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v9

    .line 146
    .local v9, "match":Z
    if-eqz v9, :cond_10

    .line 147
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    .line 148
    .local v10, "date":Ljava/util/Date;
    invoke-virtual {v10}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object v11

    invoke-virtual {v7}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v11

    return-object v11

    .line 154
    .end local v6    # "s":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v7    # "timeZone":Ljava/util/TimeZone;
    .end local v9    # "match":Z
    .end local v10    # "date":Ljava/util/Date;
    :cond_10
    invoke-virtual {v0, v5, v8}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseZonedDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v6

    .line 156
    .local v6, "zonedDateTime":Ljava/time/ZonedDateTime;
    return-object v6

    .line 157
    .end local v6    # "zonedDateTime":Ljava/time/ZonedDateTime;
    :cond_11
    const-class v9, Ljava/time/OffsetDateTime;

    if-ne v2, v9, :cond_12

    .line 158
    invoke-static {v5}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object v6

    .line 160
    .local v6, "offsetDateTime":Ljava/time/OffsetDateTime;
    return-object v6

    .line 161
    .end local v6    # "offsetDateTime":Ljava/time/OffsetDateTime;
    :cond_12
    const-class v9, Ljava/time/OffsetTime;

    if-ne v2, v9, :cond_13

    .line 162
    invoke-static {v5}, Ljava/time/OffsetTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetTime;

    move-result-object v6

    .line 164
    .local v6, "offsetTime":Ljava/time/OffsetTime;
    return-object v6

    .line 165
    .end local v6    # "offsetTime":Ljava/time/OffsetTime;
    :cond_13
    const-class v9, Ljava/time/ZoneId;

    if-ne v2, v9, :cond_14

    .line 166
    invoke-static {v5}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v6

    .line 168
    .local v6, "offsetTime":Ljava/time/ZoneId;
    return-object v6

    .line 169
    .end local v6    # "offsetTime":Ljava/time/ZoneId;
    :cond_14
    const-class v9, Ljava/time/Period;

    if-ne v2, v9, :cond_15

    .line 170
    invoke-static {v5}, Ljava/time/Period;->parse(Ljava/lang/CharSequence;)Ljava/time/Period;

    move-result-object v6

    .line 172
    .local v6, "period":Ljava/time/Period;
    return-object v6

    .line 173
    .end local v6    # "period":Ljava/time/Period;
    :cond_15
    const-class v9, Ljava/time/Duration;

    if-ne v2, v9, :cond_16

    .line 174
    invoke-static {v5}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object v6

    .line 176
    .local v6, "duration":Ljava/time/Duration;
    return-object v6

    .line 177
    .end local v6    # "duration":Ljava/time/Duration;
    :cond_16
    const-class v9, Ljava/time/Instant;

    if-ne v2, v9, :cond_1b

    .line 178
    const/4 v6, 0x1

    .line 179
    .local v6, "digit":Z
    nop

    .restart local v14    # "i":I
    :goto_7
    move v9, v14

    .end local v14    # "i":I
    .local v9, "i":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_19

    .line 180
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 181
    .local v10, "ch":C
    if-lt v10, v12, :cond_18

    if-le v10, v11, :cond_17

    goto :goto_8

    .line 179
    .end local v10    # "ch":C
    :cond_17
    add-int/lit8 v14, v9, 0x1

    .end local v9    # "i":I
    .restart local v14    # "i":I
    goto :goto_7

    .line 182
    .end local v14    # "i":I
    .restart local v9    # "i":I
    .restart local v10    # "ch":C
    :cond_18
    :goto_8
    const/4 v6, 0x0

    .line 183
    nop

    .line 186
    .end local v9    # "i":I
    .end local v10    # "ch":C
    :cond_19
    if-eqz v6, :cond_1a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v7, :cond_1a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v13, :cond_1a

    .line 187
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 188
    .local v9, "epochMillis":J
    invoke-static {v9, v10}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v7

    return-object v7

    .line 191
    .end local v9    # "epochMillis":J
    :cond_1a
    invoke-static {v5}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v7

    .line 193
    .local v7, "instant":Ljava/time/Instant;
    return-object v7

    .line 195
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "digit":Z
    .end local v7    # "instant":Ljava/time/Instant;
    .end local v8    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_1b
    nop

    .line 237
    return-object v6

    .line 195
    :cond_1c
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_24

    .line 196
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v5

    .line 197
    .local v5, "millis":J
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 199
    const-string v7, "unixtime"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 200
    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    goto :goto_9

    .line 201
    :cond_1d
    const-string v7, "yyyyMMddHHmmss"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 202
    const-wide v7, 0x2540be400L

    div-long v7, v5, v7

    long-to-int v7, v7

    .line 203
    .local v7, "yyyy":I
    const-wide/32 v8, 0x5f5e100

    div-long v8, v5, v8

    const-wide/16 v10, 0x64

    rem-long/2addr v8, v10

    long-to-int v8, v8

    .line 204
    .local v8, "MM":I
    const-wide/32 v12, 0xf4240

    div-long v12, v5, v12

    rem-long/2addr v12, v10

    long-to-int v15, v12

    .line 205
    .local v15, "dd":I
    const-wide/16 v12, 0x2710

    div-long v12, v5, v12

    rem-long/2addr v12, v10

    long-to-int v14, v12

    .line 206
    .local v14, "HH":I
    div-long v12, v5, v10

    rem-long/2addr v12, v10

    long-to-int v13, v12

    .line 207
    .local v13, "mm":I
    rem-long v9, v5, v10

    long-to-int v12, v9

    .line 209
    .local v12, "ss":I
    const-class v9, Ljava/time/LocalDateTime;

    if-ne v2, v9, :cond_1e

    .line 210
    move v9, v7

    move v10, v8

    move v11, v15

    move/from16 v16, v12

    move v12, v14

    .end local v12    # "ss":I
    .local v16, "ss":I
    move/from16 v17, v13

    .end local v13    # "mm":I
    .local v17, "mm":I
    move/from16 v18, v14

    move/from16 v14, v16

    .end local v14    # "HH":I
    .local v18, "HH":I
    invoke-static/range {v9 .. v14}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v9

    return-object v9

    .line 214
    .end local v7    # "yyyy":I
    .end local v8    # "MM":I
    .end local v15    # "dd":I
    .end local v16    # "ss":I
    .end local v17    # "mm":I
    .end local v18    # "HH":I
    :cond_1e
    :goto_9
    const-class v7, Ljava/time/LocalDateTime;

    if-ne v2, v7, :cond_1f

    .line 215
    invoke-static {v5, v6}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v7

    sget-object v8, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v8}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v7

    return-object v7

    .line 218
    :cond_1f
    const-class v7, Ljava/time/LocalDate;

    if-ne v2, v7, :cond_20

    .line 219
    invoke-static {v5, v6}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v7

    sget-object v8, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v8}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v7

    return-object v7

    .line 221
    :cond_20
    const-class v7, Ljava/time/LocalTime;

    if-ne v2, v7, :cond_21

    .line 222
    invoke-static {v5, v6}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v7

    sget-object v8, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v8}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v7

    return-object v7

    .line 225
    :cond_21
    const-class v7, Ljava/time/ZonedDateTime;

    if-ne v2, v7, :cond_22

    .line 226
    invoke-static {v5, v6}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v7

    sget-object v8, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v8}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v7

    return-object v7

    .line 229
    :cond_22
    const-class v7, Ljava/time/Instant;

    if-ne v2, v7, :cond_23

    .line 230
    invoke-static {v5, v6}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v7

    return-object v7

    .line 233
    :cond_23
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v7}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v7

    .line 235
    .end local v5    # "millis":J
    :cond_24
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 502
    const/4 v0, 0x4

    return v0
.end method

.method protected parseDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;
    .locals 18
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "formatter"    # Ljava/time/format/DateTimeFormatter;

    move-object/from16 v0, p1

    .line 241
    const/4 v1, 0x0

    const/16 v2, 0x13

    if-nez p2, :cond_10

    .line 242
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    const/16 v6, 0x10

    const/16 v7, 0xd

    const/4 v8, 0x7

    const/16 v9, 0x2e

    const/4 v10, 0x1

    const/4 v11, 0x4

    const/16 v12, 0x3a

    const/16 v13, 0xa

    const/16 v14, 0x2d

    if-ne v4, v2, :cond_b

    .line 243
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 244
    .local v4, "c4":C
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 245
    .local v8, "c7":C
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 246
    .local v15, "c10":C
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 247
    .local v7, "c13":C
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 248
    .local v6, "c16":C
    if-ne v7, v12, :cond_a

    if-ne v6, v12, :cond_a

    .line 249
    if-ne v4, v14, :cond_1

    if-ne v8, v14, :cond_1

    .line 250
    const/16 v9, 0x54

    if-ne v15, v9, :cond_0

    .line 251
    sget-object v3, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .end local v4    # "c4":C
    .end local v6    # "c16":C
    .end local v7    # "c13":C
    .end local v8    # "c7":C
    .end local v15    # "c10":C
    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .local v3, "formatter":Ljava/time/format/DateTimeFormatter;
    :goto_0
    goto/16 :goto_4

    .line 252
    .end local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v4    # "c4":C
    .restart local v6    # "c16":C
    .restart local v7    # "c13":C
    .restart local v8    # "c7":C
    .restart local v15    # "c10":C
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_0
    if-ne v15, v5, :cond_a

    .line 253
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 255
    :cond_1
    const/16 v5, 0x2f

    if-ne v4, v5, :cond_2

    if-ne v8, v5, :cond_2

    .line 256
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 259
    .local v12, "c0":C
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 260
    .local v16, "c1":C
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 261
    .local v1, "c2":C
    const/4 v10, 0x3

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 262
    .local v10, "c3":C
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 263
    .local v2, "c5":C
    if-ne v1, v5, :cond_8

    if-ne v2, v5, :cond_8

    .line 264
    add-int/lit8 v5, v12, -0x30

    mul-int/2addr v5, v13

    add-int/lit8 v9, v16, -0x30

    add-int/2addr v5, v9

    .line 265
    .local v5, "v0":I
    add-int/lit8 v9, v10, -0x30

    mul-int/2addr v9, v13

    add-int/lit8 v13, v4, -0x30

    add-int/2addr v9, v13

    .line 266
    .local v9, "v1":I
    const/16 v13, 0xc

    if-le v5, v13, :cond_3

    .line 267
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    .end local v5    # "v0":I
    .end local v9    # "v1":I
    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    :goto_1
    goto :goto_3

    .line 268
    .end local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v5    # "v0":I
    .restart local v9    # "v1":I
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_3
    if-le v9, v13, :cond_4

    .line 269
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    goto :goto_1

    .line 271
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    .line 273
    .local v13, "country":Ljava/lang/String;
    const-string v14, "US"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 274
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    goto :goto_1

    .line 275
    :cond_5
    const-string v14, "BR"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "AU"

    .line 276
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    goto :goto_2

    .line 280
    .end local v5    # "v0":I
    .end local v9    # "v1":I
    .end local v13    # "country":Ljava/lang/String;
    :cond_6
    move-object/from16 v3, p2

    goto :goto_3

    .line 277
    .restart local v5    # "v0":I
    .restart local v9    # "v1":I
    .restart local v13    # "country":Ljava/lang/String;
    :cond_7
    :goto_2
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    .line 280
    .end local v5    # "v0":I
    .end local v9    # "v1":I
    .end local v13    # "country":Ljava/lang/String;
    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    :goto_3
    goto :goto_4

    .end local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_8
    if-ne v1, v9, :cond_9

    if-ne v2, v9, :cond_9

    .line 281
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 282
    :cond_9
    if-ne v1, v14, :cond_a

    if-ne v2, v14, :cond_a

    .line 283
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

    .line 287
    .end local v2    # "c5":C
    .end local v4    # "c4":C
    .end local v6    # "c16":C
    .end local v7    # "c13":C
    .end local v8    # "c7":C
    .end local v10    # "c3":C
    .end local v12    # "c0":C
    .end local v15    # "c10":C
    .end local v16    # "c1":C
    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v3, v1

    goto :goto_4

    .end local v1    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_a
    move-object/from16 v3, p2

    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    :goto_4
    goto :goto_5

    .end local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_c

    .line 288
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 289
    .local v1, "c4":C
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 290
    .local v2, "c7":C
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 291
    .local v4, "c10":C
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 292
    .restart local v7    # "c13":C
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 293
    .restart local v6    # "c16":C
    const/16 v8, 0x13

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 295
    .local v10, "c19":C
    if-ne v7, v12, :cond_c

    if-ne v6, v12, :cond_c

    if-ne v1, v14, :cond_c

    if-ne v2, v14, :cond_c

    if-ne v4, v5, :cond_c

    if-ne v10, v9, :cond_c

    .line 302
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter_23:Ljava/time/format/DateTimeFormatter;

    .line 306
    .end local v2    # "c7":C
    .end local v4    # "c10":C
    .end local v6    # "c16":C
    .end local v7    # "c13":C
    .end local v10    # "c19":C
    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v3, v1

    goto :goto_5

    .end local v1    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_c
    move-object/from16 v3, p2

    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x11

    if-lt v1, v2, :cond_f

    .line 307
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 308
    .local v1, "c4":C
    const/16 v2, 0x5e74

    if-ne v1, v2, :cond_e

    .line 309
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x79d2

    if-ne v2, v4, :cond_d

    .line 310
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

    .end local v1    # "c4":C
    .end local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    .local v2, "formatter":Ljava/time/format/DateTimeFormatter;
    :goto_6
    goto :goto_7

    .line 312
    .end local v2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v1    # "c4":C
    .restart local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_d
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

    goto :goto_6

    .line 314
    :cond_e
    const v2, 0xb144

    if-ne v1, v2, :cond_f

    .line 315
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

    .line 320
    .end local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, v1

    goto :goto_7

    .end local v1    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_f
    move-object v2, v3

    goto :goto_7

    .end local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_10
    move-object/from16 v2, p2

    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :goto_7
    if-nez v2, :cond_15

    .line 321
    new-instance v1, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 322
    .local v1, "dateScanner":Lcom/alibaba/fastjson/parser/JSONScanner;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 323
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object v3

    .line 324
    .local v3, "instant":Ljava/time/Instant;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v4

    return-object v4

    .line 327
    .end local v3    # "instant":Ljava/time/Instant;
    :cond_11
    const/4 v4, 0x1

    .line 328
    .local v4, "digit":Z
    nop

    .local v3, "i":I
    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_14

    .line 329
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 330
    .local v5, "ch":C
    const/16 v6, 0x30

    if-lt v5, v6, :cond_13

    const/16 v6, 0x39

    if-le v5, v6, :cond_12

    goto :goto_9

    .line 328
    .end local v5    # "ch":C
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 331
    .restart local v5    # "ch":C
    :cond_13
    :goto_9
    const/4 v4, 0x0

    .line 332
    nop

    .line 335
    .end local v3    # "i":I
    .end local v5    # "ch":C
    :cond_14
    if-eqz v4, :cond_15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x8

    if-le v3, v5, :cond_15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x13

    if-ge v3, v5, :cond_15

    .line 336
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 337
    .local v5, "epochMillis":J
    invoke-static {v5, v6}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    sget-object v7, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v7}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v7

    invoke-static {v3, v7}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v3

    return-object v3

    .line 341
    .end local v1    # "dateScanner":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v4    # "digit":Z
    .end local v5    # "epochMillis":J
    :cond_15
    if-nez v2, :cond_16

    .line 342
    invoke-static/range {p1 .. p1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_a

    .line 343
    :cond_16
    invoke-static {v0, v2}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 341
    :goto_a
    return-object v1
.end method

.method protected parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;
    .locals 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "formatter"    # Ljava/time/format/DateTimeFormatter;

    move-object/from16 v0, p1

    .line 347
    if-nez p3, :cond_f

    .line 348
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 349
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d8:Ljava/time/format/DateTimeFormatter;

    .end local p3    # "formatter":Ljava/time/format/DateTimeFormatter;
    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    goto :goto_0

    .line 352
    .end local v1    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p3    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_0
    move-object/from16 v1, p3

    .end local p3    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v1    # "formatter":Ljava/time/format/DateTimeFormatter;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/16 v6, 0xa

    if-ne v2, v6, :cond_9

    .line 353
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 354
    .local v2, "c4":C
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 355
    .local v7, "c7":C
    const/16 v8, 0x2f

    if-ne v2, v8, :cond_1

    if-ne v7, v8, :cond_1

    .line 356
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

    .line 359
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 360
    .local v9, "c0":C
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 361
    .local v10, "c1":C
    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 362
    .local v11, "c2":C
    const/4 v12, 0x3

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 363
    .local v12, "c3":C
    const/4 v13, 0x5

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 364
    .local v13, "c5":C
    if-ne v11, v8, :cond_7

    if-ne v13, v8, :cond_7

    .line 365
    add-int/lit8 v8, v9, -0x30

    mul-int/2addr v8, v6

    add-int/lit8 v14, v10, -0x30

    add-int/2addr v8, v14

    .line 366
    .local v8, "v0":I
    add-int/lit8 v14, v12, -0x30

    mul-int/2addr v14, v6

    add-int/lit8 v6, v2, -0x30

    add-int/2addr v14, v6

    .line 367
    .local v14, "v1":I
    const/16 v6, 0xc

    if-le v8, v6, :cond_2

    .line 368
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    goto :goto_1

    .line 369
    :cond_2
    if-le v14, v6, :cond_3

    .line 370
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    goto :goto_1

    .line 372
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    .line 374
    .local v6, "country":Ljava/lang/String;
    const-string v15, "US"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 375
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    goto :goto_1

    .line 376
    :cond_4
    const-string v15, "BR"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    const-string v15, "AU"

    .line 377
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 378
    :cond_5
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    .line 381
    .end local v6    # "country":Ljava/lang/String;
    .end local v8    # "v0":I
    .end local v14    # "v1":I
    :cond_6
    :goto_1
    goto :goto_2

    :cond_7
    const/16 v6, 0x2e

    if-ne v11, v6, :cond_8

    if-ne v13, v6, :cond_8

    .line 382
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_de:Ljava/time/format/DateTimeFormatter;

    goto :goto_2

    .line 383
    :cond_8
    const/16 v6, 0x2d

    if-ne v11, v6, :cond_9

    if-ne v13, v6, :cond_9

    .line 384
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_in:Ljava/time/format/DateTimeFormatter;

    .line 388
    .end local v2    # "c4":C
    .end local v7    # "c7":C
    .end local v9    # "c0":C
    .end local v10    # "c1":C
    .end local v11    # "c2":C
    .end local v12    # "c3":C
    .end local v13    # "c5":C
    :cond_9
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v6, 0x9

    if-lt v2, v6, :cond_b

    .line 389
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 390
    .restart local v2    # "c4":C
    const/16 v5, 0x5e74

    if-ne v2, v5, :cond_a

    .line 391
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

    goto :goto_3

    .line 392
    :cond_a
    const v5, 0xb144

    if-ne v2, v5, :cond_b

    .line 393
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

    .line 397
    .end local v2    # "c4":C
    :cond_b
    :goto_3
    const/4 v2, 0x1

    .line 398
    .local v2, "digit":Z
    nop

    .local v4, "i":I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_e

    .line 399
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 400
    .local v5, "ch":C
    const/16 v6, 0x30

    if-lt v5, v6, :cond_d

    const/16 v6, 0x39

    if-le v5, v6, :cond_c

    goto :goto_5

    .line 398
    .end local v5    # "ch":C
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 401
    .restart local v5    # "ch":C
    :cond_d
    :goto_5
    const/4 v2, 0x0

    .line 402
    nop

    .line 405
    .end local v4    # "i":I
    .end local v5    # "ch":C
    :cond_e
    if-eqz v2, :cond_10

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_10

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x13

    if-ge v3, v4, :cond_10

    .line 406
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 407
    .local v3, "epochMillis":J
    nop

    .line 409
    invoke-static {v3, v4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v5

    sget-object v6, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    .line 410
    invoke-virtual {v6}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v6

    .line 408
    invoke-static {v5, v6}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v5

    .line 411
    invoke-virtual {v5}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v5

    .line 407
    return-object v5

    .line 415
    .end local v1    # "formatter":Ljava/time/format/DateTimeFormatter;
    .end local v2    # "digit":Z
    .end local v3    # "epochMillis":J
    .restart local p3    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_f
    move-object/from16 v1, p3

    .end local p3    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v1    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_10
    if-nez v1, :cond_11

    .line 416
    invoke-static/range {p1 .. p1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v2

    goto :goto_6

    .line 417
    :cond_11
    invoke-static {v0, v1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v2

    .line 415
    :goto_6
    return-object v2
.end method

.method protected parseZonedDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;
    .locals 18
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "formatter"    # Ljava/time/format/DateTimeFormatter;

    move-object/from16 v0, p1

    .line 421
    if-nez p2, :cond_11

    .line 422
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/16 v5, 0x13

    const/4 v6, 0x1

    if-ne v2, v5, :cond_a

    .line 423
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 424
    .local v2, "c4":C
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 425
    .local v7, "c7":C
    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 426
    .local v9, "c10":C
    const/16 v10, 0xd

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 427
    .local v10, "c13":C
    const/16 v11, 0x10

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 428
    .local v11, "c16":C
    const/16 v12, 0x3a

    if-ne v10, v12, :cond_a

    if-ne v11, v12, :cond_a

    .line 429
    const/16 v12, 0x2d

    if-ne v2, v12, :cond_1

    if-ne v7, v12, :cond_1

    .line 430
    const/16 v8, 0x54

    if-ne v9, v8, :cond_0

    .line 431
    sget-object v1, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .end local v2    # "c4":C
    .end local v7    # "c7":C
    .end local v9    # "c10":C
    .end local v10    # "c13":C
    .end local v11    # "c16":C
    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    :goto_0
    goto/16 :goto_4

    .line 432
    .end local v1    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v2    # "c4":C
    .restart local v7    # "c7":C
    .restart local v9    # "c10":C
    .restart local v10    # "c13":C
    .restart local v11    # "c16":C
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_0
    const/16 v8, 0x20

    if-ne v9, v8, :cond_a

    .line 433
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 435
    :cond_1
    const/16 v13, 0x2f

    if-ne v2, v13, :cond_2

    if-ne v7, v13, :cond_2

    .line 436
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 438
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 439
    .local v14, "c0":C
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 440
    .local v15, "c1":C
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 441
    .local v3, "c2":C
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 442
    .local v5, "c3":C
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 443
    .local v6, "c5":C
    if-ne v3, v13, :cond_8

    if-ne v6, v13, :cond_8

    .line 444
    add-int/lit8 v12, v14, -0x30

    mul-int/2addr v12, v8

    add-int/lit8 v13, v15, -0x30

    add-int/2addr v12, v13

    .line 445
    .local v12, "v0":I
    add-int/lit8 v13, v5, -0x30

    mul-int/2addr v13, v8

    add-int/lit8 v8, v2, -0x30

    add-int/2addr v13, v8

    .line 446
    .local v13, "v1":I
    const/16 v8, 0xc

    if-le v12, v8, :cond_3

    .line 447
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    .end local v12    # "v0":I
    .end local v13    # "v1":I
    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v1    # "formatter":Ljava/time/format/DateTimeFormatter;
    :goto_1
    goto :goto_3

    .line 448
    .end local v1    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v12    # "v0":I
    .restart local v13    # "v1":I
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_3
    if-le v13, v8, :cond_4

    .line 449
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    goto :goto_1

    .line 451
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    .line 453
    .local v8, "country":Ljava/lang/String;
    const-string v4, "US"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 454
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    goto :goto_1

    .line 455
    :cond_5
    const-string v4, "BR"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "AU"

    .line 456
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    .line 460
    .end local v8    # "country":Ljava/lang/String;
    .end local v12    # "v0":I
    .end local v13    # "v1":I
    :cond_6
    move-object/from16 v1, p2

    goto :goto_3

    .line 457
    .restart local v8    # "country":Ljava/lang/String;
    .restart local v12    # "v0":I
    .restart local v13    # "v1":I
    :cond_7
    :goto_2
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    .line 460
    .end local v8    # "country":Ljava/lang/String;
    .end local v12    # "v0":I
    .end local v13    # "v1":I
    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v1    # "formatter":Ljava/time/format/DateTimeFormatter;
    :goto_3
    goto :goto_4

    .end local v1    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_8
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_9

    if-ne v6, v4, :cond_9

    .line 461
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 462
    :cond_9
    if-ne v3, v12, :cond_a

    if-ne v6, v12, :cond_a

    .line 463
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

    .end local v2    # "c4":C
    .end local v3    # "c2":C
    .end local v5    # "c3":C
    .end local v6    # "c5":C
    .end local v7    # "c7":C
    .end local v9    # "c10":C
    .end local v10    # "c13":C
    .end local v11    # "c16":C
    .end local v14    # "c0":C
    .end local v15    # "c1":C
    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v1    # "formatter":Ljava/time/format/DateTimeFormatter;
    goto :goto_4

    .line 469
    .end local v1    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_a
    move-object/from16 v1, p2

    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v1    # "formatter":Ljava/time/format/DateTimeFormatter;
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x11

    if-lt v2, v3, :cond_d

    .line 470
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 471
    .restart local v2    # "c4":C
    const/16 v3, 0x5e74

    if-ne v2, v3, :cond_c

    .line 472
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x79d2

    if-ne v3, v4, :cond_b

    .line 473
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

    goto :goto_5

    .line 475
    :cond_b
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

    goto :goto_5

    .line 477
    :cond_c
    const v3, 0xb144

    if-ne v2, v3, :cond_d

    .line 478
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

    .line 482
    .end local v2    # "c4":C
    :cond_d
    :goto_5
    const/4 v2, 0x1

    .line 483
    .local v2, "digit":Z
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_6
    move/from16 v3, v16

    .end local v16    # "i":I
    .local v3, "i":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_10

    .line 484
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 485
    .local v4, "ch":C
    const/16 v5, 0x30

    if-lt v4, v5, :cond_f

    const/16 v5, 0x39

    if-le v4, v5, :cond_e

    goto :goto_7

    .line 483
    .end local v4    # "ch":C
    :cond_e
    add-int/lit8 v16, v3, 0x1

    .end local v3    # "i":I
    .restart local v16    # "i":I
    goto :goto_6

    .line 486
    .end local v16    # "i":I
    .restart local v3    # "i":I
    .restart local v4    # "ch":C
    :cond_f
    :goto_7
    const/4 v2, 0x0

    .line 487
    nop

    .line 490
    .end local v3    # "i":I
    .end local v4    # "ch":C
    :cond_10
    if-eqz v2, :cond_12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x13

    if-ge v3, v4, :cond_12

    .line 491
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 492
    .local v3, "epochMillis":J
    invoke-static {v3, v4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v5

    sget-object v6, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v6}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v5

    return-object v5

    .line 496
    .end local v1    # "formatter":Ljava/time/format/DateTimeFormatter;
    .end local v2    # "digit":Z
    .end local v3    # "epochMillis":J
    .restart local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_11
    move-object/from16 v1, p2

    .end local p2    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v1    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_12
    if-nez v1, :cond_13

    .line 497
    invoke-static/range {p1 .. p1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v2

    goto :goto_8

    .line 498
    :cond_13
    invoke-static {v0, v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v2

    .line 496
    :goto_8
    return-object v2
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/BeanContext;)V
    .locals 3
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "context"    # Lcom/alibaba/fastjson/serializer/BeanContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 550
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 551
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/BeanContext;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    check-cast v2, Ljava/time/temporal/TemporalAccessor;

    invoke-direct {p0, v0, v2, v1}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 6
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 508
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_0

    .line 509
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto/16 :goto_3

    .line 511
    :cond_0
    if-nez p4, :cond_1

    .line 512
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    .line 515
    :cond_1
    const-class v1, Ljava/time/LocalDateTime;

    if-ne p4, v1, :cond_9

    .line 516
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    .line 517
    .local v1, "mask":I
    move-object v2, p2

    check-cast v2, Ljava/time/LocalDateTime;

    .line 518
    .local v2, "dateTime":Ljava/time/LocalDateTime;
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormatPattern()Ljava/lang/String;

    move-result-object v3

    .line 520
    .local v3, "format":Ljava/lang/String;
    if-nez v3, :cond_6

    .line 521
    and-int v4, p5, v1

    if-nez v4, :cond_5

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 524
    :cond_2
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getNano()I

    move-result v4

    .line 525
    .local v4, "nano":I
    if-nez v4, :cond_3

    .line 526
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    goto :goto_1

    .line 527
    :cond_3
    const v5, 0xf4240

    rem-int v5, v4, v5

    if-nez v5, :cond_4

    .line 528
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    goto :goto_1

    .line 530
    :cond_4
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSSSS"

    .end local v4    # "nano":I
    goto :goto_1

    .line 522
    :cond_5
    :goto_0
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 535
    :cond_6
    :goto_1
    if-eqz v3, :cond_7

    .line 536
    invoke-direct {p0, v0, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    goto :goto_2

    .line 537
    :cond_7
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 539
    sget-object v4, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v4}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    goto :goto_2

    .line 541
    :cond_8
    sget-object v4, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v4}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 543
    .end local v1    # "mask":I
    .end local v2    # "dateTime":Ljava/time/LocalDateTime;
    .end local v3    # "format":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 544
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 547
    :goto_3
    return-void
.end method
