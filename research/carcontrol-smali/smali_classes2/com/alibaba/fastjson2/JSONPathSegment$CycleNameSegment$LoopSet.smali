.class Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopSet;
.super Ljava/lang/Object;
.source "JSONPathSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoopSet"
.end annotation


# instance fields
.field final context:Lcom/alibaba/fastjson2/JSONPath$Context;

.field final synthetic this$0:Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

.field final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/lang/Object;)V
    .locals 0

    .line 1354
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopSet;->this$0:Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1355
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopSet;->context:Lcom/alibaba/fastjson2/JSONPath$Context;

    .line 1356
    iput-object p3, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopSet;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 5

    .line 1360
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1361
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1362
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopSet;->this$0:Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

    iget-object v2, v2, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->name:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1363
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopSet;->value:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopSet;->context:Lcom/alibaba/fastjson2/JSONPath$Context;

    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONPath$Context;->eval:Z

    goto :goto_0

    .line 1366
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1368
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopSet;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 1372
    :cond_2
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 1373
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1374
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopSet;->accept(Ljava/lang/Object;)V

    goto :goto_1

    .line 1377
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1378
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    .line 1379
    instance-of v3, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;

    if-eqz v3, :cond_4

    .line 1380
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopSet;->this$0:Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->nameHashCode:J

    invoke-interface {v2, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1382
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopSet;->value:Ljava/lang/Object;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1383
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopSet;->context:Lcom/alibaba/fastjson2/JSONPath$Context;

    iput-boolean v1, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->eval:Z

    return-void

    .line 1388
    :cond_4
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    .line 1389
    invoke-interface {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriters()Ljava/util/List;

    move-result-object v0

    .line 1390
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 1391
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1392
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopSet;->accept(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    return-void
.end method
