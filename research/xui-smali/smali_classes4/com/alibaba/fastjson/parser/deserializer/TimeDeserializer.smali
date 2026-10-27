.class public Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;
.super Ljava/lang/Object;
.source "TimeDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
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

    .line 19
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 21
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 22
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 24
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 28
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 30
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 34
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v3

    .line 35
    .local v3, "time":J
    const/16 v1, 0xd

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 36
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v1, :cond_0

    .line 39
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 41
    new-instance v1, Ljava/sql/Time;

    invoke-direct {v1, v3, v4}, Ljava/sql/Time;-><init>(J)V

    return-object v1

    .line 37
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "syntax error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    .end local v3    # "time":J
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "syntax error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "syntax error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 46
    .local v1, "val":Ljava/lang/Object;
    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 47
    return-object v2

    .line 50
    :cond_4
    instance-of v3, v1, Ljava/sql/Time;

    if-eqz v3, :cond_5

    .line 51
    return-object v1

    .line 52
    :cond_5
    instance-of v3, v1, Ljava/math/BigDecimal;

    if-eqz v3, :cond_6

    .line 53
    new-instance v2, Ljava/sql/Time;

    move-object v3, v1

    check-cast v3, Ljava/math/BigDecimal;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->longValue(Ljava/math/BigDecimal;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Time;-><init>(J)V

    return-object v2

    .line 54
    :cond_6
    instance-of v3, v1, Ljava/lang/Number;

    if-eqz v3, :cond_7

    .line 55
    new-instance v2, Ljava/sql/Time;

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Time;-><init>(J)V

    return-object v2

    .line 56
    :cond_7
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 57
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 58
    .local v3, "strVal":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_8

    .line 59
    return-object v2

    .line 63
    :cond_8
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 64
    .local v2, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 65
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .local v4, "longVal":J
    goto :goto_2

    .line 67
    .end local v4    # "longVal":J
    :cond_9
    const/4 v4, 0x1

    .line 68
    .local v4, "isDigit":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_c

    .line 69
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 70
    .local v6, "ch":C
    const/16 v7, 0x30

    if-lt v6, v7, :cond_b

    const/16 v7, 0x39

    if-le v6, v7, :cond_a

    goto :goto_1

    .line 68
    .end local v6    # "ch":C
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 71
    .restart local v6    # "ch":C
    :cond_b
    :goto_1
    const/4 v4, 0x0

    .line 72
    nop

    .line 75
    .end local v5    # "i":I
    .end local v6    # "ch":C
    :cond_c
    if-nez v4, :cond_d

    .line 76
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 77
    invoke-static {v3}, Ljava/sql/Time;->valueOf(Ljava/lang/String;)Ljava/sql/Time;

    move-result-object v5

    return-object v5

    .line 80
    :cond_d
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 82
    .local v4, "longVal":J
    :goto_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 83
    new-instance v6, Ljava/sql/Time;

    invoke-direct {v6, v4, v5}, Ljava/sql/Time;-><init>(J)V

    return-object v6

    .line 86
    .end local v2    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v3    # "strVal":Ljava/lang/String;
    .end local v4    # "longVal":J
    :cond_e
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "parse error"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 90
    const/4 v0, 0x2

    return v0
.end method
