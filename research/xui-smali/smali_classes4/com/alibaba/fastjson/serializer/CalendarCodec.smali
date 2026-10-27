.class public Lcom/alibaba/fastjson/serializer/CalendarCodec;
.super Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;
.source "CalendarCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
.implements Lcom/alibaba/fastjson/serializer/ContextObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;


# instance fields
.field private dateFactory:Ljavax/xml/datatype/DatatypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/alibaba/fastjson/serializer/CalendarCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/CalendarCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method public createXMLGregorianCalendar(Ljava/util/Calendar;)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 3
    .param p1, "calendar"    # Ljava/util/Calendar;

    .line 174
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->dateFactory:Ljavax/xml/datatype/DatatypeFactory;

    if-nez v0, :cond_0

    .line 176
    :try_start_0
    invoke-static {}, Ljavax/xml/datatype/DatatypeFactory;->newInstance()Ljavax/xml/datatype/DatatypeFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->dateFactory:Ljavax/xml/datatype/DatatypeFactory;
    :try_end_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljavax/xml/datatype/DatatypeConfigurationException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not obtain an instance of DatatypeFactory."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 181
    .end local v0    # "e":Ljavax/xml/datatype/DatatypeConfigurationException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->dateFactory:Ljavax/xml/datatype/DatatypeFactory;

    move-object v1, p1

    check-cast v1, Ljava/util/GregorianCalendar;

    invoke-virtual {v0, v1}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/util/GregorianCalendar;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
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

    .line 145
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/serializer/CalendarCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 6
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "features"    # I
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

    .line 151
    sget-object v0, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/serializer/DateCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 153
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Calendar;

    if-eqz v1, :cond_0

    .line 154
    return-object v0

    .line 157
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Date;

    .line 158
    .local v1, "date":Ljava/util/Date;
    if-nez v1, :cond_1

    .line 159
    const/4 v2, 0x0

    return-object v2

    .line 162
    :cond_1
    iget-object v2, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 163
    .local v2, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    .line 164
    .local v3, "calendar":Ljava/util/Calendar;
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 166
    const-class v4, Ljavax/xml/datatype/XMLGregorianCalendar;

    if-ne p2, v4, :cond_2

    .line 167
    move-object v4, v3

    check-cast v4, Ljava/util/GregorianCalendar;

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/CalendarCodec;->createXMLGregorianCalendar(Ljava/util/Calendar;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v4

    return-object v4

    .line 170
    :cond_2
    return-object v3
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 185
    const/4 v0, 0x2

    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/BeanContext;)V
    .locals 7
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "context"    # Lcom/alibaba/fastjson/serializer/BeanContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 31
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/BeanContext;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    check-cast v2, Ljava/util/Calendar;

    .line 34
    .local v2, "calendar":Ljava/util/Calendar;
    const-string v3, "unixtime"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 36
    .local v3, "seconds":J
    long-to-int v5, v3

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 37
    return-void

    .line 40
    .end local v3    # "seconds":J
    :cond_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 41
    .local v3, "dateFormat":Ljava/text/DateFormat;
    nop

    .line 44
    iget-object v4, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 45
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 21
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

    .line 52
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 54
    .local v2, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez v1, :cond_0

    .line 55
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 56
    return-void

    .line 60
    :cond_0
    instance-of v3, v1, Ljavax/xml/datatype/XMLGregorianCalendar;

    if-eqz v3, :cond_1

    .line 61
    move-object v3, v1

    check-cast v3, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {v3}, Ljavax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v3

    .local v3, "calendar":Ljava/util/Calendar;
    goto :goto_0

    .line 63
    .end local v3    # "calendar":Ljava/util/Calendar;
    :cond_1
    move-object v3, v1

    check-cast v3, Ljava/util/Calendar;

    .line 66
    .restart local v3    # "calendar":Ljava/util/Calendar;
    :goto_0
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 67
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x27

    goto :goto_1

    :cond_2
    const/16 v4, 0x22

    .line 70
    .local v4, "quote":C
    :goto_1
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 72
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 73
    .local v6, "year":I
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v5

    .line 74
    .local v7, "month":I
    const/4 v8, 0x5

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 75
    .local v8, "day":I
    const/16 v9, 0xb

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 76
    .local v9, "hour":I
    const/16 v10, 0xc

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 77
    .local v10, "minute":I
    const/16 v11, 0xd

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 78
    .local v12, "second":I
    const/16 v13, 0xe

    invoke-virtual {v3, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 81
    .local v13, "millis":I
    const/16 v14, 0x10

    const/16 v15, 0x13

    if-eqz v13, :cond_3

    .line 82
    const-string v5, "0000-00-00T00:00:00.000"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 83
    .local v5, "buf":[C
    const/16 v11, 0x17

    invoke-static {v13, v11, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 84
    invoke-static {v12, v15, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 85
    invoke-static {v10, v14, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 86
    const/16 v11, 0xd

    invoke-static {v9, v11, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 87
    const/16 v11, 0xa

    invoke-static {v8, v11, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 88
    const/4 v11, 0x7

    invoke-static {v7, v11, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 89
    const/4 v11, 0x4

    invoke-static {v6, v11, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_2

    .line 92
    .end local v5    # "buf":[C
    :cond_3
    if-nez v12, :cond_4

    if-nez v10, :cond_4

    if-nez v9, :cond_4

    .line 93
    const-string v5, "0000-00-00"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 94
    .restart local v5    # "buf":[C
    const/16 v11, 0xa

    invoke-static {v8, v11, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 95
    const/4 v11, 0x7

    invoke-static {v7, v11, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 96
    const/4 v11, 0x4

    invoke-static {v6, v11, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_2

    .line 98
    .end local v5    # "buf":[C
    :cond_4
    const-string v5, "0000-00-00T00:00:00"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 99
    .restart local v5    # "buf":[C
    invoke-static {v12, v15, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 100
    invoke-static {v10, v14, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 101
    const/16 v11, 0xd

    invoke-static {v9, v11, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 102
    const/16 v11, 0xa

    invoke-static {v8, v11, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 103
    const/4 v11, 0x7

    invoke-static {v7, v11, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 104
    const/4 v11, 0x4

    invoke-static {v6, v11, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 108
    :goto_2
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([C)V

    .line 110
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v11

    int-to-float v11, v11

    const v14, 0x4a5bba00    # 3600000.0f

    div-float/2addr v11, v14

    .line 111
    .local v11, "timeZoneF":F
    float-to-int v14, v11

    .line 112
    .local v14, "timeZone":I
    move-object/from16 v20, v5

    move/from16 v19, v6

    int-to-double v5, v14

    .end local v5    # "buf":[C
    .end local v6    # "year":I
    .local v19, "year":I
    .local v20, "buf":[C
    const-wide/16 v17, 0x0

    cmpl-double v5, v5, v17

    if-nez v5, :cond_5

    .line 113
    const/16 v5, 0x5a

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_4

    .line 115
    :cond_5
    const/16 v5, 0x9

    const/16 v6, 0x2b

    if-le v14, v5, :cond_6

    .line 116
    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 117
    invoke-virtual {v2, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_3

    .line 118
    :cond_6
    const/16 v5, 0x30

    if-lez v14, :cond_7

    .line 119
    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 120
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 121
    invoke-virtual {v2, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_3

    .line 122
    :cond_7
    const/16 v6, -0x9

    const/16 v15, 0x2d

    if-ge v14, v6, :cond_8

    .line 123
    invoke-virtual {v2, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 124
    invoke-virtual {v2, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_3

    .line 125
    :cond_8
    if-gez v14, :cond_9

    .line 126
    invoke-virtual {v2, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 127
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 128
    neg-int v5, v14

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 130
    :cond_9
    :goto_3
    const/16 v5, 0x3a

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 133
    int-to-float v5, v14

    sub-float v5, v11, v5

    const/high16 v6, 0x42700000    # 60.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 134
    .local v5, "offSet":I
    const-string v6, "%02d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v6, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 137
    .end local v5    # "offSet":I
    :goto_4
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 138
    .end local v4    # "quote":C
    .end local v7    # "month":I
    .end local v8    # "day":I
    .end local v9    # "hour":I
    .end local v10    # "minute":I
    .end local v11    # "timeZoneF":F
    .end local v12    # "second":I
    .end local v13    # "millis":I
    .end local v14    # "timeZone":I
    .end local v19    # "year":I
    .end local v20    # "buf":[C
    goto :goto_5

    .line 139
    :cond_a
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 140
    .local v4, "date":Ljava/util/Date;
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 142
    .end local v4    # "date":Ljava/util/Date;
    :goto_5
    return-void
.end method
