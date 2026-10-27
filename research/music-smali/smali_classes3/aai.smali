.class public abstract Laai;
.super Ljava/lang/Object;
.source "JSONSchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laai$b;,
        Laai$a;
    }
.end annotation

.annotation runtime Lqd;
    k = Laai$a;
.end annotation


# static fields
.field static final A:Laaq;

.field static final B:Laaq;

.field static final C:Laaq;

.field static final D:Laaq;

.field static final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Laai;",
            ">;"
        }
    .end annotation
.end field

.field static final t:Lcom/alibaba/fastjson2/u$c;

.field static final u:Laaq;

.field static final v:Laaq;

.field static final w:Laaq;

.field static final x:Laaq;

.field static final y:Laaq;

.field static final z:Laaq;


# instance fields
.field final r:Ljava/lang/String;

.field final s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Laai;->q:Ljava/util/Map;

    .line 35
    invoke-static {}, Lcom/alibaba/fastjson2/d;->c()Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    sput-object v0, Laai;->t:Lcom/alibaba/fastjson2/u$c;

    .line 908
    new-instance v0, Laaq;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    const-string v4, "success"

    invoke-direct {v0, v3, v4, v2}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Laai;->u:Laaq;

    .line 909
    new-instance v0, Laaq;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "input null"

    invoke-direct {v0, v1, v3, v2}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Laai;->v:Laaq;

    .line 910
    new-instance v0, Laaq;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "anyOf fail"

    invoke-direct {v0, v1, v3, v2}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Laai;->w:Laaq;

    .line 911
    new-instance v0, Laaq;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "oneOf fail"

    invoke-direct {v0, v1, v3, v2}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Laai;->x:Laaq;

    .line 912
    new-instance v0, Laaq;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "not fail"

    invoke-direct {v0, v1, v3, v2}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Laai;->y:Laaq;

    .line 913
    new-instance v0, Laaq;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "type not match"

    invoke-direct {v0, v1, v3, v2}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Laai;->z:Laaq;

    .line 914
    new-instance v0, Laaq;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "propertyName not match"

    invoke-direct {v0, v1, v3, v2}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Laai;->A:Laaq;

    .line 916
    new-instance v0, Laaq;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "contains not match"

    invoke-direct {v0, v1, v3, v2}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Laai;->B:Laaq;

    .line 917
    new-instance v0, Laaq;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "uniqueItems not match"

    invoke-direct {v0, v1, v3, v2}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Laai;->C:Laaq;

    .line 918
    new-instance v0, Laaq;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "required"

    invoke-direct {v0, v1, v3, v2}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Laai;->D:Laaq;

    return-void
.end method

