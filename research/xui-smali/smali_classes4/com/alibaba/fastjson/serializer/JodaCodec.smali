.class public Lcom/alibaba/fastjson/serializer/JodaCodec;
.super Ljava/lang/Object;
.source "JodaCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/serializer/ContextObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field private static final ISO_FIXED_FORMAT:Lorg/joda/time/format/DateTimeFormatter;

.field private static final defaultFormatter:Lorg/joda/time/format/DateTimeFormatter;

.field private static final defaultFormatter_23:Lorg/joda/time/format/DateTimeFormatter;

.field private static final defaultPatttern:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static final formatter_d10_cn:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_d10_de:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_d10_eur:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_d10_in:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_d10_kr:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_d10_tw:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_d10_us:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_d8:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_dt19_cn:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_dt19_cn_1:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_dt19_de:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_dt19_eur:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_dt19_in:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_dt19_kr:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_dt19_tw:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_dt19_us:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_iso8601:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_iso8601_pattern:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss"

.field private static final formatter_iso8601_pattern_23:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

.field private static final formatter_iso8601_pattern_29:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSSSS"

.field public static final instance:Lcom/alibaba/fastjson/serializer/JodaCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/alibaba/fastjson/serializer/JodaCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/JodaCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->instance:Lcom/alibaba/fastjson/serializer/JodaCodec;

    .line 21
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->defaultFormatter:Lorg/joda/time/format/DateTimeFormatter;

    .line 22
    const-string v0, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->defaultFormatter_23:Lorg/joda/time/format/DateTimeFormatter;

    .line 23
    const-string v0, "yyyy/MM/dd HH:mm:ss"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_tw:Lorg/joda/time/format/DateTimeFormatter;

    .line 24
    const-string v0, "yyyy\u5e74M\u6708d\u65e5 HH:mm:ss"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_cn:Lorg/joda/time/format/DateTimeFormatter;

    .line 25
    const-string v0, "yyyy\u5e74M\u6708d\u65e5 H\u65f6m\u5206s\u79d2"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_cn_1:Lorg/joda/time/format/DateTimeFormatter;

    .line 26
    const-string v0, "yyyy\ub144M\uc6d4d\uc77c HH:mm:ss"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_kr:Lorg/joda/time/format/DateTimeFormatter;

    .line 27
    const-string v0, "MM/dd/yyyy HH:mm:ss"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_us:Lorg/joda/time/format/DateTimeFormatter;

    .line 28
    const-string v0, "dd/MM/yyyy HH:mm:ss"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_eur:Lorg/joda/time/format/DateTimeFormatter;

    .line 29
    const-string v0, "dd.MM.yyyy HH:mm:ss"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_de:Lorg/joda/time/format/DateTimeFormatter;

    .line 30
    const-string v0, "dd-MM-yyyy HH:mm:ss"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_in:Lorg/joda/time/format/DateTimeFormatter;

    .line 32
    const-string v0, "yyyyMMdd"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d8:Lorg/joda/time/format/DateTimeFormatter;

    .line 33
    const-string v0, "yyyy/MM/dd"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_tw:Lorg/joda/time/format/DateTimeFormatter;

    .line 34
    const-string v0, "yyyy\u5e74M\u6708d\u65e5"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_cn:Lorg/joda/time/format/DateTimeFormatter;

    .line 35
    const-string v0, "yyyy\ub144M\uc6d4d\uc77c"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_kr:Lorg/joda/time/format/DateTimeFormatter;

    .line 36
    const-string v0, "MM/dd/yyyy"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_us:Lorg/joda/time/format/DateTimeFormatter;

    .line 37
    const-string v0, "dd/MM/yyyy"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_eur:Lorg/joda/time/format/DateTimeFormatter;

    .line 38
    const-string v0, "dd.MM.yyyy"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_de:Lorg/joda/time/format/DateTimeFormatter;

    .line 39
    const-string v0, "dd-MM-yyyy"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_in:Lorg/joda/time/format/DateTimeFormatter;

    .line 41
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 42
    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatter;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->ISO_FIXED_FORMAT:Lorg/joda/time/format/DateTimeFormatter;

    .line 47
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_iso8601:Lorg/joda/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lorg/joda/time/ReadablePartial;Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .param p2, "object"    # Lorg/joda/time/ReadablePartial;
    .param p3, "format"    # Ljava/lang/String;

    .line 476
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    sget-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_iso8601:Lorg/joda/time/format/DateTimeFormatter;

    .local v0, "formatter":Lorg/joda/time/format/DateTimeFormatter;
    goto :goto_0

    .line 479
    .end local v0    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :cond_0
    invoke-static {p3}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .line 482
    .restart local v0    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :goto_0
    invoke-virtual {v0, p2}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 484
    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 51
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/serializer/JodaCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 8
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

    .line 55
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 56
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    .line 57
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 58
    return-object v2

    .line 61
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_16

    .line 62
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "text":Ljava/lang/String;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 65
    const/4 v4, 0x0

    .line 66
    .local v4, "formatter":Lorg/joda/time/format/DateTimeFormatter;
    if-eqz p4, :cond_2

    .line 67
    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    sget-object v4, Lcom/alibaba/fastjson/serializer/JodaCodec;->defaultFormatter:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {p4}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v4

    .line 74
    :cond_2
    :goto_0
    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 75
    return-object v2

    .line 78
    :cond_3
    const-class v5, Lorg/joda/time/LocalDateTime;

    if-ne p2, v5, :cond_6

    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0xa

    if-eq v2, v5, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_4

    goto :goto_1

    .line 84
    :cond_4
    invoke-virtual {p0, v1, v4}, Lcom/alibaba/fastjson/serializer/JodaCodec;->parseDateTime(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDateTime;

    move-result-object v2

    goto :goto_2

    .line 81
    :cond_5
    :goto_1
    invoke-virtual {p0, v1, p4, v4}, Lcom/alibaba/fastjson/serializer/JodaCodec;->parseLocalDate(Ljava/lang/String;Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDate;

    move-result-object v2

    .line 82
    .local v2, "localDate":Lorg/joda/time/LocalDate;
    sget-object v3, Lorg/joda/time/LocalTime;->MIDNIGHT:Lorg/joda/time/LocalTime;

    invoke-virtual {v2, v3}, Lorg/joda/time/LocalDate;->toLocalDateTime(Lorg/joda/time/LocalTime;)Lorg/joda/time/LocalDateTime;

    move-result-object v2

    .line 83
    .local v2, "localDateTime":Lorg/joda/time/LocalDateTime;
    nop

    .line 84
    :goto_2
    nop

    .line 86
    return-object v2

    .line 87
    .end local v2    # "localDateTime":Lorg/joda/time/LocalDateTime;
    :cond_6
    const-class v5, Lorg/joda/time/LocalDate;

    const/16 v6, 0x17

    if-ne p2, v5, :cond_8

    .line 89
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_7

    .line 90
    invoke-static {v1}, Lorg/joda/time/LocalDateTime;->parse(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;

    move-result-object v2

    .line 91
    .restart local v2    # "localDateTime":Lorg/joda/time/LocalDateTime;
    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->toLocalDate()Lorg/joda/time/LocalDate;

    move-result-object v2

    .line 92
    .local v2, "localDate":Lorg/joda/time/LocalDate;
    goto :goto_3

    .line 93
    .end local v2    # "localDate":Lorg/joda/time/LocalDate;
    :cond_7
    invoke-virtual {p0, v1, p4, v4}, Lcom/alibaba/fastjson/serializer/JodaCodec;->parseLocalDate(Ljava/lang/String;Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDate;

    move-result-object v2

    .line 96
    .restart local v2    # "localDate":Lorg/joda/time/LocalDate;
    :goto_3
    return-object v2

    .line 97
    .end local v2    # "localDate":Lorg/joda/time/LocalDate;
    :cond_8
    const-class v5, Lorg/joda/time/LocalTime;

    if-ne p2, v5, :cond_a

    .line 99
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_9

    .line 100
    invoke-static {v1}, Lorg/joda/time/LocalDateTime;->parse(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;

    move-result-object v2

    .line 101
    .local v2, "localDateTime":Lorg/joda/time/LocalDateTime;
    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->toLocalTime()Lorg/joda/time/LocalTime;

    move-result-object v2

    .line 102
    .local v2, "localDate":Lorg/joda/time/LocalTime;
    goto :goto_4

    .line 103
    .end local v2    # "localDate":Lorg/joda/time/LocalTime;
    :cond_9
    invoke-static {v1}, Lorg/joda/time/LocalTime;->parse(Ljava/lang/String;)Lorg/joda/time/LocalTime;

    move-result-object v2

    .line 105
    .restart local v2    # "localDate":Lorg/joda/time/LocalTime;
    :goto_4
    return-object v2

    .line 106
    .end local v2    # "localDate":Lorg/joda/time/LocalTime;
    :cond_a
    const-class v5, Lorg/joda/time/DateTime;

    if-ne p2, v5, :cond_c

    .line 107
    sget-object v2, Lcom/alibaba/fastjson/serializer/JodaCodec;->defaultFormatter:Lorg/joda/time/format/DateTimeFormatter;

    if-ne v4, v2, :cond_b

    .line 108
    sget-object v4, Lcom/alibaba/fastjson/serializer/JodaCodec;->ISO_FIXED_FORMAT:Lorg/joda/time/format/DateTimeFormatter;

    .line 111
    :cond_b
    invoke-virtual {p0, v1, v4}, Lcom/alibaba/fastjson/serializer/JodaCodec;->parseZonedDateTime(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/DateTime;

    move-result-object v2

    .line 113
    .local v2, "zonedDateTime":Lorg/joda/time/DateTime;
    return-object v2

    .line 114
    .end local v2    # "zonedDateTime":Lorg/joda/time/DateTime;
    :cond_c
    const-class v5, Lorg/joda/time/DateTimeZone;

    if-ne p2, v5, :cond_d

    .line 115
    invoke-static {v1}, Lorg/joda/time/DateTimeZone;->forID(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object v2

    .line 117
    .local v2, "offsetTime":Lorg/joda/time/DateTimeZone;
    return-object v2

    .line 118
    .end local v2    # "offsetTime":Lorg/joda/time/DateTimeZone;
    :cond_d
    const-class v5, Lorg/joda/time/Period;

    if-ne p2, v5, :cond_e

    .line 119
    invoke-static {v1}, Lorg/joda/time/Period;->parse(Ljava/lang/String;)Lorg/joda/time/Period;

    move-result-object v2

    .line 121
    .local v2, "period":Lorg/joda/time/Period;
    return-object v2

    .line 122
    .end local v2    # "period":Lorg/joda/time/Period;
    :cond_e
    const-class v5, Lorg/joda/time/Duration;

    if-ne p2, v5, :cond_f

    .line 123
    invoke-static {v1}, Lorg/joda/time/Duration;->parse(Ljava/lang/String;)Lorg/joda/time/Duration;

    move-result-object v2

    .line 125
    .local v2, "duration":Lorg/joda/time/Duration;
    return-object v2

    .line 126
    .end local v2    # "duration":Lorg/joda/time/Duration;
    :cond_f
    const-class v5, Lorg/joda/time/Instant;

    if-ne p2, v5, :cond_14

    .line 127
    const/4 v2, 0x1

    .line 128
    .local v2, "digit":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_12

    .line 129
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 130
    .local v6, "ch":C
    const/16 v7, 0x30

    if-lt v6, v7, :cond_11

    const/16 v7, 0x39

    if-le v6, v7, :cond_10

    goto :goto_6

    .line 128
    .end local v6    # "ch":C
    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 131
    .restart local v6    # "ch":C
    :cond_11
    :goto_6
    const/4 v2, 0x0

    .line 132
    nop

    .line 135
    .end local v5    # "i":I
    .end local v6    # "ch":C
    :cond_12
    if-eqz v2, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x13

    if-ge v3, v5, :cond_13

    .line 136
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 137
    .local v5, "epochMillis":J
    new-instance v3, Lorg/joda/time/Instant;

    invoke-direct {v3, v5, v6}, Lorg/joda/time/Instant;-><init>(J)V

    return-object v3

    .line 140
    .end local v5    # "epochMillis":J
    :cond_13
    invoke-static {v1}, Lorg/joda/time/Instant;->parse(Ljava/lang/String;)Lorg/joda/time/Instant;

    move-result-object v3

    .line 142
    .local v3, "instant":Lorg/joda/time/Instant;
    return-object v3

    .line 143
    .end local v2    # "digit":Z
    .end local v3    # "instant":Lorg/joda/time/Instant;
    :cond_14
    const-class v3, Lorg/joda/time/format/DateTimeFormatter;

    if-ne p2, v3, :cond_15

    .line 144
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    return-object v2

    .line 146
    .end local v1    # "text":Ljava/lang/String;
    .end local v4    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :cond_15
    nop

    .line 182
    return-object v2

    .line 146
    :cond_16
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1d

    .line 147
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v1

    .line 148
    .local v1, "millis":J
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 150
    sget-object v3, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    .line 151
    .local v3, "timeZone":Ljava/util/TimeZone;
    if-nez v3, :cond_17

    .line 152
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 155
    :cond_17
    const-class v4, Lorg/joda/time/DateTime;

    if-ne p2, v4, :cond_18

    .line 156
    new-instance v4, Lorg/joda/time/DateTime;

    invoke-static {v3}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v5

    invoke-direct {v4, v1, v2, v5}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    return-object v4

    .line 159
    :cond_18
    new-instance v4, Lorg/joda/time/LocalDateTime;

    invoke-static {v3}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v5

    invoke-direct {v4, v1, v2, v5}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    .line 160
    .local v4, "localDateTime":Lorg/joda/time/LocalDateTime;
    const-class v5, Lorg/joda/time/LocalDateTime;

    if-ne p2, v5, :cond_19

    .line 161
    return-object v4

    .line 164
    :cond_19
    const-class v5, Lorg/joda/time/LocalDate;

    if-ne p2, v5, :cond_1a

    .line 165
    invoke-virtual {v4}, Lorg/joda/time/LocalDateTime;->toLocalDate()Lorg/joda/time/LocalDate;

    move-result-object v5

    return-object v5

    .line 168
    :cond_1a
    const-class v5, Lorg/joda/time/LocalTime;

    if-ne p2, v5, :cond_1b

    .line 169
    invoke-virtual {v4}, Lorg/joda/time/LocalDateTime;->toLocalTime()Lorg/joda/time/LocalTime;

    move-result-object v5

    return-object v5

    .line 172
    :cond_1b
    const-class v5, Lorg/joda/time/Instant;

    if-ne p2, v5, :cond_1c

    .line 173
    new-instance v5, Lorg/joda/time/Instant;

    invoke-direct {v5, v1, v2}, Lorg/joda/time/Instant;-><init>(J)V

    .line 175
    .local v5, "instant":Lorg/joda/time/Instant;
    return-object v5

    .line 178
    .end local v5    # "instant":Lorg/joda/time/Instant;
    :cond_1c
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    .line 180
    .end local v1    # "millis":J
    .end local v3    # "timeZone":Ljava/util/TimeZone;
    .end local v4    # "localDateTime":Lorg/joda/time/LocalDateTime;
    :cond_1d
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 423
    const/4 v0, 0x4

    return v0
.end method

.method protected parseDateTime(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDateTime;
    .locals 19
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "formatter"    # Lorg/joda/time/format/DateTimeFormatter;

    move-object/from16 v0, p1

    .line 186
    if-nez p2, :cond_13

    .line 187
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/16 v5, 0x10

    const/16 v6, 0xd

    const/4 v7, 0x7

    const/16 v8, 0x2e

    const/4 v9, 0x1

    const/4 v10, 0x4

    const/16 v11, 0x13

    const/16 v12, 0x3a

    const/16 v13, 0xa

    const/16 v14, 0x2d

    if-ne v2, v11, :cond_b

    .line 188
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 189
    .local v2, "c4":C
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 190
    .local v7, "c7":C
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 191
    .local v15, "c10":C
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 192
    .local v6, "c13":C
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 193
    .local v5, "c16":C
    if-ne v6, v12, :cond_a

    if-ne v5, v12, :cond_a

    .line 194
    if-ne v2, v14, :cond_1

    if-ne v7, v14, :cond_1

    .line 195
    const/16 v8, 0x54

    if-ne v15, v8, :cond_0

    .line 196
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_iso8601:Lorg/joda/time/format/DateTimeFormatter;

    .end local v2    # "c4":C
    .end local v5    # "c16":C
    .end local v6    # "c13":C
    .end local v7    # "c7":C
    .end local v15    # "c10":C
    .end local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .local v1, "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :goto_0
    goto/16 :goto_4

    .line 197
    .end local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local v2    # "c4":C
    .restart local v5    # "c16":C
    .restart local v6    # "c13":C
    .restart local v7    # "c7":C
    .restart local v15    # "c10":C
    .restart local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :cond_0
    if-ne v15, v4, :cond_a

    .line 198
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->defaultFormatter:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_0

    .line 200
    :cond_1
    const/16 v4, 0x2f

    if-ne v2, v4, :cond_2

    if-ne v7, v4, :cond_2

    .line 201
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_tw:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 204
    .local v12, "c0":C
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 205
    .local v16, "c1":C
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 206
    .local v3, "c2":C
    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 207
    .local v9, "c3":C
    const/4 v11, 0x5

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 208
    .local v11, "c5":C
    if-ne v3, v4, :cond_8

    if-ne v11, v4, :cond_8

    .line 209
    add-int/lit8 v4, v12, -0x30

    mul-int/2addr v4, v13

    add-int/lit8 v8, v16, -0x30

    add-int/2addr v4, v8

    .line 210
    .local v4, "v0":I
    add-int/lit8 v8, v9, -0x30

    mul-int/2addr v8, v13

    add-int/lit8 v13, v2, -0x30

    add-int/2addr v8, v13

    .line 211
    .local v8, "v1":I
    const/16 v13, 0xc

    if-le v4, v13, :cond_3

    .line 212
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_eur:Lorg/joda/time/format/DateTimeFormatter;

    .end local v4    # "v0":I
    .end local v8    # "v1":I
    .end local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :goto_1
    goto :goto_3

    .line 213
    .end local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local v4    # "v0":I
    .restart local v8    # "v1":I
    .restart local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :cond_3
    if-le v8, v13, :cond_4

    .line 214
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_us:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_1

    .line 216
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    .line 218
    .local v13, "country":Ljava/lang/String;
    const-string v14, "US"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 219
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_us:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_1

    .line 220
    :cond_5
    const-string v14, "BR"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "AU"

    .line 221
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    goto :goto_2

    .line 225
    .end local v4    # "v0":I
    .end local v8    # "v1":I
    .end local v13    # "country":Ljava/lang/String;
    :cond_6
    move-object/from16 v1, p2

    goto :goto_3

    .line 222
    .restart local v4    # "v0":I
    .restart local v8    # "v1":I
    .restart local v13    # "country":Ljava/lang/String;
    :cond_7
    :goto_2
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_eur:Lorg/joda/time/format/DateTimeFormatter;

    .line 225
    .end local v4    # "v0":I
    .end local v8    # "v1":I
    .end local v13    # "country":Ljava/lang/String;
    .end local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :goto_3
    goto :goto_4

    .end local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :cond_8
    if-ne v3, v8, :cond_9

    if-ne v11, v8, :cond_9

    .line 226
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_de:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_0

    .line 227
    :cond_9
    if-ne v3, v14, :cond_a

    if-ne v11, v14, :cond_a

    .line 228
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_in:Lorg/joda/time/format/DateTimeFormatter;

    .end local v2    # "c4":C
    .end local v3    # "c2":C
    .end local v5    # "c16":C
    .end local v6    # "c13":C
    .end local v7    # "c7":C
    .end local v9    # "c3":C
    .end local v11    # "c5":C
    .end local v12    # "c0":C
    .end local v15    # "c10":C
    .end local v16    # "c1":C
    .end local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    goto :goto_4

    .line 232
    .end local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :cond_a
    move-object/from16 v1, p2

    .end local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :goto_4
    goto :goto_5

    .end local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x17

    if-ne v2, v3, :cond_c

    .line 233
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 234
    .restart local v2    # "c4":C
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 235
    .local v3, "c7":C
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 236
    .local v7, "c10":C
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 237
    .restart local v6    # "c13":C
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 238
    .restart local v5    # "c16":C
    const/16 v9, 0x13

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 240
    .local v11, "c19":C
    if-ne v6, v12, :cond_c

    if-ne v5, v12, :cond_c

    if-ne v2, v14, :cond_c

    if-ne v3, v14, :cond_c

    if-ne v7, v4, :cond_c

    if-ne v11, v8, :cond_c

    .line 247
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->defaultFormatter_23:Lorg/joda/time/format/DateTimeFormatter;

    .end local v2    # "c4":C
    .end local v3    # "c7":C
    .end local v5    # "c16":C
    .end local v6    # "c13":C
    .end local v7    # "c10":C
    .end local v11    # "c19":C
    .end local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    goto :goto_5

    .line 251
    .end local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :cond_c
    move-object/from16 v1, p2

    .end local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x11

    if-lt v2, v3, :cond_f

    .line 252
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 253
    .restart local v2    # "c4":C
    const/16 v3, 0x5e74

    if-ne v2, v3, :cond_e

    .line 254
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x79d2

    if-ne v3, v4, :cond_d

    .line 255
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_cn_1:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_6

    .line 257
    :cond_d
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_cn:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_6

    .line 259
    :cond_e
    const v3, 0xb144

    if-ne v2, v3, :cond_f

    .line 260
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_kr:Lorg/joda/time/format/DateTimeFormatter;

    .line 264
    .end local v2    # "c4":C
    :cond_f
    :goto_6
    const/4 v2, 0x1

    .line 265
    .local v2, "digit":Z
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_7
    move/from16 v3, v17

    .end local v17    # "i":I
    .local v3, "i":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_12

    .line 266
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 267
    .local v4, "ch":C
    const/16 v5, 0x30

    if-lt v4, v5, :cond_11

    const/16 v5, 0x39

    if-le v4, v5, :cond_10

    goto :goto_8

    .line 265
    .end local v4    # "ch":C
    :cond_10
    add-int/lit8 v17, v3, 0x1

    .end local v3    # "i":I
    .restart local v17    # "i":I
    goto :goto_7

    .line 268
    .end local v17    # "i":I
    .restart local v3    # "i":I
    .restart local v4    # "ch":C
    :cond_11
    :goto_8
    const/4 v2, 0x0

    .line 269
    nop

    .line 272
    .end local v3    # "i":I
    .end local v4    # "ch":C
    :cond_12
    if-eqz v2, :cond_14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x13

    if-ge v3, v4, :cond_14

    .line 273
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 274
    .local v3, "epochMillis":J
    new-instance v5, Lorg/joda/time/LocalDateTime;

    sget-object v6, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-static {v6}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v6

    invoke-direct {v5, v3, v4, v6}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    return-object v5

    .line 278
    .end local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .end local v2    # "digit":Z
    .end local v3    # "epochMillis":J
    .restart local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :cond_13
    move-object/from16 v1, p2

    .end local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :cond_14
    if-nez v1, :cond_15

    .line 279
    invoke-static/range {p1 .. p1}, Lorg/joda/time/LocalDateTime;->parse(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;

    move-result-object v2

    goto :goto_9

    .line 280
    :cond_15
    invoke-static {v0, v1}, Lorg/joda/time/LocalDateTime;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDateTime;

    move-result-object v2

    .line 278
    :goto_9
    return-object v2
.end method

.method protected parseLocalDate(Ljava/lang/String;Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDate;
    .locals 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "formatter"    # Lorg/joda/time/format/DateTimeFormatter;

    move-object/from16 v0, p1

    .line 284
    if-nez p3, :cond_f

    .line 285
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 286
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d8:Lorg/joda/time/format/DateTimeFormatter;

    .end local p3    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .local v1, "formatter":Lorg/joda/time/format/DateTimeFormatter;
    goto :goto_0

    .line 289
    .end local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local p3    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :cond_0
    move-object/from16 v1, p3

    .end local p3    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/16 v6, 0xa

    if-ne v2, v6, :cond_9

    .line 290
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 291
    .local v2, "c4":C
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 292
    .local v7, "c7":C
    const/16 v8, 0x2f

    if-ne v2, v8, :cond_1

    if-ne v7, v8, :cond_1

    .line 293
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_tw:Lorg/joda/time/format/DateTimeFormatter;

    .line 296
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 297
    .local v9, "c0":C
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 298
    .local v10, "c1":C
    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 299
    .local v11, "c2":C
    const/4 v12, 0x3

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 300
    .local v12, "c3":C
    const/4 v13, 0x5

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 301
    .local v13, "c5":C
    if-ne v11, v8, :cond_7

    if-ne v13, v8, :cond_7

    .line 302
    add-int/lit8 v8, v9, -0x30

    mul-int/2addr v8, v6

    add-int/lit8 v14, v10, -0x30

    add-int/2addr v8, v14

    .line 303
    .local v8, "v0":I
    add-int/lit8 v14, v12, -0x30

    mul-int/2addr v14, v6

    add-int/lit8 v6, v2, -0x30

    add-int/2addr v14, v6

    .line 304
    .local v14, "v1":I
    const/16 v6, 0xc

    if-le v8, v6, :cond_2

    .line 305
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_eur:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_1

    .line 306
    :cond_2
    if-le v14, v6, :cond_3

    .line 307
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_us:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_1

    .line 309
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    .line 311
    .local v6, "country":Ljava/lang/String;
    const-string v15, "US"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 312
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_us:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_1

    .line 313
    :cond_4
    const-string v15, "BR"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    const-string v15, "AU"

    .line 314
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 315
    :cond_5
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_eur:Lorg/joda/time/format/DateTimeFormatter;

    .line 318
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

    .line 319
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_de:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_2

    .line 320
    :cond_8
    const/16 v6, 0x2d

    if-ne v11, v6, :cond_9

    if-ne v13, v6, :cond_9

    .line 321
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_in:Lorg/joda/time/format/DateTimeFormatter;

    .line 325
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

    .line 326
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 327
    .restart local v2    # "c4":C
    const/16 v5, 0x5e74

    if-ne v2, v5, :cond_a

    .line 328
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_cn:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_3

    .line 329
    :cond_a
    const v5, 0xb144

    if-ne v2, v5, :cond_b

    .line 330
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_kr:Lorg/joda/time/format/DateTimeFormatter;

    .line 334
    .end local v2    # "c4":C
    :cond_b
    :goto_3
    const/4 v2, 0x1

    .line 335
    .local v2, "digit":Z
    nop

    .local v4, "i":I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_e

    .line 336
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 337
    .local v5, "ch":C
    const/16 v6, 0x30

    if-lt v5, v6, :cond_d

    const/16 v6, 0x39

    if-le v5, v6, :cond_c

    goto :goto_5

    .line 335
    .end local v5    # "ch":C
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 338
    .restart local v5    # "ch":C
    :cond_d
    :goto_5
    const/4 v2, 0x0

    .line 339
    nop

    .line 342
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

    .line 343
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 344
    .local v3, "epochMillis":J
    new-instance v5, Lorg/joda/time/LocalDateTime;

    sget-object v6, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-static {v6}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v6

    invoke-direct {v5, v3, v4, v6}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    .line 345
    invoke-virtual {v5}, Lorg/joda/time/LocalDateTime;->toLocalDate()Lorg/joda/time/LocalDate;

    move-result-object v5

    .line 344
    return-object v5

    .line 349
    .end local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .end local v2    # "digit":Z
    .end local v3    # "epochMillis":J
    .restart local p3    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :cond_f
    move-object/from16 v1, p3

    .end local p3    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :cond_10
    if-nez v1, :cond_11

    .line 350
    invoke-static/range {p1 .. p1}, Lorg/joda/time/LocalDate;->parse(Ljava/lang/String;)Lorg/joda/time/LocalDate;

    move-result-object v2

    goto :goto_6

    .line 351
    :cond_11
    invoke-static {v0, v1}, Lorg/joda/time/LocalDate;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDate;

    move-result-object v2

    .line 349
    :goto_6
    return-object v2
.end method

.method protected parseZonedDateTime(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/DateTime;
    .locals 17
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "formatter"    # Lorg/joda/time/format/DateTimeFormatter;

    move-object/from16 v0, p1

    .line 355
    if-nez p2, :cond_d

    .line 356
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x13

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-ne v2, v3, :cond_a

    .line 357
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 358
    .local v2, "c4":C
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 359
    .local v3, "c7":C
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 360
    .local v7, "c10":C
    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 361
    .local v8, "c13":C
    const/16 v9, 0x10

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 362
    .local v9, "c16":C
    const/16 v10, 0x3a

    if-ne v8, v10, :cond_a

    if-ne v9, v10, :cond_a

    .line 363
    const/16 v10, 0x2d

    if-ne v2, v10, :cond_1

    if-ne v3, v10, :cond_1

    .line 364
    const/16 v6, 0x54

    if-ne v7, v6, :cond_0

    .line 365
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_iso8601:Lorg/joda/time/format/DateTimeFormatter;

    .end local v2    # "c4":C
    .end local v3    # "c7":C
    .end local v7    # "c10":C
    .end local v8    # "c13":C
    .end local v9    # "c16":C
    .end local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .local v1, "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :goto_0
    goto/16 :goto_4

    .line 366
    .end local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local v2    # "c4":C
    .restart local v3    # "c7":C
    .restart local v7    # "c10":C
    .restart local v8    # "c13":C
    .restart local v9    # "c16":C
    .restart local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :cond_0
    const/16 v6, 0x20

    if-ne v7, v6, :cond_a

    .line 367
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->defaultFormatter:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_0

    .line 369
    :cond_1
    const/16 v11, 0x2f

    if-ne v2, v11, :cond_2

    if-ne v3, v11, :cond_2

    .line 370
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_tw:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_0

    .line 372
    :cond_2
    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 373
    .local v12, "c0":C
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 374
    .local v13, "c1":C
    const/4 v14, 0x2

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 375
    .local v14, "c2":C
    const/4 v15, 0x3

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 376
    .local v15, "c3":C
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 377
    .local v4, "c5":C
    if-ne v14, v11, :cond_8

    if-ne v4, v11, :cond_8

    .line 378
    add-int/lit8 v10, v12, -0x30

    mul-int/2addr v10, v6

    add-int/lit8 v11, v13, -0x30

    add-int/2addr v10, v11

    .line 379
    .local v10, "v0":I
    add-int/lit8 v11, v15, -0x30

    mul-int/2addr v11, v6

    add-int/lit8 v6, v2, -0x30

    add-int/2addr v11, v6

    .line 380
    .local v11, "v1":I
    const/16 v6, 0xc

    if-le v10, v6, :cond_3

    .line 381
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_eur:Lorg/joda/time/format/DateTimeFormatter;

    .end local v10    # "v0":I
    .end local v11    # "v1":I
    .end local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :goto_1
    goto :goto_3

    .line 382
    .end local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local v10    # "v0":I
    .restart local v11    # "v1":I
    .restart local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :cond_3
    if-le v11, v6, :cond_4

    .line 383
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_us:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_1

    .line 385
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    .line 387
    .local v6, "country":Ljava/lang/String;
    const-string v5, "US"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 388
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_us:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_1

    .line 389
    :cond_5
    const-string v5, "BR"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "AU"

    .line 390
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    .line 394
    .end local v6    # "country":Ljava/lang/String;
    .end local v10    # "v0":I
    .end local v11    # "v1":I
    :cond_6
    move-object/from16 v1, p2

    goto :goto_3

    .line 391
    .restart local v6    # "country":Ljava/lang/String;
    .restart local v10    # "v0":I
    .restart local v11    # "v1":I
    :cond_7
    :goto_2
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_eur:Lorg/joda/time/format/DateTimeFormatter;

    .line 394
    .end local v6    # "country":Ljava/lang/String;
    .end local v10    # "v0":I
    .end local v11    # "v1":I
    .end local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :goto_3
    goto :goto_4

    .end local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :cond_8
    const/16 v5, 0x2e

    if-ne v14, v5, :cond_9

    if-ne v4, v5, :cond_9

    .line 395
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_de:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_0

    .line 396
    :cond_9
    if-ne v14, v10, :cond_a

    if-ne v4, v10, :cond_a

    .line 397
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_in:Lorg/joda/time/format/DateTimeFormatter;

    .end local v2    # "c4":C
    .end local v3    # "c7":C
    .end local v4    # "c5":C
    .end local v7    # "c10":C
    .end local v8    # "c13":C
    .end local v9    # "c16":C
    .end local v12    # "c0":C
    .end local v13    # "c1":C
    .end local v14    # "c2":C
    .end local v15    # "c3":C
    .end local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    goto :goto_4

    .line 403
    .end local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :cond_a
    move-object/from16 v1, p2

    .end local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x11

    if-lt v2, v3, :cond_e

    .line 404
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 405
    .restart local v2    # "c4":C
    const/16 v3, 0x5e74

    if-ne v2, v3, :cond_c

    .line 406
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x79d2

    if-ne v3, v4, :cond_b

    .line 407
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_cn_1:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_5

    .line 409
    :cond_b
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_cn:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_5

    .line 411
    :cond_c
    const v3, 0xb144

    if-ne v2, v3, :cond_e

    .line 412
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_kr:Lorg/joda/time/format/DateTimeFormatter;

    .end local v2    # "c4":C
    goto :goto_5

    .line 417
    .end local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :cond_d
    move-object/from16 v1, p2

    .end local p2    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    .restart local v1    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :cond_e
    :goto_5
    if-nez v1, :cond_f

    .line 418
    invoke-static/range {p1 .. p1}, Lorg/joda/time/DateTime;->parse(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v2

    goto :goto_6

    .line 419
    :cond_f
    invoke-static {v0, v1}, Lorg/joda/time/DateTime;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/DateTime;

    move-result-object v2

    .line 417
    :goto_6
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

    .line 469
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 470
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/BeanContext;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    check-cast v2, Lorg/joda/time/ReadablePartial;

    invoke-direct {p0, v0, v2, v1}, Lcom/alibaba/fastjson/serializer/JodaCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lorg/joda/time/ReadablePartial;Ljava/lang/String;)V

    .line 472
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

    .line 428
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 429
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_0

    .line 430
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_3

    .line 432
    :cond_0
    if-nez p4, :cond_1

    .line 433
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    .line 436
    :cond_1
    const-class v1, Lorg/joda/time/LocalDateTime;

    if-ne p4, v1, :cond_8

    .line 437
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    .line 438
    .local v1, "mask":I
    move-object v2, p2

    check-cast v2, Lorg/joda/time/LocalDateTime;

    .line 439
    .local v2, "dateTime":Lorg/joda/time/LocalDateTime;
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormatPattern()Ljava/lang/String;

    move-result-object v3

    .line 441
    .local v3, "format":Ljava/lang/String;
    if-nez v3, :cond_5

    .line 442
    and-int v4, p5, v1

    if-nez v4, :cond_4

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 445
    :cond_2
    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->getMillisOfSecond()I

    move-result v4

    .line 446
    .local v4, "millis":I
    if-nez v4, :cond_3

    .line 447
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    goto :goto_1

    .line 449
    :cond_3
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSSSS"

    .end local v4    # "millis":I
    goto :goto_1

    .line 443
    :cond_4
    :goto_0
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 454
    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    .line 455
    invoke-direct {p0, v0, v2, v3}, Lcom/alibaba/fastjson/serializer/JodaCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lorg/joda/time/ReadablePartial;Ljava/lang/String;)V

    goto :goto_2

    .line 456
    :cond_6
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 458
    sget-object v4, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v4}, Lcom/alibaba/fastjson/serializer/JodaCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lorg/joda/time/ReadablePartial;Ljava/lang/String;)V

    goto :goto_2

    .line 460
    :cond_7
    sget-object v4, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-static {v4}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/joda/time/LocalDateTime;->toDateTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/DateTime;->toInstant()Lorg/joda/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/Instant;->getMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 462
    .end local v1    # "mask":I
    .end local v2    # "dateTime":Lorg/joda/time/LocalDateTime;
    .end local v3    # "format":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 463
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 466
    :goto_3
    return-void
.end method
