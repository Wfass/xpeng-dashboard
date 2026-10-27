.class Lcom/alibaba/fastjson2/n$b$d;
.super Ljava/lang/Object;
.source "JSONPathSegment.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/n$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final a:Lcom/alibaba/fastjson2/g$a;

.field final b:Ljava/util/List;

.field final c:I

.field final synthetic d:Lcom/alibaba/fastjson2/n$b;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/n$b;Lcom/alibaba/fastjson2/g$a;Ljava/util/List;I)V
    .locals 0

    .line 1255
    iput-object p1, p0, Lcom/alibaba/fastjson2/n$b$d;->d:Lcom/alibaba/fastjson2/n$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1256
    iput-object p2, p0, Lcom/alibaba/fastjson2/n$b$d;->a:Lcom/alibaba/fastjson2/g$a;

    .line 1257
    iput-object p3, p0, Lcom/alibaba/fastjson2/n$b$d;->b:Ljava/util/List;

    .line 1258
    iput p4, p0, Lcom/alibaba/fastjson2/n$b$d;->c:I

    return-void
.end method

.method private static synthetic a(Ljava/lang/Object;Labq;)Ljava/lang/Object;
    .locals 0

    .line 1295
    invoke-virtual {p1, p0}, Labq;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Object;Ljava/util/List;I)V
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
    iget-object v0, p0, Lcom/alibaba/fastjson2/n$b$d;->d:Lcom/alibaba/fastjson2/n$b;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/n$b;->d:J

    sget-wide v2, Lcom/alibaba/fastjson2/n$b;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1273
    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1274
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/n$b$d;->d:Lcom/alibaba/fastjson2/n$b;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/n$b;->d:J

    sget-wide v2, Lcom/alibaba/fastjson2/n$b;->b:J

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/n$b$d;->d:Lcom/alibaba/fastjson2/n$b;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/n$b;->d:J

    sget-wide v2, Lcom/alibaba/fastjson2/n$b;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 1281
    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1282
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/n$b$d;->d:Lcom/alibaba/fastjson2/n$b;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/n$b;->d:J

    sget-wide v2, Lcom/alibaba/fastjson2/n$b;->b:J

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/n$b$d;->a:Lcom/alibaba/fastjson2/g$a;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$a;->a:Lcom/alibaba/fastjson2/g;

    .line 1288
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/g;->d()Lcom/alibaba/fastjson2/ab$a;

    move-result-object v0

    .line 1289
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object v0

    .line 1290
    instance-of v1, v0, Laez;

    if-eqz v1, :cond_8

    .line 1291
    check-cast v0, Laez;

    .line 1292
    invoke-virtual {v0}, Laez;->e_()Ljava/util/List;

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

    sget-object v1, Lcom/alibaba/fastjson2/-$$Lambda$cOcosX4gUcGJMTgirp7etUkfc3U;->INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$cOcosX4gUcGJMTgirp7etUkfc3U;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/alibaba/fastjson2/-$$Lambda$n$b$d$pGPxVH7bxXz2yG_Imx-0fujzkOI;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson2/-$$Lambda$n$b$d$pGPxVH7bxXz2yG_Imx-0fujzkOI;-><init>(Ljava/lang/Object;)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/n$b$d;->a(Ljava/lang/Object;Ljava/util/List;I)V

    :cond_8
    :goto_4
    return-void

    .line 1268
    :cond_9
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string p2, "level too large"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic lambda$pGPxVH7bxXz2yG_Imx-0fujzkOI(Ljava/lang/Object;Labq;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/n$b$d;->a(Ljava/lang/Object;Labq;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    .line 1263
    iget-object v0, p0, Lcom/alibaba/fastjson2/n$b$d;->b:Ljava/util/List;

    iget v1, p0, Lcom/alibaba/fastjson2/n$b$d;->c:I

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/n$b$d;->a(Ljava/lang/Object;Ljava/util/List;I)V

    return-void
.end method
