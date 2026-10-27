.class public interface abstract Lcom/alibaba/fastjson2/modules/ObjectWriterModule;
.super Ljava/lang/Object;
.source "ObjectWriterModule.java"


# virtual methods
.method public createFieldWriters(Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;Ljava/lang/Class;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public getAnnotationProcessor()Lcom/alibaba/fastjson2/modules/ObjectWriterAnnotationProcessor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V
    .locals 0

    return-void
.end method
