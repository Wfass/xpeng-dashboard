.class Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapRecursive;
.super Ljava/lang/Object;
.source "JSONPathSegment.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapRecursive"
.end annotation


# static fields
.field static final maxLevel:I = 0x800


# instance fields
.field final context:Lcom/alibaba/fastjson2/JSONPath$Context;

.field final level:I

.field final synthetic this$0:Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

.field final values:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/util/List;I)V
    .locals 0

    .line 1255
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapRecursive;->this$0:Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1256
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapRecursive;->context:Lcom/alibaba/fastjson2/JSONPath$Context;

    .line 1257
    iput-object p3, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapRecursive;->values:Ljava/util/List;

    .line 1258
    iput p4, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapRecursive;->level:I

    return-void
.end method

.method public static synthetic lambda$bm-DEPwlEmW_KB9tyIBiTD-X5EA(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$recursive$0(Ljava/lang/Object;Lcom/alibaba/fastjson2/writer/FieldWriter;)Ljava/lang/Object;
    .locals 0

    .line 1295
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private recursive(Ljava/lang/Object;Ljava/util/List;I)V
    .locals 4

    const/16 v0, 0x800

    if-ge p3, v0, :cond_9

    .line 1270
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 1271
    move-object p3, p1

    check-cast p3, Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    .line 1272
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapRecursive;->this$0:Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->nameHashCode:J

    sget-wide v2, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->HASH_STAR:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1273
    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1274
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapRecursive;->this$0:Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->nameHashCode:J

    sget-wide v2, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->HASH_EMPTY:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1275
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1277
    :cond_1
    :goto_0
    invoke-interface {p3, p0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    goto/16 :goto_4

    .line 1278
    :cond_2
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_5

    .line 1279
    move-object p3, p1

    check-cast p3, Ljava/util/Collection;

    .line 1280
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapRecursive;->this$0:Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->nameHashCode:J

    sget-wide v2, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->HASH_STAR:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 1281
    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1282
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapRecursive;->this$0:Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->nameHashCode:J

    sget-wide v2, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->HASH_EMPTY:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 1283
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1285
    :cond_4
    :goto_1
    invoke-interface {p3, p0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_8

    .line 1287
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapRecursive;->context:Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPath$Context;->path:Lcom/alibaba/fastjson2/JSONPath;

    .line 1288
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONPath;->getWriterContext()Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object v0

    .line 1289
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    .line 1290
    instance-of v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    if-eqz v1, :cond_8

    .line 1291
    check-cast v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    .line 1292
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->getFieldWriters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1293
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    .line 1295
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson2/-$$Lambda$JSONPathSegment$CycleNameSegment$MapRecursive$bm-DEPwlEmW_KB9tyIBiTD-X5EA;->INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$JSONPathSegment$CycleNameSegment$MapRecursive$bm-DEPwlEmW_KB9tyIBiTD-X5EA;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/alibaba/fastjson2/-$$Lambda$JSONPathSegment$CycleNameSegment$MapRecursive$3rlW__EZjydeBc9cKYOe9jEdozo;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson2/-$$Lambda$JSONPathSegment$CycleNameSegment$MapRecursive$3rlW__EZjydeBc9cKYOe9jEdozo;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 1294
    :cond_7
    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    add-int/lit8 p3, p3, 0x1

    .line 1296
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapRecursive;->recursive(Ljava/lang/Object;Ljava/util/List;I)V

    :cond_8
    :goto_4
    return-void

    .line 1268
    :cond_9
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "level too large"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    .line 1263
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapRecursive;->values:Ljava/util/List;

    iget v1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapRecursive;->level:I

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapRecursive;->recursive(Ljava/lang/Object;Ljava/util/List;I)V

    return-void
.end method
