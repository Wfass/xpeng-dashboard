.class public Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;
.super Lorg/springframework/http/converter/AbstractHttpMessageConverter;
.source "FastJsonHttpMessageConverter.java"

# interfaces
.implements Lorg/springframework/http/converter/GenericHttpMessageConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/springframework/http/converter/AbstractHttpMessageConverter<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/springframework/http/converter/GenericHttpMessageConverter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final APPLICATION_JAVASCRIPT:Lorg/springframework/http/MediaType;


# instance fields
.field protected dateFormat:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

.field protected features:[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected filters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    new-instance v0, Lorg/springframework/http/MediaType;

    const-string v1, "application"

    const-string v2, "javascript"

    invoke-direct {v0, v1, v2}, Lorg/springframework/http/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->APPLICATION_JAVASCRIPT:Lorg/springframework/http/MediaType;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 96
    sget-object v0, Lorg/springframework/http/MediaType;->ALL:Lorg/springframework/http/MediaType;

    invoke-direct {p0, v0}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;-><init>(Lorg/springframework/http/MediaType;)V

    .line 61
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iput-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->features:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 64
    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->filters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    .line 73
    new-instance v0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 97
    return-void
.end method

.method private readType(Ljava/lang/reflect/Type;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;
    .locals 7
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "inputMessage"    # Lorg/springframework/http/HttpInputMessage;

    .line 262
    :try_start_0
    invoke-interface {p2}, Lorg/springframework/http/HttpInputMessage;->getBody()Ljava/io/InputStream;

    move-result-object v0

    .line 263
    .local v0, "in":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 264
    invoke-virtual {v1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 266
    invoke-virtual {v2}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getParserConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v3

    iget-object v2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 267
    invoke-virtual {v2}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getParseProcess()Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;

    move-result-object v4

    sget v5, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    iget-object v2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 269
    invoke-virtual {v2}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v6

    .line 263
    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 272
    .end local v0    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 273
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lorg/springframework/http/converter/HttpMessageNotReadableException;

    const-string v2, "I/O error while reading input message"

    invoke-direct {v1, v2, v0}, Lorg/springframework/http/converter/HttpMessageNotReadableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 270
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 271
    .local v0, "ex":Lcom/alibaba/fastjson/JSONException;
    new-instance v1, Lorg/springframework/http/converter/HttpMessageNotReadableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON parse error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/springframework/http/converter/HttpMessageNotReadableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private strangeCodeForJackson(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 340
    if-eqz p1, :cond_0

    .line 341
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "className":Ljava/lang/String;
    const-string v1, "com.fasterxml.jackson.databind.node.ObjectNode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 346
    .end local v0    # "className":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public addSerializeFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    .locals 4
    .param p1, "filter"    # Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    if-nez p1, :cond_0

    .line 205
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    move-result-object v0

    array-length v0, v0

    .line 209
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    .line 210
    .local v1, "filters":[Lcom/alibaba/fastjson/serializer/SerializeFilter;
    iget-object v2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v1, v2

    .line 212
    iget-object v2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setSerializeFilters([Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    .line 213
    return-void
.end method

.method public canRead(Ljava/lang/reflect/Type;Ljava/lang/Class;Lorg/springframework/http/MediaType;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p3, "mediaType"    # Lorg/springframework/http/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/springframework/http/MediaType;",
            ")Z"
        }
    .end annotation

    .line 222
    .local p2, "contextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-super {p0, p2, p3}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;->canRead(Ljava/lang/Class;Lorg/springframework/http/MediaType;)Z

    move-result v0

    return v0
.end method

.method public canWrite(Ljava/lang/reflect/Type;Ljava/lang/Class;Lorg/springframework/http/MediaType;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p3, "mediaType"    # Lorg/springframework/http/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/springframework/http/MediaType;",
            ")Z"
        }
    .end annotation

    .line 227
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-super {p0, p2, p3}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;->canWrite(Ljava/lang/Class;Lorg/springframework/http/MediaType;)Z

    move-result v0

    return v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getDateFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFastJsonConfig()Lcom/alibaba/fastjson/support/config/FastJsonConfig;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-object v0
.end method

.method public getFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializerFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    return-object v0
.end method

.method public getFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    move-result-object v0

    return-object v0
.end method

.method protected getType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 350
    .local p2, "contextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->access$100(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0

    .line 354
    :cond_0
    return-object p1
.end method

.method public read(Ljava/lang/reflect/Type;Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p3, "inputMessage"    # Lorg/springframework/http/HttpInputMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/springframework/http/HttpInputMessage;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotReadableException;
        }
    .end annotation

    .line 237
    .local p2, "contextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->getType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->readType(Ljava/lang/reflect/Type;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected readInternal(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;
    .locals 1
    .param p2, "inputMessage"    # Lorg/springframework/http/HttpInputMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/springframework/http/HttpInputMessage;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotReadableException;
        }
    .end annotation

    .line 256
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->getType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->readType(Ljava/lang/reflect/Type;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setCharset(Ljava/nio/charset/Charset;)V

    .line 121
    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "dateFormat"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setDateFormat(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public setFastJsonConfig(Lcom/alibaba/fastjson/support/config/FastJsonConfig;)V
    .locals 0
    .param p1, "fastJsonConfig"    # Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 88
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 89
    return-void
.end method

.method public varargs setFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1
    .param p1, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setSerializerFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 169
    return-void
.end method

.method public varargs setFilters([Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    .locals 1
    .param p1, "filters"    # [Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setSerializeFilters([Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    .line 193
    return-void
.end method

.method protected supports(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 217
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    return v0
.end method

.method public write(Ljava/lang/Object;Ljava/lang/reflect/Type;Lorg/springframework/http/MediaType;Lorg/springframework/http/HttpOutputMessage;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "contentType"    # Lorg/springframework/http/MediaType;
    .param p4, "outputMessage"    # Lorg/springframework/http/HttpOutputMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotWritableException;
        }
    .end annotation

    .line 244
    invoke-super {p0, p1, p3, p4}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;->write(Ljava/lang/Object;Lorg/springframework/http/MediaType;Lorg/springframework/http/HttpOutputMessage;)V

    .line 246
    return-void
.end method

.method protected writeInternal(Ljava/lang/Object;Lorg/springframework/http/HttpOutputMessage;)V
    .locals 15
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "outputMessage"    # Lorg/springframework/http/HttpOutputMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotWritableException;
        }
    .end annotation

    move-object v1, p0

    .line 280
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v10, v0

    .line 282
    .local v10, "outnew":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lorg/springframework/http/HttpOutputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v0

    .line 285
    .local v0, "headers":Lorg/springframework/http/HttpHeaders;
    iget-object v2, v1, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    move-result-object v2

    move-object v11, v2

    .line 286
    .local v11, "globalFilters":[Lcom/alibaba/fastjson/serializer/SerializeFilter;
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v12, v2

    .line 288
    .local v12, "allFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/SerializeFilter;>;"
    const/4 v2, 0x0

    .line 291
    .local v2, "isJsonp":Z
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->strangeCodeForJackson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 293
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lcom/alibaba/fastjson/support/spring/FastJsonContainer;

    if-eqz v4, :cond_0

    .line 294
    move-object v4, v3

    check-cast v4, Lcom/alibaba/fastjson/support/spring/FastJsonContainer;

    .line 295
    .local v4, "fastJsonContainer":Lcom/alibaba/fastjson/support/spring/FastJsonContainer;
    invoke-virtual {v4}, Lcom/alibaba/fastjson/support/spring/FastJsonContainer;->getFilters()Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;

    move-result-object v5

    .line 296
    .local v5, "filters":Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;
    invoke-virtual {v5}, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;->getFilters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 297
    invoke-virtual {v4}, Lcom/alibaba/fastjson/support/spring/FastJsonContainer;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 303
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "fastJsonContainer":Lcom/alibaba/fastjson/support/spring/FastJsonContainer;
    .end local v5    # "filters":Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;
    .local v13, "value":Ljava/lang/Object;
    :cond_0
    move-object v13, v3

    instance-of v3, v13, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    if-eqz v3, :cond_1

    .line 304
    move-object v3, v13

    check-cast v3, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->getJsonpFunction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/springframework/util/StringUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 305
    const/4 v2, 0x1

    goto :goto_0

    .line 307
    :cond_1
    instance-of v3, v13, Lcom/alibaba/fastjson/JSONPObject;

    if-eqz v3, :cond_2

    .line 308
    const/4 v2, 0x1

    .line 312
    .end local v2    # "isJsonp":Z
    .local v14, "isJsonp":Z
    :cond_2
    :goto_0
    move v14, v2

    iget-object v2, v1, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 313
    invoke-virtual {v2}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    iget-object v2, v1, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 315
    invoke-virtual {v2}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeConfig()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v5

    .line 317
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    invoke-interface {v12, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    iget-object v2, v1, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 318
    invoke-virtual {v2}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getDateFormat()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    iget-object v2, v1, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 320
    invoke-virtual {v2}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializerFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v9

    .line 312
    move-object v2, v10

    move-object v4, v13

    invoke-static/range {v2 .. v9}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v2

    .line 322
    .local v2, "len":I
    if-eqz v14, :cond_3

    .line 323
    sget-object v3, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->APPLICATION_JAVASCRIPT:Lorg/springframework/http/MediaType;

    invoke-virtual {v0, v3}, Lorg/springframework/http/HttpHeaders;->setContentType(Lorg/springframework/http/MediaType;)V

    .line 326
    :cond_3
    iget-object v3, v1, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->isWriteContentLength()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 327
    int-to-long v3, v2

    invoke-virtual {v0, v3, v4}, Lorg/springframework/http/HttpHeaders;->setContentLength(J)V

    .line 330
    :cond_4
    invoke-interface/range {p2 .. p2}, Lorg/springframework/http/HttpOutputMessage;->getBody()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    .end local v0    # "headers":Lorg/springframework/http/HttpHeaders;
    .end local v2    # "len":I
    .end local v11    # "globalFilters":[Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .end local v12    # "allFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/SerializeFilter;>;"
    .end local v13    # "value":Ljava/lang/Object;
    .end local v14    # "isJsonp":Z
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 336
    nop

    .line 337
    return-void

    .line 335
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "ex":Lcom/alibaba/fastjson/JSONException;
    :try_start_1
    new-instance v2, Lorg/springframework/http/converter/HttpMessageNotWritableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not write JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/springframework/http/converter/HttpMessageNotWritableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    .end local v0    # "ex":Lcom/alibaba/fastjson/JSONException;
    :goto_1
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v0
.end method
