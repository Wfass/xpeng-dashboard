.class Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDate;
.super Lcom/alibaba/fastjson2/codec/DateTimeCodec;
.source "ObjectReaderImplLocalDate.java"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDate;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDate;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDate;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDate;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/codec/DateTimeCodec;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public static of(Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDate;
    .locals 1

    if-nez p0, :cond_0

    .line 24
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDate;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDate;

    return-object p0

    .line 27
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDate;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDate;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public getObjectClass()Ljava/lang/Class;
    .locals 1

    .line 32
    const-class v0, Ljava/time/LocalDate;

    return-object v0
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .line 42
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    .line 44
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    return-object p4

    .line 48
    :cond_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDate;->format:Ljava/lang/String;

    if-eqz p3, :cond_9

    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDate;->yyyyMMddhhmmss19:Z

    if-nez p3, :cond_9

    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDate;->formatISO8601:Z

    if-nez p3, :cond_9

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isNumber()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_2

    .line 52
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_8

    const-string p3, "null"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 57
    :cond_2
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDate;->formatMillis:Z

    if-nez p3, :cond_6

    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDate;->formatUnixTime:Z

    if-eqz p3, :cond_3

    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getLocale()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDate;->getDateFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object p2

    .line 68
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDate;->formatHasHour:Z

    if-nez p3, :cond_4

    .line 69
    invoke-static {p1, p2}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 72
    :cond_4
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDate;->formatHasDay:Z

    if-nez p3, :cond_5

    const/16 p1, 0x7b2

    const/4 p2, 0x1

    .line 73
    invoke-static {p1, p2, p2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 77
    :cond_5
    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 58
    :cond_6
    :goto_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3

    .line 59
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDate;->formatUnixTime:Z

    if-eqz p1, :cond_7

    const-wide/16 v0, 0x3e8

    mul-long/2addr p3, v0

    .line 62
    :cond_7
    invoke-static {p3, p4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    .line 63
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_1
    return-object p4

    .line 49
    :cond_9
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method
