.class public abstract Lcom/alibaba/fastjson2/JSONPath;
.super Ljava/lang/Object;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/JSONPath$Feature;,
        Lcom/alibaba/fastjson2/JSONPath$RootPath;,
        Lcom/alibaba/fastjson2/JSONPath$PreviousPath;,
        Lcom/alibaba/fastjson2/JSONPath$Sequence;,
        Lcom/alibaba/fastjson2/JSONPath$Context;
    }
.end annotation


# static fields
.field static final PARSE_CONTEXT:Lcom/alibaba/fastjson2/JSONReader$Context;


# instance fields
.field final features:J

.field final path:Ljava/lang/String;

.field readerContext:Lcom/alibaba/fastjson2/JSONReader$Context;

.field writerContext:Lcom/alibaba/fastjson2/JSONWriter$Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/JSONPath;->PARSE_CONTEXT:Lcom/alibaba/fastjson2/JSONReader$Context;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPath;->path:Ljava/lang/String;

    .line 35
    iput-wide p2, p0, Lcom/alibaba/fastjson2/JSONPath;->features:J

    return-void
.end method

.method protected varargs constructor <init>(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V
    .locals 5

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPath;->path:Ljava/lang/String;

    .line 27
    array-length p1, p2

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, p2, v2

    .line 28
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONPath$Feature;->mask:J

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    :cond_0
    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONPath;->features:J

    return-void
.end method

.method public static compile(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 422
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p0

    return-object p0
.end method

.method public static compile(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/JSONPath;
    .locals 1

    .line 426
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p0

    .line 427
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultJSONPathCompiler()Lcom/alibaba/fastjson2/JSONFactory$JSONPathCompiler;

    move-result-object v0

    .line 428
    invoke-interface {v0, p1, p0}, Lcom/alibaba/fastjson2/JSONFactory$JSONPathCompiler;->compile(Ljava/lang/Class;Lcom/alibaba/fastjson2/JSONPath;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p0

    return-object p0
.end method

.method public static contains(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 86
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p1

    .line 87
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONPath;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static eval(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p1

    .line 71
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static eval(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/JSONPath;->extract(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static extract(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 55
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p1

    .line 56
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONPath;->extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs extract(Ljava/lang/String;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONPath$Feature;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 61
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONPath$Feature;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p1

    .line 62
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONPath;->extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;
    .locals 1

    const-string v0, "#-1"

    .line 447
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    sget-object p0, Lcom/alibaba/fastjson2/JSONPath$PreviousPath;->INSTANCE:Lcom/alibaba/fastjson2/JSONPath$PreviousPath;

    return-object p0

    .line 451
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathParser;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONPathParser;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/alibaba/fastjson2/JSONPath$Feature;

    .line 452
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONPathParser;->parse([Lcom/alibaba/fastjson2/JSONPath$Feature;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/JSONPath;
    .locals 0

    .line 456
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p0

    .line 457
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/JSONPathTyped;->of(Lcom/alibaba/fastjson2/JSONPath;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONPath$Feature;)Lcom/alibaba/fastjson2/JSONPath;
    .locals 0

    .line 461
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONPath$Feature;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p0

    .line 462
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/JSONPathTyped;->of(Lcom/alibaba/fastjson2/JSONPath;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONPath$Feature;)Lcom/alibaba/fastjson2/JSONPath;
    .locals 1

    const-string v0, "#-1"

    .line 832
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    sget-object p0, Lcom/alibaba/fastjson2/JSONPath$PreviousPath;->INSTANCE:Lcom/alibaba/fastjson2/JSONPath$PreviousPath;

    return-object p0

    .line 836
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathParser;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONPathParser;-><init>(Ljava/lang/String;)V

    .line 837
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONPathParser;->parse([Lcom/alibaba/fastjson2/JSONPath$Feature;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p0

    return-object p0
.end method

.method public static of([Ljava/lang/String;[Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/JSONPath;
    .locals 7

    const/4 v0, 0x0

    .line 473
    move-object v5, v0

    check-cast v5, Ljava/time/ZoneId;

    const/4 v0, 0x0

    new-array v6, v0, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONPath;->of([Ljava/lang/String;[Ljava/lang/reflect/Type;[Ljava/lang/String;[JLjava/time/ZoneId;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of([Ljava/lang/String;[Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONPath;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 484
    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONPath;->of([Ljava/lang/String;[Ljava/lang/reflect/Type;[Ljava/lang/String;[JLjava/time/ZoneId;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of([Ljava/lang/String;[Ljava/lang/reflect/Type;[Ljava/lang/String;[JLjava/time/ZoneId;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONPath;
    .locals 18

    move-object/from16 v0, p0

    .line 505
    array-length v1, v0

    if-eqz v1, :cond_2e

    if-nez p1, :cond_0

    .line 510
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/reflect/Type;

    .line 511
    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    .line 514
    :goto_0
    array-length v2, v1

    array-length v3, v0

    if-ne v2, v3, :cond_2d

    .line 518
    array-length v2, v0

    new-array v6, v2, [Lcom/alibaba/fastjson2/JSONPath;

    const/4 v4, 0x0

    .line 519
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 520
    aget-object v5, v0, v4

    invoke-static {v5}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v5

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    :goto_2
    const/4 v15, 0x2

    if-ge v7, v2, :cond_e

    .line 529
    aget-object v4, v6, v7

    if-nez v7, :cond_3

    .line 531
    instance-of v5, v4, Lcom/alibaba/fastjson2/JSONPathMulti;

    if-eqz v5, :cond_2

    .line 532
    move-object v13, v4

    check-cast v13, Lcom/alibaba/fastjson2/JSONPathMulti;

    goto :goto_4

    :cond_2
    :goto_3
    const/4 v10, 0x0

    goto :goto_4

    :cond_3
    if-eqz v10, :cond_4

    .line 538
    instance-of v5, v4, Lcom/alibaba/fastjson2/JSONPathMulti;

    if-eqz v5, :cond_4

    .line 539
    move-object v5, v4

    check-cast v5, Lcom/alibaba/fastjson2/JSONPathMulti;

    iget-object v5, v5, Lcom/alibaba/fastjson2/JSONPathMulti;->segments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v3, v13, Lcom/alibaba/fastjson2/JSONPathMulti;->segments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v5, v3, :cond_4

    goto :goto_3

    :cond_4
    :goto_4
    if-eqz v8, :cond_5

    .line 546
    instance-of v3, v4, Lcom/alibaba/fastjson2/JSONPathSingleName;

    if-nez v3, :cond_5

    const/4 v8, 0x0

    :cond_5
    if-eqz v9, :cond_7

    .line 551
    instance-of v3, v4, Lcom/alibaba/fastjson2/JSONPathSingleIndex;

    if-eqz v3, :cond_6

    move-object v3, v4

    check-cast v3, Lcom/alibaba/fastjson2/JSONPathSingleIndex;

    iget v3, v3, Lcom/alibaba/fastjson2/JSONPathSingleIndex;->index:I

    if-gez v3, :cond_7

    :cond_6
    const/4 v9, 0x0

    :cond_7
    if-eqz v11, :cond_9

    .line 558
    instance-of v3, v4, Lcom/alibaba/fastjson2/JSONPathTwoSegment;

    if-eqz v3, :cond_8

    .line 559
    move-object v3, v4

    check-cast v3, Lcom/alibaba/fastjson2/JSONPathTwoSegment;

    .line 560
    iget-object v3, v3, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    instance-of v3, v3, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    if-nez v3, :cond_9

    :cond_8
    const/4 v11, 0x0

    :cond_9
    if-eqz v12, :cond_b

    .line 569
    instance-of v3, v4, Lcom/alibaba/fastjson2/JSONPathTwoSegment;

    if-eqz v3, :cond_a

    .line 570
    move-object v3, v4

    check-cast v3, Lcom/alibaba/fastjson2/JSONPathTwoSegment;

    .line 571
    iget-object v5, v3, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    instance-of v5, v5, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    if-eqz v5, :cond_a

    iget-object v3, v3, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    check-cast v3, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    iget v3, v3, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    if-gez v3, :cond_b

    :cond_a
    const/4 v12, 0x0

    :cond_b
    if-eqz v14, :cond_d

    .line 580
    instance-of v3, v4, Lcom/alibaba/fastjson2/JSONPathMulti;

    if-eqz v3, :cond_c

    .line 581
    check-cast v4, Lcom/alibaba/fastjson2/JSONPathMulti;

    .line 582
    iget-object v3, v4, Lcom/alibaba/fastjson2/JSONPathMulti;->segments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_c

    .line 583
    iget-object v3, v4, Lcom/alibaba/fastjson2/JSONPathMulti;->segments:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson2/JSONPathSegment;

    .line 584
    iget-object v5, v4, Lcom/alibaba/fastjson2/JSONPathMulti;->segments:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/alibaba/fastjson2/JSONPathSegment$AllSegment;

    if-nez v5, :cond_c

    iget-object v4, v4, Lcom/alibaba/fastjson2/JSONPathMulti;->segments:Ljava/util/List;

    const/4 v5, 0x1

    .line 585
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/fastjson2/JSONPathSegment$AllSegment;

    if-nez v4, :cond_c

    instance-of v3, v3, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    if-nez v3, :cond_d

    :cond_c
    const/4 v14, 0x0

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 598
    :cond_e
    invoke-static/range {p5 .. p5}, Lcom/alibaba/fastjson2/JSONReader$Feature;->of([Lcom/alibaba/fastjson2/JSONReader$Feature;)J

    move-result-wide v16

    if-eqz v8, :cond_f

    .line 601
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;

    const/4 v5, 0x0

    move-object v3, v0

    move-object v4, v6

    move-object v7, v1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-wide/from16 v11, v16

    invoke-direct/range {v3 .. v12}, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;-><init>([Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath;[Lcom/alibaba/fastjson2/JSONPath;[Ljava/lang/reflect/Type;[Ljava/lang/String;[JLjava/time/ZoneId;J)V

    return-object v0

    :cond_f
    if-eqz v9, :cond_10

    .line 614
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;

    const/4 v5, 0x0

    move-object v3, v0

    move-object v4, v6

    move-object v7, v1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-wide/from16 v11, v16

    invoke-direct/range {v3 .. v12}, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;-><init>([Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath;[Lcom/alibaba/fastjson2/JSONPath;[Ljava/lang/reflect/Type;[Ljava/lang/String;[JLjava/time/ZoneId;J)V

    return-object v0

    :cond_10
    const-string v3, "$."

    if-nez v11, :cond_17

    if-eqz v12, :cond_11

    goto/16 :goto_9

    :cond_11
    if-eqz v14, :cond_20

    const/4 v4, 0x0

    .line 703
    aget-object v5, v6, v4

    check-cast v5, Lcom/alibaba/fastjson2/JSONPathMulti;

    iget-object v5, v5, Lcom/alibaba/fastjson2/JSONPathMulti;->segments:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson2/JSONPathSegment;

    .line 704
    aget-object v7, v6, v4

    check-cast v7, Lcom/alibaba/fastjson2/JSONPathMulti;

    iget-object v7, v7, Lcom/alibaba/fastjson2/JSONPathMulti;->segments:Ljava/util/List;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v8, 0x1

    :goto_5
    if-ge v8, v2, :cond_14

    .line 706
    aget-object v9, v6, v8

    check-cast v9, Lcom/alibaba/fastjson2/JSONPathMulti;

    .line 707
    iget-object v11, v9, Lcom/alibaba/fastjson2/JSONPathMulti;->segments:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    :goto_6
    const/4 v4, 0x0

    goto :goto_7

    .line 711
    :cond_12
    iget-object v4, v9, Lcom/alibaba/fastjson2/JSONPathMulti;->segments:Ljava/util/List;

    const/4 v9, 0x1

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    goto :goto_6

    :cond_13
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto :goto_5

    :cond_14
    const/4 v4, 0x1

    :goto_7
    if-eqz v4, :cond_20

    .line 718
    new-array v0, v2, [Lcom/alibaba/fastjson2/JSONPathSingleName;

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v2, :cond_15

    .line 720
    aget-object v8, v6, v4

    check-cast v8, Lcom/alibaba/fastjson2/JSONPathMulti;

    .line 721
    iget-object v8, v8, Lcom/alibaba/fastjson2/JSONPathMulti;->segments:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    .line 722
    new-instance v9, Lcom/alibaba/fastjson2/JSONPathSingleName;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v12, v11, [Lcom/alibaba/fastjson2/JSONPath$Feature;

    invoke-direct {v9, v10, v8, v12}, Lcom/alibaba/fastjson2/JSONPathSingleName;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONPathSegmentName;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    aput-object v9, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_15
    const/4 v11, 0x0

    .line 725
    aget-object v2, v6, v11

    .line 726
    iget-object v2, v2, Lcom/alibaba/fastjson2/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    aget-object v4, v0, v11

    iget-object v4, v4, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 727
    new-instance v8, Lcom/alibaba/fastjson2/JSONPathTwoSegment;

    new-array v3, v11, [Lcom/alibaba/fastjson2/JSONPath$Feature;

    invoke-direct {v8, v2, v5, v7, v3}, Lcom/alibaba/fastjson2/JSONPathTwoSegment;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    .line 729
    instance-of v2, v5, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    if-eqz v2, :cond_16

    instance-of v2, v7, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    if-eqz v2, :cond_16

    .line 730
    new-instance v2, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName2;

    move-object v3, v2

    move-object v4, v6

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-wide/from16 v11, v16

    invoke-direct/range {v3 .. v12}, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName2;-><init>([Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath;[Lcom/alibaba/fastjson2/JSONPath;[Ljava/lang/reflect/Type;[Ljava/lang/String;[JLjava/time/ZoneId;J)V

    return-object v2

    .line 742
    :cond_16
    new-instance v2, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;

    move-object v3, v2

    move-object v4, v6

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-wide/from16 v11, v16

    invoke-direct/range {v3 .. v12}, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;-><init>([Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath;[Lcom/alibaba/fastjson2/JSONPath;[Ljava/lang/reflect/Type;[Ljava/lang/String;[JLjava/time/ZoneId;J)V

    return-object v2

    :cond_17
    :goto_9
    const/4 v4, 0x0

    .line 619
    aget-object v5, v6, v4

    check-cast v5, Lcom/alibaba/fastjson2/JSONPathTwoSegment;

    iget-object v4, v5, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v5, 0x1

    :goto_a
    if-ge v5, v2, :cond_19

    .line 621
    aget-object v7, v6, v5

    check-cast v7, Lcom/alibaba/fastjson2/JSONPathTwoSegment;

    .line 622
    iget-object v7, v7, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    const/4 v5, 0x0

    goto :goto_b

    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_19
    const/4 v5, 0x1

    :goto_b
    if-eqz v5, :cond_20

    const/4 v5, 0x0

    .line 629
    aget-object v7, v6, v5

    if-eqz v11, :cond_1c

    .line 632
    new-array v8, v2, [Lcom/alibaba/fastjson2/JSONPathSingleName;

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v2, :cond_1a

    .line 634
    aget-object v9, v6, v5

    check-cast v9, Lcom/alibaba/fastjson2/JSONPathTwoSegment;

    .line 635
    iget-object v9, v9, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    check-cast v9, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    .line 636
    new-instance v11, Lcom/alibaba/fastjson2/JSONPathSingleName;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    new-array v15, v14, [Lcom/alibaba/fastjson2/JSONPath$Feature;

    invoke-direct {v11, v12, v9, v15}, Lcom/alibaba/fastjson2/JSONPathSingleName;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONPathSegmentName;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    aput-object v11, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_1a
    const/4 v14, 0x0

    .line 639
    iget-object v3, v7, Lcom/alibaba/fastjson2/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    aget-object v7, v8, v14

    iget-object v7, v7, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v5, v7

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    invoke-virtual {v3, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 640
    instance-of v5, v4, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    if-eqz v5, :cond_1b

    .line 641
    check-cast v4, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    .line 642
    new-instance v5, Lcom/alibaba/fastjson2/JSONPathSingleName;

    new-array v0, v14, [Lcom/alibaba/fastjson2/JSONPath$Feature;

    invoke-direct {v5, v3, v4, v0}, Lcom/alibaba/fastjson2/JSONPathSingleName;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONPathSegmentName;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    .line 644
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName1;

    move-object v3, v0

    move-object v4, v6

    move-object v6, v8

    move-object v7, v1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-wide/from16 v11, v16

    invoke-direct/range {v3 .. v12}, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName1;-><init>([Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath;[Lcom/alibaba/fastjson2/JSONPath;[Ljava/lang/reflect/Type;[Ljava/lang/String;[JLjava/time/ZoneId;J)V

    return-object v0

    .line 654
    :cond_1b
    instance-of v5, v4, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    if-eqz v5, :cond_20

    .line 655
    check-cast v4, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    .line 656
    iget v5, v4, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    if-ltz v5, :cond_20

    .line 657
    new-instance v5, Lcom/alibaba/fastjson2/JSONPathSingleIndex;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson2/JSONPath$Feature;

    invoke-direct {v5, v3, v4, v0}, Lcom/alibaba/fastjson2/JSONPathSingleIndex;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONPathSegmentIndex;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    .line 658
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixIndex1;

    move-object v3, v0

    move-object v4, v6

    move-object v6, v8

    move-object v7, v1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-wide/from16 v11, v16

    invoke-direct/range {v3 .. v12}, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixIndex1;-><init>([Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPathSingleIndex;[Lcom/alibaba/fastjson2/JSONPath;[Ljava/lang/reflect/Type;[Ljava/lang/String;[JLjava/time/ZoneId;J)V

    return-object v0

    .line 671
    :cond_1c
    new-array v7, v2, [Lcom/alibaba/fastjson2/JSONPathSingleIndex;

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v2, :cond_1d

    .line 673
    aget-object v8, v6, v5

    check-cast v8, Lcom/alibaba/fastjson2/JSONPathTwoSegment;

    .line 674
    iget-object v8, v8, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    check-cast v8, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    .line 675
    new-instance v9, Lcom/alibaba/fastjson2/JSONPathSingleIndex;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "$"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v14, v12, [Lcom/alibaba/fastjson2/JSONPath$Feature;

    invoke-direct {v9, v11, v8, v14}, Lcom/alibaba/fastjson2/JSONPathSingleIndex;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONPathSegmentIndex;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    aput-object v9, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 679
    :cond_1d
    instance-of v5, v4, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    if-eqz v5, :cond_1e

    .line 680
    check-cast v4, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    .line 681
    new-instance v5, Lcom/alibaba/fastjson2/JSONPathSingleName;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, v4, Lcom/alibaba/fastjson2/JSONPathSegmentName;->name:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    new-array v9, v8, [Lcom/alibaba/fastjson2/JSONPath$Feature;

    invoke-direct {v5, v3, v4, v9}, Lcom/alibaba/fastjson2/JSONPathSingleName;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONPathSegmentName;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    goto :goto_e

    .line 682
    :cond_1e
    instance-of v3, v4, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    if-eqz v3, :cond_1f

    .line 683
    check-cast v4, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    .line 684
    new-instance v3, Lcom/alibaba/fastjson2/JSONPathSingleIndex;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "$["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v4, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    new-array v9, v8, [Lcom/alibaba/fastjson2/JSONPath$Feature;

    invoke-direct {v3, v5, v4, v9}, Lcom/alibaba/fastjson2/JSONPathSingleIndex;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONPathSegmentIndex;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    move-object v5, v3

    goto :goto_e

    :cond_1f
    const/4 v5, 0x0

    :goto_e
    if-eqz v5, :cond_20

    .line 688
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;

    move-object v3, v0

    move-object v4, v6

    move-object v6, v7

    move-object v7, v1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-wide/from16 v11, v16

    invoke-direct/range {v3 .. v12}, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;-><init>([Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath;[Lcom/alibaba/fastjson2/JSONPath;[Ljava/lang/reflect/Type;[Ljava/lang/String;[JLjava/time/ZoneId;J)V

    return-object v0

    :cond_20
    if-eqz v10, :cond_2c

    .line 755
    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_2c

    .line 758
    iget-object v3, v13, Lcom/alibaba/fastjson2/JSONPathMulti;->segments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    .line 759
    iget-object v4, v13, Lcom/alibaba/fastjson2/JSONPathMulti;->segments:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v5, 0x0

    const/4 v7, 0x1

    :goto_f
    if-ge v5, v3, :cond_27

    .line 762
    iget-object v8, v13, Lcom/alibaba/fastjson2/JSONPathMulti;->segments:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v9, 0x1

    .line 763
    :goto_10
    array-length v10, v0

    if-ge v9, v10, :cond_25

    .line 764
    aget-object v10, v6, v9

    .line 767
    instance-of v11, v10, Lcom/alibaba/fastjson2/JSONPathMulti;

    if-eqz v11, :cond_21

    .line 768
    check-cast v10, Lcom/alibaba/fastjson2/JSONPathMulti;

    .line 769
    iget-object v10, v10, Lcom/alibaba/fastjson2/JSONPathMulti;->segments:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/fastjson2/JSONPathSegment;

    goto :goto_11

    .line 770
    :cond_21
    instance-of v11, v10, Lcom/alibaba/fastjson2/JSONPathSingleName;

    if-eqz v11, :cond_22

    .line 771
    check-cast v10, Lcom/alibaba/fastjson2/JSONPathSingleName;

    iget-object v10, v10, Lcom/alibaba/fastjson2/JSONPathSingleName;->segment:Lcom/alibaba/fastjson2/JSONPathSegment;

    goto :goto_11

    .line 772
    :cond_22
    instance-of v11, v10, Lcom/alibaba/fastjson2/JSONPathSingleIndex;

    if-eqz v11, :cond_23

    .line 773
    check-cast v10, Lcom/alibaba/fastjson2/JSONPathSingleIndex;

    iget-object v10, v10, Lcom/alibaba/fastjson2/JSONPathSingleIndex;->segment:Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    goto :goto_11

    :cond_23
    const/4 v10, 0x0

    .line 778
    :goto_11
    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_24

    const/4 v7, 0x0

    goto :goto_12

    :cond_24
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_25
    :goto_12
    if-nez v7, :cond_26

    goto :goto_13

    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_27
    :goto_13
    if-eqz v7, :cond_2c

    const/4 v5, 0x1

    .line 789
    :goto_14
    array-length v7, v0

    if-ge v5, v7, :cond_29

    .line 790
    aget-object v7, v6, v5

    check-cast v7, Lcom/alibaba/fastjson2/JSONPathMulti;

    .line 791
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    iget-object v7, v7, Lcom/alibaba/fastjson2/JSONPathMulti;->segments:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_28

    const/4 v5, 0x0

    goto :goto_15

    :cond_28
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_29
    const/4 v5, 0x1

    :goto_15
    if-eqz v5, :cond_2c

    .line 797
    iget-object v5, v13, Lcom/alibaba/fastjson2/JSONPathMulti;->segments:Ljava/util/List;

    add-int/lit8 v7, v3, -0x1

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 799
    iget-object v7, v13, Lcom/alibaba/fastjson2/JSONPathMulti;->path:Ljava/lang/String;

    const/16 v9, 0x2e

    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_2a

    .line 801
    iget-object v9, v13, Lcom/alibaba/fastjson2/JSONPathMulti;->path:Ljava/lang/String;

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_16

    :cond_2a
    const/4 v7, 0x0

    :goto_16
    if-eqz v7, :cond_2c

    .line 804
    new-instance v9, Lcom/alibaba/fastjson2/JSONPathMulti;

    new-array v10, v8, [Lcom/alibaba/fastjson2/JSONPath$Feature;

    invoke-direct {v9, v7, v5, v10}, Lcom/alibaba/fastjson2/JSONPathMulti;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    .line 805
    instance-of v4, v4, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    if-eqz v4, :cond_2c

    .line 806
    array-length v0, v0

    new-array v0, v0, [Lcom/alibaba/fastjson2/JSONPath;

    const/4 v15, 0x0

    :goto_17
    if-ge v15, v2, :cond_2b

    .line 808
    aget-object v4, v6, v15

    check-cast v4, Lcom/alibaba/fastjson2/JSONPathMulti;

    .line 809
    iget-object v4, v4, Lcom/alibaba/fastjson2/JSONPathMulti;->segments:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    .line 810
    new-instance v5, Lcom/alibaba/fastjson2/JSONPathSingleIndex;

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v10, v8, [Lcom/alibaba/fastjson2/JSONPath$Feature;

    invoke-direct {v5, v7, v4, v10}, Lcom/alibaba/fastjson2/JSONPathSingleIndex;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONPathSegmentIndex;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    aput-object v5, v0, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_17

    .line 812
    :cond_2b
    new-instance v2, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;

    move-object v3, v2

    move-object v4, v6

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-wide/from16 v11, v16

    invoke-direct/range {v3 .. v12}, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;-><init>([Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath;[Lcom/alibaba/fastjson2/JSONPath;[Ljava/lang/reflect/Type;[Ljava/lang/String;[JLjava/time/ZoneId;J)V

    return-object v2

    .line 828
    :cond_2c
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathTypedMulti;

    move-object v3, v0

    move-object v4, v6

    move-object v5, v1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v9, v16

    invoke-direct/range {v3 .. v10}, Lcom/alibaba/fastjson2/JSONPathTypedMulti;-><init>([Lcom/alibaba/fastjson2/JSONPath;[Ljava/lang/reflect/Type;[Ljava/lang/String;[JLjava/time/ZoneId;J)V

    return-object v0

    .line 515
    :cond_2d
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v1, "types.length not equals paths.length"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_2e
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "illegal paths, not support 0 length"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static of(Lcom/alibaba/fastjson2/JSONPathSegment;)Lcom/alibaba/fastjson2/JSONPathSingle;
    .locals 3

    .line 433
    instance-of v0, p0, Lcom/alibaba/fastjson2/JSONPathSegment$MultiIndexSegment;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "$."

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "$"

    .line 438
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    instance-of v1, p0, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 441
    new-instance v1, Lcom/alibaba/fastjson2/JSONPathSingleName;

    check-cast p0, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    new-array v2, v2, [Lcom/alibaba/fastjson2/JSONPath$Feature;

    invoke-direct {v1, v0, p0, v2}, Lcom/alibaba/fastjson2/JSONPathSingleName;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONPathSegmentName;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    return-object v1

    .line 443
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson2/JSONPathSingle;

    new-array v2, v2, [Lcom/alibaba/fastjson2/JSONPath$Feature;

    invoke-direct {v1, p0, v0, v2}, Lcom/alibaba/fastjson2/JSONPathSingle;-><init>(Lcom/alibaba/fastjson2/JSONPathSegment;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    return-object v1
.end method

.method static parseOperator(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/JSONPathFilter$Operator;
    .locals 8

    .line 842
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const-string/jumbo v1, "with"

    const-string/jumbo v2, "rlike"

    const-string v3, "like"

    const-string v4, "in"

    const-string v5, "between"

    const/16 v6, 0x3d

    const-string v7, "not support operator : "

    sparse-switch v0, :sswitch_data_0

    .line 990
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCodeUnquote()J

    .line 991
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 960
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCodeUnquote()J

    .line 961
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "starts"

    .line 962
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 966
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCodeUnquote()J

    .line 967
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object p0

    .line 968
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    sget-object p0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->STARTS_WITH:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    goto/16 :goto_0

    .line 969
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 963
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 938
    :sswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCodeUnquote()J

    .line 939
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object p0

    .line 940
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 941
    sget-object p0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->RLIKE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    goto/16 :goto_0

    .line 943
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 898
    :sswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCodeUnquote()J

    .line 899
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nin"

    .line 901
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 902
    sget-object p0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NOT_IN:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    goto/16 :goto_0

    :cond_3
    const-string v1, "not"

    .line 906
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 910
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCodeUnquote()J

    .line 911
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object p0

    .line 912
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 913
    sget-object p0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NOT_LIKE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    goto/16 :goto_0

    .line 914
    :cond_4
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 915
    sget-object p0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    goto/16 :goto_0

    .line 916
    :cond_5
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 917
    sget-object p0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NOT_IN:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    goto/16 :goto_0

    .line 918
    :cond_6
    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 919
    sget-object p0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    goto/16 :goto_0

    .line 921
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
    :cond_8
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 887
    :sswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCodeUnquote()J

    .line 888
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object p0

    .line 889
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 890
    sget-object p0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->LIKE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    goto/16 :goto_0

    .line 892
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 927
    :sswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCodeUnquote()J

    .line 928
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object p0

    .line 929
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 930
    sget-object p0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->IN:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    goto/16 :goto_0

    .line 932
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 976
    :sswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCodeUnquote()J

    .line 977
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ends"

    .line 978
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 982
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCodeUnquote()J

    .line 983
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object p0

    .line 984
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 987
    sget-object p0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->ENDS_WITH:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    goto/16 :goto_0

    .line 985
    :cond_b
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 979
    :cond_c
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 949
    :sswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCodeUnquote()J

    .line 950
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object p0

    .line 951
    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 952
    sget-object p0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->BETWEEN:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    goto/16 :goto_0

    .line 954
    :cond_d
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :sswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 878
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v0, v6, :cond_e

    .line 879
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 880
    sget-object p0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->GE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    goto :goto_0

    .line 882
    :cond_e
    sget-object p0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->GT:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    goto :goto_0

    .line 856
    :sswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 857
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_f

    .line 858
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 859
    sget-object p0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->REG_MATCH:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    goto :goto_0

    .line 860
    :cond_f
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v0, v6, :cond_10

    .line 861
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 862
    sget-object p0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->EQ:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    goto :goto_0

    .line 864
    :cond_10
    sget-object p0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->EQ:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    goto :goto_0

    .line 844
    :sswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 845
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v0, v6, :cond_11

    .line 846
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 847
    sget-object p0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->LE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    goto :goto_0

    .line 848
    :cond_11
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_12

    .line 849
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 850
    sget-object p0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    goto :goto_0

    .line 852
    :cond_12
    sget-object p0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->LT:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    goto :goto_0

    .line 868
    :sswitch_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 869
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v0, v6, :cond_13

    .line 870
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 871
    sget-object p0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    :goto_0
    return-object p0

    .line 873
    :cond_13
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support operator : !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char p0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_a
        0x3c -> :sswitch_9
        0x3d -> :sswitch_8
        0x3e -> :sswitch_7
        0x42 -> :sswitch_6
        0x45 -> :sswitch_5
        0x49 -> :sswitch_4
        0x4c -> :sswitch_3
        0x4e -> :sswitch_2
        0x52 -> :sswitch_1
        0x53 -> :sswitch_0
        0x62 -> :sswitch_6
        0x65 -> :sswitch_5
        0x69 -> :sswitch_4
        0x6c -> :sswitch_3
        0x6e -> :sswitch_2
        0x72 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method

.method public static paths(Ljava/lang/Object;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 127
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 129
    sget-object v2, Lcom/alibaba/fastjson2/JSONPath$RootPath;->INSTANCE:Lcom/alibaba/fastjson2/JSONPath$RootPath;

    const-string v3, "$"

    invoke-virtual {v2, v0, v1, v3, p0}, Lcom/alibaba/fastjson2/JSONPath$RootPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 112
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 114
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p1

    .line 115
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONPath;->remove(Ljava/lang/Object;)Z

    .line 117
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static remove(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p1

    .line 122
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONPath;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p1

    .line 92
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/fastjson2/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 75
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 76
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p1

    .line 77
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/fastjson2/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setCallback(Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    .line 105
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p1

    .line 106
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/fastjson2/JSONPath;->setCallback(Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-object p0
.end method

.method public static setCallback(Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p1

    .line 99
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/fastjson2/JSONPath;->setCallback(Ljava/lang/Object;Ljava/util/function/Function;)V

    return-object p0
.end method


# virtual methods
.method public varargs arrayAdd(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    .line 226
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 228
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONArray;->of([Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 232
    :cond_0
    instance-of p1, v0, Ljava/util/Collection;

    if-eqz p1, :cond_1

    .line 233
    check-cast v0, Ljava/util/Collection;

    .line 234
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public abstract contains(Ljava/lang/Object;)Z
.end method

.method protected createContext()Lcom/alibaba/fastjson2/JSONReader$Context;
    .locals 1

    .line 243
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    return-object v0
.end method

.method public endsWithFilter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract eval(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
.end method

.method public extract(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONPath;->createContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p1

    .line 252
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONPath;->extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 253
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_2

    .line 251
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v0
.end method

.method public extract([B)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONPath;->createContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->of([BLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p1

    .line 262
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONPath;->extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 263
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_2

    .line 261
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v0
.end method

.method public extract([BIILjava/nio/charset/Charset;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONPath;->createContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/alibaba/fastjson2/JSONReader;->of([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p1

    .line 272
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONPath;->extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 273
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_2

    .line 271
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p2
.end method

.method public extract(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/reader/ValueConsumer;)V
    .locals 2

    .line 324
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONPath;->extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 326
    invoke-interface {p2}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->acceptNull()V

    return-void

    .line 330
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 331
    check-cast p1, Ljava/lang/Number;

    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept(Ljava/lang/Number;)V

    return-void

    .line 335
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 336
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept(Ljava/lang/String;)V

    return-void

    .line 340
    :cond_2
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 341
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept(Z)V

    return-void

    .line 345
    :cond_3
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 346
    check-cast p1, Ljava/util/Map;

    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept(Ljava/util/Map;)V

    return-void

    .line 350
    :cond_4
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_5

    .line 351
    check-cast p1, Ljava/util/List;

    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept(Ljava/util/List;)V

    return-void

    .line 355
    :cond_5
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TODO : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public extractInt32(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Integer;
    .locals 1

    .line 397
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONPath;->extractInt32Value(Lcom/alibaba/fastjson2/JSONReader;)I

    move-result v0

    .line 398
    iget-boolean p1, p1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 401
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public extractInt32Value(Lcom/alibaba/fastjson2/JSONReader;)I
    .locals 3

    .line 405
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONPath;->extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 407
    iput-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    const/4 p1, 0x0

    return p1

    .line 410
    :cond_0
    instance-of p1, v0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    .line 411
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    .line 413
    :cond_1
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 417
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 415
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not convert to int : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public extractInt64(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Long;
    .locals 2

    .line 370
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONPath;->extractInt64Value(Lcom/alibaba/fastjson2/JSONReader;)J

    move-result-wide v0

    .line 371
    iget-boolean p1, p1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 374
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public extractInt64Value(Lcom/alibaba/fastjson2/JSONReader;)J
    .locals 3

    .line 378
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONPath;->extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 380
    iput-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    const-wide/16 v0, 0x0

    return-wide v0

    .line 384
    :cond_0
    instance-of p1, v0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    .line 385
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 388
    :cond_1
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 392
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 393
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 390
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not convert to long : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract extractScalar(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/String;
.end method

.method public extractScalar(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/reader/ValueConsumer;)V
    .locals 0

    .line 359
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONPath;->extractScalar(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 361
    invoke-interface {p2}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->acceptNull()V

    return-void

    .line 365
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 366
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public abstract getParent()Lcom/alibaba/fastjson2/JSONPath;
.end method

.method public getReaderContext()Lcom/alibaba/fastjson2/JSONReader$Context;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPath;->readerContext:Lcom/alibaba/fastjson2/JSONReader$Context;

    if-nez v0, :cond_0

    .line 282
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONPath;->readerContext:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPath;->readerContext:Lcom/alibaba/fastjson2/JSONReader$Context;

    return-object v0
.end method

.method public getWriterContext()Lcom/alibaba/fastjson2/JSONWriter$Context;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPath;->writerContext:Lcom/alibaba/fastjson2/JSONWriter$Context;

    if-nez v0, :cond_0

    .line 294
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createWriteContext()Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONPath;->writerContext:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPath;->writerContext:Lcom/alibaba/fastjson2/JSONWriter$Context;

    return-object v0
.end method

.method public isPrevious()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isRef()Z
.end method

.method paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-nez p4, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 140
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 141
    const-class v3, Ljava/lang/String;

    if-eq v0, v3, :cond_2

    const-class v3, Ljava/lang/Boolean;

    if-eq v0, v3, :cond_2

    const-class v3, Ljava/lang/Character;

    if-eq v0, v3, :cond_2

    const-class v3, Ljava/util/UUID;

    if-eq v0, v3, :cond_2

    instance-of v0, p4, Ljava/lang/Enum;

    if-nez v0, :cond_2

    instance-of v0, p4, Ljava/lang/Number;

    if-nez v0, :cond_2

    instance-of v0, p4, Ljava/util/Date;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_3

    return-void

    .line 154
    :cond_3
    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    instance-of v0, p4, Ljava/util/Map;

    const-string v3, "."

    if-eqz v0, :cond_6

    .line 157
    check-cast p4, Ljava/util/Map;

    .line 159
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_4
    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 160
    check-cast v0, Ljava/util/Map$Entry;

    .line 161
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 163
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/alibaba/fastjson2/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    return-void

    .line 171
    :cond_6
    instance-of v0, p4, Ljava/util/Collection;

    const-string v4, "]"

    const-string v5, "["

    if-eqz v0, :cond_8

    .line 172
    check-cast p4, Ljava/util/Collection;

    .line 175
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-virtual {p0, p1, p2, v3, v0}, Lcom/alibaba/fastjson2/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/2addr v1, v2

    goto :goto_3

    :cond_7
    return-void

    .line 184
    :cond_8
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 187
    invoke-static {p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    :goto_4
    if-ge v1, v0, :cond_9

    .line 190
    invoke-static {p4, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-virtual {p0, p1, p2, v3, v2}, Lcom/alibaba/fastjson2/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    return-void

    .line 199
    :cond_a
    invoke-static {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isPrimitiveOrEnum(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    .line 203
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONPath;->getWriterContext()Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    .line 204
    instance-of v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    if-eqz v1, :cond_d

    .line 205
    check-cast v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    .line 208
    :try_start_0
    invoke-virtual {v0, p4}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->toMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p4

    .line 209
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_c
    :goto_5
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 210
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/alibaba/fastjson2/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 218
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo p3, "toJSON error"

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_d
    return-void
.end method

.method public abstract remove(Ljava/lang/Object;)Z
.end method

.method public abstract set(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public varargs abstract set(Ljava/lang/Object;Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
.end method

.method public abstract setCallback(Ljava/lang/Object;Ljava/util/function/BiFunction;)V
.end method

.method public setCallback(Ljava/lang/Object;Ljava/util/function/Function;)V
    .locals 1

    .line 309
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFunction$BiFunctionAdapter;

    invoke-direct {v0, p2}, Lcom/alibaba/fastjson2/JSONPathFunction$BiFunctionAdapter;-><init>(Ljava/util/function/Function;)V

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONPath;->setCallback(Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public abstract setInt(Ljava/lang/Object;I)V
.end method

.method public abstract setLong(Ljava/lang/Object;J)V
.end method

.method public setReaderContext(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONPath;
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPath;->readerContext:Lcom/alibaba/fastjson2/JSONReader$Context;

    return-object p0
.end method

.method public setWriterContext(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONPath;
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPath;->writerContext:Lcom/alibaba/fastjson2/JSONWriter$Context;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPath;->path:Ljava/lang/String;

    return-object v0
.end method
