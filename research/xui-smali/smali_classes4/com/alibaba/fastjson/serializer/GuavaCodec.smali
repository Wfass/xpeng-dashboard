.class public Lcom/alibaba/fastjson/serializer/GuavaCodec;
.super Ljava/lang/Object;
.source "GuavaCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/GuavaCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/alibaba/fastjson/serializer/GuavaCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/GuavaCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/GuavaCodec;->instance:Lcom/alibaba/fastjson/serializer/GuavaCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
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

    .line 31
    move-object v0, p2

    .line 32
    .local v0, "rawType":Ljava/lang/reflect/Type;
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    .line 33
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 36
    :cond_0
    const-class v1, Lcom/google/common/collect/ArrayListMultimap;

    if-ne v0, v1, :cond_3

    .line 37
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v1

    .line 38
    .local v1, "multimap":Lcom/google/common/collect/ArrayListMultimap;
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 39
    .local v2, "object":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 40
    .local v4, "entry":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 41
    .local v5, "value":Ljava/lang/Object;
    instance-of v6, v5, Ljava/util/Collection;

    if-eqz v6, :cond_1

    .line 42
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v5

    check-cast v7, Ljava/util/List;

    invoke-virtual {v1, v6, v7}, Lcom/google/common/collect/ArrayListMultimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 44
    :cond_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Lcom/google/common/collect/ArrayListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .end local v4    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "value":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 48
    :cond_2
    return-object v1

    .line 50
    .end local v1    # "multimap":Lcom/google/common/collect/ArrayListMultimap;
    .end local v2    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 3
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

    .line 23
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 24
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    instance-of v1, p2, Lcom/google/common/collect/Multimap;

    if-eqz v1, :cond_0

    .line 25
    move-object v1, p2

    check-cast v1, Lcom/google/common/collect/Multimap;

    .line 26
    .local v1, "multimap":Lcom/google/common/collect/Multimap;
    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 28
    .end local v1    # "multimap":Lcom/google/common/collect/Multimap;
    :cond_0
    return-void
.end method
