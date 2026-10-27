.class Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapLoop;
.super Ljava/lang/Object;
.source "JSONPathSegment.java"

# interfaces
.implements Ljava/util/function/BiConsumer;
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapLoop"
.end annotation


# instance fields
.field final context:Lcom/alibaba/fastjson2/JSONPath$Context;

.field final synthetic this$0:Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

.field final values:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/util/List;)V
    .locals 0

    .line 1192
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapLoop;->this$0:Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1193
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapLoop;->context:Lcom/alibaba/fastjson2/JSONPath$Context;

    .line 1194
    iput-object p3, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapLoop;->values:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1218
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1219
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_1

    .line 1220
    :cond_1
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1221
    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 1223
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapLoop;->context:Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPath$Context;->path:Lcom/alibaba/fastjson2/JSONPath;

    .line 1224
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONPath;->getWriterContext()Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object v0

    .line 1225
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    .line 1226
    instance-of v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    if-eqz v1, :cond_5

    .line 1227
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapLoop;->this$0:Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->nameHashCode:J

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1229
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1231
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapLoop;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x0

    .line 1236
    :goto_0
    invoke-interface {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1237
    invoke-interface {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 1238
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1239
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapLoop;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1241
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapLoop;->this$0:Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->nameHashCode:J

    sget-wide v2, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->HASH_STAR:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 1242
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapLoop;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1199
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapLoop;->this$0:Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1200
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapLoop;->values:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1203
    :cond_0
    instance-of p1, p2, Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 1204
    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_0

    .line 1205
    :cond_1
    instance-of p1, p2, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 1206
    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 1207
    :cond_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapLoop;->this$0:Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

    iget-wide v0, p1, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->nameHashCode:J

    sget-wide v2, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->HASH_STAR:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    .line 1208
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapLoop;->values:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method
