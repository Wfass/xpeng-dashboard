.class public interface abstract Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
.super Ljava/lang/Object;
.source "ObjectDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# virtual methods
.method public abstract deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
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
.end method

.method public getFastMatchToken()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 15
    new-instance p4, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    sget-object p5, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-direct {p4, p1, p5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 16
    invoke-interface {p0, p4, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
