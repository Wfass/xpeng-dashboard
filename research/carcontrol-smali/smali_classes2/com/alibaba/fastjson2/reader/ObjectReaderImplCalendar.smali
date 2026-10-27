.class final Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;
.super Lcom/alibaba/fastjson2/codec/DateTimeCodec;
.source "ObjectReaderImplCalendar.java"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/codec/DateTimeCodec;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public static of(Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;
    .locals 1

    if-nez p0, :cond_0

    .line 20
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;

    return-object p0

    .line 23
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public getObjectClass()Ljava/lang/Class;
    .locals 1

    .line 32
    const-class v0, Ljava/util/Calendar;

    return-object v0
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    move-result p2

    const-wide/16 p3, 0x3e8

    if-eqz p2, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    move-result-wide p1

    .line 40
    iget-boolean p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;->formatUnixTime:Z

    if-eqz p5, :cond_0

    mul-long/2addr p1, p3

    .line 44
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    .line 45
    invoke-virtual {p3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p3

    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 53
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readMillisFromString()J

    move-result-wide p1

    .line 54
    iget-boolean p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;->formatUnixTime:Z

    if-eqz p5, :cond_3

    mul-long/2addr p1, p3

    .line 58
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    .line 59
    invoke-virtual {p3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p3
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 4

    .line 65
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result p2

    const-wide/16 p3, 0x3e8

    const/4 p5, 0x0

    if-eqz p2, :cond_4

    .line 66
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;->format:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;->getDateFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 69
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p3

    .line 70
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    return-object p5

    .line 74
    :cond_0
    invoke-static {p3, p2}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p2

    .line 75
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p1

    .line 78
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    .line 79
    invoke-virtual {p3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p3

    .line 84
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readMillisFromString()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_2

    .line 85
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->wasNull()Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p5

    .line 89
    :cond_2
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;->formatUnixTime:Z

    if-eqz p1, :cond_3

    mul-long/2addr v0, p3

    .line 93
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 94
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p1

    .line 98
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    move-result p2

    if-eqz p2, :cond_5

    return-object p5

    .line 102
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    move-result-wide v0

    .line 103
    iget-boolean p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;->formatUnixTime:Z

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->isFormatUnixTime()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    mul-long/2addr v0, p3

    .line 107
    :cond_7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 108
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p1
.end method
