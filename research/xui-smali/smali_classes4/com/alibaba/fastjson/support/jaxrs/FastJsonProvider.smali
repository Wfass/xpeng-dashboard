.class public Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;
.super Ljava/lang/Object;
.source "FastJsonProvider.java"

# interfaces
.implements Ljavax/ws/rs/ext/MessageBodyReader;
.implements Ljavax/ws/rs/ext/MessageBodyWriter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/ws/rs/ext/MessageBodyReader<",
        "Ljava/lang/Object;",
        ">;",
        "Ljavax/ws/rs/ext/MessageBodyWriter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/ws/rs/Consumes;
    value = {
        "*/*"
    }
.end annotation

.annotation runtime Ljavax/ws/rs/Produces;
    value = {
        "*/*"
    }
.end annotation

.annotation runtime Ljavax/ws/rs/ext/Provider;
.end annotation


# static fields
.field public static final DEFAULT_UNREADABLES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final DEFAULT_UNWRITABLES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field protected charset:Ljava/nio/charset/Charset;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private clazzes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

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

.field private pretty:Z

.field protected providers:Ljavax/ws/rs/ext/Providers;
    .annotation runtime Ljavax/ws/rs/core/Context;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 43
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/io/InputStream;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/io/Reader;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->DEFAULT_UNREADABLES:[Ljava/lang/Class;

    .line 51
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/io/InputStream;

    aput-object v2, v1, v3

    const-class v2, Ljava/io/OutputStream;

    aput-object v2, v1, v4

    const-class v2, Ljava/io/Writer;

    aput-object v2, v1, v0

    const-class v0, Ljavax/ws/rs/core/StreamingOutput;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const-class v0, Ljavax/ws/rs/core/Response;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->DEFAULT_UNWRITABLES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "UTF-8"

    .line 58
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->charset:Ljava/nio/charset/Charset;

    .line 60
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iput-object v1, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->features:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 63
    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->filters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    .line 80
    new-instance v0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->clazzes:[Ljava/lang/Class;

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "charset"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "UTF-8"

    .line 58
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->charset:Ljava/nio/charset/Charset;

    .line 60
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iput-object v1, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->features:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 63
    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->filters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    .line 80
    new-instance v0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->clazzes:[Ljava/lang/Class;

    .line 140
    iget-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setCharset(Ljava/nio/charset/Charset;)V

    .line 141
    return-void
.end method

.method public constructor <init>([Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 119
    .local p1, "clazzes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "UTF-8"

    .line 58
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->charset:Ljava/nio/charset/Charset;

    .line 60
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iput-object v1, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->features:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 63
    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->filters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    .line 80
    new-instance v0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->clazzes:[Ljava/lang/Class;

    .line 120
    iput-object p1, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->clazzes:[Ljava/lang/Class;

    .line 121
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getDateFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFastJsonConfig()Lcom/alibaba/fastjson/support/config/FastJsonConfig;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-object v0
.end method

.method public getFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializerFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    return-object v0
.end method

.method public getFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    move-result-object v0

    return-object v0
.end method

.method public getSize(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljavax/ws/rs/core/MediaType;)J
    .locals 2
    .param p1, "t"    # Ljava/lang/Object;
    .param p3, "genericType"    # Ljava/lang/reflect/Type;
    .param p4, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p5, "mediaType"    # Ljavax/ws/rs/core/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljavax/ws/rs/core/MediaType;",
            ")J"
        }
    .end annotation

    .line 333
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected hasMatchingMediaType(Ljavax/ws/rs/core/MediaType;)Z
    .locals 3
    .param p1, "mediaType"    # Ljavax/ws/rs/core/MediaType;

    .line 292
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 293
    invoke-virtual {p1}, Ljavax/ws/rs/core/MediaType;->getSubtype()Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "subtype":Ljava/lang/String;
    const-string v2, "json"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "+json"

    .line 296
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "javascript"

    .line 297
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "x-javascript"

    .line 298
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "x-json"

    .line 299
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "x-www-form-urlencoded"

    .line 300
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "x-www-form-urlencoded"

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    .line 295
    :cond_1
    :goto_0
    return v0

    .line 303
    .end local v1    # "subtype":Ljava/lang/String;
    :cond_2
    return v0
.end method

.method protected isAssignableFrom(Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 248
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 249
    return v0

    .line 252
    :cond_0
    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 253
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 254
    return v0

    .line 252
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isReadable(Ljava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljavax/ws/rs/core/MediaType;)Z
    .locals 2
    .param p2, "genericType"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p4, "mediaType"    # Ljavax/ws/rs/core/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljavax/ws/rs/core/MediaType;",
            ")Z"
        }
    .end annotation

    .line 390
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->hasMatchingMediaType(Ljavax/ws/rs/core/MediaType;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 391
    return v1

    .line 394
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->DEFAULT_UNREADABLES:[Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->isAssignableFrom(Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 395
    return v1

    .line 397
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->isValidType(Ljava/lang/Class;[Ljava/lang/annotation/Annotation;)Z

    move-result v0

    return v0
.end method

.method protected isValidType(Ljava/lang/Class;[Ljava/lang/annotation/Annotation;)Z
    .locals 6
    .param p2, "classAnnotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/annotation/Annotation;",
            ")Z"
        }
    .end annotation

    .line 269
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 270
    return v0

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->clazzes:[Ljava/lang/Class;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 273
    iget-object v1, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->clazzes:[Ljava/lang/Class;

    array-length v3, v1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 275
    .local v5, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v5, p1, :cond_1

    .line 276
    return v2

    .line 273
    .end local v5    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 279
    :cond_2
    return v0

    .line 282
    :cond_3
    return v2
.end method

.method public isWriteable(Ljava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljavax/ws/rs/core/MediaType;)Z
    .locals 2
    .param p2, "genericType"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p4, "mediaType"    # Ljavax/ws/rs/core/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljavax/ws/rs/core/MediaType;",
            ")Z"
        }
    .end annotation

    .line 314
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->hasMatchingMediaType(Ljavax/ws/rs/core/MediaType;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 315
    return v1

    .line 318
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->DEFAULT_UNWRITABLES:[Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->isAssignableFrom(Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    return v1

    .line 321
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->isValidType(Ljava/lang/Class;[Ljava/lang/annotation/Annotation;)Z

    move-result v0

    return v0
.end method

.method protected locateConfigProvider(Ljava/lang/Class;Ljavax/ws/rs/core/MediaType;)Lcom/alibaba/fastjson/support/config/FastJsonConfig;
    .locals 4
    .param p2, "mediaType"    # Ljavax/ws/rs/core/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/ws/rs/core/MediaType;",
            ")",
            "Lcom/alibaba/fastjson/support/config/FastJsonConfig;"
        }
    .end annotation

    .line 432
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->providers:Ljavax/ws/rs/ext/Providers;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->providers:Ljavax/ws/rs/ext/Providers;

    const-class v1, Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-interface {v0, v1, p2}, Ljavax/ws/rs/ext/Providers;->getContextResolver(Ljava/lang/Class;Ljavax/ws/rs/core/MediaType;)Ljavax/ws/rs/ext/ContextResolver;

    move-result-object v0

    .line 436
    .local v0, "resolver":Ljavax/ws/rs/ext/ContextResolver;, "Ljavax/ws/rs/ext/ContextResolver<Lcom/alibaba/fastjson/support/config/FastJsonConfig;>;"
    if-nez v0, :cond_0

    .line 438
    iget-object v1, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->providers:Ljavax/ws/rs/ext/Providers;

    const-class v2, Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ljavax/ws/rs/ext/Providers;->getContextResolver(Ljava/lang/Class;Ljavax/ws/rs/core/MediaType;)Ljavax/ws/rs/ext/ContextResolver;

    move-result-object v0

    .line 441
    :cond_0
    if-eqz v0, :cond_1

    .line 443
    invoke-interface {v0, p1}, Ljavax/ws/rs/ext/ContextResolver;->getContext(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-object v1

    .line 447
    .end local v0    # "resolver":Ljavax/ws/rs/ext/ContextResolver;, "Ljavax/ws/rs/ext/ContextResolver<Lcom/alibaba/fastjson/support/config/FastJsonConfig;>;"
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-object v0
.end method

.method public readFrom(Ljava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljavax/ws/rs/core/MediaType;Ljavax/ws/rs/core/MultivaluedMap;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 8
    .param p2, "genericType"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p4, "mediaType"    # Ljavax/ws/rs/core/MediaType;
    .param p6, "entityStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljavax/ws/rs/core/MediaType;",
            "Ljavax/ws/rs/core/MultivaluedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/ws/rs/WebApplicationException;
        }
    .end annotation

    .line 411
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Object;>;"
    .local p5, "httpHeaders":Ljavax/ws/rs/core/MultivaluedMap;, "Ljavax/ws/rs/core/MultivaluedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0, p1, p4}, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->locateConfigProvider(Ljava/lang/Class;Ljavax/ws/rs/core/MediaType;)Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    move-result-object v0

    .line 413
    .local v0, "fastJsonConfig":Lcom/alibaba/fastjson/support/config/FastJsonConfig;
    nop

    .line 414
    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    .line 416
    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getParserConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v4

    .line 417
    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getParseProcess()Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;

    move-result-object v5

    sget v6, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 419
    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v7

    .line 413
    move-object v1, p6

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 421
    .end local v0    # "fastJsonConfig":Lcom/alibaba/fastjson/support/config/FastJsonConfig;
    :catch_0
    move-exception v0

    .line 423
    .local v0, "ex":Lcom/alibaba/fastjson/JSONException;
    new-instance v1, Ljavax/ws/rs/WebApplicationException;

    invoke-direct {v1, v0}, Ljavax/ws/rs/WebApplicationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setCharset(Ljava/nio/charset/Charset;)V

    .line 165
    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "dateFormat"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setDateFormat(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public setFastJsonConfig(Lcom/alibaba/fastjson/support/config/FastJsonConfig;)V
    .locals 0
    .param p1, "fastJsonConfig"    # Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 106
    iput-object p1, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 107
    return-void
.end method

.method public varargs setFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1
    .param p1, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setSerializerFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 213
    return-void
.end method

.method public varargs setFilters([Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    .locals 1
    .param p1, "filters"    # [Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setSerializeFilters([Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    .line 237
    return-void
.end method

.method public setPretty(Z)Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;
    .locals 0
    .param p1, "p"    # Z

    .line 127
    iput-boolean p1, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->pretty:Z

    .line 128
    return-object p0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljavax/ws/rs/core/MediaType;Ljavax/ws/rs/core/MultivaluedMap;Ljava/io/OutputStream;)V
    .locals 14
    .param p1, "obj"    # Ljava/lang/Object;
    .param p3, "genericType"    # Ljava/lang/reflect/Type;
    .param p4, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p5, "mediaType"    # Ljavax/ws/rs/core/MediaType;
    .param p7, "entityStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljavax/ws/rs/core/MediaType;",
            "Ljavax/ws/rs/core/MultivaluedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/ws/rs/WebApplicationException;
        }
    .end annotation

    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p6, "httpHeaders":Ljavax/ws/rs/core/MultivaluedMap;, "Ljavax/ws/rs/core/MultivaluedMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v1, p0

    .line 348
    move-object/from16 v2, p2

    move-object/from16 v3, p5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->locateConfigProvider(Ljava/lang/Class;Ljavax/ws/rs/core/MediaType;)Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    move-result-object v4

    .line 350
    .local v4, "fastJsonConfig":Lcom/alibaba/fastjson/support/config/FastJsonConfig;
    invoke-virtual {v4}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializerFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    .line 352
    .local v0, "serializerFeatures":[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    iget-boolean v5, v1, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->pretty:Z

    if-eqz v5, :cond_1

    .line 353
    if-nez v0, :cond_0

    .line 354
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v6, 0x0

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v7, v5, v6

    move-object v0, v5

    goto :goto_0

    .line 356
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 357
    .local v5, "featureList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/SerializerFeature;>;"
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 360
    .end local v5    # "featureList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/SerializerFeature;>;"
    :goto_0
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setSerializerFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 364
    .end local v0    # "serializerFeatures":[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .local v5, "serializerFeatures":[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    :cond_1
    move-object v5, v0

    .line 365
    :try_start_0
    invoke-virtual {v4}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    .line 367
    invoke-virtual {v4}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeConfig()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v9

    .line 368
    invoke-virtual {v4}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    move-result-object v10

    .line 369
    invoke-virtual {v4}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getDateFormat()Ljava/lang/String;

    move-result-object v11

    sget v12, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    .line 371
    invoke-virtual {v4}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializerFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v13

    .line 364
    move-object/from16 v6, p7

    move-object v8, p1

    invoke-static/range {v6 .. v13}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    .line 373
    invoke-virtual/range {p7 .. p7}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    nop

    .line 379
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 377
    .local v0, "ex":Lcom/alibaba/fastjson/JSONException;
    new-instance v6, Ljavax/ws/rs/WebApplicationException;

    invoke-direct {v6, v0}, Ljavax/ws/rs/WebApplicationException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method
