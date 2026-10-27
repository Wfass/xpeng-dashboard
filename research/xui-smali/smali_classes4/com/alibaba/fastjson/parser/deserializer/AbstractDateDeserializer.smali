.class public abstract Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;
.source "AbstractDateDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 16
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 10
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
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

    .line 22
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 25
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x10

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 26
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v3

    .line 27
    .local v3, "millis":J
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 28
    const-string v1, "unixtime"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    const-wide/16 v1, 0x3e8

    mul-long/2addr v3, v1

    .line 31
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 32
    .end local v3    # "millis":J
    .local v1, "val":Ljava/lang/Object;
    goto/16 :goto_7

    .end local v1    # "val":Ljava/lang/Object;
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-ne v1, v5, :cond_c

    .line 33
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "strVal":Ljava/lang/String;
    if-eqz p4, :cond_9

    .line 36
    const-string v3, "yyyy-MM-dd HH:mm:ss.SSSSSSSSS"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, p2, Ljava/lang/Class;

    if-eqz v3, :cond_2

    move-object v3, p2

    check-cast v3, Ljava/lang/Class;

    .line 38
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "java.sql.Timestamp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 39
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;

    move-result-object v2

    return-object v2

    .line 42
    :cond_2
    move-object v3, v4

    .line 44
    .local v3, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    iget-object v6, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v5, p4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    .line 54
    goto :goto_0

    .line 45
    :catch_0
    move-exception v5

    .line 46
    .local v5, "ex":Ljava/lang/IllegalArgumentException;
    const-string v6, "T"

    invoke-virtual {p4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 47
    const-string v6, "T"

    const-string v7, "\'T\'"

    invoke-virtual {p4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, "fromat2":Ljava/lang/String;
    :try_start_1
    new-instance v7, Ljava/text/SimpleDateFormat;

    iget-object v8, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->getLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v7

    .line 52
    goto :goto_0

    .line 50
    :catch_1
    move-exception v2

    .line 51
    .local v2, "e2":Ljava/lang/IllegalArgumentException;
    throw v5

    .line 56
    .end local v2    # "e2":Ljava/lang/IllegalArgumentException;
    .end local v5    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v6    # "fromat2":Ljava/lang/String;
    :cond_3
    :goto_0
    sget-object v5, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    if-eqz v5, :cond_4

    .line 57
    iget-object v5, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 61
    :cond_4
    :try_start_2
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v5

    .line 65
    .local v4, "val":Ljava/lang/Object;
    goto :goto_1

    .line 62
    .end local v4    # "val":Ljava/lang/Object;
    :catch_2
    move-exception v5

    .line 63
    .local v5, "ex":Ljava/text/ParseException;
    nop

    .line 67
    .end local v5    # "ex":Ljava/text/ParseException;
    .restart local v4    # "val":Ljava/lang/Object;
    :goto_1
    if-nez v4, :cond_6

    sget-object v5, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    if-ne v5, v6, :cond_6

    .line 69
    :try_start_3
    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, p4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v3, v5

    .line 79
    goto :goto_2

    .line 70
    :catch_3
    move-exception v5

    .line 71
    .local v5, "ex":Ljava/lang/IllegalArgumentException;
    const-string v6, "T"

    invoke-virtual {p4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 72
    const-string v6, "T"

    const-string v7, "\'T\'"

    invoke-virtual {p4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 74
    .restart local v6    # "fromat2":Ljava/lang/String;
    :try_start_4
    new-instance v7, Ljava/text/SimpleDateFormat;

    iget-object v8, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->getLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v3, v7

    .line 77
    goto :goto_2

    .line 75
    :catch_4
    move-exception v2

    .line 76
    .restart local v2    # "e2":Ljava/lang/IllegalArgumentException;
    throw v5

    .line 80
    .end local v2    # "e2":Ljava/lang/IllegalArgumentException;
    .end local v5    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v6    # "fromat2":Ljava/lang/String;
    :cond_5
    :goto_2
    iget-object v5, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 83
    :try_start_5
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v4, v5

    .line 87
    goto :goto_3

    .line 84
    :catch_5
    move-exception v5

    .line 85
    .local v5, "ex":Ljava/text/ParseException;
    const/4 v4, 0x0

    .line 90
    .end local v5    # "ex":Ljava/text/ParseException;
    :cond_6
    :goto_3
    if-nez v4, :cond_8

    .line 91
    const-string v5, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x13

    if-ne v5, v6, :cond_7

    .line 94
    :try_start_6
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v7, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 95
    .local v5, "df":Ljava/text/SimpleDateFormat;
    sget-object v6, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 96
    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_6

    move-object v4, v6

    .end local v5    # "df":Ljava/text/SimpleDateFormat;
    goto :goto_4

    .line 97
    :catch_6
    move-exception v5

    .line 99
    .local v5, "ex2":Ljava/text/ParseException;
    const/4 v4, 0x0

    .line 100
    .end local v3    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .end local v5    # "ex2":Ljava/text/ParseException;
    :goto_4
    goto :goto_5

    .line 103
    .restart local v3    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :cond_7
    const/4 v3, 0x0

    .line 106
    .end local v4    # "val":Ljava/lang/Object;
    .local v3, "val":Ljava/lang/Object;
    move-object v4, v3

    .end local v3    # "val":Ljava/lang/Object;
    .restart local v4    # "val":Ljava/lang/Object;
    :cond_8
    :goto_5
    goto :goto_6

    .line 107
    .end local v4    # "val":Ljava/lang/Object;
    :cond_9
    nop

    .restart local v4    # "val":Ljava/lang/Object;
    :goto_6
    move-object v3, v4

    .line 110
    .end local v4    # "val":Ljava/lang/Object;
    .restart local v3    # "val":Ljava/lang/Object;
    if-nez v3, :cond_b

    .line 111
    move-object v3, v1

    .line 112
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 114
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 115
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 116
    .local v2, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 117
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 119
    :cond_a
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 122
    .end local v2    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v3    # "val":Ljava/lang/Object;
    .local v1, "val":Ljava/lang/Object;
    :cond_b
    move-object v1, v3

    goto/16 :goto_7

    .end local v1    # "val":Ljava/lang/Object;
    :cond_c
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v6, 0x8

    if-ne v1, v6, :cond_d

    .line 123
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 124
    const/4 v1, 0x0

    .restart local v1    # "val":Ljava/lang/Object;
    goto/16 :goto_7

    .line 125
    .end local v1    # "val":Ljava/lang/Object;
    :cond_d
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v6, 0xc

    const/16 v7, 0xd

    const/16 v8, 0x11

    if-ne v1, v6, :cond_12

    .line 126
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 129
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, v5, :cond_11

    .line 130
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "key":Ljava/lang/String;
    sget-object v6, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 133
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 134
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 136
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, "typeName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v8

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v9

    invoke-virtual {v8, v6, v4, v9}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v4

    .line 138
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_e

    .line 139
    move-object p2, v4

    .line 142
    :cond_e
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 143
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 146
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "typeName":Ljava/lang/String;
    :cond_f
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 148
    nop

    .line 152
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    if-ne v2, v3, :cond_10

    .line 153
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v2

    .line 154
    .local v2, "timeMillis":J
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 156
    nop

    .line 159
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 161
    .local v4, "val":Ljava/lang/Object;
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 162
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "timeMillis":J
    nop

    .line 181
    move-object v1, v4

    goto :goto_7

    .line 156
    .end local v4    # "val":Ljava/lang/Object;
    .restart local v1    # "key":Ljava/lang/String;
    :cond_10
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    .end local v1    # "key":Ljava/lang/String;
    :cond_11
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "syntax error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_12
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getResolveStatus()I

    move-result v1

    if-ne v1, v3, :cond_15

    .line 163
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 164
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 166
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, v5, :cond_14

    .line 167
    const-string v1, "val"

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 170
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 175
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 177
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 179
    .local v1, "val":Ljava/lang/Object;
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto :goto_7

    .line 168
    .end local v1    # "val":Ljava/lang/Object;
    :cond_13
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "syntax error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_14
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "syntax error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_15
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 184
    .restart local v1    # "val":Ljava/lang/Object;
    :goto_7
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;->cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
