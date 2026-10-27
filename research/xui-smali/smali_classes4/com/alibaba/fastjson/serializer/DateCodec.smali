.class public Lcom/alibaba/fastjson/serializer/DateCodec;
.super Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;
.source "DateCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/DateCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/alibaba/fastjson/serializer/DateCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/DateCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method public cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 244
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 245
    return-object v0

    .line 248
    :cond_0
    instance-of v1, p4, Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 249
    return-object p4

    .line 250
    :cond_1
    instance-of v1, p4, Ljava/math/BigDecimal;

    if-eqz v1, :cond_2

    .line 251
    new-instance v0, Ljava/util/Date;

    move-object v1, p4

    check-cast v1, Ljava/math/BigDecimal;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->longValue(Ljava/math/BigDecimal;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 252
    :cond_2
    instance-of v1, p4, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 253
    new-instance v0, Ljava/util/Date;

    move-object v1, p4

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 254
    :cond_3
    instance-of v1, p4, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 255
    move-object v1, p4

    check-cast v1, Ljava/lang/String;

    .line 256
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 257
    return-object v0

    .line 261
    :cond_4
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 263
    .local v2, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 264
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 266
    .local v0, "calendar":Ljava/util/Calendar;
    const-class v3, Ljava/util/Calendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne p2, v3, :cond_5

    .line 267
    nop

    .line 273
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 267
    return-object v0

    .line 270
    :cond_5
    :try_start_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 273
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 270
    return-object v3

    .line 273
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_6
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 274
    nop

    .line 277
    .end local v2    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFomartPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v2, v4, :cond_7

    .line 278
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x16

    if-ne v2, v4, :cond_8

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFomartPattern()Ljava/lang/String;

    move-result-object v2

    const-string v4, "yyyyMMddHHmmssSSSZ"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 279
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v2

    .line 281
    .local v2, "dateFormat":Ljava/text/DateFormat;
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v4

    .line 282
    :catch_0
    move-exception v4

    .line 287
    .end local v2    # "dateFormat":Ljava/text/DateFormat;
    :cond_8
    const-string v2, "/Date("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, ")/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 288
    const/4 v2, 0x6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "dotnetDateStr":Ljava/lang/String;
    move-object v1, v2

    .line 292
    .end local v2    # "dotnetDateStr":Ljava/lang/String;
    :cond_9
    const-string v2, "0000-00-00"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "0000-00-00T00:00:00"

    .line 293
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "0001-01-01T00:00:00+08:00"

    .line 294
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_1

    .line 298
    :cond_a
    const/16 v0, 0x7c

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 299
    .local v0, "index":I
    const/16 v2, 0x14

    if-le v0, v2, :cond_d

    .line 300
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "tzStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 302
    .local v4, "timeZone":Ljava/util/TimeZone;
    const-string v5, "GMT"

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 303
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, "subStr":Ljava/lang/String;
    new-instance v6, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v6, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 306
    .local v6, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :try_start_3
    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 307
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    .line 309
    .local v3, "calendar":Ljava/util/Calendar;
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 311
    const-class v7, Ljava/util/Calendar;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p2, v7, :cond_b

    .line 312
    nop

    .line 318
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 312
    return-object v3

    .line 315
    :cond_b
    :try_start_4
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 318
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 315
    return-object v7

    .line 318
    .end local v3    # "calendar":Ljava/util/Calendar;
    :cond_c
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 319
    goto :goto_0

    .line 318
    :catchall_0
    move-exception v3

    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v3

    .line 325
    .end local v2    # "tzStr":Ljava/lang/String;
    .end local v4    # "timeZone":Ljava/util/TimeZone;
    .end local v5    # "subStr":Ljava/lang/String;
    .end local v6    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_d
    :goto_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 326
    .local v2, "longVal":J
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v4

    .line 295
    .end local v0    # "index":I
    .end local v2    # "longVal":J
    :cond_e
    :goto_1
    return-object v0

    .line 273
    .local v2, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v0

    .line 329
    .end local v1    # "strVal":Ljava/lang/String;
    .end local v2    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "parse error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 333
    const/4 v0, 0x2

    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 28
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

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 46
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 48
    .local v2, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez v1, :cond_0

    .line 49
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 50
    return-void

    .line 53
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 54
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/sql/Date;

    const-wide/32 v5, 0x5265c00

    if-ne v3, v4, :cond_1

    .line 55
    move-object v4, v1

    check-cast v4, Ljava/sql/Date;

    invoke-virtual {v4}, Ljava/sql/Date;->getTime()J

    move-result-wide v7

    .line 56
    .local v7, "millis":J
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    .line 57
    .local v4, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v4, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    .line 59
    .local v9, "offset":I
    int-to-long v10, v9

    add-long/2addr v10, v7

    rem-long/2addr v10, v5

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    iget v10, v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 60
    move/from16 v12, p5

    invoke-static {v10, v12, v11}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(IILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 61
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 62
    return-void

    .line 66
    .end local v4    # "timeZone":Ljava/util/TimeZone;
    .end local v7    # "millis":J
    .end local v9    # "offset":I
    :cond_1
    move/from16 v12, p5

    :cond_2
    const-class v4, Ljava/sql/Time;

    const-wide/16 v7, 0x3e8

    if-ne v3, v4, :cond_5

    .line 67
    move-object v4, v1

    check-cast v4, Ljava/sql/Time;

    invoke-virtual {v4}, Ljava/sql/Time;->getTime()J

    move-result-wide v9

    .line 68
    .local v9, "millis":J
    const-string v4, "unixtime"

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormatPattern()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 69
    div-long v4, v9, v7

    .line 70
    .local v4, "seconds":J
    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 71
    return-void

    .line 74
    .end local v4    # "seconds":J
    :cond_3
    const-string v4, "millis"

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormatPattern()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 75
    move-wide v4, v9

    .line 76
    .restart local v4    # "seconds":J
    invoke-virtual {v2, v9, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 77
    return-void

    .line 80
    .end local v4    # "seconds":J
    :cond_4
    cmp-long v4, v9, v5

    if-gez v4, :cond_5

    .line 81
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 82
    return-void

    .line 86
    .end local v9    # "millis":J
    :cond_5
    const/4 v4, 0x0

    .line 87
    .local v4, "nanos":I
    const-class v5, Ljava/sql/Timestamp;

    if-ne v3, v5, :cond_6

    .line 88
    move-object v5, v1

    check-cast v5, Ljava/sql/Timestamp;

    .line 89
    .local v5, "ts":Ljava/sql/Timestamp;
    invoke-virtual {v5}, Ljava/sql/Timestamp;->getNanos()I

    move-result v4

    .line 93
    .end local v5    # "ts":Ljava/sql/Timestamp;
    :cond_6
    instance-of v5, v1, Ljava/util/Date;

    if-eqz v5, :cond_7

    .line 94
    move-object v5, v1

    check-cast v5, Ljava/util/Date;

    .local v5, "date":Ljava/util/Date;
    goto :goto_0

    .line 96
    .end local v5    # "date":Ljava/util/Date;
    :cond_7
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v5

    .line 99
    .restart local v5    # "date":Ljava/util/Date;
    :goto_0
    const-string v6, "unixtime"

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormatPattern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 100
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    div-long/2addr v9, v7

    .line 101
    .local v9, "seconds":J
    invoke-virtual {v2, v9, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 102
    return-void

    .line 105
    .end local v9    # "seconds":J
    :cond_8
    const-string v6, "millis"

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormatPattern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 106
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 107
    .local v6, "millis":J
    invoke-virtual {v2, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 108
    return-void

    .line 111
    .end local v6    # "millis":J
    :cond_9
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v6

    .line 113
    .local v6, "format":Ljava/text/DateFormat;
    if-nez v6, :cond_a

    .line 114
    new-instance v7, Ljava/text/SimpleDateFormat;

    sget-object v8, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->locale:Ljava/util/Locale;

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v6, v7

    .line 115
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 117
    :cond_a
    invoke-virtual {v6, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, "text":Ljava/lang/String;
    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 119
    return-void

    .line 122
    .end local v6    # "format":Ljava/text/DateFormat;
    .end local v7    # "text":Ljava/lang/String;
    :cond_b
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 123
    move-object/from16 v6, p4

    if-eq v3, v6, :cond_e

    .line 124
    const-class v7, Ljava/util/Date;

    if-ne v3, v7, :cond_c

    .line 125
    const-string v7, "new Date("

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 126
    move-object v7, v1

    check-cast v7, Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 127
    const/16 v7, 0x29

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_1

    .line 129
    :cond_c
    const/16 v7, 0x7b

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 130
    sget-object v7, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 132
    const/16 v7, 0x2c

    const-string v8, "val"

    move-object v9, v1

    check-cast v9, Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v2, v7, v8, v9, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;J)V

    .line 133
    const/16 v7, 0x7d

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 135
    :goto_1
    return-void

    .line 139
    :cond_d
    move-object/from16 v6, p4

    :cond_e
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    .line 140
    .local v7, "time":J
    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 141
    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_f

    const/16 v9, 0x27

    goto :goto_2

    :cond_f
    const/16 v9, 0x22

    .line 142
    .local v9, "quote":C
    :goto_2
    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 144
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->locale:Ljava/util/Locale;

    invoke-static {v10, v11}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v10

    .line 145
    .local v10, "calendar":Ljava/util/Calendar;
    invoke-virtual {v10, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 147
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 148
    .local v13, "year":I
    const/4 v14, 0x2

    invoke-virtual {v10, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/2addr v14, v11

    .line 149
    .local v14, "month":I
    const/4 v15, 0x5

    invoke-virtual {v10, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 150
    .local v15, "day":I
    const/16 v11, 0xb

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 151
    .local v11, "hour":I
    const/16 v0, 0xc

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 152
    .local v0, "minute":I
    const/16 v1, 0xd

    move-object/from16 v17, v3

    invoke-virtual {v10, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 153
    .local v3, "second":I
    .local v17, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v1, 0xe

    invoke-virtual {v10, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 156
    .local v1, "millis":I
    move-object/from16 v19, v5

    .end local v5    # "date":Ljava/util/Date;
    .local v19, "date":Ljava/util/Date;
    if-lez v4, :cond_10

    .line 157
    const-string v5, "0000-00-00 00:00:00.000000000"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 158
    .local v5, "buf":[C
    const/16 v6, 0x1d

    invoke-static {v4, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 159
    const/16 v6, 0x13

    invoke-static {v3, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 160
    const/16 v6, 0x10

    invoke-static {v0, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 161
    const/16 v6, 0xd

    invoke-static {v11, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 162
    const/16 v6, 0xa

    invoke-static {v15, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 163
    const/4 v6, 0x7

    invoke-static {v14, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 164
    const/4 v6, 0x4

    invoke-static {v13, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_3

    .line 165
    .end local v5    # "buf":[C
    :cond_10
    if-eqz v1, :cond_11

    .line 166
    const-string v5, "0000-00-00T00:00:00.000"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 167
    .restart local v5    # "buf":[C
    const/16 v6, 0x17

    invoke-static {v1, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 168
    const/16 v6, 0x13

    invoke-static {v3, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 169
    const/16 v6, 0x10

    invoke-static {v0, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 170
    const/16 v6, 0xd

    invoke-static {v11, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 171
    const/16 v6, 0xa

    invoke-static {v15, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 172
    const/4 v6, 0x7

    invoke-static {v14, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 173
    const/4 v6, 0x4

    invoke-static {v13, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_3

    .line 176
    .end local v5    # "buf":[C
    :cond_11
    if-nez v3, :cond_12

    if-nez v0, :cond_12

    if-nez v11, :cond_12

    .line 177
    const-string v5, "0000-00-00"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 178
    .restart local v5    # "buf":[C
    const/16 v6, 0xa

    invoke-static {v15, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 179
    const/4 v6, 0x7

    invoke-static {v14, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 180
    const/4 v6, 0x4

    invoke-static {v13, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_3

    .line 182
    .end local v5    # "buf":[C
    :cond_12
    const-string v5, "0000-00-00T00:00:00"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 183
    .restart local v5    # "buf":[C
    const/16 v6, 0x13

    invoke-static {v3, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 184
    const/16 v6, 0x10

    invoke-static {v0, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 185
    const/16 v6, 0xd

    invoke-static {v11, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 186
    const/16 v6, 0xa

    invoke-static {v15, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 187
    const/4 v6, 0x7

    invoke-static {v14, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 188
    const/4 v6, 0x4

    invoke-static {v13, v6, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 193
    :goto_3
    if-lez v4, :cond_15

    .line 194
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_4
    move/from16 v22, v18

    .line 195
    .end local v18    # "i":I
    .local v22, "i":I
    move/from16 v23, v0

    move/from16 v6, v22

    const/16 v0, 0x9

    if-ge v6, v0, :cond_14

    .line 196
    .end local v0    # "minute":I
    .end local v22    # "i":I
    .local v6, "i":I
    .local v23, "minute":I
    array-length v0, v5

    sub-int/2addr v0, v6

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    .line 197
    .local v0, "off":I
    move/from16 v24, v1

    aget-char v1, v5, v0

    .end local v1    # "millis":I
    .local v24, "millis":I
    move/from16 v25, v0

    const/16 v0, 0x30

    if-eq v1, v0, :cond_13

    .line 198
    .end local v0    # "off":I
    .local v25, "off":I
    goto :goto_5

    .line 195
    .end local v25    # "off":I
    :cond_13
    add-int/lit8 v18, v6, 0x1

    .line 194
    .end local v6    # "i":I
    .restart local v18    # "i":I
    move/from16 v0, v23

    move/from16 v1, v24

    goto :goto_4

    .line 201
    .end local v18    # "i":I
    .end local v24    # "millis":I
    .restart local v1    # "millis":I
    .restart local v6    # "i":I
    :cond_14
    move/from16 v24, v1

    .end local v1    # "millis":I
    .restart local v24    # "millis":I
    :goto_5
    array-length v0, v5

    sub-int/2addr v0, v6

    const/4 v1, 0x0

    invoke-virtual {v2, v5, v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    .line 202
    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 203
    return-void

    .line 206
    .end local v6    # "i":I
    .end local v23    # "minute":I
    .end local v24    # "millis":I
    .local v0, "minute":I
    .restart local v1    # "millis":I
    :cond_15
    move/from16 v23, v0

    move/from16 v24, v1

    .end local v0    # "minute":I
    .end local v1    # "millis":I
    .restart local v23    # "minute":I
    .restart local v24    # "millis":I
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([C)V

    .line 208
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    move/from16 v27, v3

    move/from16 v26, v4

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .end local v3    # "second":I
    .end local v4    # "nanos":I
    .local v26, "nanos":I
    .local v27, "second":I
    invoke-virtual {v0, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x4a5bba00    # 3600000.0f

    div-float/2addr v0, v1

    .line 209
    .local v0, "timeZoneF":F
    float-to-int v1, v0

    .line 210
    .local v1, "timeZone":I
    int-to-double v3, v1

    const-wide/16 v20, 0x0

    cmpl-double v3, v3, v20

    if-nez v3, :cond_16

    .line 211
    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_7

    .line 213
    :cond_16
    const/16 v3, 0x2b

    const/16 v4, 0x9

    if-le v1, v4, :cond_17

    .line 214
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 215
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_6

    .line 216
    :cond_17
    if-lez v1, :cond_18

    .line 217
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 218
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 219
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_6

    .line 220
    :cond_18
    const/16 v3, -0x9

    const/16 v4, 0x2d

    if-ge v1, v3, :cond_19

    .line 221
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 222
    neg-int v3, v1

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_6

    .line 223
    :cond_19
    if-gez v1, :cond_1a

    .line 224
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 225
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 226
    neg-int v3, v1

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 228
    :cond_1a
    :goto_6
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 231
    int-to-float v3, v1

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x42700000    # 60.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 232
    .local v3, "offSet":I
    const-string v4, "%02d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v18, 0x0

    aput-object v16, v6, v18

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 235
    .end local v3    # "offSet":I
    :goto_7
    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 236
    .end local v0    # "timeZoneF":F
    .end local v1    # "timeZone":I
    .end local v5    # "buf":[C
    .end local v9    # "quote":C
    .end local v10    # "calendar":Ljava/util/Calendar;
    .end local v11    # "hour":I
    .end local v13    # "year":I
    .end local v14    # "month":I
    .end local v15    # "day":I
    .end local v23    # "minute":I
    .end local v24    # "millis":I
    .end local v27    # "second":I
    goto :goto_8

    .line 237
    .end local v17    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v19    # "date":Ljava/util/Date;
    .end local v26    # "nanos":I
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "nanos":I
    .local v5, "date":Ljava/util/Date;
    :cond_1b
    move-object/from16 v17, v3

    move/from16 v26, v4

    move-object/from16 v19, v5

    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "nanos":I
    .end local v5    # "date":Ljava/util/Date;
    .restart local v17    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v19    # "date":Ljava/util/Date;
    .restart local v26    # "nanos":I
    invoke-virtual {v2, v7, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 239
    :goto_8
    return-void
.end method
