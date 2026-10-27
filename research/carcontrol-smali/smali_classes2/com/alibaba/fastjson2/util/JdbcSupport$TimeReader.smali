.class Lcom/alibaba/fastjson2/util/JdbcSupport$TimeReader;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;
.source "JdbcSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/util/JdbcSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeReader"
.end annotation


# instance fields
.field final function:Ljava/util/function/LongFunction;

.field final functionValueOf:Ljava/util/function/Function;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2

    .line 185
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 p2, 0x1

    :try_start_0
    new-array p3, p2, [Ljava/lang/Class;

    .line 187
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    .line 188
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    .line 187
    invoke-static {p3}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createLongFunction(Ljava/lang/reflect/Constructor;)Ljava/util/function/LongFunction;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimeReader;->function:Ljava/util/function/LongFunction;

    const-string/jumbo p3, "valueOf"

    new-array p2, p2, [Ljava/lang/Class;

    .line 191
    const-class v0, Ljava/lang/String;

    aput-object v0, p2, v1

    invoke-virtual {p1, p3, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 192
    invoke-static {p1}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimeReader;->functionValueOf:Ljava/util/function/Function;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 194
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "illegal state"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 200
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/util/JdbcSupport$TimeReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 8

    .line 205
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    move-result p2

    const-wide/16 p3, 0x3e8

    if-eqz p2, :cond_1

    .line 206
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    move-result-wide p1

    .line 208
    iget-boolean p5, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimeReader;->formatUnixTime:Z

    if-eqz p5, :cond_0

    mul-long/2addr p1, p3

    .line 211
    :cond_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimeReader;->function:Ljava/util/function/LongFunction;

    invoke-interface {p3, p1, p2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 214
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    move-result p2

    const/4 p5, 0x0

    if-eqz p2, :cond_2

    return-object p5

    .line 218
    :cond_2
    iget-boolean p2, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimeReader;->formatISO8601:Z

    if-nez p2, :cond_f

    iget-boolean p2, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimeReader;->formatMillis:Z

    if-eqz p2, :cond_3

    goto/16 :goto_5

    .line 223
    :cond_3
    iget-boolean p2, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimeReader;->formatUnixTime:Z

    if-eqz p2, :cond_4

    .line 224
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 225
    iget-object p5, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimeReader;->function:Ljava/util/function/LongFunction;

    mul-long/2addr p1, p3

    invoke-interface {p5, p1, p2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 229
    :cond_4
    iget-object p2, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimeReader;->format:Ljava/lang/String;

    const/4 p3, 0x1

    if-eqz p2, :cond_9

    .line 230
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getLocale()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/util/JdbcSupport$TimeReader;->getDateFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 234
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p4

    .line 235
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    return-object p5

    .line 240
    :cond_5
    iget-boolean p5, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimeReader;->formatHasHour:Z

    if-nez p5, :cond_6

    .line 242
    invoke-static {p4, p2}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p2

    sget-object p3, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    .line 241
    invoke-static {p2, p3}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p2

    goto :goto_0

    .line 245
    :cond_6
    iget-boolean p5, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimeReader;->formatHasDay:Z

    if-nez p5, :cond_7

    const/16 p5, 0x7b2

    .line 247
    invoke-static {p5, p3, p3}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p3

    .line 248
    invoke-static {p4, p2}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalTime;

    move-result-object p2

    .line 246
    invoke-static {p3, p2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p2

    goto :goto_0

    .line 251
    :cond_7
    invoke-static {p4, p2}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p2

    .line 253
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    goto :goto_1

    .line 255
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object p1

    .line 257
    :goto_1
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p1

    goto/16 :goto_4

    .line 259
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "0000-00-00"

    .line 260
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    const-string p2, "0000-00-00 00:00:00"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_3

    .line 263
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p4, 0x9

    if-ne p2, p4, :cond_b

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 p4, 0x5a

    if-ne p2, p4, :cond_b

    const/4 p2, 0x0

    .line 265
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 266
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 p2, 0x2

    .line 267
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 p2, 0x3

    .line 268
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 p2, 0x4

    .line 269
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 p2, 0x5

    .line 270
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 p2, 0x6

    .line 271
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 p2, 0x7

    .line 272
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 264
    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime(CCCCCCCC)Ljava/time/LocalTime;

    move-result-object p1

    .line 274
    sget-object p2, Lcom/alibaba/fastjson2/util/DateUtils;->LOCAL_DATE_19700101:Ljava/time/LocalDate;

    invoke-static {p2, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p1

    sget-object p2, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    .line 275
    invoke-virtual {p1, p2}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    .line 276
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    .line 277
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p1

    goto :goto_4

    .line 279
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_d

    const-string p2, "null"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_2

    .line 282
    :cond_c
    iget-object p2, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimeReader;->functionValueOf:Ljava/util/function/Function;

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    :goto_2
    return-object p5

    :cond_e
    :goto_3
    const-wide/16 p1, 0x0

    .line 287
    :goto_4
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimeReader;->function:Ljava/util/function/LongFunction;

    invoke-interface {p3, p1, p2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 219
    :cond_f
    :goto_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readMillisFromString()J

    move-result-wide p1

    .line 220
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimeReader;->function:Ljava/util/function/LongFunction;

    invoke-interface {p3, p1, p2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
