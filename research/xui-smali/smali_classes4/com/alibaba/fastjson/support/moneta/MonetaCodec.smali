.class public Lcom/alibaba/fastjson/support/moneta/MonetaCodec;
.super Ljava/lang/Object;
.source "MonetaCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/support/moneta/MonetaCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/alibaba/fastjson/support/moneta/MonetaCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/support/moneta/MonetaCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/support/moneta/MonetaCodec;->instance:Lcom/alibaba/fastjson/support/moneta/MonetaCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
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

    .line 35
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 36
    .local v0, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string v1, "currency"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 38
    .local v1, "currency":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 39
    .local v2, "currencyCode":Ljava/lang/String;
    instance-of v3, v1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v3, :cond_0

    .line 40
    move-object v3, v1

    check-cast v3, Lcom/alibaba/fastjson/JSONObject;

    const-string v4, "currencyCode"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 41
    :cond_0
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 42
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 45
    :cond_1
    :goto_0
    const-string v3, "numberStripped"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 47
    .local v3, "numberStripped":Ljava/lang/Object;
    instance-of v4, v3, Ljava/math/BigDecimal;

    if-eqz v4, :cond_2

    .line 48
    move-object v4, v3

    check-cast v4, Ljava/math/BigDecimal;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v2, v5}, Ljavax/money/Monetary;->getCurrency(Ljava/lang/String;[Ljava/lang/String;)Ljavax/money/CurrencyUnit;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/javamoney/moneta/Money;->of(Ljava/math/BigDecimal;Ljavax/money/CurrencyUnit;)Lorg/javamoney/moneta/Money;

    move-result-object v4

    return-object v4

    .line 51
    :cond_2
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 56
    const/4 v0, 0x0

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

    .line 21
    move-object v0, p2

    check-cast v0, Lorg/javamoney/moneta/Money;

    .line 22
    .local v0, "money":Lorg/javamoney/moneta/Money;
    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeNull()V

    .line 24
    return-void

    .line 27
    :cond_0
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 28
    .local v1, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    const/16 v2, 0x7b

    const-string v3, "numberStripped"

    invoke-virtual {v0}, Lorg/javamoney/moneta/Money;->getNumberStripped()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/math/BigDecimal;)V

    .line 29
    const/16 v2, 0x2c

    const-string v3, "currency"

    invoke-virtual {v0}, Lorg/javamoney/moneta/Money;->getCurrency()Ljavax/money/CurrencyUnit;

    move-result-object v4

    invoke-interface {v4}, Ljavax/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    .line 30
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 31
    return-void
.end method
