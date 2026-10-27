.class Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDateTime;
.super Lcom/alibaba/fastjson2/codec/DateTimeCodec;
.source "ObjectReaderImplLocalDateTime.java"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDateTime;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDateTime;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDateTime;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDateTime;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDateTime;

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
    const-class v0, Ljava/time/LocalDateTime;

    return-object v0
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .line 32
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    .line 34
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    move-result p3

    const-wide/16 p4, 0x3e8

    if-eqz p3, :cond_2

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDateTime;->getDateFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-static {p1, p3}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    move-result-wide v0

    .line 43
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDateTime;->formatUnixTime:Z

    if-eqz p1, :cond_1

    mul-long/2addr v0, p4

    .line 47
    :cond_1
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    .line 48
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object p2

    .line 49
    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 52
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    return-object v0

    .line 56
    :cond_3
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDateTime;->format:Ljava/lang/String;

    if-eqz p3, :cond_b

    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDateTime;->yyyyMMddhhmmss19:Z

    if-nez p3, :cond_b

    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDateTime;->formatISO8601:Z

    if-eqz p3, :cond_4

    goto :goto_1

    .line 60
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    return-object v0

    .line 65
    :cond_5
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDateTime;->formatMillis:Z

    if-nez p3, :cond_9

    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDateTime;->formatUnixTime:Z

    if-eqz p3, :cond_6

    goto :goto_0

    .line 74
    :cond_6
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getLocale()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDateTime;->getDateFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object p2

    .line 75
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDateTime;->formatHasHour:Z

    if-nez p3, :cond_7

    .line 77
    invoke-static {p1, p2}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p1

    sget-object p2, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    .line 76
    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 81
    :cond_7
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDateTime;->formatHasDay:Z

    if-nez p3, :cond_8

    const/16 p3, 0x7b2

    const/4 p4, 0x1

    .line 83
    invoke-static {p3, p4, p4}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p3

    .line 84
    invoke-static {p1, p2}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalTime;

    move-result-object p1

    .line 82
    invoke-static {p3, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 87
    :cond_8
    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 66
    :cond_9
    :goto_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 67
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDateTime;->formatUnixTime:Z

    if-eqz p1, :cond_a

    mul-long/2addr v0, p4

    .line 70
    :cond_a
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    .line 71
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 57
    :cond_b
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method
