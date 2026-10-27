.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;
.super Lcom/alibaba/fastjson2/codec/DateTimeCodec;
.source "ObjectWriterImplLocalDate.java"

# interfaces
.implements Lcom/alibaba/fastjson2/writer/ObjectWriter;


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/codec/DateTimeCodec;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public static of(Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;
    .locals 1

    if-nez p0, :cond_0

    .line 24
    sget-object p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;

    return-object p0

    .line 26
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 7

    if-nez p2, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 41
    :cond_0
    iget-object p3, p1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 43
    check-cast p2, Ljava/time/LocalDate;

    .line 45
    iget-boolean p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;->formatUnixTime:Z

    if-nez p4, :cond_b

    iget-object p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;->format:Ljava/lang/String;

    if-nez p4, :cond_1

    invoke-virtual {p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatUnixTime()Z

    move-result p4

    if-eqz p4, :cond_1

    goto/16 :goto_3

    .line 54
    :cond_1
    iget-boolean p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;->formatMillis:Z

    if-nez p4, :cond_a

    iget-object p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;->format:Ljava/lang/String;

    if-nez p4, :cond_2

    invoke-virtual {p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatMillis()Z

    move-result p4

    if-eqz p4, :cond_2

    goto/16 :goto_2

    .line 63
    :cond_2
    iget-boolean p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;->yyyyMMdd8:Z

    if-eqz p4, :cond_3

    .line 65
    invoke-virtual {p2}, Ljava/time/LocalDate;->getYear()I

    move-result p3

    .line 66
    invoke-virtual {p2}, Ljava/time/LocalDate;->getMonthValue()I

    move-result p4

    .line 67
    invoke-virtual {p2}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p2

    .line 64
    invoke-virtual {p1, p3, p4, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateYYYMMDD8(III)V

    return-void

    .line 71
    :cond_3
    iget-boolean p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;->yyyyMMdd10:Z

    if-eqz p4, :cond_4

    .line 73
    invoke-virtual {p2}, Ljava/time/LocalDate;->getYear()I

    move-result p3

    .line 74
    invoke-virtual {p2}, Ljava/time/LocalDate;->getMonthValue()I

    move-result p4

    .line 75
    invoke-virtual {p2}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p2

    .line 72
    invoke-virtual {p1, p3, p4, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateYYYMMDD10(III)V

    return-void

    .line 79
    :cond_4
    iget-boolean p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;->yyyyMMddhhmmss19:Z

    if-eqz p4, :cond_5

    .line 81
    invoke-virtual {p2}, Ljava/time/LocalDate;->getYear()I

    move-result v1

    .line 82
    invoke-virtual {p2}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v2

    .line 83
    invoke-virtual {p2}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    .line 80
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTime19(IIIIII)V

    return-void

    .line 87
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;->getDateFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object p4

    if-nez p4, :cond_6

    .line 89
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getDateFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object p4

    :cond_6
    if-nez p4, :cond_7

    .line 94
    invoke-virtual {p2}, Ljava/time/LocalDate;->getYear()I

    move-result p3

    .line 95
    invoke-virtual {p2}, Ljava/time/LocalDate;->getMonthValue()I

    move-result p4

    .line 96
    invoke-virtual {p2}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p2

    .line 93
    invoke-virtual {p1, p3, p4, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateYYYMMDD10(III)V

    return-void

    .line 102
    :cond_7
    iget-boolean p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;->formatHasHour:Z

    if-nez p5, :cond_9

    invoke-virtual {p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatHasHour()Z

    move-result p3

    if-eqz p3, :cond_8

    goto :goto_0

    .line 105
    :cond_8
    invoke-virtual {p4, p2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 103
    :cond_9
    :goto_0
    sget-object p3, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p2, p3}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p2

    .line 108
    :goto_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    .line 55
    :cond_a
    :goto_2
    sget-object p4, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p2, p4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p2

    .line 56
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p2

    .line 57
    invoke-virtual {p2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p2

    .line 58
    invoke-virtual {p2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p2

    .line 59
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void

    .line 46
    :cond_b
    :goto_3
    sget-object p4, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p2, p4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p2

    .line 47
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p2

    .line 48
    invoke-virtual {p2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p2

    .line 49
    invoke-virtual {p2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p2

    const-wide/16 p4, 0x3e8

    .line 50
    div-long/2addr p2, p4

    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 31
    check-cast p2, Ljava/time/LocalDate;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeLocalDate(Ljava/time/LocalDate;)V

    return-void
.end method