.method constructor <init>(Lcom/alibaba/fastjson2/e;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "title"

    .line 38
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laai;->r:Ljava/lang/String;

    const-string v0, "description"

    .line 39
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Laai;->s:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Laai;->r:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Laai;->s:Ljava/lang/String;

    return-void
.end method

.method static a(Lcom/alibaba/fastjson2/JSONArray;Ljava/lang/Class;)Laac;
    .locals 3

    if-eqz p0, :cond_2

    .line 647
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 650
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v0

    new-array v0, v0, [Laai;

    const/4 v1, 0x0

    .line 651
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 652
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson2/e;

    move-result-object v2

    invoke-static {v2, p1}, Laai;->a(Lcom/alibaba/fastjson2/e;Ljava/lang/Class;)Laai;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 655
    :cond_1
    new-instance p0, Laac;

    invoke-direct {p0, v0}, Laac;-><init>([Laai;)V

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/alibaba/fastjson2/e;)Laai;
    .locals 1
    .annotation runtime Lqb;
    .end annotation

    const/4 v0, 0x0

    .line 174
    check-cast v0, Laai;

    invoke-static {p0, v0}, Laai;->a(Lcom/alibaba/fastjson2/e;Laai;)Laai;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/alibaba/fastjson2/e;Laai;)Laai;
    .locals 13
    .annotation runtime Lqb;
    .end annotation

    const-string v0, "type"

    .line 377
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-static {v1}, Laai$b;->a(Ljava/lang/String;)Laai$b;

    move-result-object v1

    const-string v2, "not support type : "

    if-nez v1, :cond_2a

    .line 381
    const-class v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v4, v3, [Lcom/alibaba/fastjson2/u$d;

    const-string v5, "enum"

    invoke-virtual {p0, v5, v1, v4}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/u$d;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 384
    array-length p1, v1

    move v0, v3

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v2, v1, v0

    .line 385
    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 391
    new-instance p1, Laao;

    invoke-direct {p1, p0}, Laao;-><init>(Lcom/alibaba/fastjson2/e;)V

    return-object p1

    .line 394
    :cond_2
    new-instance p0, Laag;

    invoke-direct {p0, v1}, Laag;-><init>([Ljava/lang/Object;)V

    return-object p0

    :cond_3
    const-string v1, "const"

    .line 397
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 398
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 399
    new-instance p1, Laao;

    invoke-direct {p1, p0}, Laao;-><init>(Lcom/alibaba/fastjson2/e;)V

    return-object p1

    .line 400
    :cond_4
    instance-of v5, v1, Ljava/lang/Integer;

    if-nez v5, :cond_29

    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_5

    goto/16 :goto_c

    .line 404
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/e;->size()I

    move-result v1

    const-string v5, "$ref"

    const/4 v6, 0x0

    if-ne v1, v4, :cond_13

    .line 405
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 406
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, "http://json-schema.org/draft-04/schema#"

    .line 407
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 408
    sget-object p0, Laai;->q:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laai;

    if-nez p0, :cond_6

    .line 410
    const-class p0, Laai;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string p1, "schema/draft-04.json"

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    .line 412
    invoke-static {p0}, Lcom/alibaba/fastjson2/a;->a(Ljava/net/URL;)Lcom/alibaba/fastjson2/e;

    move-result-object p0

    check-cast v6, Laai;

    .line 411
    invoke-static {p0, v6}, Laai;->a(Lcom/alibaba/fastjson2/e;Laai;)Laai;

    move-result-object p0

    .line 415
    sget-object p1, Laai;->q:Ljava/util/Map;

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laai;

    if-eqz p1, :cond_6

    move-object p0, p1

    :cond_6
    return-object p0

    :cond_7
    const-string v7, "#"

    .line 423
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    return-object p1

    .line 428
    :cond_8
    instance-of v7, p1, Laam;

    if-eqz v7, :cond_9

    .line 429
    move-object v7, p1

    check-cast v7, Laam;

    .line 431
    iget-object v8, v7, Laam;->b:Ljava/util/Map;

    .line 432
    iget-object v9, v7, Laam;->c:Ljava/util/Map;

    .line 433
    iget-object v7, v7, Laam;->d:Ljava/util/Map;

    move-object v12, v9

    move-object v9, v7

    move-object v7, v12

    goto :goto_2

    .line 434
    :cond_9
    instance-of v7, p1, Laad;

    if-eqz v7, :cond_a

    .line 435
    move-object v7, p1

    check-cast v7, Laad;

    iget-object v8, v7, Laad;->a:Ljava/util/Map;

    .line 436
    iget-object v7, v7, Laad;->b:Ljava/util/Map;

    move-object v9, v6

    goto :goto_2

    :cond_a
    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    :goto_2
    const/16 v10, 0xe

    if-eqz v8, :cond_b

    const-string v11, "#/definitions/"

    .line 440
    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 442
    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 443
    invoke-interface {v8, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laai;

    return-object p0

    :cond_b
    if-eqz v7, :cond_d

    const-string v8, "#/$defs/"

    .line 448
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    const/16 p0, 0x8

    .line 450
    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 451
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 452
    invoke-interface {v7, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laai;

    if-nez p1, :cond_c

    .line 454
    new-instance p1, Laap;

    invoke-direct {p1, p0}, Laap;-><init>(Ljava/lang/String;)V

    :cond_c
    return-object p1

    :cond_d
    if-eqz v9, :cond_e

    const-string v7, "#/properties/"

    .line 461
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    const/16 p0, 0xd

    .line 463
    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 464
    invoke-interface {v9, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laai;

    return-object p0

    :cond_e
    const-string v7, "#/prefixItems/"

    .line 468
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    instance-of v7, p1, Laad;

    if-eqz v7, :cond_f

    .line 470
    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 471
    check-cast p1, Laad;

    iget-object p1, p1, Laad;->g:[Laai;

    aget-object p0, p1, p0

    return-object p0

    :cond_f
    const-string v1, "exclusiveMaximum"

    .line 475
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v7, "exclusiveMinimum"

    .line 476
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 477
    instance-of v8, v1, Ljava/lang/Integer;

    if-nez v8, :cond_12

    instance-of v8, v7, Ljava/lang/Integer;

    if-nez v8, :cond_12

    instance-of v8, v1, Ljava/lang/Long;

    if-nez v8, :cond_12

    instance-of v8, v7, Ljava/lang/Long;

    if-eqz v8, :cond_10

    goto :goto_3

    .line 484
    :cond_10
    instance-of v1, v1, Ljava/lang/Number;

    if-nez v1, :cond_11

    instance-of v1, v7, Ljava/lang/Number;

    if-eqz v1, :cond_13

    .line 485
    :cond_11
    new-instance p1, Laal;

    invoke-direct {p1, p0}, Laal;-><init>(Lcom/alibaba/fastjson2/e;)V

    return-object p1

    .line 481
    :cond_12
    :goto_3
    new-instance p1, Laah;

    invoke-direct {p1, p0}, Laah;-><init>(Lcom/alibaba/fastjson2/e;)V

    return-object p1

    :cond_13
    const-string v1, "properties"

    .line 489
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "dependentSchemas"

    .line 490
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "if"

    .line 491
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "required"

    .line 492
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "patternProperties"

    .line 493
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "additionalProperties"

    .line 494
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "minProperties"

    .line 495
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "maxProperties"

    .line 496
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "propertyNames"

    .line 497
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 498
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto/16 :goto_b

    :cond_14
    const-string v1, "maxItems"

    .line 503
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "minItems"

    .line 504
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "additionalItems"

    .line 505
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "items"

    .line 506
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "prefixItems"

    .line 507
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "uniqueItems"

    .line 508
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "maxContains"

    .line 509
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "minContains"

    .line 510
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto/16 :goto_a

    :cond_15
    const-string v1, "pattern"

    .line 515
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "format"

    .line 516
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "minLength"

    .line 517
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "maxLength"

    .line 518
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto/16 :goto_9

    :cond_16
    const-string v1, "allOf"

    .line 523
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v1

    const-string v5, "anyOf"

    .line 524
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v5

    const-string v7, "oneOf"

    .line 525
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v1, :cond_1f

    if-nez v5, :cond_1f

    if-eqz v7, :cond_17

    goto/16 :goto_7

    :cond_17
    const-string p1, "not"

    .line 554
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 555
    invoke-static {p0, v6}, Laai;->b(Lcom/alibaba/fastjson2/e;Ljava/lang/Class;)Laaj;

    move-result-object p0

    return-object p0

    :cond_18
    const-string p1, "maximum"

    .line 558
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Number;

    if-nez p1, :cond_1e

    const-string p1, "minimum"

    .line 559
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Number;

    if-nez p1, :cond_1e

    const-string p1, "multipleOf"

    .line 560
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto/16 :goto_6

    .line 565
    :cond_19
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/e;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 566
    sget-object p0, Laab;->a:Laab;

    return-object p0

    .line 569
    :cond_1a
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/e;->size()I

    move-result p1

    if-ne p1, v4, :cond_1c

    .line 570
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 571
    instance-of v1, p1, Lcom/alibaba/fastjson2/JSONArray;

    if-eqz v1, :cond_1c

    .line 572
    check-cast p1, Lcom/alibaba/fastjson2/JSONArray;

    .line 573
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result p0

    new-array p0, p0, [Laai;

    .line 574
    :goto_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v1

    if-ge v3, v1, :cond_1b

    .line 575
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laai$b;->a(Ljava/lang/String;)Laai$b;

    move-result-object v1

    .line 576
    sget-object v4, Laai$1;->a:[I

    invoke-virtual {v1}, Laai$b;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 599
    new-instance p0, Lcom/alibaba/fastjson2/z;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/z;-><init>(Ljava/lang/String;)V

    throw p0

    .line 596
    :pswitch_0
    new-instance v1, Laad;

    const-string v4, "array"

    invoke-static {v0, v4}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/e;

    move-result-object v4

    invoke-direct {v1, v4, v6}, Laad;-><init>(Lcom/alibaba/fastjson2/e;Laai;)V

    aput-object v1, p0, v3

    goto :goto_5

    .line 593
    :pswitch_1
    new-instance v1, Laam;

    const-string v4, "object"

    invoke-static {v0, v4}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/e;

    move-result-object v4

    invoke-direct {v1, v4}, Laam;-><init>(Lcom/alibaba/fastjson2/e;)V

    aput-object v1, p0, v3

    goto :goto_5

    .line 590
    :pswitch_2
    new-instance v1, Laak;

    const-string v4, "null"

    invoke-static {v0, v4}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/e;

    move-result-object v4

    invoke-direct {v1, v4}, Laak;-><init>(Lcom/alibaba/fastjson2/e;)V

    aput-object v1, p0, v3

    goto :goto_5

    .line 587
    :pswitch_3
    new-instance v1, Laae;

    const-string v4, "boolean"

    invoke-static {v0, v4}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/e;

    move-result-object v4

    invoke-direct {v1, v4}, Laae;-><init>(Lcom/alibaba/fastjson2/e;)V

    aput-object v1, p0, v3

    goto :goto_5

    .line 584
    :pswitch_4
    new-instance v1, Laal;

    const-string v4, "number"

    invoke-static {v0, v4}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/e;

    move-result-object v4

    invoke-direct {v1, v4}, Laal;-><init>(Lcom/alibaba/fastjson2/e;)V

    aput-object v1, p0, v3

    goto :goto_5

    .line 581
    :pswitch_5
    new-instance v1, Laah;

    const-string v4, "integer"

    invoke-static {v0, v4}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/e;

    move-result-object v4

    invoke-direct {v1, v4}, Laah;-><init>(Lcom/alibaba/fastjson2/e;)V

    aput-object v1, p0, v3

    goto :goto_5

    .line 578
    :pswitch_6
    new-instance v1, Laao;

    const-string v4, "string"

    invoke-static {v0, v4}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/e;

    move-result-object v4

    invoke-direct {v1, v4}, Laao;-><init>(Lcom/alibaba/fastjson2/e;)V

    aput-object v1, p0, v3

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 602
    :cond_1b
    new-instance p1, Laac;

    invoke-direct {p1, p0}, Laac;-><init>([Laai;)V

    return-object p1

    .line 606
    :cond_1c
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1d

    .line 607
    new-instance p0, Lcom/alibaba/fastjson2/z;

    const-string p1, "type required"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/z;-><init>(Ljava/lang/String;)V

    throw p0

    .line 609
    :cond_1d
    new-instance p1, Lcom/alibaba/fastjson2/z;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/z;-><init>(Ljava/lang/String;)V

    throw p1

    .line 562
    :cond_1e
    :goto_6
    new-instance p1, Laal;

    invoke-direct {p1, p0}, Laal;-><init>(Lcom/alibaba/fastjson2/e;)V

    return-object p1

    :cond_1f
    :goto_7
    add-int v0, v1, v5

    add-int/2addr v0, v7

    if-ne v0, v4, :cond_22

    if-eqz v1, :cond_20

    .line 531
    new-instance v0, Laaa;

    invoke-direct {v0, p0, p1}, Laaa;-><init>(Lcom/alibaba/fastjson2/e;Laai;)V

    return-object v0

    :cond_20
    if-eqz v5, :cond_21

    .line 535
    new-instance v0, Laac;

    invoke-direct {v0, p0, p1}, Laac;-><init>(Lcom/alibaba/fastjson2/e;Laai;)V

    return-object v0

    .line 538
    :cond_21
    new-instance v0, Laan;

    invoke-direct {v0, p0, p1}, Laan;-><init>(Lcom/alibaba/fastjson2/e;Laai;)V

    return-object v0

    .line 540
    :cond_22
    new-array v0, v0, [Laai;

    if-eqz v1, :cond_23

    .line 543
    new-instance v1, Laaa;

    invoke-direct {v1, p0, p1}, Laaa;-><init>(Lcom/alibaba/fastjson2/e;Laai;)V

    aput-object v1, v0, v3

    move v3, v4

    :cond_23
    if-eqz v5, :cond_24

    add-int/lit8 v1, v3, 0x1

    .line 546
    new-instance v2, Laac;

    invoke-direct {v2, p0, p1}, Laac;-><init>(Lcom/alibaba/fastjson2/e;Laai;)V

    aput-object v2, v0, v3

    goto :goto_8

    :cond_24
    move v1, v3

    :goto_8
    if-eqz v7, :cond_25

    .line 549
    new-instance v2, Laan;

    invoke-direct {v2, p0, p1}, Laan;-><init>(Lcom/alibaba/fastjson2/e;Laai;)V

    aput-object v2, v0, v1

    .line 551
    :cond_25
    new-instance p0, Laaa;

    invoke-direct {p0, v0}, Laaa;-><init>([Laai;)V

    return-object p0

    .line 520
    :cond_26
    :goto_9
    new-instance p1, Laao;

    invoke-direct {p1, p0}, Laao;-><init>(Lcom/alibaba/fastjson2/e;)V

    return-object p1

    .line 512
    :cond_27
    :goto_a
    new-instance v0, Laad;

    invoke-direct {v0, p0, p1}, Laad;-><init>(Lcom/alibaba/fastjson2/e;Laai;)V

    return-object v0

    .line 500
    :cond_28
    :goto_b
    new-instance v0, Laam;

    invoke-direct {v0, p0, p1}, Laam;-><init>(Lcom/alibaba/fastjson2/e;Laai;)V

    return-object v0

    .line 401
    :cond_29
    :goto_c
    new-instance p1, Laah;

    invoke-direct {p1, p0}, Laah;-><init>(Lcom/alibaba/fastjson2/e;)V

    return-object p1

    .line 613
    :cond_2a
    sget-object v0, Laai$1;->a:[I

    invoke-virtual {v1}, Laai$b;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    .line 629
    new-instance p0, Lcom/alibaba/fastjson2/z;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/z;-><init>(Ljava/lang/String;)V

    throw p0

    .line 627
    :pswitch_7
    new-instance v0, Laad;

    invoke-direct {v0, p0, p1}, Laad;-><init>(Lcom/alibaba/fastjson2/e;Laai;)V

    return-object v0

    .line 625
    :pswitch_8
    new-instance v0, Laam;

    invoke-direct {v0, p0, p1}, Laam;-><init>(Lcom/alibaba/fastjson2/e;Laai;)V

    return-object v0

    .line 623
    :pswitch_9
    new-instance p1, Laak;

    invoke-direct {p1, p0}, Laak;-><init>(Lcom/alibaba/fastjson2/e;)V

    return-object p1

    .line 621
    :pswitch_a
    new-instance p1, Laae;

    invoke-direct {p1, p0}, Laae;-><init>(Lcom/alibaba/fastjson2/e;)V

    return-object p1

    .line 619
    :pswitch_b
    new-instance p1, Laal;

    invoke-direct {p1, p0}, Laal;-><init>(Lcom/alibaba/fastjson2/e;)V

    return-object p1

    .line 617
    :pswitch_c
    new-instance p1, Laah;

    invoke-direct {p1, p0}, Laah;-><init>(Lcom/alibaba/fastjson2/e;)V

    return-object p1

    .line 615
    :pswitch_d
    new-instance p1, Laao;

    invoke-direct {p1, p0}, Laao;-><init>(Lcom/alibaba/fastjson2/e;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public static a(Lcom/alibaba/fastjson2/e;Ljava/lang/Class;)Laai;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_14

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/e;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    if-eqz p1, :cond_13

    .line 55
    const-class v1, Ljava/lang/Object;

    if-ne p1, v1, :cond_1

    goto/16 :goto_5

    .line 59
    :cond_1
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v2, "not"

    const-string v3, "oneOf"

    const-string v4, "anyOf"

    const-string v5, "AnyOf"

    if-eq p1, v1, :cond_e

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_e

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_e

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_e

    const-class v1, Ljava/lang/Byte;

    if-eq p1, v1, :cond_e

    const-class v1, Ljava/lang/Short;

    if-eq p1, v1, :cond_e

    const-class v1, Ljava/lang/Integer;

    if-eq p1, v1, :cond_e

    const-class v1, Ljava/lang/Long;

    if-eq p1, v1, :cond_e

    const-class v1, Ljava/math/BigInteger;

    if-eq p1, v1, :cond_e

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eq p1, v1, :cond_e

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne p1, v1, :cond_2

    goto/16 :goto_3

    .line 86
    :cond_2
    const-class v1, Ljava/math/BigDecimal;

    if-eq p1, v1, :cond_9

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_9

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_9

    const-class v1, Ljava/lang/Float;

    if-eq p1, v1, :cond_9

    const-class v1, Ljava/lang/Double;

    if-eq p1, v1, :cond_9

    const-class v1, Ljava/lang/Number;

    if-ne p1, v1, :cond_3

    goto :goto_1

    .line 108
    :cond_3
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_8

    const-class v1, Ljava/lang/Boolean;

    if-ne p1, v1, :cond_4

    goto :goto_0

    .line 113
    :cond_4
    const-class v1, Ljava/lang/String;

    if-ne p1, v1, :cond_5

    .line 114
    new-instance p1, Laao;

    invoke-direct {p1, p0}, Laao;-><init>(Lcom/alibaba/fastjson2/e;)V

    return-object p1

    .line 117
    :cond_5
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 118
    new-instance p1, Laad;

    invoke-direct {p1, p0, v0}, Laad;-><init>(Lcom/alibaba/fastjson2/e;Laai;)V

    return-object p1

    .line 121
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 122
    new-instance p1, Laad;

    invoke-direct {p1, p0, v0}, Laad;-><init>(Lcom/alibaba/fastjson2/e;Laai;)V

    return-object p1

    .line 125
    :cond_7
    new-instance p1, Laam;

    invoke-direct {p1, p0, v0}, Laam;-><init>(Lcom/alibaba/fastjson2/e;Laai;)V

    return-object p1

    .line 110
    :cond_8
    :goto_0
    new-instance p1, Laae;

    invoke-direct {p1, p0}, Laae;-><init>(Lcom/alibaba/fastjson2/e;)V

    return-object p1

    .line 93
    :cond_9
    :goto_1
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    .line 97
    :cond_a
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 98
    invoke-static {p0, p1}, Laai;->e(Lcom/alibaba/fastjson2/e;Ljava/lang/Class;)Laan;

    move-result-object p0

    return-object p0

    .line 101
    :cond_b
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 102
    invoke-static {p0, p1}, Laai;->b(Lcom/alibaba/fastjson2/e;Ljava/lang/Class;)Laaj;

    move-result-object p0

    return-object p0

    .line 105
    :cond_c
    new-instance p1, Laal;

    invoke-direct {p1, p0}, Laal;-><init>(Lcom/alibaba/fastjson2/e;)V

    return-object p1

    .line 94
    :cond_d
    :goto_2
    invoke-static {p0, p1}, Laai;->c(Lcom/alibaba/fastjson2/e;Ljava/lang/Class;)Laac;

    move-result-object p0

    return-object p0

    .line 71
    :cond_e
    :goto_3
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_4

    .line 75
    :cond_f
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 76
    invoke-static {p0, p1}, Laai;->e(Lcom/alibaba/fastjson2/e;Ljava/lang/Class;)Laan;

    move-result-object p0

    return-object p0

    .line 79
    :cond_10
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 80
    invoke-static {p0, p1}, Laai;->b(Lcom/alibaba/fastjson2/e;Ljava/lang/Class;)Laaj;

    move-result-object p0

    return-object p0

    .line 83
    :cond_11
    new-instance p1, Laah;

    invoke-direct {p1, p0}, Laah;-><init>(Lcom/alibaba/fastjson2/e;)V

    return-object p1

    .line 72
    :cond_12
    :goto_4
    invoke-static {p0, p1}, Laai;->c(Lcom/alibaba/fastjson2/e;Ljava/lang/Class;)Laac;

    move-result-object p0

    return-object p0

    .line 56
    :cond_13
    :goto_5
    invoke-static {p0}, Laai;->a(Lcom/alibaba/fastjson2/e;)Laai;

    move-result-object p0

    return-object p0

    :cond_14
    :goto_6
    return-object v0
.end method

.method static b(Lcom/alibaba/fastjson2/e;Ljava/lang/Class;)Laaj;
    .locals 5

    const-string v0, "not"

    .line 129
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 130
    instance-of v0, p0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 131
    new-instance p1, Laaj;

    check-cast p0, Ljava/lang/Boolean;

    invoke-direct {p1, v1, v1, p0}, Laaj;-><init>(Laai;[Laai$b;Ljava/lang/Boolean;)V

    return-object p1

    .line 134
    :cond_0
    check-cast p0, Lcom/alibaba/fastjson2/e;

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_4

    .line 136
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/e;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/e;->size()I

    move-result v3

    if-ne v3, v2, :cond_3

    const-string v2, "type"

    .line 141
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 142
    instance-of v3, v2, Lcom/alibaba/fastjson2/JSONArray;

    if-eqz v3, :cond_3

    .line 143
    check-cast v2, Lcom/alibaba/fastjson2/JSONArray;

    .line 144
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result p0

    new-array p0, p0, [Laai$b;

    move p1, v0

    .line 145
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 146
    const-class v3, Laai$b;

    new-array v4, v0, [Lcom/alibaba/fastjson2/u$d;

    invoke-virtual {v2, p1, v3, v4}, Lcom/alibaba/fastjson2/JSONArray;->getObject(ILjava/lang/Class;[Lcom/alibaba/fastjson2/u$d;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laai$b;

    aput-object v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 148
    :cond_2
    new-instance p1, Laaj;

    invoke-direct {p1, v1, p0, v1}, Laaj;-><init>(Laai;[Laai$b;Ljava/lang/Boolean;)V

    return-object p1

    .line 152
    :cond_3
    invoke-static {p0, p1}, Laai;->a(Lcom/alibaba/fastjson2/e;Ljava/lang/Class;)Laai;

    move-result-object p0

    .line 153
    new-instance p1, Laaj;

    invoke-direct {p1, p0, v1, v1}, Laaj;-><init>(Laai;[Laai$b;Ljava/lang/Boolean;)V

    return-object p1

    .line 137
    :cond_4
    :goto_1
    new-instance p0, Laaj;

    new-array p1, v2, [Laai$b;

    sget-object v2, Laai$b;->Any:Laai$b;

    aput-object v2, p1, v0

    invoke-direct {p0, v1, p1, v1}, Laaj;-><init>(Laai;[Laai$b;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method static b(Lcom/alibaba/fastjson2/JSONArray;Ljava/lang/Class;)Laan;
    .locals 3

    if-eqz p0, :cond_2

    .line 685
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 689
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v0

    new-array v0, v0, [Laai;

    const/4 v1, 0x0

    .line 690
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 691
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson2/e;

    move-result-object v2

    invoke-static {v2, p1}, Laai;->a(Lcom/alibaba/fastjson2/e;Ljava/lang/Class;)Laai;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 693
    :cond_1
    new-instance p0, Laan;

    invoke-direct {p0, v0}, Laan;-><init>([Laai;)V

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static c(Lcom/alibaba/fastjson2/e;Ljava/lang/Class;)Laac;
    .locals 3

    const-string v0, "anyOf"

    .line 634
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/e;->c(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 635
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 638
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v0

    new-array v0, v0, [Laai;

    const/4 v1, 0x0

    .line 639
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 640
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson2/e;

    move-result-object v2

    invoke-static {v2, p1}, Laai;->a(Lcom/alibaba/fastjson2/e;Ljava/lang/Class;)Laai;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 643
    :cond_1
    new-instance p0, Laac;

    invoke-direct {p0, v0}, Laac;-><init>([Laai;)V

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static d(Lcom/alibaba/fastjson2/e;Ljava/lang/Class;)Laaa;
    .locals 3

    const-string v0, "allOf"

    .line 659
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/e;->c(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 660
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 664
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v0

    new-array v0, v0, [Laai;

    const/4 v1, 0x0

    .line 665
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 666
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson2/e;

    move-result-object v2

    invoke-static {v2, p1}, Laai;->a(Lcom/alibaba/fastjson2/e;Ljava/lang/Class;)Laai;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 668
    :cond_1
    new-instance p0, Laaa;

    invoke-direct {p0, v0}, Laaa;-><init>([Laai;)V

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static e(Lcom/alibaba/fastjson2/e;Ljava/lang/Class;)Laan;
    .locals 3

    const-string v0, "oneOf"

    .line 672
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/e;->c(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 673
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 677
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v0

    new-array v0, v0, [Laai;

    const/4 v1, 0x0

    .line 678
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 679
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson2/e;

    move-result-object v2

    invoke-static {v2, p1}, Laai;->a(Lcom/alibaba/fastjson2/e;Ljava/lang/Class;)Laai;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 681
    :cond_1
    new-instance p0, Laan;

    invoke-direct {p0, v0}, Laan;-><init>([Laai;)V

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract a()Laai$b;
.end method

.method public a(D)Laaq;
    .locals 0

    .line 753
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Laai;->a(Ljava/lang/Object;)Laaq;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Laaq;
    .locals 0

    .line 749
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Laai;->a(Ljava/lang/Object;)Laaq;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Double;)Laaq;
    .locals 0

    .line 761
    invoke-virtual {p0, p1}, Laai;->a(Ljava/lang/Object;)Laaq;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Float;)Laaq;
    .locals 0

    .line 757
    invoke-virtual {p0, p1}, Laai;->a(Ljava/lang/Object;)Laaq;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Integer;)Laaq;
    .locals 0

    .line 765
    invoke-virtual {p0, p1}, Laai;->a(Ljava/lang/Object;)Laaq;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Long;)Laaq;
    .locals 0

    .line 769
    invoke-virtual {p0, p1}, Laai;->a(Ljava/lang/Object;)Laaq;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Ljava/lang/Object;)Laaq;
.end method

.method a(Laap$b;)V
    .locals 0

    return-void
.end method

.method public b()Lcom/alibaba/fastjson2/e;
    .locals 1

    .line 854
    new-instance v0, Lcom/alibaba/fastjson2/e;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/e;-><init>()V

    return-object v0
.end method

.method public b(D)V
    .locals 0

    .line 821
    invoke-virtual {p0, p1, p2}, Laai;->a(D)Laaq;

    move-result-object p1

    .line 822
    invoke-virtual {p1}, Laaq;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 825
    :cond_0
    new-instance p2, Lcom/alibaba/fastjson2/z;

    invoke-virtual {p1}, Laaq;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/z;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public b(J)V
    .locals 0

    .line 813
    invoke-virtual {p0, p1, p2}, Laai;->a(J)Laaq;

    move-result-object p1

    .line 814
    invoke-virtual {p1}, Laaq;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 817
    :cond_0
    new-instance p2, Lcom/alibaba/fastjson2/z;

    invoke-virtual {p1}, Laaq;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/z;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public b(Ljava/lang/Double;)V
    .locals 1

    .line 797
    invoke-virtual {p0, p1}, Laai;->a(Ljava/lang/Double;)Laaq;

    move-result-object p1

    .line 798
    invoke-virtual {p1}, Laaq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 801
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/z;

    invoke-virtual {p1}, Laaq;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/z;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/Float;)V
    .locals 1

    .line 805
    invoke-virtual {p0, p1}, Laai;->a(Ljava/lang/Float;)Laaq;

    move-result-object p1

    .line 806
    invoke-virtual {p1}, Laaq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 809
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/z;

    invoke-virtual {p1}, Laaq;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/z;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 1

    .line 781
    invoke-virtual {p0, p1}, Laai;->a(Ljava/lang/Integer;)Laaq;

    move-result-object p1

    .line 782
    invoke-virtual {p1}, Laaq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 785
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/z;

    invoke-virtual {p1}, Laaq;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/z;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/Long;)V
    .locals 1

    .line 789
    invoke-virtual {p0, p1}, Laai;->a(Ljava/lang/Long;)Laaq;

    move-result-object p1

    .line 790
    invoke-virtual {p1}, Laaq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 793
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/z;

    invoke-virtual {p1}, Laaq;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/z;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    .line 773
    invoke-virtual {p0, p1}, Laai;->a(Ljava/lang/Object;)Laaq;

    move-result-object p1

    .line 774
    invoke-virtual {p1}, Laaq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 777
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/z;

    invoke-virtual {p1}, Laaq;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/z;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 839
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 842
    :cond_1
    check-cast p1, Laai;

    .line 843
    invoke-virtual {p0}, Laai;->b()Lcom/alibaba/fastjson2/e;

    move-result-object v0

    .line 844
    invoke-virtual {p1}, Laai;->b()Lcom/alibaba/fastjson2/e;

    move-result-object p1

    .line 845
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 850
    invoke-virtual {p0}, Laai;->b()Lcom/alibaba/fastjson2/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/e;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 830
    invoke-virtual {p0}, Laai;->b()Lcom/alibaba/fastjson2/e;

    move-result-object v0

    .line 831
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/e;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
