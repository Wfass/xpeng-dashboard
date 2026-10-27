.class public Lcom/alibaba/fastjson/support/spring/FastjsonSockJsMessageCodec;
.super Lorg/springframework/web/socket/sockjs/frame/AbstractSockJsMessageCodec;
.source "FastjsonSockJsMessageCodec.java"


# instance fields
.field private fastJsonConfig:Lcom/alibaba/fastjson2/support/config/FastJsonConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lorg/springframework/web/socket/sockjs/frame/AbstractSockJsMessageCodec;-><init>()V

    .line 12
    new-instance v0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastjsonSockJsMessageCodec;->fastJsonConfig:Lcom/alibaba/fastjson2/support/config/FastJsonConfig;

    return-void
.end method


# virtual methods
.method protected applyJsonQuoting(Ljava/lang/String;)[C
    .locals 0

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 24
    const-class v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public decodeInputStream(Ljava/io/InputStream;)[Ljava/lang/String;
    .locals 2

    .line 29
    const-class v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson2/JSON;->parseObject(Ljava/io/InputStream;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public varargs encode([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 39
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastjsonSockJsMessageCodec;->fastJsonConfig:Lcom/alibaba/fastjson2/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->getWriterFeatures()[Lcom/alibaba/fastjson2/JSONWriter$Feature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONWriter;->of([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object v0

    .line 40
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONWriter;->utf8:Z

    const/16 v2, 0x61

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    new-array v1, v4, [B

    aput-byte v2, v1, v3

    .line 41
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw([B)V

    goto :goto_0

    :cond_0
    new-array v1, v4, [C

    aput-char v2, v1, v3

    .line 43
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw([C)V

    .line 45
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 46
    :goto_1
    array-length v1, p1

    if-ge v3, v1, :cond_2

    if-eqz v3, :cond_1

    .line 48
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 50
    :cond_1
    aget-object v1, p1, v3

    .line 51
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFastJsonConfig()Lcom/alibaba/fastjson2/support/config/FastJsonConfig;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastjsonSockJsMessageCodec;->fastJsonConfig:Lcom/alibaba/fastjson2/support/config/FastJsonConfig;

    return-object v0
.end method

.method public setFastJsonConfig(Lcom/alibaba/fastjson2/support/config/FastJsonConfig;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastjsonSockJsMessageCodec;->fastJsonConfig:Lcom/alibaba/fastjson2/support/config/FastJsonConfig;

    return-void
.end method
