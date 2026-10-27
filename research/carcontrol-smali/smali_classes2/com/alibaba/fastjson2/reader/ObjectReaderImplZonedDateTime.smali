.class Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;
.super Lcom/alibaba/fastjson2/codec/DateTimeCodec;
.source "ObjectReaderImplZonedDateTime.java"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;


# instance fields
.field private builder:Ljava/util/function/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/codec/DateTimeCodec;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0, v0}, Lcom/alibaba/fastjson2/codec/DateTimeCodec;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 28
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;->builder:Ljava/util/function/Function;

    return-void
.end method

.method public static of(Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;
    .locals 1

    if-nez p0, :cond_0

    .line 18
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;

    return-object p0

    .line 21
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public getObjectClass()Ljava/lang/Class;
    .locals 1

    .line 37
    const-class v0, Ljava/time/ZonedDateTime;

    return-object v0
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .line 47
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    .line 50
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    move-result p3

    const-wide/16 p4, 0x3e8

    if-eqz p3, :cond_1

    .line 51
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    move-result-wide v0

    .line 52
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;->formatUnixTime:Z

    if-eqz p1, :cond_0

    mul-long/2addr v0, p4

    .line 56
    :cond_0
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    .line 57
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    goto/16 :goto_2

    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p1, 0x0

    goto/16 :goto_2

    .line 61
    :cond_2
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;->format:Ljava/lang/String;

    if-eqz p3, :cond_9

    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;->yyyyMMddhhmmss19:Z

    if-nez p3, :cond_9

    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;->formatISO8601:Z

    if-eqz p3, :cond_3

    goto :goto_1

    .line 64
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p3

    .line 65
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;->formatMillis:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;->formatUnixTime:Z

    if-eqz v0, :cond_4

    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;->getDateFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    .line 74
    iget-boolean p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;->formatHasHour:Z

    if-nez p4, :cond_5

    .line 76
    invoke-static {p3, p1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p1

    sget-object p3, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    .line 78
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object p2

    .line 75
    invoke-static {p1, p3, p2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    goto :goto_2

    .line 81
    :cond_5
    iget-boolean p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;->formatHasDay:Z

    if-nez p4, :cond_6

    const/16 p4, 0x7b2

    const/4 p5, 0x1

    .line 83
    invoke-static {p4, p5, p5}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p4

    .line 84
    invoke-static {p3, p1}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalTime;

    move-result-object p1

    .line 85
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object p2

    .line 82
    invoke-static {p4, p1, p2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    goto :goto_2

    .line 88
    :cond_6
    invoke-static {p3, p1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 89
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    goto :goto_2

    .line 66
    :cond_7
    :goto_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 67
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;->formatUnixTime:Z

    if-eqz p1, :cond_8

    mul-long/2addr v0, p4

    .line 70
    :cond_8
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    .line 71
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    goto :goto_2

    .line 62
    :cond_9
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object p1

    .line 96
    :goto_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;->builder:Ljava/util/function/Function;

    if-eqz p2, :cond_a

    if-eqz p1, :cond_a

    .line 97
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_a
    return-object p1
.end method
