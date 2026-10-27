.class Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopCallback;
.super Ljava/lang/Object;
.source "JSONPathSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoopCallback"
.end annotation


# instance fields
.field final callback:Ljava/util/function/BiFunction;

.field final context:Lcom/alibaba/fastjson2/JSONPath$Context;

.field final synthetic this$0:Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/util/function/BiFunction;)V
    .locals 0

    .line 1402
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopCallback;->this$0:Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1403
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopCallback;->context:Lcom/alibaba/fastjson2/JSONPath$Context;

    .line 1404
    iput-object p3, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopCallback;->callback:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 6

    .line 1408
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1409
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1410
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 1411
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopCallback;->this$0:Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

    iget-object v4, v4, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->name:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1412
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopCallback;->callback:Ljava/util/function/BiFunction;

    invoke-interface {v4, p1, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1413
    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopCallback;->context:Lcom/alibaba/fastjson2/JSONPath$Context;

    iput-boolean v1, v2, Lcom/alibaba/fastjson2/JSONPath$Context;->eval:Z

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_0

    .line 1417
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopCallback;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 1421
    :cond_2
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 1422
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1423
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopCallback;->accept(Ljava/lang/Object;)V

    goto :goto_1

    .line 1426
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1427
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    .line 1428
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    .line 1429
    instance-of v3, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;

    if-eqz v3, :cond_4

    .line 1430
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopCallback;->this$0:Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->nameHashCode:J

    invoke-interface {v2, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v2

    .line 1431
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopCallback;->this$0:Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->nameHashCode:J

    invoke-interface {v0, v3, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 1433
    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1434
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopCallback;->callback:Ljava/util/function/BiFunction;

    invoke-interface {v3, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1435
    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1436
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopCallback;->context:Lcom/alibaba/fastjson2/JSONPath$Context;

    iput-boolean v1, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->eval:Z

    return-void

    .line 1441
    :cond_4
    invoke-interface {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriters()Ljava/util/List;

    move-result-object v0

    .line 1442
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 1443
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1444
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopCallback;->accept(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    return-void
.end method
