.class public Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;
.super Lorg/springframework/web/servlet/view/AbstractView;
.source "FastJsonView.java"


# instance fields
.field private disableCaching:Z

.field private extractValueFromSingleKeyModel:Z

.field private fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

.field private renderedAttributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lorg/springframework/web/servlet/view/AbstractView;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;->disableCaching:Z

    .line 50
    new-instance v0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    const-string v0, "application/json;charset=UTF-8"

    .line 56
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;->setContentType(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;->setExposePathVariables(Z)V

    return-void
.end method


# virtual methods
.method protected filterModel(Ljava/util/Map;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 167
    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;->renderedAttributes:Ljava/util/Set;

    invoke-static {v1}, Lorg/springframework/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;->renderedAttributes:Ljava/util/Set;

    goto :goto_0

    .line 169
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 171
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 172
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/springframework/validation/BindingResult;

    if-nez v3, :cond_1

    .line 173
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 177
    :cond_2
    iget-boolean p1, p0, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;->extractValueFromSingleKeyModel:Z

    if-eqz p1, :cond_3

    .line 178
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 179
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 180
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method

.method public getFastJsonConfig()Lcom/alibaba/fastjson/support/config/FastJsonConfig;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-object v0
.end method

.method public isExtractValueFromSingleKeyModel()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;->extractValueFromSingleKeyModel:Z

    return v0
.end method

.method protected prepareResponse(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;->setResponseContentType(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 125
    iget-object p1, p0, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->setCharacterEncoding(Ljava/lang/String;)V

    .line 126
    iget-boolean p1, p0, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;->disableCaching:Z

    if-eqz p1, :cond_0

    const-string p1, "Pragma"

    const-string v0, "no-cache"

    .line 127
    invoke-interface {p2, p1, v0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Cache-Control"

    const-string v0, "no-cache, no-store, max-age=0"

    .line 128
    invoke-interface {p2, p1, v0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    const-string p1, "Expires"

    .line 129
    invoke-interface {p2, p1, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->addDateHeader(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method protected renderMergedOutputModel(Ljava/util/Map;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljavax/servlet/http/HttpServletRequest;",
            "Ljavax/servlet/http/HttpServletResponse;",
            ")V"
        }
    .end annotation

    .line 103
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;->filterModel(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    .line 105
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 107
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializerFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/OutputStream;Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result p1

    .line 109
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->isWriteContentLength()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {p3, p1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 115
    :cond_0
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p1

    .line 116
    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 117
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 118
    invoke-virtual {p1}, Ljavax/servlet/ServletOutputStream;->flush()V

    return-void
.end method

.method public setDisableCaching(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;->disableCaching:Z

    return-void
.end method

.method public setExtractValueFromSingleKeyModel(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;->extractValueFromSingleKeyModel:Z

    return-void
.end method

.method public setFastJsonConfig(Lcom/alibaba/fastjson/support/config/FastJsonConfig;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-void
.end method

.method public setRenderedAttributes(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;->renderedAttributes:Ljava/util/Set;

    return-void
.end method

.method protected setResponseContentType(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0

    .line 189
    invoke-super {p0, p1, p2}, Lorg/springframework/web/servlet/view/AbstractView;->setResponseContentType(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-void
.end method

.method public setUpdateContentLength(Z)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setWriteContentLength(Z)V

    return-void
.end method
