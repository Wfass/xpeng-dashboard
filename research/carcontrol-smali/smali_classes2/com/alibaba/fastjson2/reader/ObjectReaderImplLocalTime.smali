.class Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalTime;
.super Lcom/alibaba/fastjson2/codec/DateTimeCodec;
.source "ObjectReaderImplLocalTime.java"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalTime;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalTime;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalTime;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalTime;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalTime;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/codec/DateTimeCodec;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public getObjectClass()Ljava/lang/Class;
    .locals 1

    .line 22
    const-class v0, Ljava/time/LocalTime;

    return-object v0
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .line 32
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    .line 34
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    return-object p4

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    move-result p3

    const-wide/16 v0, 0x3e8

    if-eqz p3, :cond_2

    .line 39
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    move-result-wide p3

    .line 41
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalTime;->formatUnixTime:Z

    if-eqz p1, :cond_1

    mul-long/2addr p3, v0

    .line 45
    :cond_1
    invoke-static {p3, p4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    .line 46
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object p2

    .line 47
    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    return-object p1

    .line 51
    :cond_2
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalTime;->format:Ljava/lang/String;

    if-eqz p3, :cond_b

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isNumber()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    .line 55
    :cond_3
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalTime;->yyyyMMddhhmmss19:Z

    if-nez p3, :cond_a

    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalTime;->formatISO8601:Z

    if-eqz p3, :cond_4

    goto :goto_1

    .line 61
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    return-object p4

    .line 66
    :cond_5
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalTime;->formatMillis:Z

    if-nez p3, :cond_8

    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalTime;->formatUnixTime:Z

    if-eqz p3, :cond_6

    goto :goto_0

    .line 75
    :cond_6
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getLocale()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalTime;->getDateFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object p2

    .line 76
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalTime;->formatHasDay:Z

    if-eqz p3, :cond_7

    .line 78
    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    return-object p1

    .line 83
    :cond_7
    invoke-static {p1, p2}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalTime;

    move-result-object p1

    return-object p1

    .line 67
    :cond_8
    :goto_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3

    .line 68
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalTime;->formatUnixTime:Z

    if-eqz p1, :cond_9

    mul-long/2addr p3, v0

    .line 71
    :cond_9
    invoke-static {p3, p4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    .line 72
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    return-object p1

    .line 57
    :cond_a
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    return-object p1

    .line 52
    :cond_b
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    return-object p1
.end method
