.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;
.super Lcom/alibaba/fastjson2/codec/DateTimeCodec;
.source "ObjectWriterImplCalendar.java"

# interfaces
.implements Lcom/alibaba/fastjson2/writer/ObjectWriter;


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/codec/DateTimeCodec;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    if-nez p2, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 40
    :cond_0
    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 42
    move-object/from16 v3, p2

    check-cast v3, Ljava/util/Calendar;

    .line 43
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 45
    iget-boolean v5, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;->formatUnixTime:Z

    if-nez v5, :cond_9

    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;->format:Ljava/lang/String;

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatUnixTime()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_3

    .line 50
    :cond_1
    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;->format:Ljava/lang/String;

    if-nez v5, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatMillis()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 51
    invoke-virtual {p1, v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void

    .line 55
    :cond_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object v5

    .line 56
    invoke-static {v3, v4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    .line 57
    invoke-static {v3, v5}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    .line 58
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v9

    .line 60
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getYear()I

    move-result v4

    if-ltz v4, :cond_6

    const/16 v5, 0x270f

    if-gt v4, v5, :cond_6

    .line 62
    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;->format:Ljava/lang/String;

    const v6, 0xf4240

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatISO8601()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 63
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getMonthValue()I

    move-result v5

    .line 64
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v7

    .line 65
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getHour()I

    move-result v8

    .line 66
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getMinute()I

    move-result v10

    .line 67
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getSecond()I

    move-result v11

    .line 68
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getNano()I

    move-result v2

    div-int v12, v2, v6

    const/4 v13, 0x1

    move-object v1, p1

    move v2, v4

    move v3, v5

    move v4, v7

    move v5, v8

    move v6, v10

    move v7, v11

    move v8, v12

    move v10, v13

    .line 69
    invoke-virtual/range {v1 .. v10}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTimeISO8601(IIIIIIIIZ)V

    return-void

    .line 73
    :cond_3
    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;->format:Ljava/lang/String;

    if-nez v5, :cond_4

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getDateFormat()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_4
    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;->format:Ljava/lang/String;

    :goto_0
    if-nez v5, :cond_6

    .line 75
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getMonthValue()I

    move-result v5

    .line 76
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v7

    .line 77
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getHour()I

    move-result v8

    .line 78
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getMinute()I

    move-result v10

    .line 79
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getSecond()I

    move-result v11

    .line 81
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getNano()I

    move-result v2

    if-nez v2, :cond_5

    move-object v1, p1

    move v2, v4

    move v3, v5

    move v4, v7

    move v5, v8

    move v6, v10

    move v7, v11

    .line 83
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTime19(IIIIII)V

    goto :goto_1

    .line 85
    :cond_5
    div-int v12, v2, v6

    const/4 v13, 0x0

    move-object v1, p1

    move v2, v4

    move v3, v5

    move v4, v7

    move v5, v8

    move v6, v10

    move v7, v11

    move v8, v12

    move v10, v13

    invoke-virtual/range {v1 .. v10}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTimeISO8601(IIIIIIIIZ)V

    :goto_1
    return-void

    .line 92
    :cond_6
    iget-object v4, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;->format:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;->getDateFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    goto :goto_2

    .line 95
    :cond_7
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getDateFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_8

    .line 99
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeZonedDateTime(Ljava/time/ZonedDateTime;)V

    return-void

    .line 103
    :cond_8
    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    :cond_9
    :goto_3
    const-wide/16 v5, 0x3e8

    .line 46
    div-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 29
    :cond_0
    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    .line 30
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeMillis(J)V

    return-void
.end method
