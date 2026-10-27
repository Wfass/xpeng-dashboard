.class public interface abstract Lcom/alibaba/fastjson2/modules/ObjectReaderModule;
.super Ljava/lang/Object;
.source "ObjectReaderModule.java"


# virtual methods
.method public getAnnotationProcessor()Lcom/alibaba/fastjson2/modules/ObjectReaderAnnotationProcessor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/codec/BeanInfo;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 24
    invoke-interface {p0}, Lcom/alibaba/fastjson2/modules/ObjectReaderModule;->getAnnotationProcessor()Lcom/alibaba/fastjson2/modules/ObjectReaderAnnotationProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0, p1, p2}, Lcom/alibaba/fastjson2/modules/ObjectReaderAnnotationProcessor;->getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 1

    .line 31
    invoke-interface {p0}, Lcom/alibaba/fastjson2/modules/ObjectReaderModule;->getAnnotationProcessor()Lcom/alibaba/fastjson2/modules/ObjectReaderAnnotationProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/fastjson2/modules/ObjectReaderAnnotationProcessor;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    :cond_0
    return-void
.end method

.method public getObjectReader(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    .line 38
    invoke-interface {p0, p2}, Lcom/alibaba/fastjson2/modules/ObjectReaderModule;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V
    .locals 0

    return-void
.end method
