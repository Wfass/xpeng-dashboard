.class public Lcom/alibaba/fastjson/serializer/LongCodec;
.super Ljava/lang/Object;
.source "LongCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/LongCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/alibaba/fastjson/serializer/LongCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/LongCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/LongCodec;->instance:Lcom/alibaba/fastjson/serializer/LongCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 58
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 62
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :try_start_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    .line 63
    .local v1, "token":I
    const/4 v2, 0x2

    const/16 v3, 0x10

    if-ne v1, v2, :cond_0

    .line 64
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v4

    .line 65
    .local v4, "longValue":J
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 66
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 67
    .end local v4    # "longValue":J
    .local v2, "longObject":Ljava/lang/Long;
    goto :goto_1

    .end local v2    # "longObject":Ljava/lang/Long;
    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 68
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v2

    .line 69
    .local v2, "number":Ljava/math/BigDecimal;
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->longValue(Ljava/math/BigDecimal;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 70
    .local v4, "longObject":Ljava/lang/Long;
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 71
    .end local v2    # "number":Ljava/math/BigDecimal;
    nop

    .line 87
    move-object v2, v4

    goto :goto_1

    .line 72
    .end local v4    # "longObject":Ljava/lang/Long;
    :cond_1
    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 73
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 74
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;)Ljava/lang/Object;

    .line 75
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v3

    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v3

    .line 76
    .local v2, "longObject":Ljava/lang/Long;
    goto :goto_0

    .line 77
    .end local v2    # "longObject":Ljava/lang/Long;
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v2

    .line 79
    .local v2, "value":Ljava/lang/Object;
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "value":Ljava/lang/Object;
    move-object v2, v3

    .line 81
    .local v2, "longObject":Ljava/lang/Long;
    :goto_0
    if-nez v2, :cond_3

    .line 82
    const/4 v3, 0x0

    return-object v3

    .line 87
    .end local v1    # "token":I
    :cond_3
    :goto_1
    nop

    .line 86
    move-object v1, v2

    .line 89
    .end local v2    # "longObject":Ljava/lang/Long;
    .local v1, "longObject":Ljava/lang/Long;
    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne p2, v2, :cond_4

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 90
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto :goto_2

    .line 89
    :cond_4
    move-object v2, v1

    :goto_2
    return-object v2

    .line 85
    .end local v1    # "longObject":Ljava/lang/Long;
    :catch_0
    move-exception v1

    .line 86
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseLong error, field : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 95
    const/4 v0, 0x2

    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 5
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

    .line 39
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 41
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_0

    .line 42
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    goto :goto_0

    .line 44
    :cond_0
    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 45
    .local v1, "value":J
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 47
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    const-wide/32 v3, -0x80000000

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    const-class v3, Ljava/lang/Long;

    if-eq p4, v3, :cond_1

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p4, v3, :cond_1

    .line 51
    const/16 v3, 0x4c

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 54
    .end local v1    # "value":J
    :cond_1
    :goto_0
    return-void
.end method
